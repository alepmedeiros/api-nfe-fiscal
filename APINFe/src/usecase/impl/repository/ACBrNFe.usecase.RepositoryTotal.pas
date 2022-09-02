unit ACBrNFe.usecase.RepositoryTotal;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

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

//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBC :=
//    FEntity.Total.ICMSTot.vBC;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMS :=
//    FEntity.Total.ICMSTot.vICMS;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBCST :=
//    FEntity.Total.ICMSTot.vBCST;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vST :=
//    FEntity.Total.ICMSTot.vST;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vProd :=
//    FEntity.Total.ICMSTot.vProd;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFrete :=
//    FEntity.Total.ICMSTot.vFrete;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vSeg :=
//    FEntity.Total.ICMSTot.vSeg;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vDesc :=
//    FEntity.Total.ICMSTot.vDesc;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vII :=
//    FEntity.Total.ICMSTot.vII;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vIPI :=
//    FEntity.Total.ICMSTot.vIPI;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vPIS :=
//    FEntity.Total.ICMSTot.vPIS;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vCOFINS :=
//    FEntity.Total.ICMSTot.vCOFINS;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vOutro :=
//    FEntity.Total.ICMSTot.vOutro;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vNF :=
//    FEntity.Total.ICMSTot.vNF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vTotTrib :=
//    FEntity.Total.ICMSTot.vTotTrib;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPUFDest :=
//    FEntity.Total.ICMSTot.vFCPUFDest;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFDest :=
//    FEntity.Total.ICMSTot.vICMSUFDest;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFRemet :=
//    FEntity.Total.ICMSTot.vICMSUFRemet;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPST :=
//    FEntity.Total.ICMSTot.vFCPST;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPSTRet :=
//    FEntity.Total.ICMSTot.vFCPSTRet;
//
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPIS :=
//    FEntity.Total.retTrib.vRetPIS;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCOFINS :=
//    FEntity.Total.retTrib.vRetCOFINS;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCSLL :=
//    FEntity.Total.retTrib.vRetCSLL;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vBCIRRF :=
//    FEntity.Total.retTrib.vBCIRRF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vIRRF :=
//    FEntity.Total.retTrib.vIRRF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vBCRetPrev :=
//    FEntity.Total.retTrib.vBCRetPrev;
//  FConf.Component.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPrev :=
//    FEntity.Total.retTrib.vRetPrev;
end;

class function TRepositoryTotal.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
