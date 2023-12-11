unit APIFiscalDelphi.NotaFiscal.CobrFat;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TCobrFat = class(TInterfacedObject, iCobrFat)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCobrFat;
      function nFat(Value: String): iCobrFat; overload;
      function nFat: String; overload;
      function vOrig(Value: Currency): iCobrFat; overload;
      function vOrig: Currency; overload;
      function vDesc(Value: Currency): iCobrFat; overload;
      function vDesc: Currency; overload;
      function vLiq(Value: Currency): iCobrFat; overload;
      function vLiq: Currency; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TCobrFat.&End: iNotaFiscal;
begin

end;

constructor TCobrFat.Create;
begin

end;

destructor TCobrFat.Destroy;
begin

  inherited;
end;

class function TCobrFat.New : iCobrFat;
begin
  Result := Self.Create;
end;

function TCobrFat.nFat: String;
begin

end;

function TCobrFat.nFat(Value: String): iCobrFat;
begin

end;

function TCobrFat.vDesc(Value: Currency): iCobrFat;
begin

end;

function TCobrFat.vDesc: Currency;
begin

end;

function TCobrFat.vLiq(Value: Currency): iCobrFat;
begin

end;

function TCobrFat.vLiq: Currency;
begin

end;

function TCobrFat.vOrig(Value: Currency): iCobrFat;
begin

end;

function TCobrFat.vOrig: Currency;
begin

end;

end.
