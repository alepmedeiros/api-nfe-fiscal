unit nfefiscal.nfe.arquivos;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TArquivos = class(TInterfacedObject, iArquivos)
    private
      FConfiguracao: iConfiguracao;
    public
      constructor Create(Configuracao: iConfiguracao);
      destructor Destroy; override;
      class function New(Configuracao: iConfiguracao) : iArquivos;
      function AdicionarLiteral(Value: Boolean): iArquivos; overload;
      function AdicionarLiteral: Boolean; overload;
      function EmissaoPathNFe(Value: Boolean): iArquivos; overload;
      function EmissaoPathNFe: Boolean; overload;
      function SepararPorMes(Value: Boolean): iArquivos; overload;
      function SepararPorMes: Boolean; overload;
      function SepararPorModelo(Value: Boolean): iArquivos; overload;
      function SepararPorModelo: Boolean; overload;
      function SepararPorCNPJ(Value: Boolean): iArquivos; overload;
      function SepararPorCNPJ: Boolean; overload;
      function Salvar(Value: Boolean): iArquivos; overload;
      function Salvar: Boolean; overload;
      function SalvarEvento(Value: Boolean): iArquivos; overload;
      function SalvarEvento: Boolean; overload;
      function PathNFe(Value: String): iArquivos; overload;
      function PathNFe: String; overload;
      function PathInu(Value: String): iArquivos; overload;
      function PathInu: String; overload;
      function PathEvento(Value: String): iArquivos; overload;
      function PathEvento: String; overload;
      function PathSalvar(Value: String): iArquivos; overload;
      function PathSalvar: String; overload;
      function PathSchemas(Value: String): iArquivos; overload;
      function PathSchemas: String; overload;
      function &End: iConfiguracao;
  end;

implementation

function TArquivos.AdicionarLiteral: Boolean;
begin

end;

function TArquivos.AdicionarLiteral(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

function TArquivos.&End: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TArquivos.Create(Configuracao: iConfiguracao);
begin
  FConfiguracao:= Configuracao;
end;

destructor TArquivos.Destroy;
begin

  inherited;
end;

function TArquivos.EmissaoPathNFe: Boolean;
begin

end;

function TArquivos.EmissaoPathNFe(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

class function TArquivos.New (Configuracao: iConfiguracao) : iArquivos;
begin
  Result := Self.Create(Configuracao);
end;

function TArquivos.PathEvento(Value: String): iArquivos;
begin
  Result := Self;
end;

function TArquivos.PathEvento: String;
begin

end;

function TArquivos.PathInu: String;
begin

end;

function TArquivos.PathInu(Value: String): iArquivos;
begin
  Result := Self;
end;

function TArquivos.PathNFe(Value: String): iArquivos;
begin
  Result := Self;
end;

function TArquivos.PathNFe: String;
begin

end;

function TArquivos.PathSalvar: String;
begin

end;

function TArquivos.PathSalvar(Value: String): iArquivos;
begin
  Result := Self;
end;

function TArquivos.PathSchemas(Value: String): iArquivos;
begin
  Result := Self;
end;

function TArquivos.PathSchemas: String;
begin

end;

function TArquivos.Salvar(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

function TArquivos.Salvar: Boolean;
begin

end;

function TArquivos.SalvarEvento: Boolean;
begin

end;

function TArquivos.SalvarEvento(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

function TArquivos.SepararPorCNPJ: Boolean;
begin

end;

function TArquivos.SepararPorCNPJ(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

function TArquivos.SepararPorMes(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

function TArquivos.SepararPorMes: Boolean;
begin

end;

function TArquivos.SepararPorModelo: Boolean;
begin

end;

function TArquivos.SepararPorModelo(Value: Boolean): iArquivos;
begin
  Result := Self;
end;

end.
