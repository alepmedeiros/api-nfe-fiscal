unit ACBrNFe.adapter.CombCIDE;

interface

type
  TCombCIDE = class
  private
    FQBCProd: Currency;
    FAliqProd: Currency;
    FVCIDE: Currency;
  public
    property QBCProd: Currency read FQBCProd write FQBCProd;
    property AliqProd: Currency read FAliqProd write FAliqProd;
    property VCIDE: Currency read FVCIDE write FVCIDE;
  end;

implementation

end.
