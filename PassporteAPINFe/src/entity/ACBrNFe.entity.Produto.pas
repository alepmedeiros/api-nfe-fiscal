unit ACBrNFe.entity.Produto;

interface

uses
  ACBrNFe.entity.ProdImposto,
  ACBrNFe.entity.Veiculo,
  ACBrNFe.entity.Combustivel;

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
    FCST: String;
    FOrig: String;
    FValorDespesa: Currency;
    FValorIPI: Currency;
    FAliquotaIPI: Currency;
    FAliquotaICMS: Currency;
    FPercentualReducao: Currency;
//    FVeiculo: TVeiculo;
//    FCombustivel: TCombustivel;
//    FImposto: TProdImposto;
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
    property ValorDespesa: Currency read FValorDespesa write FValorDespesa;
    property ValorIPI: Currency read FValorIPI write FValorIPI;
    property AliquotaIPI: Currency read FAliquotaIPI write FAliquotaIPI;
    property AliquotaICMS: Currency read FAliquotaICMS write FAliquotaICMS;
    property PercentualReducao: Currency read FPercentualReducao write FPercentualReducao;
    property CEST: String read FCEST write FCEST;
    property InfAdProd: String read FInfAdProd write FInfAdProd;
    property CodBarra: String read FCodBarra write FCodBarra;
    property CST: String read FCST write FCST;
    property Orig: String read FOrig write FOrig;
//    property Veiculo: TVeiculo read FVeiculo write FVeiculo;
//    property Combustivel: TCombustivel read FCombustivel write FCombustivel;
//    property Imposto: TProdImposto read FImposto write FImposto;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
//  FImposto := TProdImposto.Create;
end;

destructor TProduto.Destroy;
begin
//  FImposto.DisposeOf;
end;

end.
