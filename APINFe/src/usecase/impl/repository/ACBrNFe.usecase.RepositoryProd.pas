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
var
  I: Integer;
begin
  Result := Self;

  for I := 0 to Pred(FConf.Entity.Pedido.Produto.Count) do
  begin
    FConf.Component.ACBr.AddProduto;
    FConf.Component.ACBr.Produto.Prod.nItem := I+1;
    FConf.Component.ACBr.Produto.Prod.cProd := FConf.Entity.Pedido.Produto[I].Codigo;
    FConf.Component.ACBr.Produto.Prod.cEAN := FConf.Entity.Pedido.Produto[I].EAN;
    FConf.Component.ACBr.Produto.Prod.xProd := FConf.Entity.Pedido.Produto[I].Descricao;
    FConf.Component.ACBr.Produto.Prod.NCM := FConf.Entity.Pedido.Produto[I].NCM;
    FConf.Component.ACBr.Produto.Prod.EXTIPI := FConf.Entity.Pedido.Produto[I].ExtIPI;
    FConf.Component.ACBr.Produto.Prod.CFOP := FConf.Entity.Pedido.Produto[I].CFOP;
    FConf.Component.ACBr.Produto.Prod.uCom := FConf.Entity.Pedido.Produto[I].Unidade;
    FConf.Component.ACBr.Produto.Prod.qCom := FConf.Entity.Pedido.Produto[I].Quantidade;
    FConf.Component.ACBr.Produto.Prod.vUnCom := FConf.Entity.Pedido.Produto[I].ValorUnitario;
    FConf.Component.ACBr.Produto.Prod.vProd := FConf.Entity.Pedido.Produto[I].PrecoVenda;
    FConf.Component.ACBr.Produto.Prod.cEANTrib := FConf.Entity.Pedido.Produto[I].EAN;
    FConf.Component.ACBr.Produto.Prod.uTrib := FConf.Entity.Pedido.Produto[I].Unidade;
    FConf.Component.ACBr.Produto.Prod.qTrib := FConf.Entity.Pedido.Produto[I].Quantidade;
    FConf.Component.ACBr.Produto.Prod.vUnTrib := FConf.Entity.Pedido.Produto[I].ValorUnitario;
    FConf.Component.ACBr.Produto.Prod.vOutro := FConf.Entity.Pedido.Produto[I].ValorOutro;
    FConf.Component.ACBr.Produto.Prod.vFrete := FConf.Entity.Pedido.Produto[I].ValorFrete;
    FConf.Component.ACBr.Produto.Prod.vSeg := FConf.Entity.Pedido.Produto[I].ValorSeguro;
    FConf.Component.ACBr.Produto.Prod.vDesc := FConf.Entity.Pedido.Produto[I].ValorDesconto;
    FConf.Component.ACBr.Produto.Prod.CEST := FConf.Entity.Pedido.Produto[I].CEST;
    FConf.Component.ACBr.Produto.infAdProd := FConf.Entity.Pedido.Produto[I].infAdProd;
    FConf.Component.ACBr.Produto.Prod.cBarra := FConf.Entity.Pedido.Produto[I].CodBarra;
    FConf.Component.ACBr.Produto.Prod.cBarraTrib := FConf.Entity.Pedido.Produto[I].CodBarra;

    FConf.Component.ACBr.Produto.Imposto.vTotTrib := FConf.Entity.Pedido.Produto[I].Imposto.vTotTrib;
    FConf.Component.ACBr.Produto.Imposto.ICMS.orig :=  TAcbrUtils.StrToEnumOrigMerc(FConf.Entity.Pedido.Produto[I].Imposto.ICMS.orig);

    FConf.Component.ACBr.Produto.Imposto.ICMS.CST := TAcbrUtils.StrToEnumCST(FConf.Entity.Pedido.Produto[I].Imposto.ICMS.CST);
    FConf.Component.ACBr.Produto.Imposto.ICMS.modBC := TAcbrUtils.StrToEnumDetBaseIcms(FConf.Entity.Pedido.Produto[I].Imposto.ICMS.modBC);
    FConf.Component.ACBr.Produto.Imposto.ICMS.pMVAST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pMVAST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pRedBCST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vBCST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pICMSST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vICMSST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBC := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pRedBC;

    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vBCFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCSTRet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vBCSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pST := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSubstituto := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vICMSSubstituto;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTRet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vICMSSTRet;

    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPSTRet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vBCFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPSTRet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPSTRet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCEfet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pRedBCEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCEfet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vBCEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSEfet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pICMSEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSEfet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vICMSEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTDeson := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vICMSSTDeson;
    FConf.Component.ACBr.Produto.Imposto.ICMS.motDesICMSST := TAcbrUtils.StrToEnumMotivoDeso(FConf.Entity.Pedido.Produto[I].Imposto.ICMS.motDesICMSST);
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPDif := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.pFCPDif;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPDif := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vFCPDif;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPEfet := FConf.Entity.Pedido.Produto[I].Imposto.ICMS.vFCPEfet;

    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vBCUFDest := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.vBCUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pFCPUFDest := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.pFCPUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSUFDest := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.pICMSUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSInter := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.pICMSInter;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSInterPart := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.pICMSInterPart;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vFCPUFDest := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.vFCPUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFDest := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.vICMSUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFRemet := FConf.Entity.Pedido.Produto[I].Imposto.ICMSUFDest.vICMSUFRemet;

    FConf.Component.ACBr.Produto.Imposto.II.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vDespAdu := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vII := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vIOF := 0;

    FConf.Component.ACBr.Produto.Imposto.PIS.CST := TAcbrUtils.StrToEnumCSTPis(FConf.Entity.Pedido.Produto[I].Imposto.PIS.CST);
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
    FConf.Component.ACBr.Produto.Imposto.PISST.IndSomaPISST := TAcbrUtils.StrToEnumSomaPISST(FConf.Entity.Pedido.Produto[I].Imposto.PISST.IndSomaPISST);

    FConf.Component.ACBr.Produto.Imposto.COFINS.CST := TAcbrUtils.StrToEnumCSTCofins(FConf.Entity.Pedido.Produto[I].Imposto.COFINS.CST);
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
    FConf.Component.ACBr.Produto.Imposto.COFINSST.indSomaCOFINSST := TAcbrUtils.StrToEnumSomaCofinsST(FConf.Entity.Pedido.Produto[I].Imposto.COFINSST.indSomaCOFINSST);
  end;
end;

class function TRepositoryProd.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
