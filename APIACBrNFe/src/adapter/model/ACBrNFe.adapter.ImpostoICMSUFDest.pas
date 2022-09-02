unit ACBrNFe.adapter.ImpostoICMSUFDest;

interface

type
  TImpostoICMSUFDest = class
  private
    FvBCUFDest: Currency;
    FpFCPUFDest: Currency;
    FpICMSUFDest: Currency;
    FpICMSInter: Currency;
    FpICMSInterPart: Currency;
    FvFCPUFDest: Currency;
    FvICMSUFDest: Currency;
    FvICMSUFRemet: Currency;
  public
    property vBCUFDest: Currency read FvBCUFDest write FvBCUFDest;
    property pFCPUFDest: Currency read FpFCPUFDest write FpFCPUFDest;
    property pICMSUFDest: Currency read FpICMSUFDest write FpICMSUFDest;
    property pICMSInter: Currency read FpICMSInter write FpICMSInter;
    property pICMSInterPart: Currency read FpICMSInterPart
      write FpICMSInterPart;
    property vFCPUFDest: Currency read FvFCPUFDest write FvFCPUFDest;
    property vICMSUFDest: Currency read FvICMSUFDest write FvICMSUFDest;
    property vICMSUFRemet: Currency read FvICMSUFRemet write FvICMSUFRemet;
  end;

implementation

end.
