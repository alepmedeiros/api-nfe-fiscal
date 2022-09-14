unit ACBrNFe.usecase.RepositoryProdCombustivel;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryProdCombustivel = class(TInterfacedObject, iCommand)
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

constructor TRepositoryProdCombustivel.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := FEntity;
end;

destructor TRepositoryProdCombustivel.Destroy;
begin

  inherited;
end;

function TRepositoryProdCombustivel.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.Produto.Prod.comb.cProdANP := FEntity.Produto.Combustivel.cProdANP;
  FConf.Component.ACBr.Produto.Prod.comb.CODIF := FEntity.Produto.Combustivel.CODIF;
  FConf.Component.ACBr.Produto.Prod.comb.qTemp := FEntity.Produto.Combustivel.qTemp;
  FConf.Component.ACBr.Produto.Prod.comb.UFcons := FEntity.Produto.Combustivel.UFcons;
  FConf.Component.ACBr.Produto.Prod.comb.CIDE.qBCprod :=
    FEntity.Produto.Combustivel.CIDE.qBCprod;
  FConf.Component.ACBr.Produto.Prod.comb.CIDE.vAliqProd :=
    FEntity.Produto.Combustivel.CIDE.vAliqProd;
  FConf.Component.ACBr.Produto.Prod.comb.CIDE.vCIDE :=
    FEntity.Produto.Combustivel.CIDE.vCIDE;
  FConf.Component.ACBr.Produto.Prod.comb.ICMS.vBCICMS :=
    FEntity.Produto.Combustivel.ICMS.vBCICMS;
  FConf.Component.ACBr.Produto.Prod.comb.ICMS.vICMS :=
    FEntity.Produto.Combustivel.ICMS.vICMS;
  FConf.Component.ACBr.Produto.Prod.comb.ICMS.vBCICMSST :=
    FEntity.Produto.Combustivel.ICMS.vBCICMS;
  FConf.Component.ACBr.Produto.Prod.comb.ICMS.vICMSST :=
    FEntity.Produto.Combustivel.ICMS.vICMSST;
  FConf.Component.ACBr.Produto.Prod.comb.ICMSInter.vBCICMSSTDest :=
    FEntity.Produto.Combustivel.ICMSInter.vBCICMSSTDest;
  FConf.Component.ACBr.Produto.Prod.comb.ICMSInter.vICMSSTDest :=
    FEntity.Produto.Combustivel.ICMSInter.vICMSSTDest;
  FConf.Component.ACBr.Produto.Prod.comb.ICMSCons.vBCICMSSTCons :=
    FEntity.Produto.Combustivel.ICMSCons.vBCICMSSTCons;
  FConf.Component.ACBr.Produto.Prod.comb.ICMSCons.vICMSSTCons :=
    FEntity.Produto.Combustivel.ICMSCons.vICMSSTCons;
  FConf.Component.ACBr.Produto.Prod.comb.ICMSCons.UFcons :=
    FEntity.Produto.Combustivel.ICMSCons.UFcons;
end;

class function TRepositoryProdCombustivel.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
