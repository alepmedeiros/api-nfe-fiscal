unit ACBrNFe.usecase.RepositoryProd;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper, ACBrNFe.entity.pedidos;

type
  TRepositoryProd = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProd.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryProd.Destroy;
begin

  inherited;
end;

function TRepositoryProd.Execute: iCommand;
begin
  Result := Self;

  for var I in FConf.Entity.Pedido.Produto do
  begin
    FConf.Component.ACBr.AddProduto;
    FConf.Component.ACBr.Produto.Prod.nItem := I.Item;
    FConf.Component.ACBr.Produto.Prod.cProd := I.Codigo;
    FConf.Component.ACBr.Produto.Prod.cEAN := I.EAN;
    FConf.Component.ACBr.Produto.Prod.xProd := I.Descricao;
    FConf.Component.ACBr.Produto.Prod.NCM := I.NCM;
    FConf.Component.ACBr.Produto.Prod.EXTIPI := I.ExtIPI;
    FConf.Component.ACBr.Produto.Prod.CFOP := I.CFOP;
    FConf.Component.ACBr.Produto.Prod.uCom := I.Unidade;
    FConf.Component.ACBr.Produto.Prod.qCom := I.Quantidade;
    FConf.Component.ACBr.Produto.Prod.vUnCom := I.ValorUnitario;
    FConf.Component.ACBr.Produto.Prod.vProd := I.PrecoVenda;
    FConf.Component.ACBr.Produto.Prod.cEANTrib := I.EAN;
    FConf.Component.ACBr.Produto.Prod.uTrib := I.Unidade;
    FConf.Component.ACBr.Produto.Prod.qTrib := I.Quantidade;
    FConf.Component.ACBr.Produto.Prod.vUnTrib := I.ValorUnitario;
    FConf.Component.ACBr.Produto.Prod.vOutro := I.ValorOutro;
    FConf.Component.ACBr.Produto.Prod.vFrete := I.ValorFrete;
    FConf.Component.ACBr.Produto.Prod.vSeg := I.ValorSeguro;
    FConf.Component.ACBr.Produto.Prod.vDesc := I.ValorDesconto;
    FConf.Component.ACBr.Produto.Prod.CEST := I.CEST;
    FConf.Component.ACBr.Produto.infAdProd := I.infAdProd;
    FConf.Component.ACBr.Produto.Prod.cBarra := I.CodBarra;
    FConf.Component.ACBr.Produto.Prod.cBarraTrib := I.CodBarra;

    FConf.Component.ACBr.Produto.Imposto.vTotTrib := I.Imposto.vTotTrib;
    FConf.Component.ACBr.Produto.Imposto.ICMS.orig :=  TAcbrUtils.StrToEnumOrigMerc(I.Imposto.ICMS.orig);

    FConf.Component.ACBr.Produto.Imposto.ICMS.CST := TAcbrUtils.StrToEnumCST(I.Imposto.ICMS.CST);
    FConf.Component.ACBr.Produto.Imposto.ICMS.modBC := TAcbrUtils.StrToEnumDetBaseIcms(I.Imposto.ICMS.modBC);
    FConf.Component.ACBr.Produto.Imposto.ICMS.pMVAST := I.Imposto.ICMS.pMVAST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCST := I.Imposto.ICMS.pRedBCST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCST := I.Imposto.ICMS.vBCST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSST := I.Imposto.ICMS.pICMSST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSST := I.Imposto.ICMS.vICMSST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBC := I.Imposto.ICMS.pRedBC;

    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPST := I.Imposto.ICMS.vBCFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPST := I.Imposto.ICMS.pFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPST := I.Imposto.ICMS.vFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCSTRet := I.Imposto.ICMS.vBCSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pST := I.Imposto.ICMS.pST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSubstituto := I.Imposto.ICMS.vICMSSubstituto;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTRet := I.Imposto.ICMS.vICMSSTRet;

    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPSTRet := I.Imposto.ICMS.vBCFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPSTRet := I.Imposto.ICMS.pFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPSTRet := I.Imposto.ICMS.vFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCEfet := I.Imposto.ICMS.pRedBCEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCEfet := I.Imposto.ICMS.vBCEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSEfet := I.Imposto.ICMS.pICMSEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSEfet := I.Imposto.ICMS.vICMSEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTDeson := I.Imposto.ICMS.vICMSSTDeson;
    FConf.Component.ACBr.Produto.Imposto.ICMS.motDesICMSST := TAcbrUtils.StrToEnumMotivoDeso(I.Imposto.ICMS.motDesICMSST);
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPDif := I.Imposto.ICMS.pFCPDif;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPDif := I.Imposto.ICMS.vFCPDif;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPEfet := I.Imposto.ICMS.vFCPEfet;

    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vBCUFDest := I.Imposto.ICMSUFDest.vBCUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pFCPUFDest := I.Imposto.ICMSUFDest.pFCPUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSUFDest := I.Imposto.ICMSUFDest.pICMSUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSInter := I.Imposto.ICMSUFDest.pICMSInter;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSInterPart := I.Imposto.ICMSUFDest.pICMSInterPart;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vFCPUFDest := I.Imposto.ICMSUFDest.vFCPUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFDest := I.Imposto.ICMSUFDest.vICMSUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFRemet := I.Imposto.ICMSUFDest.vICMSUFRemet;

    FConf.Component.ACBr.Produto.Imposto.II.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vDespAdu := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vII := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vIOF := 0;

    FConf.Component.ACBr.Produto.Imposto.PIS.CST := TAcbrUtils.StrToEnumCSTPis(I.Imposto.PIS.CST);
    FConf.Component.ACBr.Produto.Imposto.PIS.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.PIS.pPIS := 0;
    FConf.Component.ACBr.Produto.Imposto.PIS.vPIS := 0;
    FConf.Component.ACBr.Produto.Imposto.PIS.qBCprod := 0;
    FConf.Component.ACBr.Produto.Imposto.PIS.vAliqProd := 0;
    FConf.Component.ACBr.Produto.Imposto.PIS.vPIS := 0;

    FConf.Component.ACBr.Produto.Imposto.PISST.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.PISST.pPIS := 0;
    FConf.Component.ACBr.Produto.Imposto.PISST.qBCprod := 0;
    FConf.Component.ACBr.Produto.Imposto.PISST.vAliqProd := 0;
    FConf.Component.ACBr.Produto.Imposto.PISST.vPIS := 0;
    FConf.Component.ACBr.Produto.Imposto.PISST.IndSomaPISST := TAcbrUtils.StrToEnumSomaPISST(I.Imposto.PISST.IndSomaPISST);

    FConf.Component.ACBr.Produto.Imposto.COFINS.CST := TAcbrUtils.StrToEnumCSTCofins(I.Imposto.COFINS.CST);
    FConf.Component.ACBr.Produto.Imposto.COFINS.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINS.pCOFINS := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINS.vCOFINS := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINS.qBCprod := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINS.vAliqProd := 0;

    FConf.Component.ACBr.Produto.Imposto.COFINSST.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINSST.pCOFINS := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINSST.qBCprod := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINSST.vAliqProd := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINSST.vCOFINS := 0;
    FConf.Component.ACBr.Produto.Imposto.COFINSST.indSomaCOFINSST := TAcbrUtils.StrToEnumSomaCofinsST(I.Imposto.COFINSST.indSomaCOFINSST);
  end;
end;

class function TRepositoryProd.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
