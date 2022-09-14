unit ACBrNFe.adapter.InfIntermed;

interface

type
  TInfIntermed = class
  private
    FCNPJ: String;
    FIdentificacao: String;
  public
    property CNPJ: String read FCNPJ write FCNPJ;
    property Identificacao: String read FIdentificacao write FIdentificacao;
  end;

implementation

end.
