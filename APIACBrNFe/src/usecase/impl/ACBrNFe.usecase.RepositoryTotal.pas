unit ACBrNFe.usecase.RepositoryTotal;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryTotal = class(TInterfacedObject, iCommand)
    private
      FConf: iComponentFactory;
      FEntity: iFactoryEntity;
    public
      constructor Create(Conf: iComponentFactory; Entity: iFactoryEntity);
      destructor Destroy; override;
      class function New(Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryTotal.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryTotal.Destroy;
begin

  inherited;
end;

function TRepositoryTotal.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBC := FEntity.Total.ICMSTot.vBC;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMS := FEntity.Total.ICMSTot.vICMS;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vBCST := FEntity.Total.ICMSTot.vBCST;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vST := FEntity.Total.ICMSTot.vST;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vProd := FEntity.Total.ICMSTot.vProd;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFrete := FEntity.Total.ICMSTot.vFrete;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vSeg := FEntity.Total.ICMSTot.vSeg;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vDesc := FEntity.Total.ICMSTot.vDesc;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vII := FEntity.Total.ICMSTot.vII;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vIPI := FEntity.Total.ICMSTot.vIPI;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vPIS := FEntity.Total.ICMSTot.vPIS;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vCOFINS := FEntity.Total.ICMSTot.vCOFINS;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vOutro := FEntity.Total.ICMSTot.vOutro;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vNF := FEntity.Total.ICMSTot.vNF;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vTotTrib := FEntity.Total.ICMSTot.vTotTrib;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPUFDest := FEntity.Total.ICMSTot.vFCPUFDest;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFDest := FEntity.Total.ICMSTot.vICMSUFDest;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vICMSUFRemet := FEntity.Total.ICMSTot.vICMSUFRemet;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPST := FEntity.Total.ICMSTot.vFCPST;
  FConf.ACBr.NotaFiscal.NFe.Total.ICMSTot.vFCPSTRet := FEntity.Total.ICMSTot.vFCPSTRet;

  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPIS := FEntity.Total.retTrib.vRetPIS;
  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCOFINS := FEntity.Total.retTrib.vRetCOFINS;
  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vRetCSLL := FEntity.Total.retTrib.vRetCSLL;
  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vBCIRRF := FEntity.Total.retTrib.vBCIRRF;
  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vIRRF := FEntity.Total.retTrib.vIRRF;
  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vBCRetPrev := FEntity.Total.retTrib.vBCRetPrev;
  FConf.ACBr.NotaFiscal.NFe.Total.retTrib.vRetPrev := FEntity.Total.retTrib.vRetPrev;
end;

class function TRepositoryTotal.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
