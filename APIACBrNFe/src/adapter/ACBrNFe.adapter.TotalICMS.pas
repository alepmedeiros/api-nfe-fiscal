unit ACBrNFe.adapter.TotalICMS;

interface

type
  TTotalICMS = class
  private
    FvBC: Currency;
    FvICMS: Currency;
    FvBCST: Currency;
    FvST: Currency;
    FvProd: Currency;
    FvFrete: Currency;
    FvSeg: Currency;
    FvDesc: Currency;
    FvII: Currency;
    FvIPI: Currency;
    FvPIS: Currency;
    FvCOFINS: Currency;
    FvOutro: Currency;
    FvNF: Currency;
    FvTotTrib: Currency;
    FvFCPUFDest: Currency;
    FvICMSUFDest: Currency;
    FvICMSUFRemet: Currency;
    FvFCPST: Currency;
    FvFCPSTRet: Currency;
  public
    property vBC: Currency read FvBC write FvBC;
    property vICMS: Currency read FvICMS write FvICMS;
    property vBCST: Currency read FvBCST write FvBCST;
    property vST: Currency read FvST write FvST;
    property vProd: Currency read FvProd write FvProd;
    property vFrete: Currency read FvFrete write FvFrete;
    property vSeg: Currency read FvSeg write FvSeg;
    property vDesc: Currency read FvDesc write FvDesc;
    property vII: Currency read FvII write FvII;
    property vIPI: Currency read FvIPI write FvIPI;
    property vPIS: Currency read FvPIS write FvPIS;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
    property vOutro: Currency read FvOutro write FvOutro;
    property vNF: Currency read FvNF write FvNF;
    property vTotTrib: Currency read FvTotTrib write FvTotTrib;
    property vFCPUFDest: Currency read FvFCPUFDest write FvFCPUFDest;
    property vICMSUFDest: Currency read FvICMSUFDest write FvICMSUFDest;
    property vICMSUFRemet: Currency read FvICMSUFRemet write FvICMSUFRemet;
    property vFCPST: Currency read FvFCPST write FvFCPST;
    property vFCPSTRet: Currency read FvFCPSTRet write FvFCPSTRet;
  end;

implementation

end.
