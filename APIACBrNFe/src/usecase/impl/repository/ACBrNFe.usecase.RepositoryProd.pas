unit ACBrNFe.usecase.RepositoryProd;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryProd = class(TInterfacedObject, iCommand)
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

constructor TRepositoryProd.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := FEntity;
end;

destructor TRepositoryProd.Destroy;
begin

  inherited;
end;

function TRepositoryProd.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.AddProduto;
  FConf.Component.ACBr.Produto.Prod.nItem := FEntity.Produto.nItem;
  FConf.Component.ACBr.Produto.Prod.cProd := FEntity.Produto.cProd;
  FConf.Component.ACBr.Produto.Prod.cEAN := FEntity.Produto.cEAN;
  FConf.Component.ACBr.Produto.Prod.xProd := FEntity.Produto.xProd;
  FConf.Component.ACBr.Produto.Prod.NCM := FEntity.Produto.NCM;
  FConf.Component.ACBr.Produto.Prod.EXTIPI := FEntity.Produto.EXTIPI;
  FConf.Component.ACBr.Produto.Prod.CFOP := FEntity.Produto.CFOP;
  FConf.Component.ACBr.Produto.Prod.uCom := FEntity.Produto.uCom;
  FConf.Component.ACBr.Produto.Prod.qCom := FEntity.Produto.qCom;
  FConf.Component.ACBr.Produto.Prod.vUnCom := FEntity.Produto.vUnCom;
  FConf.Component.ACBr.Produto.Prod.vProd := FEntity.Produto.vProd;
  FConf.Component.ACBr.Produto.Prod.cEANTrib := FEntity.Produto.cEANTrib;
  FConf.Component.ACBr.Produto.Prod.uTrib := FEntity.Produto.uTrib;
  FConf.Component.ACBr.Produto.Prod.qTrib := FEntity.Produto.qTrib;
  FConf.Component.ACBr.Produto.Prod.vUnTrib := FEntity.Produto.vUnTrib;
  FConf.Component.ACBr.Produto.Prod.vOutro := FEntity.Produto.vOutro;
  FConf.Component.ACBr.Produto.Prod.vFrete := FEntity.Produto.vFrete;
  FConf.Component.ACBr.Produto.Prod.vSeg := FEntity.Produto.vSeg;
  FConf.Component.ACBr.Produto.Prod.vDesc := FEntity.Produto.vDesc;
  FConf.Component.ACBr.Produto.Prod.CEST := FEntity.Produto.CEST;
  FConf.Component.ACBr.Produto.infAdProd := FEntity.Produto.infAdProd;
  FConf.Component.ACBr.Produto.Prod.cBarra := FEntity.Produto.cBarra;
  FConf.Component.ACBr.Produto.Prod.cBarraTrib := FEntity.Produto.cBarraTrib;
end;

class function TRepositoryProd.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
