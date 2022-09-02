unit ACBrNFe.usecase.RepositoryProdImpostoICMS;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpICMS = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpICMS.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryProdImpICMS.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpICMS.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.Produto.Imposto.vTotTrib :=
//    FEntity.Produto.Imposto.vTotTrib;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.orig :=
//    TAcbrUtils.StrToEnumOrigMerc(FEntity.Produto.Imposto.ICMS.orig);
//  FConf.Component.ACBr.Produto.Imposto.ICMS.CST :=
//    TAcbrUtils.StrToEnumCST(FEntity.Produto.Imposto.ICMS.CST);
//  FConf.Component.ACBr.Produto.Imposto.ICMS.modBC :=
//    TAcbrUtils.StrToEnumDetBaseIcms(FEntity.Produto.Imposto.ICMS.modBC);
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vBC :=
//    FEntity.Produto.Imposto.ICMS.vBC;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pICMS :=
//    FEntity.Produto.Imposto.ICMS.pICMS;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vICMS :=
//    FEntity.Produto.Imposto.ICMS.vICMS;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.modBCST :=
//    TAcbrUtils.StrToEnumDetBaseIcmsST(FEntity.Produto.Imposto.ICMS.modBCST);
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pMVAST :=
//    FEntity.Produto.Imposto.ICMS.pMVAST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCST :=
//    FEntity.Produto.Imposto.ICMS.pRedBCST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vBCST :=
//    FEntity.Produto.Imposto.ICMS.vBCST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSST :=
//    FEntity.Produto.Imposto.ICMS.pICMSST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSST :=
//    FEntity.Produto.Imposto.ICMS.vICMSST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBC :=
//    FEntity.Produto.Imposto.ICMS.pRedBC;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPST :=
//    FEntity.Produto.Imposto.ICMS.vBCFCPST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPST :=
//    FEntity.Produto.Imposto.ICMS.pFCPST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPST :=
//    FEntity.Produto.Imposto.ICMS.vFCPST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vBCSTRet :=
//    FEntity.Produto.Imposto.ICMS.vBCSTRet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pST :=
//    FEntity.Produto.Imposto.ICMS.pST;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSubstituto :=
//    FEntity.Produto.Imposto.ICMS.vICMSSubstituto;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTRet :=
//    FEntity.Produto.Imposto.ICMS.vICMSSTRet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPSTRet :=
//    FEntity.Produto.Imposto.ICMS.vBCFCPSTRet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPSTRet :=
//    FEntity.Produto.Imposto.ICMS.pFCPSTRet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPSTRet :=
//    FEntity.Produto.Imposto.ICMS.vFCPSTRet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCEfet :=
//    FEntity.Produto.Imposto.ICMS.pRedBCEfet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vBCEfet :=
//    FEntity.Produto.Imposto.ICMS.vBCEfet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSEfet :=
//    FEntity.Produto.Imposto.ICMS.pICMSEfet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSEfet :=
//    FEntity.Produto.Imposto.ICMS.vICMSEfet;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTDeson :=
//    FEntity.Produto.Imposto.ICMS.vICMSSTDeson;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.motDesICMSST :=
//    TAcbrUtils.StrToEnumMotivoDeso(FEntity.Produto.Imposto.ICMS.motDesICMSST);
//  FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPDif :=
//    FEntity.Produto.Imposto.ICMS.pFCPDif;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPDif :=
//    FEntity.Produto.Imposto.ICMS.vFCPDif;
//  FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPEfet :=
//    FEntity.Produto.Imposto.ICMS.vFCPEfet;
end;

class function TRepositoryProdImpICMS.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
