unit nfefiscal.nfe.danfe;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TDanfe = class(TInterfacedObject, iDanfe)
    private
      FConfiguracao: iConfiguracao;
    public
      constructor Create(Configuracao: iConfiguracao);
      destructor Destroy; override;
      class function New(Configuracao: iConfiguracao) : iDanfe;
      function PathPDF(Value: String): iDanfe; overload;
      function PathPDF: String; overload;
      function Logo(Value: String): iDanfe; overload;
      function Logo: String; overload;
      function Sistema(Value: String): iDanfe; overload;
      function Sistema: String; overload;
      function Site(Value: String): iDanfe; overload;
      function Site: String; overload;
      function Email(Value: String): iDanfe; overload;
      function Email: String; overload;
      function &End: iConfiguracao;
  end;

implementation

function TDanfe.&End: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TDanfe.Create(Configuracao: iConfiguracao);
begin
  FConfiguracao := Configuracao;
end;

destructor TDanfe.Destroy;
begin

  inherited;
end;

function TDanfe.Email(Value: String): iDanfe;
begin
  Result := self;
end;

function TDanfe.Email: String;
begin

end;

function TDanfe.Logo: String;
begin

end;

function TDanfe.Logo(Value: String): iDanfe;
begin
  Result := self;
end;

class function TDanfe.New (Configuracao: iConfiguracao) : iDanfe;
begin
  Result := Self.Create(Configuracao);
end;

function TDanfe.PathPDF: String;
begin

end;

function TDanfe.PathPDF(Value: String): iDanfe;
begin
  Result := self;
end;

function TDanfe.Sistema: String;
begin

end;

function TDanfe.Sistema(Value: String): iDanfe;
begin
  Result := self;
end;

function TDanfe.Site: String;
begin

end;

function TDanfe.Site(Value: String): iDanfe;
begin
  Result := self;
end;

end.
