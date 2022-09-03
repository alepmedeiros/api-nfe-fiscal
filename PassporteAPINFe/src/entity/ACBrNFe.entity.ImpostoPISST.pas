unit ACBrNFe.entity.ImpostoPISST;

interface

type
  TImpostoPISST = class
  private
    FvBC: Currency;
    FpPIS: Currency;
    FQBCProd: Currency;
    FvAliqProd: Currency;
    FvPIS: Currency;
    FIndSomaPISST: String;
  public
    property vBC: Currency read FvBC write FvBC;
    property pPIS: Currency read FpPIS write FpPIS;
    property QBCProd: Currency read FQBCProd write FQBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
    property vPIS: Currency read FvPIS write FvPIS;
    property IndSomaPISST: String read FIndSomaPISST write FIndSomaPISST;
  end;

implementation

end.
