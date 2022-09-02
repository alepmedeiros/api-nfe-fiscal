unit ACBrNFe.entity.ProdImposto;

interface

uses
  ACBrNFe.entity.ImpostoCOFINSST,
  ACBrNFe.entity.ImpostoCOFINS,
  ACBrNFe.entity.ImpostoPISST,
  ACBrNFe.entity.ImpostoPIS,
  ACBrNFe.entity.ImpostoICMS,
  ACBrNFe.entity.ImpostoICMSUFDest,
  ACBrNFe.entity.ImpostoII;

type
  TProdImposto = class
  private
    FvTotTrib: Currency;
    FICMS: TImpostoICMS;
    FICMSUFDest: TImpostoICMSUFDest;
    FII: TImpostoII;
    FPIS: TImpostoPIS;
    FPISST: TImpostoPISST;
    FCOFINS: TImpostoCOFINS;
    FCOFINSST: TImpostoCOFINSST;
  public
    constructor Create;
    destructor Destroy;
    property vTotTrib: Currency read FvTotTrib write FvTotTrib;
    property ICMS: TImpostoICMS read FICMS write FICMS;
    property ICMSUFDest: TImpostoICMSUFDest read FICMSUFDest write FICMSUFDest;
    property II: TImpostoII read FII write FII;
    property PIS: TImpostoPIS read FPIS write FPIS;
    property PISST: TImpostoPISST read FPISST write FPISST;
    property COFINS: TImpostoCOFINS read FCOFINS write FCOFINS;
    property COFINSST: TImpostoCOFINSST read FCOFINSST write FCOFINSST;
  end;

implementation

{ TProdImposto }

constructor TProdImposto.Create;
begin
  FICMS := TImpostoICMS.Create;
  FICMSUFDest := TImpostoICMSUFDest.Create;
  FII := TImpostoII.Create;
  FPIS := TImpostoPIS.Create;
  FPISST := TImpostoPISST.Create;
  FCOFINS := TImpostoCOFINS.Create;
  FCOFINSST := TImpostoCOFINSST.Create;
end;

destructor TProdImposto.Destroy;
begin
  FICMS.DisposeOf;
  FICMSUFDest.DisposeOf;
  FII.DisposeOf;
  FPIS.DisposeOf;
  FPISST.DisposeOf;
  FCOFINS.DisposeOf;
  FCOFINSST.DisposeOf;
end;

end.
