unit ACBrNFe.entity.impl.pagamentos;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TPagamento = class(TInterfacedObject, iPagamento)
    private
      FindPag: String;
      FtPag: String;
      FvPag: Currency;
      FtpIntegra: String;
      FCNPJ: String;
      FtBand: String;
      FcAut: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPagamento;
      function indPag(Value: String): iPagamento; overload;
      function indPag: String; overload;
      function tPag(Value: String): iPagamento; overload;
      function tPag: String; overload;
      function vPag(Value: Currency): iPagamento; overload;
      function vPag: Currency; overload;
      function tpIntegra(Value: String): iPagamento; overload;
      function tpIntegra: String; overload;
      function CNPJ(Value: String): iPagamento; overload;
      function CNPJ: String; overload;
      function tBand(Value: String): iPagamento; overload;
      function tBand: String; overload;
      function cAut(Value: String): iPagamento; overload;
      function cAut: String; overload;
      function Build: iPagamento;
  end;

implementation

function TPagamento.Build: iPagamento;
begin
  Result := Self;
end;

function TPagamento.cAut: String;
begin
  Result := FcAut;
end;

function TPagamento.cAut(Value: String): iPagamento;
begin
  Result := Self;
  FcAut := Value;
end;

function TPagamento.CNPJ(Value: String): iPagamento;
begin
  Result := Self;
  FCNPJ := Value;
end;

function TPagamento.CNPJ: String;
begin
  Result := FCNPJ;
end;

constructor TPagamento.Create;
begin

end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

function TPagamento.indPag: String;
begin
  Result := FindPag;
end;

function TPagamento.indPag(Value: String): iPagamento;
begin
  Result := Self;
  FindPag := Value;
end;

class function TPagamento.New : iPagamento;
begin
  Result := Self.Create;
end;

function TPagamento.tBand: String;
begin
  Result := FtBand;
end;

function TPagamento.tBand(Value: String): iPagamento;
begin
  Result := Self;
  FtBand := Value;
end;

function TPagamento.tPag(Value: String): iPagamento;
begin
  Result := Self;
  FtPag := Value;
end;

function TPagamento.tPag: String;
begin
  Result := FtPag;
end;

function TPagamento.tpIntegra(Value: String): iPagamento;
begin
  Result := Self;
  FtpIntegra := Value;
end;

function TPagamento.tpIntegra: String;
begin
  Result := FtpIntegra;
end;

function TPagamento.vPag: Currency;
begin
  Result := FvPag;
end;

function TPagamento.vPag(Value: Currency): iPagamento;
begin
  Result := Self;
  FvPag := Value;
end;

end.
