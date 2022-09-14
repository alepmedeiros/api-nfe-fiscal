unit passaporteacbrapinfe.entity.ProdImposto;

interface

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

end.
