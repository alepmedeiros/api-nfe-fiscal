unit apiacbrnfe.serializable.model.identificador;

interface

uses
  GBJSON.Attributes;

type
  TIdentificador = class
  private
    FNaturezaOperacap: String;
    FIndicadorPagamento: String;
    FNumeroNFe: Integer;
    FCodigoNFe: Integer;
    FDataEmissao: TDateTime;
    FDataSaidaEntrada: TDateTime;
    FTipoNFe: String;
    FTipoEmissao: String;
    FTipoAmbiente: String;
    FCodigoEstado: Integer;
    FCodigoMunicipio: Integer;
    FFinalidadeNFe: String;
    FIdentifiadorMarketplace: String;
  public
    [JSONProp('natOp')]
    property NaturezaOperacap: String read FNaturezaOperacap write FNaturezaOperacap;
    [JSONProp('indPag')]
    property IndicadorPagamento: String read FIndicadorPagamento write FIndicadorPagamento;
    [JSONProp('nNF')]
    property NumeroNFe: Integer read FNumeroNFe write FNumeroNFe;
    [JSONProp('dEmi')]
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    [JSONProp('dSaiEnt')]
    property DataSaidaEntrada: TDateTime read FDataSaidaEntrada write FDataSaidaEntrada;
    [JSONProp('tpNF')]
    property TipoNFe: String read FTipoNFe write FTipoNFe;
    [JSONProp('tpEmis')]
    property TipoEmissao: String read FTipoEmissao write FTipoEmissao;
    [JSONProp('tpAmb')]
    property TipoAmbiente: String read FTipoAmbiente write FTipoAmbiente;
    [JSONProp('cUF')]
    property CodigoEstado: Integer read FCodigoEstado write FCodigoEstado;
    [JSONProp('cMunFG')]
    property CodigoMunicipio: Integer read FCodigoMunicipio write FCodigoMunicipio;
    [JSONProp('finNFe')]
    property FinalidadeNFe: String read FFinalidadeNFe write FFinalidadeNFe;
    [JSONProp('indIntermed')]
    property IdentifiadorMarketplace: String read FIdentifiadorMarketplace write FIdentifiadorMarketplace;

    class function New: TIdentificador;
  end;

implementation

class function TIdentificador.New: TIdentificador;
begin
  Result := Self.Create;
end;

end.
