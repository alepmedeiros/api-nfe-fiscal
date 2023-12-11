unit passaporteacbrapinfe.usecase.acoesnfe;

interface

uses
  ACBrNFe.entity.ResponseNFe,
  ACBrNFe.entity.pedidos,
  passaporteacbrapinfe.component.impl.ComponentFactory,
  passaporteacbrapinfe.usecase.impl.invoker,
  passaporteacbrapinfe.usecase.interfaces,
  passaporteacbrapinfe.component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.entity.impl.entity;

type
  TAcoesNfe = class(TInterfacedObject, iAcoesNfe)
  private
    FComponent: iComponentFactory;
    FEntity: iEntity;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iAcoesNfe;
    function Clear: iAcoesNfe;
    function component: iComponentFactory;
    function entity: iEntity;
    function Gerar(Nfe: TNfe): TResponseNFe;
  end;

implementation

uses
  passaporteacbrapinfe.usecase.impl.facotoryacoes;

function TAcoesNfe.Clear: iAcoesNfe;
begin
  FComponent.ACBr.This.NotasFiscais.Clear;
end;

function TAcoesNfe.component: iComponentFactory;
begin
  Result := FComponent;
end;

constructor TAcoesNfe.Create;
begin
  FComponent := TComponentFactory.New;
  FEntity := TEntity.New;
end;

destructor TAcoesNfe.Destroy;
begin

  inherited;
end;

function TAcoesNfe.entity: iEntity;
begin
  Result := FEntity;
end;

function TAcoesNfe.Gerar(Nfe: TNfe): TResponseNFe;
begin
  Result := TResponseNFe.Create;
  FEntity.Nfe(Nfe);
  TInvoker.New
    .Add(TFactoryUsecase.New(Self).Configuracao)
    .Add(TFactoryUsecase.New(Self).Ide)
    .Add(TFactoryUsecase.New(Self).Emitente)
    .Add(TFactoryUsecase.New(Self).Dest)
    .Add(TFactoryUsecase.New(Self).Produto)
    .Add(TFactoryUsecase.New(Self).Total)
    .Add(TFactoryUsecase.New(Self).Fatura)
    .Add(TFactoryUsecase.New(Self).Duplicata)
    .Add(TFactoryUsecase.New(Self).Pagamento)
    .Add(TFactoryUsecase.New(Self).GerarNFe);
end;

class function TAcoesNfe.New: iAcoesNfe;
begin
  Result := Self.Create;
end;

end.
