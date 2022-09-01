unit Workshop.Model.Fiscal.Nfe.Command.Factory;

interface

uses
  Workshop.Model.Fiscal.Nfe.Command.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandFactory = class(TInterfacedObject, iModelFiscalNFeCommandFactory)
    private
      FParent : iModelFiscalNfe;
    public
      constructor Create(Parent : iModelFiscalNfe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNfe) : iModelFiscalNFeCommandFactory;
      function Configuracao : iCommand;
      function Emitente  : iCommand;
      function Ide  : iCommand;
      function Dest  : iCommand;
      function Prod  : iCommand;
      function Total  : iCommand;
      function Transp  : iCommand;
      function TranspVol  : iCommand;
      function CobrFat  : iCommand;
      function CobrDup  : iCommand;
      function InfAdic  : iCommand;
      function InfAdicObsFisco  : iCommand;
      function InfAdicObsComp  : iCommand;
      function Exporta  : iCommand;
      function Pagamento  : iCommand;
      function Compra : iCommand;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe.Command.Configuracao,
  Workshop.Model.Fiscal.Nfe.Command.Ide,
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup,
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat,
  Workshop.Model.Fiscal.Nfe.Command.Compra,
  Workshop.Model.Fiscal.Nfe.Command.Dest,
  Workshop.Model.Fiscal.Nfe.Command.Emitente,
  Workshop.Model.Fiscal.Nfe.Command.Exporta,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco,
  Workshop.Model.Fiscal.Nfe.Command.Pagamento,
  Workshop.Model.Fiscal.Nfe.Command.Prod,
  Workshop.Model.Fiscal.Nfe.Command.Total,
  Workshop.Model.Fiscal.Nfe.Command.Transp,
  Workshop.Model.Fiscal.Nfe.Command.Transp.Vol;

{ TModelFiscalNfeCommandFactory }

function TModelFiscalNfeCommandFactory.CobrDup: iCommand;
begin
  Result := TModelFiscalNfeCommandCobrDup.New(FParent);
end;

function TModelFiscalNfeCommandFactory.CobrFat: iCommand;
begin
  Result := TModelFiscalNfeCommandCobrFat.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Compra: iCommand;
begin
  Result := TModelFiscalNfeCommandCompra.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Configuracao: iCommand;
begin
  Result := TModelFiscalNfeCommandConfiguracao.New(FParent)
end;

constructor TModelFiscalNfeCommandFactory.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

function TModelFiscalNfeCommandFactory.Dest: iCommand;
begin
  Result := TModelFiscalNfeCommandDest.New(FParent);
end;

destructor TModelFiscalNfeCommandFactory.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandFactory.Emitente: iCommand;
begin
  Result := TModelFiscalNfeCommandEmitente.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Exporta: iCommand;
begin
  Result := TModelFiscalNfeCommandExporta.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Ide: iCommand;
begin
  Result := TModelFiscalNfeCommandIde.New(FParent);
end;

function TModelFiscalNfeCommandFactory.InfAdic: iCommand;
begin
  Result := TModelFiscalNfeCommandInfAdic.New(FParent);
end;

function TModelFiscalNfeCommandFactory.InfAdicObsComp: iCommand;
begin
  Result := TModelFiscalNfeCommandInfAdicObsComp.New(FParent);
end;

function TModelFiscalNfeCommandFactory.InfAdicObsFisco: iCommand;
begin
  Result := TModelFiscalNfeCommandInfAdicObsFisco.New(FParent);
end;

class function TModelFiscalNfeCommandFactory.New(Parent : iModelFiscalNfe) : iModelFiscalNFeCommandFactory;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalNfeCommandFactory.Pagamento: iCommand;
begin
  Result := TModelFiscalNfeCommandPagamento.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Prod: iCommand;
begin
  Result := TModelFiscalNfeCommandProd.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Total: iCommand;
begin
  Result := TModelFiscalNfeCommandTotal.New(FParent);
end;

function TModelFiscalNfeCommandFactory.Transp: iCommand;
begin
  Result := TModelFiscalNfeCommandTransp.New(FParent);
end;

function TModelFiscalNfeCommandFactory.TranspVol: iCommand;
begin
  Result := TModelFiscalNfeCommandTranspVol.New(FParent);
end;

end.
