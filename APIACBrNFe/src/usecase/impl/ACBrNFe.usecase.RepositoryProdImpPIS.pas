unit ACBrNFe.usecase.RepositoryProdImpPIS;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpPIS = class(TInterfacedObject, iCommand)
    private
      FConf: iComponentFactory;
      FEntity: iFactoryEntity;
    public
      constructor Create(Conf: iComponentFactory; Entity: iFactoryEntity);
      destructor Destroy; override;
      class function New(Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpPIS.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
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

  FConf.ACBr.Produto.Imposto.PIS.CST := TAcbrUtils.StrToEnumCSTPis(FEntity.Produto.Imposto.Pis.CST);
  FConf.ACBr.Produto.Imposto.PIS.vBC := FEntity.Produto.Imposto.Pis.vBC;
  FConf.ACBr.Produto.Imposto.PIS.pPIS := FEntity.Produto.Imposto.Pis.pPIS;
  FConf.ACBr.Produto.Imposto.PIS.vPIS := FEntity.Produto.Imposto.Pis.vPIS;
  FConf.ACBr.Produto.Imposto.PIS.qBCprod := FEntity.Produto.Imposto.Pis.qBCprod;
  FConf.ACBr.Produto.Imposto.PIS.vAliqProd := FEntity.Produto.Imposto.Pis.vAliqProd;
  FConf.ACBr.Produto.Imposto.PIS.vPIS := FEntity.Produto.Imposto.Pis.vPIS;
end;

class function TRepositoryProdImpPIS.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
