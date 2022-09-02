unit ACBrNFe.entity.Destinatario;

interface

uses
  ACBrNFe.entity.EndDest;

type
  TDestinatario = class
  private
    FCNPJCPF: String;
    FIE: String;
    FISUF: String;
    FNome: String;
    FEndereco: TEndDest;
  public
    constructor Create;
    destructor Destroy;
    property CNPJCPF: String read FCNPJCPF write FCNPJCPF;
    property IE: String read FIE write FIE;
    property ISUF: String read FISUF write FISUF;
    property Nome: String read FNome write FNome;
    property Endereco: TEndDest read FEndereco write FEndereco;
  end;

implementation

{ TDestinatario }

constructor TDestinatario.Create;
begin
  FEndereco := TEndDest.Create;
end;

destructor TDestinatario.Destroy;
begin
  FEndereco.DisposeOf;
end;

end.
