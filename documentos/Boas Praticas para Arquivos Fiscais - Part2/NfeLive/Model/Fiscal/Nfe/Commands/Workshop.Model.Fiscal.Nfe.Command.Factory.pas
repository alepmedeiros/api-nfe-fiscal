unit Workshop.Model.Fiscal.Nfe.Command.Factory;

interface

uses
  Workshop.Model.Fiscal.Nfe.Command.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeCommandFactory = class(TInterfacedObject, iModelFiscalNFeCommandFactory)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe) : iModelFiscalNFeCommandFactory;
      function Geral : iCommand;
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
      function GerarNFe : iCommand;
      function EnviarNFe : iCommand;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe.Command.Geral,
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup,
  Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat,
  Workshop.Model.Fiscal.Nfe.Command.Compra,
  Workshop.Model.Fiscal.Nfe.Command.Dest,
  Workshop.Model.Fiscal.Nfe.Command.Emit,
  Workshop.Model.Fiscal.Nfe.Command.Exporta,
  Workshop.Model.Fiscal.Nfe.Command.Ide,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp,
  Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco,
  Workshop.Model.Fiscal.Nfe.Command.Pagamento,
  Workshop.Model.Fiscal.Nfe.Command.Prod,
  Workshop.Model.Fiscal.Nfe.Command.Total,
  Workshop.Model.Fiscal.Nfe.Command.Transp,
  Workshop.Model.Fiscal.Nfe.Command.Transp.Vol,
  Workshop.Model.Fiscal.Nfe.Command.GerarNFe,
  Workshop.Model.Fiscal.Nfe.Command.EnviarNFe;

{ TModelFiscalNFeCommandFactory }

function TModelFiscalNFeCommandFactory.CobrDup: iCommand;
begin
  Result := TModelFiscalNfeCommandCobrDup.New(FParent);
end;

function TModelFiscalNFeCommandFactory.CobrFat: iCommand;
begin
  Result := TModelFiscalNfeCommandCobrFat.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Compra: iCommand;
begin
  Result := TModelFiscalNfeCommandCompra.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Geral: iCommand;
begin
  Result := TModelFiscalNfeCommandGeral.New(FParent);
end;

function TModelFiscalNFeCommandFactory.GerarNFe: iCommand;
begin
  Result := TModelFiscalNfeCommandGerarNFe.New(FParent);
end;

constructor TModelFiscalNFeCommandFactory.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
end;

function TModelFiscalNFeCommandFactory.Dest: iCommand;
begin
  Result := TModelFiscalNfeCommandDest.New(FParent);
end;

destructor TModelFiscalNFeCommandFactory.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandFactory.Emitente: iCommand;
begin
  Result := TModelFiscalNfeCommandEmitente.New(FParent);
end;

function TModelFiscalNFeCommandFactory.EnviarNFe: iCommand;
begin
  Result := TModelFiscalNfeCommandEnviarNFe.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Exporta: iCommand;
begin
  Result := TModelFiscalNfeCommandExporta.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Ide: iCommand;
begin
  Result := TModelFiscalNfeCommandIde.New(FParent);
end;

function TModelFiscalNFeCommandFactory.InfAdic: iCommand;
begin
  Result := TModelFiscalNfeCommandInfAdic.New(FParent);
end;

function TModelFiscalNFeCommandFactory.InfAdicObsComp: iCommand;
begin
  Result := TModelFiscalNfeCommandInfAdicObsComp.New(FParent);
end;

function TModelFiscalNFeCommandFactory.InfAdicObsFisco: iCommand;
begin
  Result := TModelFiscalNfeCommandInfAdicObsFisco.New(FParent);
end;

class function TModelFiscalNFeCommandFactory.New(Parent : iModelFiscalNFe) : iModelFiscalNFeCommandFactory;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalNFeCommandFactory.Pagamento: iCommand;
begin
  Result := TModelFiscalNfeCommandPagamento.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Prod: iCommand;
begin
  Result := TModelFiscalNfeCommandProd.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Total: iCommand;
begin
  Result := TModelFiscalNfeCommandTotal.New(FParent);
end;

function TModelFiscalNFeCommandFactory.Transp: iCommand;
begin
  Result := TModelFiscalNfeCommandTransp.New(FParent);
end;

function TModelFiscalNFeCommandFactory.TranspVol: iCommand;
begin
  Result := TModelFiscalNfeCommandTranspVol.New(FParent);
end;

end.
