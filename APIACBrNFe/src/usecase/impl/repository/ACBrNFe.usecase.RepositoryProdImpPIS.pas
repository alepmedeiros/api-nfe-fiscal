unit ACBrNFe.usecase.RepositoryProdImpPIS;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpPIS = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
      FEntity: iFactoryEntity;
    public
      constructor Create(Conf: iActionNFe; Entity: iFactoryEntity);
      destructor Destroy; override;
      class function New(Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpPIS.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity
end;

destructor TRepositoryProdImpPIS.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpPIS.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.Produto.Imposto.PIS.CST := TAcbrUtils.StrToEnumCSTPis(FEntity.Produto.Imposto.Pis.CST);
  FConf.Component.ACBr.Produto.Imposto.PIS.vBC := FEntity.Produto.Imposto.Pis.vBC;
  FConf.Component.ACBr.Produto.Imposto.PIS.pPIS := FEntity.Produto.Imposto.Pis.pPIS;
  FConf.Component.ACBr.Produto.Imposto.PIS.vPIS := FEntity.Produto.Imposto.Pis.vPIS;
  FConf.Component.ACBr.Produto.Imposto.PIS.qBCprod := FEntity.Produto.Imposto.Pis.qBCprod;
  FConf.Component.ACBr.Produto.Imposto.PIS.vAliqProd := FEntity.Produto.Imposto.Pis.vAliqProd;
  FConf.Component.ACBr.Produto.Imposto.PIS.vPIS := FEntity.Produto.Imposto.Pis.vPIS;
end;

class function TRepositoryProdImpPIS.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
