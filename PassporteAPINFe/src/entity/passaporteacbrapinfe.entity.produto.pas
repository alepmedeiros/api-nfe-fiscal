unit passaporteacbrapinfe.entity.produto;

interface

uses
  passaporteacbrapinfe.entity.ProdImposto;

type
  TProduto = class
  private
    FItem: Integer;
    FCodigo: String;
    FEAN: String;
    FDescricao: String;
    FNCM: String;
    FExtIPI: String;
    FCFOP: String;
    FUnidade: String;
    FQuantidade: Integer;
    FValorUnitario: Currency;
    FPrecoVenda: Currency;
    FValorOutro: Currency;
    FValorFrete: Currency;
    FValorSeguro: Currency;
    FValorDesconto: Currency;
    FCEST: String;
    FInfAdProd: String;
    FCodBarra: String;
    FImposto: TProdImposto;
  public
    constructor Create;
    destructor Destroy;
    property Item: Integer read FItem write FItem;
    property Codigo: String read FCodigo write FCodigo;
    property EAN: String read FEAN write FEAN;
    property Descricao: String read FDescricao write FDescricao;
    property NCM: String read FNCM write FNCM;
    property ExtIPI: String read FExtIPI write FExtIPI;
    property CFOP: String read FCFOP write FCFOP;
    property Unidade: String read FUnidade write FUnidade;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorOutro: Currency read FValorOutro write FValorOutro;
    property ValorFrete: Currency read FValorFrete write FValorFrete;
    property ValorSeguro: Currency read FValorSeguro write FValorSeguro;
    property ValorDesconto: Currency read FValorDesconto write FValorDesconto;
    property CEST: String read FCEST write FCEST;
    property InfAdProd: String read FInfAdProd write FInfAdProd;
    property CodBarra: String read FCodBarra write FCodBarra;
    property Imposto: TProdImposto read FImposto write FImposto;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

end;

end.
