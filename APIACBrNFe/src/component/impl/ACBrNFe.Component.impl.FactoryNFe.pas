unit ACBrNFe.Component.impl.FactoryNFe;

interface

uses
  ACBrNFe,
  ACBrNFe.Component.interfaces,
  ACBrNFe.Component.impl.NFe;

type
  TComponentFactory = class(TInterfacedObject, iComponentFactory)
  private
    FACBr: iComponent<TACbrNFe>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iComponentFactory;
    function ACBr: iComponent<TACbrNFe>;
  end;

implementation

function TComponentFactory.ACBr: iComponent<TACbrNFe>;
begin
  if not Assigned(FACBr) then
    FACBr := TComponentACBrNFe.New;
  Result := FACBr;
end;

constructor TComponentFactory.Create;
begin

end;

destructor TComponentFactory.Destroy;
begin

  inherited;
end;

class function TComponentFactory.New: iComponentFactory;
begin
  Result := Self.Create;
end;

end.
