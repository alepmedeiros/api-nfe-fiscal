unit ACBrNFe.usecase.RepositoryTotal;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.pedidos;

type
  TRepositoryTotal = class(TInterfacedObject, iCommand)
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

constructor TRepositoryTotal.Create(Conf: iActionNFe; Pedido: TPedido);
begin
  FConf := Conf;
  FPedido := Pedido;
end;

destructor TRepositoryTotal.Destroy;
begin

  inherited;
end;

function TRepositoryTotal.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBC :=
    FPedido.Total.ICMS.vBC;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMS :=
    FPedido.Total.ICMS.vICMS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBCST :=
    FPedido.Total.ICMS.vBCST;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vST :=
    FPedido.Total.ICMS.vST;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vProd :=
    FPedido.Total.ICMS.vProd;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFrete :=
    FPedido.Total.ICMS.vFrete;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vSeg :=
    FPedido.Total.ICMS.vSeg;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vDesc :=
    FPedido.Total.ICMS.vDesc;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vII :=
    FPedido.Total.ICMS.vII;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vIPI :=
    FPedido.Total.ICMS.vIPI;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vPIS :=
    FPedido.Total.ICMS.vPIS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vCOFINS :=
    FPedido.Total.ICMS.vCOFINS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vOutro :=
    FPedido.Total.ICMS.vOutro;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vNF :=
    FPedido.Total.ICMS.vNF;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vTotTrib :=
    FPedido.Total.ICMS.vTotTrib;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPUFDest :=
    FPedido.Total.ICMS.vFCPUFDest;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFDest :=
    FPedido.Total.ICMS.vICMSUFDest;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFRemet :=
    FPedido.Total.ICMS.vICMSUFRemet;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPST :=
    FPedido.Total.ICMS.vFCPST;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPSTRet :=
    FPedido.Total.ICMS.vFCPSTRet;

  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPIS :=
    FPedido.Total.RetTrib.vRetPIS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCOFINS :=
    FPedido.Total.RetTrib.vRetCOFINS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCSLL :=
    FPedido.Total.RetTrib.vRetCSLL;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vBCIRRF :=
    FPedido.Total.RetTrib.vBCIRRF;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vIRRF :=
    FPedido.Total.RetTrib.vIRRF;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vBCRetPrev :=
    FPedido.Total.RetTrib.vBCRetPrev;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPrev :=
    FPedido.Total.RetTrib.vRetPrev;
end;

class function TRepositoryTotal.New(Conf: iActionNFe; Pedido: TPedido)
  : iCommand;
begin
  Result := Self.Create(Conf, Pedido);
end;

end.
