unit ACBrNFe.entity.ImpostoICMS;

interface

type
  TImpostoICMS = class
  private
    FvFCPDif: Currency;
    FvBCSTRet: Currency;
    FpICMS: Currency;
    FvICMS: Currency;
    FpICMSEfet: Currency;
    FmodBC: String;
    FvICMSEfet: Currency;
    Forig: String;
    FvBC: Currency;
    FvFCPEfet: Currency;
    FvBCFCPST: Currency;
    FvBCFCPSTRet: Currency;
    FvBCEfet: Currency;
    FpST: Currency;
    FpCredSN: Currency;
    FpRedBCST: Currency;
    FvICMSSTDeson: Currency;
    FvICMSSubstituto: Currency;
    FpICMSST: Currency;
    FmotDesICMSST: String;
    FvCredICMSSN: Currency;
    FvICMSST: Currency;
    FpMVAST: Currency;
    FvICMSSTRet: Currency;
    FpFCPST: Currency;
    FpRedBC: Currency;
    FmodBCST: String;
    FpFCPSTRet: Currency;
    FvFCPST: Currency;
    FCST: String;
    FpRedBCEfet: Currency;
    FvFCPSTRet: Currency;
    FpFCPDif: Currency;
    FvBCST: Currency;
  public
    property CST: String read FCST write FCST;
    property orig: String read Forig write Forig;
    property modBC: String read FmodBC write FmodBC;
    property vBC: Currency read FvBC write FvBC;
    property pICMS: Currency read FpICMS write FpICMS;
    property vICMS: Currency read FvICMS write FvICMS;
    property modBCST: String read FmodBCST write FmodBCST;
    property pMVAST: Currency read FpMVAST write FpMVAST;
    property pRedBCST: Currency read FpRedBCST write FpRedBCST;
    property vBCST: Currency read FvBCST write FvBCST;
    property pICMSST: Currency read FpICMSST write FpICMSST;
    property vICMSST: Currency read FvICMSST write FvICMSST;
    property pRedBC: Currency read FpRedBC write FpRedBC;
    property pCredSN: Currency read FpCredSN write FpCredSN;
    property vCredICMSSN: Currency read FvCredICMSSN write FvCredICMSSN;
    property vBCFCPST: Currency read FvBCFCPST write FvBCFCPST;
    property pFCPST: Currency read FpFCPST write FpFCPST;
    property vFCPST: Currency read FvFCPST write FvFCPST;
    property vBCSTRet: Currency read FvBCSTRet write FvBCSTRet;
    property pST: Currency read FpST write FpST;
    property vICMSSubstituto: Currency read FvICMSSubstituto
      write FvICMSSubstituto;
    property vICMSSTRet: Currency read FvICMSSTRet write FvICMSSTRet;
    property vBCFCPSTRet: Currency read FvBCFCPSTRet write FvBCFCPSTRet;
    property pFCPSTRet: Currency read FpFCPSTRet write FpFCPSTRet;
    property vFCPSTRet: Currency read FvFCPSTRet write FvFCPSTRet;
    property pRedBCEfet: Currency read FpRedBCEfet write FpRedBCEfet;
    property vBCEfet: Currency read FvBCEfet write FvBCEfet;
    property pICMSEfet: Currency read FpICMSEfet write FpICMSEfet;
    property vICMSEfet: Currency read FvICMSEfet write FvICMSEfet;
    property vICMSSTDeson: Currency read FvICMSSTDeson write FvICMSSTDeson;
    property motDesICMSST: String read FmotDesICMSST write FmotDesICMSST;
    property pFCPDif: Currency read FpFCPDif write FpFCPDif;
    property vFCPDif: Currency read FvFCPDif write FvFCPDif;
    property vFCPEfet: Currency read FvFCPEfet write FvFCPEfet;
  end;

implementation

end.
