unit APIFiscalDelphi.NotaFiscal.Pagamento;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TPagamento = class(TInterfacedObject, iPagamento)
    private
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
      function &End: iNotaFiscal;
  end;

implementation

function TPagamento.&End: iNotaFiscal;
begin

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

end;

function TPagamento.indPag(Value: String): iPagamento;
begin

end;

class function TPagamento.New : iPagamento;
begin
  Result := Self.Create;
end;

function TPagamento.tPag: String;
begin

end;

function TPagamento.tPag(Value: String): iPagamento;
begin

end;

function TPagamento.vPag(Value: Currency): iPagamento;
begin

end;

function TPagamento.vPag: Currency;
begin

end;

end.
