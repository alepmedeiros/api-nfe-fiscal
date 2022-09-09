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
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryTotal.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryTotal.Destroy;
begin

  inherited;
end;

function TRepositoryTotal.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBC :=
    FConf.Entity.Pedido.Total.ICMS.vBC;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMS :=
    FConf.Entity.Pedido.Total.ICMS.vICMS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBCST :=
    FConf.Entity.Pedido.Total.ICMS.vBCST;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vST :=
    FConf.Entity.Pedido.Total.ICMS.vST;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vProd :=
    FConf.Entity.Pedido.Total.ICMS.vProd;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFrete :=
    FConf.Entity.Pedido.Total.ICMS.vFrete;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vSeg :=
    FConf.Entity.Pedido.Total.ICMS.vSeg;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vDesc :=
    FConf.Entity.Pedido.Total.ICMS.vDesc;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vII :=
    FConf.Entity.Pedido.Total.ICMS.vII;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vIPI :=
    FConf.Entity.Pedido.Total.ICMS.vIPI;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vPIS :=
    FConf.Entity.Pedido.Total.ICMS.vPIS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vCOFINS :=
    FConf.Entity.Pedido.Total.ICMS.vCOFINS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vOutro :=
    FConf.Entity.Pedido.Total.ICMS.vOutro;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vNF :=
    FConf.Entity.Pedido.Total.ICMS.vNF;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vTotTrib :=
    FConf.Entity.Pedido.Total.ICMS.vTotTrib;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPUFDest :=
    FConf.Entity.Pedido.Total.ICMS.vFCPUFDest;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFDest :=
    FConf.Entity.Pedido.Total.ICMS.vICMSUFDest;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFRemet :=
    FConf.Entity.Pedido.Total.ICMS.vICMSUFRemet;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPST :=
    FConf.Entity.Pedido.Total.ICMS.vFCPST;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPSTRet :=
    FConf.Entity.Pedido.Total.ICMS.vFCPSTRet;

  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPIS :=
    FConf.Entity.Pedido.Total.RetTrib.vRetPIS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCOFINS :=
    FConf.Entity.Pedido.Total.RetTrib.vRetCOFINS;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCSLL :=
    FConf.Entity.Pedido.Total.RetTrib.vRetCSLL;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vBCIRRF :=
    FConf.Entity.Pedido.Total.RetTrib.vBCIRRF;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vIRRF :=
    FConf.Entity.Pedido.Total.RetTrib.vIRRF;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vBCRetPrev :=
    FConf.Entity.Pedido.Total.RetTrib.vBCRetPrev;
  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPrev :=
    FConf.Entity.Pedido.Total.RetTrib.vRetPrev;
end;

class function TRepositoryTotal.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
