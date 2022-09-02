unit ACBrNFe.adapter.ImpostoCOFINS;

interface

type
  TImpostoCOFINS = class
  private
    FCST: String;
    FvBC: Currency;
    FpCOFINS: Currency;
    FvCOFINS: Currency;
    FQBCProd: Currency;
    FvAliqProd: Currency;
  public
    property CST: String read FCST write FCST;
    property vBC: Currency read FvBC write FvBC;
    property pCOFINS: Currency read FpCOFINS write FpCOFINS;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
    property QBCProd: Currency read FQBCProd write FQBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
  end;

implementation

end.
