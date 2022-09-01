unit Workshop.Model.Fiscal.Nfe.Command.Exporta;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandExporta = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandExporta }

constructor TModelFiscalNfeCommandExporta.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandExporta.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandExporta.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.exporta.UFembarq   := '';;
  FParent.Component.NotaFiscal.NFe.exporta.xLocEmbarq := '';
end;

class function TModelFiscalNfeCommandExporta.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
