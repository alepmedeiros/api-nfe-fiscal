unit ACBrNFe.adapter.CobrancaFat;

interface

type
  TCobrancaFat = class
  private
    FNumero: String;
    FvOrig: Currency;
    FvDesc: Currency;
    FvLiq: Currency;
  public
    property Numero: String read FNumero write FNumero;
    property vOrig: Currency read FvOrig write FvOrig;
    property vDesc: Currency read FvDesc write FvDesc;
    property vLiq: Currency read FvLiq write FvLiq;
  end;

implementation

end.
