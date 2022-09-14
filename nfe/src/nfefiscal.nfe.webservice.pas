unit nfefiscal.nfe.webservice;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TWebService = class(TInterfacedObject, iWebService)
    private
      FConfiguracao: iConfiguracao;
      FTimeZoneConf: iTimeZoneConf;
    public
      constructor Create(Configuracao: iConfiguracao);
      destructor Destroy; override;
      class function New(Configuracao: iConfiguracao) : iWebService;
      function TimeZoneConf: iTimeZoneConf;
      function UF(Value: String): iWebService; overload;
      function UF: String; overload;
      function Salvar(Value: Boolean): iWebService; overload;
      function Salvar: Boolean; overload;
      function Visualizar(Value: Boolean): iWebService; overload;
      function Visualizar: Boolean; overload;
      function Ambiente(Value: String): iWebService; overload;
      function Ambiente: String; overload;
      function TimeOut(Value: Integer): iWebService; overload;
      function TimeOut: Integer; overload;
      function AguardarConsultaRet(Value: Integer): iWebService; overload;
      function AguardarConsultaRet: Integer; overload;
      function Tentativas(Value: Integer): iWebService; overload;
      function Tentativas: Integer; overload;
      function IntervaloTentativas(Value: Integer): iWebService; overload;
      function IntervaloTentativas: Integer; overload;
      function AjustaAguardaConsultaRet(Value: Boolean): iWebService; overload;
      function AjustaAguardaConsultaRet: Boolean; overload;
      function ProxyHost(Value: String): iWebService; overload;
      function ProxyHost: String; overload;
      function ProxyPort(Value: String): iWebService; overload;
      function ProxyPort: String; overload;
      function ProxyUser(Value: String): iWebService; overload;
      function ProxyUser: String; overload;
      function ProxyPass(Value: String): iWebService; overload;
      function ProxyPass: String; overload;
      function &End: iConfiguracao;
  end;

implementation

function TWebService.AguardarConsultaRet(Value: Integer): iWebService;
begin
  Result := Self;
end;

function TWebService.AguardarConsultaRet: Integer;
begin

end;

function TWebService.AjustaAguardaConsultaRet(Value: Boolean): iWebService;
begin
  Result := Self;
end;

function TWebService.AjustaAguardaConsultaRet: Boolean;
begin

end;

function TWebService.Ambiente(Value: String): iWebService;
begin
  Result := Self;
end;

function TWebService.Ambiente: String;
begin

end;

function TWebService.&End: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TWebService.Create(Configuracao: iConfiguracao);
begin
  FConfiguracao := COnfiguracao;
end;

destructor TWebService.Destroy;
begin

  inherited;
end;

function TWebService.IntervaloTentativas: Integer;
begin

end;

function TWebService.IntervaloTentativas(Value: Integer): iWebService;
begin
  Result := Self;
end;

class function TWebService.New(Configuracao: iConfiguracao) : iWebService;
begin
  Result := Self.Create(Configuracao);
end;

function TWebService.ProxyHost: String;
begin

end;

function TWebService.ProxyHost(Value: String): iWebService;
begin
  Result := Self;
end;

function TWebService.ProxyPass: String;
begin

end;

function TWebService.ProxyPass(Value: String): iWebService;
begin
  Result := Self;
end;

function TWebService.ProxyPort: String;
begin

end;

function TWebService.ProxyPort(Value: String): iWebService;
begin
  Result := Self;
end;

function TWebService.ProxyUser(Value: String): iWebService;
begin
  Result := Self;
end;

function TWebService.ProxyUser: String;
begin

end;

function TWebService.Salvar(Value: Boolean): iWebService;
begin
  Result := Self;
end;

function TWebService.Salvar: Boolean;
begin

end;

function TWebService.Tentativas(Value: Integer): iWebService;
begin
  Result := Self;
end;

function TWebService.Tentativas: Integer;
begin

end;

function TWebService.TimeOut: Integer;
begin

end;

function TWebService.TimeOut(Value: Integer): iWebService;
begin
  Result := Self;
end;

function TWebService.TimeZoneConf: iTimeZoneConf;
begin
  Result := FTimeZoneConf;
end;

function TWebService.UF(Value: String): iWebService;
begin
  Result := Self;
end;

function TWebService.UF: String;
begin

end;

function TWebService.Visualizar: Boolean;
begin

end;

function TWebService.Visualizar(Value: Boolean): iWebService;
begin
  Result := Self;
end;

end.
