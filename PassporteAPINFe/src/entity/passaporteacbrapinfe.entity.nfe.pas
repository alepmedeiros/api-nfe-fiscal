unit passaporteacbrapinfe.entity.nfe;

interface

uses
  passaporteacbrapinfe.entity.produto,
  System.Generics.Collections, passaporteacbrapinfe.entity.Destinatario;

type
  TNfe = class
  private
    FIndPag: String;
    FNatOp: String;
    FTipoEmis: String;
    FSerie: Integer;
    FTipoNfe: String;
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

{ TNfe }

constructor TNfe.Create;
begin

end;

destructor TNfe.Destroy;
begin

end;

end.
