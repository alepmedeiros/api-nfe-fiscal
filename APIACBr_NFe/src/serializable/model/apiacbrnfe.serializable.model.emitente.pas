unit apiacbrnfe.serializable.model.emitente;

interface

uses
  GBJSON.Attributes,
  apiacbrnfe.serializable.model.endereco;

type
  TEmitente = class
  private
    FCnpjCpf: String;
    FInscricaoEstadual: String;
    FRazaoSocial: String;
    FFantasia: String;
    FEndereco: TEndereco;
    FInscricaoMunicipal: String;
    FCNAE: String;
    FCRT: Integer;
  public
    [JSONProp('cnpjcpf')]
    property CnpjCpf: String read FCnpjCpf write FCnpjCpf;
    [JSONProp('inscricaoestadual')]
    property InscricaoEstadual: String read FInscricaoEstadual write FInscricaoEstadual;
    [JSONProp('razaosocial')]
    property RazaoSocial: String read FRazaoSocial write FRazaoSocial;
    [JSONProp('fantasia')]
    property Fantasia: String read FFantasia write FFantasia;
    [JSONProp('Endereco')]
    property Endereco: TEndereco read FEndereco write FEndereco;
    [JSONProp('inscricaomunicipal')]
    property InscricaoMunicipal: String read FInscricaoMunicipal write FInscricaoMunicipal;
    [JSONProp('cnae')]
    property CNAE: String read FCNAE write FCNAE;
    [JSONProp('crt')]
    property CRT: Integer read FCRT write FCRT;

    class function New: TEmitente;
  end;

implementation

{ TEmitente }

class function TEmitente.New: TEmitente;
begin
  Result := Self.Create;
end;

end.
