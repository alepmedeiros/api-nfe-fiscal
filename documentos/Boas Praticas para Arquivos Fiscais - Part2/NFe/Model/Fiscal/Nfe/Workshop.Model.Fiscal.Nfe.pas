unit Workshop.Model.Fiscal.Nfe;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Model.Fiscal.Nfe.Componentes.Interfaces,
  Workshop.Model.Fiscal.Nfe.Componentes.ACBr,
  ACBrNFe;

Type
  TModelFiscalNFe = class(TInterfacedObject, iModelFiscalNfe)
    private
      FCompFactory : IModelFiscalNFeFactory;
      FComponente : iModelFiscalNfeComponentes<TACBrNFe>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFiscalNfe;
      function Clear : iModelFiscalNFe;
      function Gerar : iModelFiscalNFe;
      function Component : iModelFiscalNfeComponentes<TACBrNFe>;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe.Componentes.Factory,
  Workshop.Model.Fiscal.Nfe.Invoker,
  Workshop.Model.Fiscal.Nfe.Command.Factory;

{ TModelFiscalNFe }

function TModelFiscalNFe.Clear: iModelFiscalNFe;
begin
  Result := Self;
  FComponente._this.NotasFiscais.Clear;
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
  FComponente.AddNotaFiscal;

  TModelNotaFiscalInvoker.New
    .Add(TModelFiscalNfeCommandFactory.New(Self).Configuracao)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Ide)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Emitente)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Dest)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Prod)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Total)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Transp)
    .Add(TModelFiscalNfeCommandFactory.New(Self).TranspVol)
    .Add(TModelFiscalNfeCommandFactory.New(Self).CobrFat)
    .Add(TModelFiscalNfeCommandFactory.New(Self).CobrDup)
    .Add(TModelFiscalNfeCommandFactory.New(Self).InfAdic)
    .Add(TModelFiscalNfeCommandFactory.New(Self).InfAdicObsComp)
    .Add(TModelFiscalNfeCommandFactory.New(Self).InfAdicObsFisco)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Exporta)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Compra)
    .Add(TModelFiscalNfeCommandFactory.New(Self).Pagamento)
  .Execute;

  FComponente._this.NotasFiscais.GerarNFe;
  FComponente._this.Enviar(1, True);
end;

class function TModelFiscalNFe.New: iModelFiscalNfe;
begin
  Result := Self.Create;
end;

function TModelFiscalNFe.Component: iModelFiscalNfeComponentes<TACBrNFe>;
begin
  Result := FComponente;
end;

end.
