unit ACBrNFe.usecase.RepositoryProdImpCOFINSST;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpCOFINSST = class(TInterfacedObject, iCommand)
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

constructor TRepositoryProdImpCOFINSST.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := entity;
end;

destructor TRepositoryProdImpCOFINSST.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpCOFINSST.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.Produto.Imposto.COFINSST.vBC :=
    FEntity.Produto.Imposto.COFINSST.vBC;
  FConf.Component.ACBr.Produto.Imposto.COFINSST.pCOFINS :=
    FEntity.Produto.Imposto.COFINSST.pCOFINS;
  FConf.Component.ACBr.Produto.Imposto.COFINSST.qBCprod :=
    FEntity.Produto.Imposto.COFINSST.qBCprod;
  FConf.Component.ACBr.Produto.Imposto.COFINSST.vAliqProd :=
    FEntity.Produto.Imposto.COFINSST.vAliqProd;
  FConf.Component.ACBr.Produto.Imposto.COFINSST.vCOFINS :=
    FEntity.Produto.Imposto.COFINSST.vCOFINS;
  FConf.Component.ACBr.Produto.Imposto.COFINSST.indSomaCOFINSST :=
    TAcbrUtils.StrToEnumSomaCofinsST
    (FEntity.Produto.Imposto.COFINSST.indSomaCOFINSST);
end;

class function TRepositoryProdImpCOFINSST.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
