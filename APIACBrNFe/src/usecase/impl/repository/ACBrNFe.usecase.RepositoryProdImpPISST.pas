unit ACBrNFe.usecase.RepositoryProdImpPISST;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpPISST = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
    FEntity: iFactoryEntity;
  public
    constructor Create(Conf: iActionNFe; Entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpPISST.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := entity;
end;

destructor TRepositoryProdImpPISST.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpPISST.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.Produto.Imposto.PISST.vBC := FEntity.Produto.Imposto.PISST.vBC;
  FConf.Component.ACBr.Produto.Imposto.PISST.pPIS := FEntity.Produto.Imposto.PISST.pPIS;
  FConf.Component.ACBr.Produto.Imposto.PISST.qBCprod :=
    FEntity.Produto.Imposto.PISST.qBCprod;
  FConf.Component.ACBr.Produto.Imposto.PISST.vAliqProd :=
    FEntity.Produto.Imposto.PISST.vAliqProd;
  FConf.Component.ACBr.Produto.Imposto.PISST.vPIS := FEntity.Produto.Imposto.PISST.vPIS;
  FConf.Component.ACBr.Produto.Imposto.PISST.IndSomaPISST := TAcbrUtils.StrToEnumSomaPISST
    (FEntity.Produto.Imposto.PISST.IndSomaPISST);
end;

class function TRepositoryProdImpPISST.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
