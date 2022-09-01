unit ACBrNFe.usecase.ActionNFe;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces, ACBrNFe.Component.impl.FactoryNFe,
  ACBrNFe.usecase.invoker;

type
  TActionNFe = class(TInterfacedObject, iActionNFe)
  private
    FComponent: iComponentFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iActionNFe;
    function Clear: iActionNFe;
    function Component: iComponentFactory;
    function Gerar: iActionNFe;
  end;

implementation

function TActionNFe.Clear: iActionNFe;
begin
  FComponent.ACBr.this.NotasFiscais.Clear;
  Result := Self;
end;

function TActionNFe.Component: iComponentFactory;
begin
  Result := FComponent;
end;

constructor TActionNFe.Create;
begin
  FComponent := TComponentFactory.New;
end;

destructor TActionNFe.Destroy;
begin

  inherited;
end;

function TActionNFe.Gerar: iActionNFe;
begin
  Result := Self;
end;

class function TActionNFe.New: iActionNFe;
begin
  Result := Self.Create;
end;

end.
