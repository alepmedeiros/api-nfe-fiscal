unit ACBrNFe.entity.CombICMSInter;

interface

type
  TCombICMSInter = class
  private
    FvBCICMSSTDest: Currency;
    FvICMSSTDest: Currency;
  public
    property vBCICMSSTDest: Currency read FvBCICMSSTDest write FvBCICMSSTDest;
    property vICMSSTDest: Currency read FvICMSSTDest write FvICMSSTDest;
  end;

implementation

end.
