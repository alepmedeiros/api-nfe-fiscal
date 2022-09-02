unit ACBrNFe.entity.impl.Configuracao;

interface

uses
  ACBrNFe.entity.interfaces, ACBrNFe.entity.impl.WebService,
  ACBrNFe.entity.impl.Geral;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
    private
      FAdicionarLiteral: Boolean;
      FEmissaoPathNFe: Boolean;
      FSepararPorMes: Boolean;
      FSepararPorModelo: Boolean;
      FSepararPorCNPJ: Boolean;
      FSalvar: Boolean;
      FSalvarEvento: Boolean;
      FPathNFe: String;
      FPathInu: String;
      FPathEvento: String;
      FPathSalvar: String;
      FPathSchemas: String;
      FModeloDF: String;
      FSSL: String;
      FGeral: iGeral<iConfiguracao>;
      FWebService: iWebService<iConfiguracao>;
      FPathPDF: String;
      FLogo: String;
      FSistema: String;
      FSite: String;
      FEmail: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConfiguracao;
      function AdicionarLiteral(Value: Boolean): iConfiguracao; overload;
      function AdicionarLiteral: Boolean; overload;
      function EmissaoPathNFe(Value: Boolean): iConfiguracao; overload;
      function EmissaoPathNFe: Boolean; overload;
      function SepararPorMes(Value: Boolean): iConfiguracao; overload;
      function SepararPorMes: Boolean; overload;
      function SepararPorModelo(Value: Boolean): iConfiguracao; overload;
      function SepararPorModelo: Boolean; overload;
      function SepararPorCNPJ(Value: Boolean): iConfiguracao; overload;
      function SepararPorCNPJ: Boolean; overload;
      function Salvar(Value: Boolean): iConfiguracao; overload;
      function Salvar: Boolean; overload;
      function SalvarEvento(Value: Boolean): iConfiguracao; overload;
      function SalvarEvento: Boolean; overload;
      function PathNFe(Value: String): iConfiguracao; overload;
      function PathNFe: String; overload;
      function PathInu(Value: String): iConfiguracao; overload;
      function PathInu: String; overload;
      function PathEvento(Value: String): iConfiguracao; overload;
      function PathEvento: String; overload;
      function PathSalvar(Value: String): iConfiguracao; overload;
      function PathSalvar: String; overload;
      function PathSchemas(Value: String): iConfiguracao; overload;
      function PathSchemas: String; overload;
      function ModeloDF(Value: String): iConfiguracao; overload;
      function ModeloDF: String; overload;
      function SSL(Value: String): iConfiguracao; overload;
      function SSL: String; overload;
      function Geral: iGeral<iConfiguracao>;
      function WebService: iWebService<iConfiguracao>;
      function PathPDF(Value: String): iConfiguracao; overload;
      function PathPDF: String; overload;
      function Logo(Value: String): iConfiguracao; overload;
      function Logo: String; overload;
      function Sistema(Value: String): iConfiguracao; overload;
      function Sistema: String; overload;
      function Site(Value: String): iConfiguracao; overload;
      function Site: String; overload;
      function Email(Value: String): iConfiguracao; overload;
      function Email: String; overload;
      function Build: iConfiguracao;
  end;

implementation

