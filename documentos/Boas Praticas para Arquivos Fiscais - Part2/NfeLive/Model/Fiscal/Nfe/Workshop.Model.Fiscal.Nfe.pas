unit Workshop.Model.Fiscal.Nfe;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Model.Fiscal.NFe.Componentes.Interfaces,
  ACBrNFe, Workshop.Model.Fiscal.Nfe.Command.EnviarNFe,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces;

Type
  TModelFiscalNFe = class(TInterfacedObject, iModelFiscalNFe)
    private
      FCompFactory : iModelFiscalNfeFactory;
      FComponente : iModelFiscalNFeComponentes<TACbrNFe>;
      FConfig : iNFeConfig;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFiscalNFe;
      function Clear : iModelFiscalNFe;
      function Gerar : iModelFiscalNFe;
      function Component : iModelFiscalNFeComponentes<TACbrNFe>;
      function Config : iNfeConfig;
  end;

implementation

uses
  Workshop.Model.Fiscal.NFe.Componentes.Factory,
  Workshop.Model.Fiscal.Nfe.Invoker,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal,
  Workshop.Model.Fiscal.Nfe.Command.Factory;

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
  FComponente._this.NotasFiscais.Clear;
  FComponente.AddNotaFiscal;
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
    .Add(TModelFiscalNFeCommandFactory.New(Self).EnviarNFe)
  .Execute;
end;

class function TModelFiscalNFe.New: iModelFiscalNFe;
begin
  Result := Self.Create;
end;

end.
