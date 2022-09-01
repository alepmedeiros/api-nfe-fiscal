unit Workshop.Model.Fiscal.Nfe;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Model.Fiscal.NFe.Componentes.Interfaces,
  ACBrNFe, Workshop.Model.Fiscal.Nfe.Command.EnviarNFe,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Controller.Nfe.Observer.Interfaces;

Type
  TModelFiscalNFe = class(TInterfacedObject, iModelFiscalNFe)
    private
      FCompFactory : iModelFiscalNfeFactory;
      FComponente : iModelFiscalNFeComponentes<TACbrNFe>;
      FConfig : iNFeConfig;
      FObserver : iSubjectNfe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFiscalNFe;
      function Clear : iModelFiscalNFe;
      function Gerar : iModelFiscalNFe;
      function Component : iModelFiscalNFeComponentes<TACbrNFe>;
      function Config : iNfeConfig;
      function Observer ( Value : iSubjectNfe) : iModelFiscalNFe; overload;
      function Observer : iSubjectNfe; overload;
      function RegimeTributario( Value : Integer ) : iModelFiscalNfe;
      function PrepararNota : iModelFiscalNfe;
  end;

implementation

uses
  Workshop.Model.Fiscal.NFe.Componentes.Factory,
  Workshop.Model.Fiscal.Nfe.Invoker,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal,
  Workshop.Model.Fiscal.Nfe.Command.Factory, pcnConversao;

{ TModelFiscalNFe }

function TModelFiscalNFe.Clear: iModelFiscalNFe;
begin
  Result := Self;
  FComponente._this.NotasFiscais.Clear;
end;

function TModelFiscalNFe.Component: iModelFiscalNFeComponentes<TACbrNFe>;
begin
  Result := FComponente;
end;

function TModelFiscalNFe.Config: iNfeConfig;
begin
  Result := FConfig;
end;

constructor TModelFiscalNFe.Create;
begin
  FCompFactory := TModelFiscalNFeComponentesFactory.New;
  FComponente := FCompFactory.ACBr;
end;

destructor TModelFiscalNFe.Destroy;
begin

  inherited;
end;

function TModelFiscalNFe.Gerar: iModelFiscalNFe;
begin
  Result := Self;
  TModelFiscalNFeInvoker.New
    .Add(TModelFiscalNFeCommandFactory.New(Self).Geral)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Ide)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Emitente)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Dest)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Prod)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Total)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Transp)
    .Add(TModelFiscalNFeCommandFactory.New(Self).TranspVol)
    .Add(TModelFiscalNFeCommandFactory.New(Self).CobrFat)
    .Add(TModelFiscalNFeCommandFactory.New(Self).CobrDup)
    .Add(TModelFiscalNFeCommandFactory.New(Self).InfAdic)
    .Add(TModelFiscalNFeCommandFactory.New(Self).InfAdicObsComp)
    .Add(TModelFiscalNFeCommandFactory.New(Self).InfAdicObsFisco)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Exporta)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Compra)
    .Add(TModelFiscalNFeCommandFactory.New(Self).Pagamento)
    .Add(TModelFiscalNFeCommandFactory.New(Self).GerarNFe)
//    .Add(TModelFiscalNFeCommandFactory.New(Self).EnviarNFe)
  .Execute;
  FObserver.Notify('Nota foi Gerada com Sucesso');
  FComponente._this.NotasFiscais.Clear;
end;

class function TModelFiscalNFe.New: iModelFiscalNFe;
begin
  Result := Self.Create;
end;

function TModelFiscalNFe.Observer: iSubjectNfe;
begin
  Result := FObserver;
end;

function TModelFiscalNFe.PrepararNota: iModelFiscalNfe;
begin
  Result := Self;
  FComponente.AddNotaFiscal;
end;

function TModelFiscalNFe.RegimeTributario(Value: Integer): iModelFiscalNfe;
begin
  Result := Self;
  FComponente.NotaFiscal.NFe.Emit.CRT := TpcnCRT(Value);
end;

function TModelFiscalNFe.Observer(Value: iSubjectNfe): iModelFiscalNFe;
begin
  Result := Self;
  FObserver := Value;
end;

end.
