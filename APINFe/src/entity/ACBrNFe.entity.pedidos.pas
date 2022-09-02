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
  TPedido = class
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
  public
    property NatOp: String read FNatOp write FNatOp;
    property IndPag: String read FIndPag write FIndPag;
    property TipoNfe: String read FTipoNfe write FTipoNfe;
    property TipoEmis: String read FTipoEmis write FTipoEmis;
    property Destinatario: TDestinatario read FDestinatario write FDestinatario;
    property Produto: TObjectList<TProduto> read FProduto write FProduto;
    property Total: TTotal read FTotal write FTotal;
    property Transportadora: TTransportadora read FTransportadora
      write FTransportadora;
    property CobrancaFat: TCobrancaFat read FCobrancaFat write FCobrancaFat;
    property CobrancaDuplicata: TObjectList<TCobrancaDuplicata>
      read FCobrancaDuplicata write FCobrancaDuplicata;
    property InfAdicional: TInfAdicionais read FInfAdicional
      write FInfAdicional;
    property exporta: TExporta read FExporta write FExporta;
    property Compra: TCompra read FCompra write FCompra;
    property Pagamento: TObjectList<TPagamento> read FPagamento
      write FPagamento;
    property InfIntermed: TInfIntermed read FInfIntermed write FInfIntermed;
  end;

implementation

end.
