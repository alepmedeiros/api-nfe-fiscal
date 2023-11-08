unit ACBrNFe.entity.ImpostoCOFINSST;

interface

type
  TImpostoCOFINSST = class
  private
    FvBC: Currency;
    FpCOFINS: Currency;
    FQBCProd: Currency;
    FvAliqProd: Currency;
    FvCOFINS: Currency;
    FindSomaCOFINSST: String;
  public
    property vBC: Currency read FvBC write FvBC;
    property pCOFINS: Currency read FpCOFINS write FpCOFINS;
    property QBCProd: Currency read FQBCProd write FQBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
    property indSomaCOFINSST: String read FindSomaCOFINSST
      write FindSomaCOFINSST;
  end;

implementation

end.
