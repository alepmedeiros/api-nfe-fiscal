unit passaporteacbrapinfe.component.impl.ComponentFactory;

interface

uses
  passaporteacbrapinfe.component.interfaces, ACBrNFe,
  passaporteacbrapinfe.component.impl.ACBrNFe;

type
  TComponentFactory = class(TInterfacedObject, iComponentFactory)
    private
      FACBr : iComponent<TACBrNFe>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iComponentFactory;
      function ACBr: iComponent<TACBrNFe>;
  end;

implementation

function TComponentFactory.ACBr: iComponent<TACBrNFe>;
begin
  Result := FACBr;
end;

constructor TComponentFactory.Create;
begin
  FACBr := TComponentACBrNFe.New;
end;

destructor TComponentFactory.Destroy;
begin

  inherited;
end;

class function TComponentFactory.New : iComponentFactory;
begin
  Result := Self.Create;
end;

end.
