unit ACBrNFe.usecase.ActionNFe;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.Component.impl.FactoryNFe,
  ACBrNFe.usecase.invoker,
  ACBrNFe.entity.pedidos,
  ACBrNFe.entity.ResponseNFe,
  ACBrNFe.usecase.RepositoryFactory,
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.impl.entityfactory;

type
  TActionNFe = class(TInterfacedObject, iActionNFe)
  private
    FComponent: iComponentFactory;
    FEntity: iEntityFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iActionNFe;
    function Clear: iActionNFe;
    function Component: iComponentFactory;
    function Entity: iEntityFactory;
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
  FEntity := TEntityFactory.New;
end;

destructor TActionNFe.Destroy;
begin

  inherited;
end;

function TActionNFe.Entity: iEntityFactory;
begin
  Result := FEntity;
end;

function TActionNFe.Gerar(Pedido: TPedido): TResponseNFe;
begin
  FEntity.Pedido(Pedido);
  TInvoker.New.Add(TFactoryCommand.New(Self).Conf)
    .Add(TFactoryCommand.New(Self).Ide)
    .Add(TFactoryCommand.New(Self).Emitente)
    .Add(TFactoryCommand.New(Self).Dest)
    .Add(TFactoryCommand.New(Self).Produto)
    .Add(TFactoryCommand.New(Self).Total)
    .Add(TFactoryCommand.New(Self).CobFat)
    .Add(TFactoryCommand.New(Self).Duplicata)
    .Add(TFactoryCommand.New(Self).Pagamento)
    .Add(TFactoryCommand.New(Self).GerarNFe(Result))
  .Execute;
  Result := FEntity.ResponseNFE;
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
