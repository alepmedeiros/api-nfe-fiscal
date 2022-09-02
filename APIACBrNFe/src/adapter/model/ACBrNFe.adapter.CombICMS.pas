unit ACBrNFe.adapter.CombICMS;

interface

type
  TCombICMS = class
  private
    FvBCICMS: Currency;
    FvICMS: Currency;
    FvBCICMSST: Currency;
    FvICMSST: Currency;
  public
    property vBCICMS: Currency read FvBCICMS write FvBCICMS;
    property vICMS: Currency read FvICMS write FvICMS;
    property vBCICMSST: Currency read FvBCICMSST write FvBCICMSST;
    property vICMSST: Currency read FvICMSST write FvICMSST;
  end;

implementation

end.
