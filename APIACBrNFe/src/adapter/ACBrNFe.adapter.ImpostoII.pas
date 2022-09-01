unit ACBrNFe.adapter.ImpostoII;

interface

type
  TImpostoII = class
  private
    FvBC: Currency;
    FvDespAdu: Currency;
    FvII: Currency;
    FvIOF: Currency;
  public
    property vBC: Currency read FvBC write FvBC;
    property vDespAdu: Currency read FvDespAdu write FvDespAdu;
    property vII: Currency read FvII write FvII;
    property vIOF: Currency read FvIOF write FvIOF;
  end;

implementation

end.
