unit ACBrNFe.entity.CobrancaDuplicata;

interface

type
  TCobrancaDuplicata = class
  private
    FNumero: String;
    FVencimento: TDateTime;
    FValor: Currency;
  public
    property Numero: String read FNumero write FNumero;
    property Vencimento: TDateTime read FVencimento write FVencimento;
    property Valor: Currency read FValor write FValor;
  end;

implementation

end.
