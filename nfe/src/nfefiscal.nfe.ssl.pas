unit nfefiscal.nfe.ssl;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TSSL = class(TInterfacedObject, iSSL)
    private
      FConfiguracao: iConfiguracao;
    public
      constructor Create(Configuracao: iConfiguracao);
      destructor Destroy; override;
      class function New(Configuracao: iConfiguracao) : iSSL;
      function SSLType(Value: String): iSSL; overload;
      function SSLType: String; overload;
      function &End: iConfiguracao;
  end;

implementation

function TSSL.&End: iConfiguracao;
begin

end;

constructor TSSL.Create(Configuracao: iConfiguracao);
begin
  FConfiguracao:= Configuracao;
end;

destructor TSSL.Destroy;
begin

  inherited;
end;

class function TSSL.New (Configuracao: iConfiguracao) : iSSL;
begin
  Result := Self.Create(Configuracao);
end;

function TSSL.SSLType(Value: String): iSSL;
begin
  Result := Self;
end;

function TSSL.SSLType: String;
begin

end;

end.
