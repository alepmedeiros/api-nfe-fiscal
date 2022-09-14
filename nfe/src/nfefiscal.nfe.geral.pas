unit nfefiscal.nfe.geral;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TGeral = class(TInterfacedObject, iGeral)
    private
      FConfiguracao: iConfiguracao;
    public
      constructor Create(Configuracao: iConfiguracao);
      destructor Destroy; override;
      class function New(Configuracao: iConfiguracao) : iGeral;
      function ModeloDF(Value: String): iGeral; overload;
      function ModeloDF: String; overload;
      function IdCSC(Value: String): iGeral; overload;
      function IdCSC: String; overload;
      function CSC(Value: String): iGeral; overload;
      function CSC: String; overload;
      function Salvar(Value: Boolean): iGeral; overload;
      function Salvar: Boolean; overload;
      function VersaoDF(Value: String): iGeral; overload;
      function VersaoDF: String; overload;
      function VersaoQRCode(Value: String): iGeral; overload;
      function VersaoQRCode: String; overload;
      function FormaEmissao(Value: String): iGeral; overload;
      function FormaEmissao: String; overload;
      function SSLLib(Value: String): iGeral; overload;
      function SSLLib: String; overload;
      function ExibirErroSchema(Value: Boolean): iGeral; overload;
      function ExibirErroSchema: Boolean; overload;
      function FormatoAlerta(Value: String): iGeral; overload;
      function FormatoAlerta: String; overload;
      function &End: iConfiguracao;
  end;

implementation

function TGeral.&End: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TGeral.Create(Configuracao: iConfiguracao);
begin
  FConfiguracao:= Configuracao;
end;

function TGeral.CSC(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.CSC: String;
begin

end;

destructor TGeral.Destroy;
begin

  inherited;
end;

function TGeral.ExibirErroSchema(Value: Boolean): iGeral;
begin
  Result := self;
end;

function TGeral.ExibirErroSchema: Boolean;
begin

end;

function TGeral.FormaEmissao: String;
begin

end;

function TGeral.FormaEmissao(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.FormatoAlerta(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.FormatoAlerta: String;
begin

end;

function TGeral.IdCSC(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.IdCSC: String;
begin

end;

function TGeral.ModeloDF(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.ModeloDF: String;
begin

end;

class function TGeral.New (Configuracao: iConfiguracao) : iGeral;
begin
  Result := Self.Create(Configuracao);
end;

function TGeral.Salvar(Value: Boolean): iGeral;
begin
  Result := self;
end;

function TGeral.Salvar: Boolean;
begin

end;

function TGeral.SSLLib: String;
begin

end;

function TGeral.SSLLib(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.VersaoDF: String;
begin

end;

function TGeral.VersaoDF(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.VersaoQRCode(Value: String): iGeral;
begin
  Result := self;
end;

function TGeral.VersaoQRCode: String;
begin

end;

end.
