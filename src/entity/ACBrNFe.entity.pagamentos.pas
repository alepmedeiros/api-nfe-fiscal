unit ACBrNFe.entity.pagamentos;

interface

type
  TPagamento = class
  private
    FIdentificacao: String;
    FTipo: String;
    FValor: Currency;
    FIntegrado: String;
    FCNPJ: String;
    FBandeiraCartao: String;
    FCodAutorizacao: String;
  public
    property Identificacao: String read FIdentificacao write FIdentificacao;
    property Tipo: String read FTipo write FTipo;
    property Valor: Currency read FValor write FValor;
    property Integrado: String read FIntegrado write FIntegrado;
    property CNPJ: String read FCNPJ write FCNPJ;
    property BandeiraCartao: String read FBandeiraCartao write FBandeiraCartao;
    property CodAutorizacao: String read FCodAutorizacao write FCodAutorizacao;
  end;

implementation

end.
