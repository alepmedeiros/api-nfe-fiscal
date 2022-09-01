unit Workshop.Model.Fiscal.Nfe.Command.Cobr.Dup;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandCobrDup = class(TInterfacedObject, iCommand)
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
  pcnConversaoNFe, pcnConversao, System.SysUtils;

{ TModelFiscalNfeCommandCobrDup }

constructor TModelFiscalNfeCommandCobrDup.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandCobrDup.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandCobrDup.Execute: iCommand;
var
  I: Integer;
begin
  Result := Self;
  for I := 1 to 2 do
  begin
    FParent.Component.AddDuplicata;
    FParent.Component.Duplicata.nDup  := '1234' + IntToStr(I);
    FParent.Component.Duplicata.dVenc := now+10;
    FParent.Component.Duplicata.vDup  := 50;
  end;
end;

class function TModelFiscalNfeCommandCobrDup.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
