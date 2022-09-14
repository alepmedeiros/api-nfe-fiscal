unit ACBrNFe.adapter.ImpostoPIS;

interface

type
  TImpostoPIS = class
  private
    FCST: String;
    FvBC: Currency;
    FpPIS: Currency;
    FvPIS: Currency;
    FQBCProd: Currency;
    FvAliqProd: Currency;
  public
    property CST: String read FCST write FCST;
    property vBC: Currency read FvBC write FvBC;
    property pPIS: Currency read FpPIS write FpPIS;
    property vPIS: Currency read FvPIS write FvPIS;
    property QBCProd: Currency read FQBCProd write FQBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
  end;

implementation

end.
