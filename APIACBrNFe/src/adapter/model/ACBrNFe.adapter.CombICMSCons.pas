unit ACBrNFe.adapter.CombICMSCons;

interface

type
  TCombICMSCons = class
  private
    FvBCICMSSTCons: Currency;
    FvICMSSTCons: Currency;
    FUFcons: String;
  public
    property vBCICMSSTCons: Currency read FvBCICMSSTCons write FvBCICMSSTCons;
    property vICMSSTCons: Currency read FvICMSSTCons write FvICMSSTCons;
    property UFcons: String read FUFcons write FUFcons;
  end;

implementation

end.
