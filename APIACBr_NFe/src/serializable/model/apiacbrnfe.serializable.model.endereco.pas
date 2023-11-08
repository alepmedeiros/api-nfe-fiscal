unit apiacbrnfe.serializable.model.endereco;

interface

uses
  GBJSON.Attributes;

type
  TEndereco = class
  private
    FTelefone: String;
    FCep: Integer;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FBairro: String;
    FMunicipio: String;
    FEstado: String;
  public
    [JSONProp('telefone')]
    property Telefone: String read FTelefone write FTelefone;
    [JSONProp('cep')]
    property Cep: Integer read FCep write FCep;
    [JSONProp('logradouro')]
    property Logradouro: String read FLogradouro write FLogradouro;
    [JSONProp('numero')]
    property Numero: String read FNumero write FNumero;
    [JSONProp('complemento')]
    property Complemento: String read FComplemento write FComplemento;
    [JSONProp('bairro')]
    property Bairro: String read FBairro write FBairro;
    [JSONProp('municipio')]
    property Municipio: String read FMunicipio write FMunicipio;
    [JSONProp('estado')]
    property Estado: String read FEstado write FEstado;

    class function New: TEndereco;
  end;

implementation

{ TEndereco }

class function TEndereco.New: TEndereco;
begin
  Result := Self.Create;
end;

end.
