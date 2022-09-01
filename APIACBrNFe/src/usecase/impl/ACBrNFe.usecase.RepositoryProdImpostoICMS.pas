unit ACBrNFe.usecase.RepositoryProdImpostoICMS;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpICMS = class(TInterfacedObject, iCommand)
  private
    FConf: iComponentFactory;
    FEntity: iFactoryEntity;
  public
    constructor Create(Conf: iComponentFactory; entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iComponentFactory; entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpICMS.Create(Conf: iComponentFactory; entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryProdImpICMS.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpICMS.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.Produto.Imposto.vTotTrib := FEntity.Produto.Imposto.vTotTrib;
  FConf.ACBr.Produto.Imposto.ICMS.orig := TAcbrUtils.StrToEnumOrigMerc(FEntity.Produto.Imposto.ICMS.orig);
  FConf.ACBr.Produto.Imposto.ICMS.CST :=  TAcbrUtils.StrToEnumCST(FEntity.Produto.Imposto.ICMS.CST);
  FConf.ACBr.Produto.Imposto.ICMS.modBC := TAcbrUtils.StrToEnumDetBaseIcms(FEntity.Produto.Imposto.ICMS.modBC);
  FConf.ACBr.Produto.Imposto.ICMS.vBC := FEntity.Produto.Imposto.ICMS.vBC;
  FConf.ACBr.Produto.Imposto.ICMS.pICMS := FEntity.Produto.Imposto.ICMS.pICMS;
  FConf.ACBr.Produto.Imposto.ICMS.vICMS := FEntity.Produto.Imposto.ICMS.vICMS;
  FConf.ACBr.Produto.Imposto.ICMS.modBCST := TAcbrUtils.StrToEnumDetBaseIcmsST(FEntity.Produto.Imposto.ICMS.modBCST);
  FConf.ACBr.Produto.Imposto.ICMS.pMVAST := FEntity.Produto.Imposto.ICMS.pMVAST;
  FConf.ACBr.Produto.Imposto.ICMS.pRedBCST := FEntity.Produto.Imposto.ICMS.pRedBCST;
  FConf.ACBr.Produto.Imposto.ICMS.vBCST := FEntity.Produto.Imposto.ICMS.vBCST;
  FConf.ACBr.Produto.Imposto.ICMS.pICMSST := FEntity.Produto.Imposto.ICMS.pICMSST;
  FConf.ACBr.Produto.Imposto.ICMS.vICMSST := FEntity.Produto.Imposto.ICMS.vICMSST;
  FConf.ACBr.Produto.Imposto.ICMS.pRedBC := FEntity.Produto.Imposto.ICMS.pRedBC;
  FConf.ACBr.Produto.Imposto.ICMS.vBCFCPST := FEntity.Produto.Imposto.ICMS.vBCFCPST;
  FConf.ACBr.Produto.Imposto.ICMS.pFCPST := FEntity.Produto.Imposto.ICMS.pFCPST;
  FConf.ACBr.Produto.Imposto.ICMS.vFCPST := FEntity.Produto.Imposto.ICMS.vFCPST;
  FConf.ACBr.Produto.Imposto.ICMS.vBCSTRet := FEntity.Produto.Imposto.ICMS.vBCSTRet;
  FConf.ACBr.Produto.Imposto.ICMS.pST := FEntity.Produto.Imposto.ICMS.pST;
  FConf.ACBr.Produto.Imposto.ICMS.vICMSSubstituto := FEntity.Produto.Imposto.ICMS.vICMSSubstituto;
  FConf.ACBr.Produto.Imposto.ICMS.vICMSSTRet := FEntity.Produto.Imposto.ICMS.vICMSSTRet;
  FConf.ACBr.Produto.Imposto.ICMS.vBCFCPSTRet := FEntity.Produto.Imposto.ICMS.vBCFCPSTRet;
  FConf.ACBr.Produto.Imposto.ICMS.pFCPSTRet := FEntity.Produto.Imposto.ICMS.pFCPSTRet;
  FConf.ACBr.Produto.Imposto.ICMS.vFCPSTRet := FEntity.Produto.Imposto.ICMS.vFCPSTRet;
  FConf.ACBr.Produto.Imposto.ICMS.pRedBCEfet := FEntity.Produto.Imposto.ICMS.pRedBCEfet;
  FConf.ACBr.Produto.Imposto.ICMS.vBCEfet := FEntity.Produto.Imposto.ICMS.vBCEfet;
  FConf.ACBr.Produto.Imposto.ICMS.pICMSEfet := FEntity.Produto.Imposto.ICMS.pICMSEfet;
  FConf.ACBr.Produto.Imposto.ICMS.vICMSEfet := FEntity.Produto.Imposto.ICMS.vICMSEfet;
  FConf.ACBr.Produto.Imposto.ICMS.vICMSSTDeson := FEntity.Produto.Imposto.ICMS.vICMSSTDeson;
  FConf.ACBr.Produto.Imposto.ICMS.motDesICMSST := TAcbrUtils.StrToEnumMotivoDeso(FEntity.Produto.Imposto.ICMS.motDesICMSST);
  FConf.ACBr.Produto.Imposto.ICMS.pFCPDif := FEntity.Produto.Imposto.ICMS.pFCPDif;
  FConf.ACBr.Produto.Imposto.ICMS.vFCPDif := FEntity.Produto.Imposto.ICMS.vFCPDif;
  FConf.ACBr.Produto.Imposto.ICMS.vFCPEfet := FEntity.Produto.Imposto.ICMS.vFCPEfet;
end;

class function TRepositoryProdImpICMS.New(Conf: iComponentFactory; entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
