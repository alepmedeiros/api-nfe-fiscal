unit nfefiscal.nfe.configuracao;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
    private
      FArquivos: iArquivos;
      FGeral: iGeral;
      FSSL: iSSL;
      FWebService: iWebService;
      FDANFE: iDanfe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConfiguracao;
      function Arquivos: iArquivos;
      function Geral: iGeral;
      function SSL: iSSL;
      function WebService: iWebService;
      function DANFE: iDanfe;
      function &End: iConfiguracao;
  end;

implementation

function TConfiguracao.Arquivos: iArquivos;
begin
  Result := FArquivos;
end;

function TConfiguracao.&End: iConfiguracao;
begin
  Result := Self;
end;

constructor TConfiguracao.Create;
begin

end;

function TConfiguracao.DANFE: iDanfe;
begin
  Result := FDANFE;
end;

destructor TConfiguracao.Destroy;
begin

  inherited;
end;

function TConfiguracao.Geral: iGeral;
begin
  Result := FGeral;
end;

class function TConfiguracao.New : iConfiguracao;
begin
  Result := Self.Create;
end;

function TConfiguracao.SSL: iSSL;
begin
  Result := FSSL;
end;

function TConfiguracao.WebService: iWebService;
begin
  result := FWebService;
end;

end.
