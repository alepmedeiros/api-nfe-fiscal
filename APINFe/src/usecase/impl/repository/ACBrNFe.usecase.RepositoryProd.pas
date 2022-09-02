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
    FPedido: TPedido;
  public
    constructor Create(Conf: iActionNFe; Pedido: TPedido);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Pedido: TPedido): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProd.Create(Conf: iActionNFe; Pedido: TPedido);
begin
  FConf := Conf;
  FPedido := Pedido;
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

  for I := 0 to Pred(FPedido.Produto.Count) do
  begin
    FConf.Component.ACBr.AddProduto;
    FConf.Component.ACBr.Produto.Prod.nItem := I+1;
    FConf.Component.ACBr.Produto.Prod.cProd := FPedido.Produto[I].Codigo;
    FConf.Component.ACBr.Produto.Prod.cEAN := FPedido.Produto[I].EAN;
    FConf.Component.ACBr.Produto.Prod.xProd := FPedido.Produto[I].Descricao;
    FConf.Component.ACBr.Produto.Prod.NCM := FPedido.Produto[I].NCM;
    FConf.Component.ACBr.Produto.Prod.EXTIPI := FPedido.Produto[I].ExtIPI;
    FConf.Component.ACBr.Produto.Prod.CFOP := FPedido.Produto[I].CFOP;
    FConf.Component.ACBr.Produto.Prod.uCom := FPedido.Produto[I].Unidade;
    FConf.Component.ACBr.Produto.Prod.qCom := FPedido.Produto[I].Quantidade;
    FConf.Component.ACBr.Produto.Prod.vUnCom := FPedido.Produto[I].ValorUnitario;
    FConf.Component.ACBr.Produto.Prod.vProd := FPedido.Produto[I].PrecoVenda;
    FConf.Component.ACBr.Produto.Prod.cEANTrib := FPedido.Produto[I].EAN;
    FConf.Component.ACBr.Produto.Prod.uTrib := FPedido.Produto[I].Unidade;
    FConf.Component.ACBr.Produto.Prod.qTrib := FPedido.Produto[I].Quantidade;
    FConf.Component.ACBr.Produto.Prod.vUnTrib := FPedido.Produto[I].ValorUnitario;
    FConf.Component.ACBr.Produto.Prod.vOutro := FPedido.Produto[I].ValorOutro;
    FConf.Component.ACBr.Produto.Prod.vFrete := FPedido.Produto[I].ValorFrete;
    FConf.Component.ACBr.Produto.Prod.vSeg := FPedido.Produto[I].ValorSeguro;
    FConf.Component.ACBr.Produto.Prod.vDesc := FPedido.Produto[I].ValorDesconto;
    FConf.Component.ACBr.Produto.Prod.CEST := FPedido.Produto[I].CEST;
    FConf.Component.ACBr.Produto.infAdProd := FPedido.Produto[I].infAdProd;
    FConf.Component.ACBr.Produto.Prod.cBarra := FPedido.Produto[I].CodBarra;
    FConf.Component.ACBr.Produto.Prod.cBarraTrib := FPedido.Produto[I].CodBarra;

    FConf.Component.ACBr.Produto.Imposto.vTotTrib := FPedido.Produto[I].Imposto.vTotTrib;
    FConf.Component.ACBr.Produto.Imposto.ICMS.orig :=  TAcbrUtils.StrToEnumOrigMerc(FPedido.Produto[I].Imposto.ICMS.orig);

    FConf.Component.ACBr.Produto.Imposto.ICMS.CST := TAcbrUtils.StrToEnumCST(FPedido.Produto[I].Imposto.ICMS.CST);
    FConf.Component.ACBr.Produto.Imposto.ICMS.modBC := TAcbrUtils.StrToEnumDetBaseIcms(FPedido.Produto[I].Imposto.ICMS.modBC);
    FConf.Component.ACBr.Produto.Imposto.ICMS.pMVAST := FPedido.Produto[I].Imposto.ICMS.pMVAST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCST := FPedido.Produto[I].Imposto.ICMS.pRedBCST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCST := FPedido.Produto[I].Imposto.ICMS.vBCST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSST := FPedido.Produto[I].Imposto.ICMS.pICMSST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSST := FPedido.Produto[I].Imposto.ICMS.vICMSST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBC := FPedido.Produto[I].Imposto.ICMS.pRedBC;

    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPST := FPedido.Produto[I].Imposto.ICMS.vBCFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPST := FPedido.Produto[I].Imposto.ICMS.pFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPST := FPedido.Produto[I].Imposto.ICMS.vFCPST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCSTRet := FPedido.Produto[I].Imposto.ICMS.vBCSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pST := FPedido.Produto[I].Imposto.ICMS.pST;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSubstituto := FPedido.Produto[I].Imposto.ICMS.vICMSSubstituto;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTRet := FPedido.Produto[I].Imposto.ICMS.vICMSSTRet;

    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCFCPSTRet := FPedido.Produto[I].Imposto.ICMS.vBCFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPSTRet := FPedido.Produto[I].Imposto.ICMS.pFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPSTRet := FPedido.Produto[I].Imposto.ICMS.vFCPSTRet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pRedBCEfet := FPedido.Produto[I].Imposto.ICMS.pRedBCEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vBCEfet := FPedido.Produto[I].Imposto.ICMS.vBCEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.pICMSEfet := FPedido.Produto[I].Imposto.ICMS.pICMSEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSEfet := FPedido.Produto[I].Imposto.ICMS.vICMSEfet;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vICMSSTDeson := FPedido.Produto[I].Imposto.ICMS.vICMSSTDeson;
    FConf.Component.ACBr.Produto.Imposto.ICMS.motDesICMSST := TAcbrUtils.StrToEnumMotivoDeso(FPedido.Produto[I].Imposto.ICMS.motDesICMSST);
    FConf.Component.ACBr.Produto.Imposto.ICMS.pFCPDif := FPedido.Produto[I].Imposto.ICMS.pFCPDif;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPDif := FPedido.Produto[I].Imposto.ICMS.vFCPDif;
    FConf.Component.ACBr.Produto.Imposto.ICMS.vFCPEfet := FPedido.Produto[I].Imposto.ICMS.vFCPEfet;

    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vBCUFDest := FPedido.Produto[I].Imposto.ICMSUFDest.vBCUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pFCPUFDest := FPedido.Produto[I].Imposto.ICMSUFDest.pFCPUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSUFDest := FPedido.Produto[I].Imposto.ICMSUFDest.pICMSUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSInter := FPedido.Produto[I].Imposto.ICMSUFDest.pICMSInter;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.pICMSInterPart := FPedido.Produto[I].Imposto.ICMSUFDest.pICMSInterPart;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vFCPUFDest := FPedido.Produto[I].Imposto.ICMSUFDest.vFCPUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFDest := FPedido.Produto[I].Imposto.ICMSUFDest.vICMSUFDest;
    FConf.Component.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFRemet := FPedido.Produto[I].Imposto.ICMSUFDest.vICMSUFRemet;

    FConf.Component.ACBr.Produto.Imposto.II.vBC := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vDespAdu := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vII := 0;
    FConf.Component.ACBr.Produto.Imposto.II.vIOF := 0;

    FConf.Component.ACBr.Produto.Imposto.PIS.CST := TAcbrUtils.StrToEnumCSTPis(FPedido.Produto[I].Imposto.PIS.CST);
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
    FConf.Component.ACBr.Produto.Imposto.PISST.IndSomaPISST := TAcbrUtils.StrToEnumSomaPISST(FPedido.Produto[I].Imposto.PISST.IndSomaPISST);

    FConf.Component.ACBr.Produto.Imposto.COFINS.CST := TAcbrUtils.StrToEnumCSTCofins(FPedido.Produto[I].Imposto.COFINS.CST);
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
    FConf.Component.ACBr.Produto.Imposto.COFINSST.indSomaCOFINSST := TAcbrUtils.StrToEnumSomaCofinsST(FPedido.Produto[I].Imposto.COFINSST.indSomaCOFINSST);
  end;
end;

class function TRepositoryProd.New(Conf: iActionNFe; Pedido: TPedido): iCommand;
begin
  Result := Self.Create(Conf, Pedido);
end;

end.
