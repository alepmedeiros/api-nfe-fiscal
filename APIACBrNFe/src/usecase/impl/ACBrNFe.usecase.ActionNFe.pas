unit ACBrNFe.usecase.ActionNFe;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces, ACBrNFe.Component.impl.FactoryNFe,
  ACBrNFe.usecase.invoker, ACBrNFe.entity.interfaces, ACBrNFe.adapter.pedidos;

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
    function Gerar(Entity: iFactoryEntity): iActionNFe; overload;
    function Gerar(Pedido: TPedido): iActionNFe; overload;
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

function TActionNFe.Gerar(Pedido: TPedido): iActionNFe;
begin
  Result := Self;
end;

function TActionNFe.Gerar(Entity: iFactoryEntity): iActionNFe;
begin
  Result := Self;
end;

class function TActionNFe.New: iActionNFe;
begin
  Result := Self.Create;
end;

end.
