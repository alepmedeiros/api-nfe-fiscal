unit ACBrNFe.entity.pedidos;

interface

uses
  System.Generics.Collections,
  ACBrNFe.entity.pagamentos,
  ACBrNFe.entity.Compra,
  ACBrNFe.entity.exporta,
  ACBrNFe.entity.CobrancaDuplicata,
  ACBrNFe.entity.CobrancaFat,
  ACBrNFe.entity.Transportadora,
  ACBrNFe.entity.InfAdicionais,
  ACBrNFe.entity.Total,
  ACBrNFe.entity.Produto,
  ACBrNFe.entity.Destinatario,
  ACBrNFe.entity.InfIntermed;

type
  TNFe = class
  private
    FNatOp: String;
    FIndPag: String;
    FTipoNfe: String;
    FTipoEmis: String;
    FDestinatario: TDestinatario;
    FProduto: TObjectList<TProduto>;
    FTotal: TTotal;
    FTransportadora: TTransportadora;
    FCobrancaFat: TCobrancaFat;
    FCobrancaDuplicata: TObjectList<TCobrancaDuplicata>;
    FInfAdicional: TInfAdicionais;
    FExporta: TExporta;
    FCompra: TCompra;
    FPagamento: TObjectList<TPagamento>;
    FInfIntermed: TInfIntermed;
    FSerie: Integer;
  public
    constructor Create;
    destructor Destroy;
    property NatOp: String read FNatOp write FNatOp;
    property IndPag: String read FIndPag write FIndPag;
    property Serie: Integer read FSerie write FSerie;
    property TipoNfe: String read FTipoNfe write FTipoNfe;
    property TipoEmis: String read FTipoEmis write FTipoEmis;
    property Destinatario: TDestinatario read FDestinatario write FDestinatario;
    property Produto: TObjectList<TProduto> read FProduto write FProduto;
    property Total: TTotal read FTotal write FTotal;
    property CobrancaFat: TCobrancaFat read FCobrancaFat write FCobrancaFat;
    property CobrancaDuplicata: TObjectList<TCobrancaDuplicata>
      read FCobrancaDuplicata write FCobrancaDuplicata;
    property Pagamento: TObjectList<TPagamento> read FPagamento
      write FPagamento;
  end;

implementation

{ TNFe }

constructor TNFe.Create;
begin
  FProduto := TObjectList<TProduto>.Create;
  FCobrancaDuplicata := TObjectList<TCobrancaDuplicata>.Create;
  FPagamento := TObjectList<TPagamento>.Create;
  FDestinatario := TDestinatario.Create;
  FCobrancaFat := TCobrancaFat.Create;
  Total := TTotal.Create;
end;

destructor TNFe.Destroy;
begin
  FProduto.DisposeOf;
  FCobrancaDuplicata.DisposeOf;
  FDestinatario.DisposeOf;
  FCobrancaFat.DisposeOf;
  Total.DisposeOf;
end;

end.
