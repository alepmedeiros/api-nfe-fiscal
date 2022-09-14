unit ACBrNFe.usecase.RepositoryVeicProd;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryVeicProd = class(TInterfacedObject, iCommand)
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

constructor TRepositoryVeicProd.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryVeicProd.Destroy;
begin

  inherited;
end;

function TRepositoryVeicProd.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.Produto.Prod.veicProd.tpOP := TAcbrUtils.StrToEnumTipoOperacao
    (FEntity.Produto.veicProd.tpOP);
  FConf.Component.ACBr.Produto.Prod.veicProd.chassi := FEntity.Produto.veicProd.chassi;
  FConf.Component.ACBr.Produto.Prod.veicProd.cCor := FEntity.Produto.veicProd.cCor;
  FConf.Component.ACBr.Produto.Prod.veicProd.xCor := FEntity.Produto.veicProd.xCor;
  FConf.Component.ACBr.Produto.Prod.veicProd.pot := FEntity.Produto.veicProd.pot;
  FConf.Component.ACBr.Produto.Prod.veicProd.Cilin := FEntity.Produto.veicProd.Cilin;
  FConf.Component.ACBr.Produto.Prod.veicProd.pesoL := FEntity.Produto.veicProd.pesoL;
  FConf.Component.ACBr.Produto.Prod.veicProd.pesoB := FEntity.Produto.veicProd.pesoB;
  FConf.Component.ACBr.Produto.Prod.veicProd.nSerie := FEntity.Produto.veicProd.nSerie;
  FConf.Component.ACBr.Produto.Prod.veicProd.tpComb := FEntity.Produto.veicProd.tpComb;
  FConf.Component.ACBr.Produto.Prod.veicProd.nMotor := FEntity.Produto.veicProd.nMotor;
  FConf.Component.ACBr.Produto.Prod.veicProd.CMT := FEntity.Produto.veicProd.CMT;
  FConf.Component.ACBr.Produto.Prod.veicProd.dist := FEntity.Produto.veicProd.dist;
  FConf.Component.ACBr.Produto.Prod.veicProd.anoMod := FEntity.Produto.veicProd.anoMod;
  FConf.Component.ACBr.Produto.Prod.veicProd.anoFab := FEntity.Produto.veicProd.anoFab;
  FConf.Component.ACBr.Produto.Prod.veicProd.tpPint := FEntity.Produto.veicProd.tpPint;
  FConf.Component.ACBr.Produto.Prod.veicProd.tpVeic := FEntity.Produto.veicProd.tpVeic;
  FConf.Component.ACBr.Produto.Prod.veicProd.espVeic := FEntity.Produto.veicProd.espVeic;
  FConf.Component.ACBr.Produto.Prod.veicProd.VIN := FEntity.Produto.veicProd.VIN;
  FConf.Component.ACBr.Produto.Prod.veicProd.condVeic := TAcbrUtils.StrToEnumCondVeic
    (FEntity.Produto.veicProd.condVeic);
  FConf.Component.ACBr.Produto.Prod.veicProd.cMod := FEntity.Produto.veicProd.cMod;
end;

class function TRepositoryVeicProd.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
