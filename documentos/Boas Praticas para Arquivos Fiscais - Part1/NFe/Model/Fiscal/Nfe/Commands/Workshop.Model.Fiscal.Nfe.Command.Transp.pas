unit Workshop.Model.Fiscal.Nfe.Command.Transp;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandTransp = class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNfe;
    public
      constructor Create(Parent : iModelFiscalNfe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNfe) : iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  pcnConversaoNFe, pcnConversao;

{ TModelFiscalNfeCommandTransp }

constructor TModelFiscalNfeCommandTransp.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandTransp.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandTransp.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Transp.modFrete := mfContaEmitente;
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.CNPJCPF  := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.xNome    := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.IE       := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.xEnder   := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.xMun     := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.UF       := '';
  FParent.Component.NotaFiscal.NFe.Transp.veicTransp.placa := '';
  FParent.Component.NotaFiscal.NFe.Transp.veicTransp.UF    := '';
  FParent.Component.NotaFiscal.NFe.Transp.veicTransp.RNTC  := '';
end;

class function TModelFiscalNfeCommandTransp.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
