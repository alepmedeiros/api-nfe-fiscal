unit ACBrNFe.usecase.RepositoryProd;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryProd = class(TInterfacedObject, iCommand)
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

constructor TRepositoryProd.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
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

  FConf.ACBr.AddProduto;
  FConf.ACBr.Produto.Prod.nItem := FEntity.Produto.nItem;
  FConf.ACBr.Produto.Prod.cProd := FEntity.Produto.cProd;
  FConf.ACBr.Produto.Prod.cEAN := FEntity.Produto.cEAN;
  FConf.ACBr.Produto.Prod.xProd := FEntity.Produto.xProd;
  FConf.ACBr.Produto.Prod.NCM := FEntity.Produto.NCM;
  FConf.ACBr.Produto.Prod.EXTIPI := FEntity.Produto.EXTIPI;
  FConf.ACBr.Produto.Prod.CFOP := FEntity.Produto.CFOP;
  FConf.ACBr.Produto.Prod.uCom := FEntity.Produto.uCom;
  FConf.ACBr.Produto.Prod.qCom := FEntity.Produto.qCom;
  FConf.ACBr.Produto.Prod.vUnCom := FEntity.Produto.vUnCom;
  FConf.ACBr.Produto.Prod.vProd := FEntity.Produto.vProd;
  FConf.ACBr.Produto.Prod.cEANTrib := FEntity.Produto.cEANTrib;
  FConf.ACBr.Produto.Prod.uTrib := FEntity.Produto.uTrib;
  FConf.ACBr.Produto.Prod.qTrib := FEntity.Produto.qTrib;
  FConf.ACBr.Produto.Prod.vUnTrib := FEntity.Produto.vUnTrib;
  FConf.ACBr.Produto.Prod.vOutro := FEntity.Produto.vOutro;
  FConf.ACBr.Produto.Prod.vFrete := FEntity.Produto.vFrete;
  FConf.ACBr.Produto.Prod.vSeg := FEntity.Produto.vSeg;
  FConf.ACBr.Produto.Prod.vDesc := FEntity.Produto.vDesc;
  FConf.ACBr.Produto.Prod.CEST := FEntity.Produto.CEST;
  FConf.ACBr.Produto.infAdProd := FEntity.Produto.infAdProd;
  FConf.ACBr.Produto.Prod.cBarra := FEntity.Produto.cBarra;
  FConf.ACBr.Produto.Prod.cBarraTrib := FEntity.Produto.cBarraTrib;
end;

class function TRepositoryProd.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
