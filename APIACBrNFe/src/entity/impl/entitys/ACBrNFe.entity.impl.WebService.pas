unit ACBrNFe.entity.impl.WebService;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TWebService<T : IInterface> = class(TInterfacedObject, iWebService<T>)
    private
      [weak]
      FParent : T;

      FTimeZoneModoDeteccao: String;
      FUF: String;
      FSalvar: Boolean;
      FVisualizar: Boolean;
      FAmbiente: String;
      FTimeOut: Integer;
      FAguardarConsultaRet: Integer;
      FTentativas: Integer;
      FIntervaloTentativas: Integer;
      FAjustaAguardaConsultaRet: Boolean;
      FProxyHost: String;
      FProxyPort: String;
      FProxyUser: String;
      FProxyPass: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iWebService<T>;
      function TimeZoneModoDeteccao(Value: String): iWebService<T>; overload;
      function TimeZoneModoDeteccao: String; overload;
      function UF(Value: String): iWebService<T>; overload;
      function UF: String; overload;
      function Salvar(Value: Boolean): iWebService<T>; overload;
      function Salvar: Boolean; overload;
      function Visualizar(Value: Boolean): iWebService<T>; overload;
      function Visualizar: Boolean; overload;
      function Ambiente(Value: String): iWebService<T>; overload;
      function Ambiente: String; overload;
      function TimeOut(Value: Integer): iWebService<T>; overload;
      function TimeOut: Integer; overload;
      function AguardarConsultaRet(Value: Integer): iWebService<T>; overload;
      function AguardarConsultaRet: Integer; overload;
      function Tentativas(Value: Integer): iWebService<T>; overload;
      function Tentativas: Integer; overload;
      function IntervaloTentativas(Value: Integer): iWebService<T>; overload;
      function IntervaloTentativas: Integer; overload;
      function AjustaAguardaConsultaRet(Value: Boolean): iWebService<T>; overload;
      function AjustaAguardaConsultaRet: Boolean; overload;
      function ProxyHost(Value: String): iWebService<T>; overload;
      function ProxyHost: String; overload;
      function ProxyPort(Value: String): iWebService<T>; overload;
      function ProxyPort: String; overload;
      function ProxyUser(Value: String): iWebService<T>; overload;
      function ProxyUser: String; overload;
      function ProxyPass(Value: String): iWebService<T>; overload;
      function ProxyPass: String; overload;
      function Build: T;
  end;

implementation

function TWebService<T>.AguardarConsultaRet: Integer;
begin
  Result := FAguardarConsultaRet;
end;

function TWebService<T>.AguardarConsultaRet(Value: Integer): iWebService<T>;
begin
  Result := Self;
  FAguardarConsultaRet := Value;
end;

function TWebService<T>.AjustaAguardaConsultaRet(
  Value: Boolean): iWebService<T>;
begin
  Result := Self;
  FAjustaAguardaConsultaRet := Value;
end;

function TWebService<T>.AjustaAguardaConsultaRet: Boolean;
begin
  Result := FAjustaAguardaConsultaRet;
end;

function TWebService<T>.Ambiente: String;
begin
  Result := FAmbiente;
end;

function TWebService<T>.Ambiente(Value: String): iWebService<T>;
begin
  Result := Self;
  FAmbiente := Value;
end;

function TWebService<T>.Build: T;
begin
  Result := FParent;
end;

constructor TWebService<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TWebService<T>.Destroy;
begin

  inherited;
end;

function TWebService<T>.IntervaloTentativas(Value: Integer): iWebService<T>;
begin
  Result := Self;
  FIntervaloTentativas := Value;
end;

function TWebService<T>.IntervaloTentativas: Integer;
begin
  Result := FIntervaloTentativas;
end;

class function TWebService<T>.New(Parent : T) : iWebService<T>;
begin
  Result := Self.Create(Parent);
end;

function TWebService<T>.ProxyHost: String;
begin
  Result := FProxyHost;
end;

function TWebService<T>.ProxyHost(Value: String): iWebService<T>;
begin
  Result := Self;
  FProxyHost := Value;
end;

function TWebService<T>.ProxyPass(Value: String): iWebService<T>;
begin
  Result := Self;
  FProxyPass := Value;
end;

function TWebService<T>.ProxyPass: String;
begin
  Result := FProxyPass;
end;

function TWebService<T>.ProxyPort(Value: String): iWebService<T>;
begin
  Result := Self;
  FProxyPort := Value;
end;

function TWebService<T>.ProxyPort: String;
begin
  Result := FProxyPort;
end;

function TWebService<T>.ProxyUser(Value: String): iWebService<T>;
begin
  Result := Self;
  FProxyUser := Value;
end;

function TWebService<T>.ProxyUser: String;
begin
  Result := FProxyUser;
end;

function TWebService<T>.Salvar: Boolean;
begin
  Result := FSalvar;
end;

function TWebService<T>.Salvar(Value: Boolean): iWebService<T>;
begin
  Result := Self;
  FSalvar := Value;
end;

function TWebService<T>.Tentativas: Integer;
begin
  Result := FTentativas;
end;

function TWebService<T>.Tentativas(Value: Integer): iWebService<T>;
begin
  Result := Self;
  FTentativas := Value;
end;

function TWebService<T>.TimeOut(Value: Integer): iWebService<T>;
begin
  Result := Self;
  FTimeOut := Value;
end;

function TWebService<T>.TimeOut: Integer;
begin
  Result := FTimeOut;
end;

function TWebService<T>.TimeZoneModoDeteccao: String;
begin
  Result := FTimeZoneModoDeteccao;
end;

function TWebService<T>.TimeZoneModoDeteccao(Value: String): iWebService<T>;
begin
  Result := Self;
  FTimeZoneModoDeteccao := Value;
end;

function TWebService<T>.UF: String;
begin
  Result := FUF;
end;

function TWebService<T>.UF(Value: String): iWebService<T>;
begin
  Result := Self;
  FUF := Value;
end;

function TWebService<T>.Visualizar: Boolean;
begin
  Result := FVisualizar;
end;

function TWebService<T>.Visualizar(Value: Boolean): iWebService<T>;
begin
  Result := Self;
  FVisualizar := Value;
end;

end.
