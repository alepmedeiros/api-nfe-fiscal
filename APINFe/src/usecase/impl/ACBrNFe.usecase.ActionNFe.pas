unit ACBrNFe.usecase.ActionNFe;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.Component.impl.FactoryNFe,
  ACBrNFe.usecase.invoker,
  ACBrNFe.entity.pedidos,
  ACBrNFe.entity.ResponseNFe, ACBrNFe.usecase.RepositoryFactory;

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
    function Gerar: iActionNFe; overload;
    function Gerar(Pedido: TPedido): TResponseNFe; overload;
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

function TActionNFe.Gerar(Pedido: TPedido): TResponseNFe;
begin
  Result := TResponseNFe.Create;
  TInvoker.New
    .Add(TFactoryCommand.New(Self, Pedido).Conf)
    .Add(TFactoryCommand.New(Self, Pedido).Ide)
    .Add(TFactoryCommand.New(Self, Pedido).Emitente)
    .Add(TFactoryCommand.New(Self, Pedido).Dest)
    .Add(TFactoryCommand.New(Self, Pedido).Produto)
    .Add(TFactoryCommand.New(Self, Pedido).Total)
    .Add(TFactoryCommand.New(Self, Pedido).CobFat)
    .Add(TFactoryCommand.New(Self, Pedido).Duplicata)
    .Add(TFactoryCommand.New(Self, Pedido).Pagamento)
    .Add(TFactoryCommand.New(Self, Pedido).GerarNFe(Result))
  .Execute;
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
