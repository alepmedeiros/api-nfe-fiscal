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
  Workshop.Model.Fiscal.Nfe.Invoker, Workshop.Model.Fiscal.Nfe.Command.Geral,
  Workshop.Model.Fiscal.Nfe.Command.Ide,
  Workshop.Model.Fiscal.Nfe.Command.Emit,
  Workshop.Model.Fiscal.Nfe.Command.Dest,
  Workshop.Model.Fiscal.Nfe.Command.Prod,
  Workshop.Model.Fiscal.Nfe.Command.Total,
  Workshop.Model.Fiscal.Nfe.Command.Transp,
  Workshop.Model.Fiscal.Nfe.Command.Transp.Vol,
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat,
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco,
  Workshop.Model.Fiscal.Nfe.Command.Exporta,
  Workshop.Model.Fiscal.Nfe.Command.Compra,
  Workshop.Model.Fiscal.Nfe.Command.Pagamento,
  Workshop.Model.Fiscal.Nfe.Command.GerarNFe,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal;

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
    .Add(TModelFiscalNfeCommandGeral.New(Self))
    .Add(TModelFiscalNfeCommandIde.New(Self))
    .Add(TModelFiscalNfeCommandEmitente.New(Self))
    .Add(TModelFiscalNfeCommandDest.New(Self))
    .Add(TModelFiscalNfeCommandProd.New(Self))
    .Add(TModelFiscalNfeCommandTotal.New(Self))
    .Add(TModelFiscalNfeCommandTransp.New(Self))
    .Add(TModelFiscalNfeCommandTranspVol.New(Self))
    .Add(TModelFiscalNfeCommandCobrFat.New(Self))
    .Add(TModelFiscalNfeCommandCobrDup.New(Self))
    .Add(TModelFiscalNfeCommandInfAdic.New(Self))
    .Add(TModelFiscalNfeCommandInfAdicObsComp.New(Self))
    .Add(TModelFiscalNfeCommandInfAdicObsFisco.New(Self))
    .Add(TModelFiscalNfeCommandExporta.New(Self))
    .Add(TModelFiscalNfeCommandCompra.New(Self))
    .Add(TModelFiscalNfeCommandPagamento.New(Self))

    .Add(TModelFiscalNfeCommandGerarNFe.New(Self))
    .Add(TModelFiscalNfeCommandEnviarNFe.New(Self))
  .Execute;
end;

class function TModelFiscalNFe.New: iModelFiscalNFe;
begin
  Result := Self.Create;
end;

end.