function TConfiguracao.AdicionarLiteral(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FAdicionarLiteral := Value;
end;

function TConfiguracao.AdicionarLiteral: Boolean;
begin
  Result := FAdicionarLiteral;
end;

function TConfiguracao.Build: iConfiguracao;
begin
  Result := Self;
end;

constructor TConfiguracao.Create;
begin

end;

destructor TConfiguracao.Destroy;
begin

  inherited;
end;

function TConfiguracao.Email(Value: String): iConfiguracao;
begin
  Result := Self;
  FEmail := Value;
end;

function TConfiguracao.Email: String;
begin
  Result := FEmail;
end;

function TConfiguracao.EmissaoPathNFe(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FEmissaoPathNFe := Value;
end;

function TConfiguracao.EmissaoPathNFe: Boolean;
begin
  Result := FEmissaoPathNFe;
end;

function TConfiguracao.Geral: iGeral<iConfiguracao>;
begin
  if not Assigned(FGeral) then
    FGeral := TGeral<iCOnfiguracao>.New(Self);
  Result := FGeral;
end;

function TConfiguracao.Logo: String;
begin
  Result := FLogo;
end;

function TConfiguracao.Logo(Value: String): iConfiguracao;
begin
  Result := Self;
  FLogo := Value;
end;

function TConfiguracao.ModeloDF: String;
begin
  Result := FModeloDF;
end;

function TConfiguracao.ModeloDF(Value: String): iConfiguracao;
begin
  Result := Self;
  FModeloDF := Value;
end;

class function TConfiguracao.New : iConfiguracao;
begin
  Result := Self.Create;
end;

function TConfiguracao.PathEvento: String;
begin
  Result := FPathEvento;
end;

function TConfiguracao.PathEvento(Value: String): iConfiguracao;
begin
  Result := Self;
  FPathEvento := Value;
end;

function TConfiguracao.PathInu: String;
begin
  Result := FPathInu;
end;

function TConfiguracao.PathInu(Value: String): iConfiguracao;
begin
  Result := Self;
  FPathInu := Value;
end;

function TConfiguracao.PathNFe(Value: String): iConfiguracao;
begin
  Result := Self;
  FPathNFe := Value;
end;

function TConfiguracao.PathNFe: String;
begin
  Result := FPathNFe;
end;

function TConfiguracao.PathPDF(Value: String): iConfiguracao;
begin
  Result := Self;
  FPathPDF := Value;
end;

function TConfiguracao.PathPDF: String;
begin
  Result := FPathPDF;
end;

function TConfiguracao.PathSalvar(Value: String): iConfiguracao;
begin
  Result := Self;
  FPathSalvar := Value;
end;

function TConfiguracao.PathSalvar: String;
begin
  Result := FPathSalvar;
end;

function TConfiguracao.PathSchemas(Value: String): iConfiguracao;
begin
  Result := Self;
  FPathSchemas := Value;
end;

function TConfiguracao.PathSchemas: String;
begin
  Result := FPathSchemas;
end;

function TConfiguracao.Salvar(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FSalvar := Value;
end;

function TConfiguracao.Salvar: Boolean;
begin
  Result := FSalvar;
end;

function TConfiguracao.SalvarEvento(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FSalvarEvento := Value;
end;

function TConfiguracao.SalvarEvento: Boolean;
begin
  Result := FSalvarEvento;
end;

function TConfiguracao.SepararPorCNPJ(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FSepararPorCNPJ := Value;
end;

function TConfiguracao.SepararPorCNPJ: Boolean;
begin
  Result := FSepararPorCNPJ;
end;

function TConfiguracao.SepararPorMes: Boolean;
begin
  Result := FSepararPorMes;
end;

function TConfiguracao.SepararPorMes(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FSepararPorMes := Value;
end;

function TConfiguracao.SepararPorModelo(Value: Boolean): iConfiguracao;
begin
  Result := Self;
  FSepararPorModelo := Value;
end;

function TConfiguracao.SepararPorModelo: Boolean;
begin
  Result := FSepararPorModelo;
end;

function TConfiguracao.Sistema: String;
begin
  Result := FSistema;
end;

function TConfiguracao.Sistema(Value: String): iConfiguracao;
begin
  Result := Self;
  FSistema:= Value;
end;

function TConfiguracao.Site: String;
begin
  Result := FSite;
end;

function TConfiguracao.Site(Value: String): iConfiguracao;
begin
  Result := Self;
  FSite := Value;
end;

function TConfiguracao.SSL: String;
begin
  Result := FSSL;
end;

function TConfiguracao.SSL(Value: String): iConfiguracao;
begin
  Result := Self;
  FSSL := Value;
end;

function TConfiguracao.WebService: iWebService<iConfiguracao>;
begin
  if not Assigned(FWebService) then
    FWebService := TWebservice<iConfiguracao>.New(Self);
  Result := FWebService;
end;

end.
