unit ACBrNFe.entity.interfaces;

interface

uses
  ACBrNFe.entity.pedidos,
  ACBrNFe.entity.ResponseNFe;

type
  iEntityFactory = interface
    function Pedido: TPedido; overload;
    function Pedido(Value: TPedido): iEntityFactory; overload;
    function ResponseNFE: TResponseNFe; overload;
    function ResponseNFE(Value: TResponseNFe): iEntityFactory; overload;
  end;

implementation

end.
