unit Workshop.Model.Fiscal.Nfe.Command.Cobr.Fat;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandCobrFat = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandCobrFat }

constructor TModelFiscalNfeCommandCobrFat.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandCobrFat.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandCobrFat.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.nFat  := 'Numero da Fatura';
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.vOrig := 100;
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.vDesc := 0;
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.vLiq  := 100;
end;

class function TModelFiscalNfeCommandCobrFat.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
