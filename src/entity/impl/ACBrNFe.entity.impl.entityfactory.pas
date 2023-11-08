unit ACBrNFe.entity.impl.entityfactory;

interface

uses
  ACBrNFe.entity.interfaces, ACBrNFe.entity.pedidos,
  ACBrNFe.entity.ResponseNFe;

type
  TEntityFactory = class(TInterfacedObject, iEntityFactory)
    private
      FPedido : TPedido;
      FResponseNFE : TResponseNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntityFactory;
      function Pedido: TPedido; overload;
      function Pedido(Value: TPedido): iEntityFactory; overload;
      function ResponseNFE: TResponseNFe; overload;
      function ResponseNFE(Value: TResponseNFe): iEntityFactory; overload;
  end;

implementation

constructor TEntityFactory.Create;
begin

end;

destructor TEntityFactory.Destroy;
begin

  inherited;
end;

class function TEntityFactory.New : iEntityFactory;
begin
  Result := Self.Create;
end;

function TEntityFactory.Pedido(Value: TPedido): iEntityFactory;
begin
  Result := Self;
  FPedido := Value;
end;

function TEntityFactory.Pedido: TPedido;
begin
  if not Assigned(FPedido) then
    FPedido := TPedido.Create;
  Result := FPedido;
end;

function TEntityFactory.ResponseNFE: TResponseNFe;
begin
  if not Assigned(FResponseNFE) then
    FResponseNFE := TResponseNFe.Create;
  Result := FResponseNFE;
end;

function TEntityFactory.ResponseNFE(Value: TResponseNFe): iEntityFactory;
begin
  Result := Self;
  FResponseNFE := Value;
end;

end.
