unit APIFiscalDelphi.NotaFiscal.CobrDup;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TCobrDup = class(TInterfacedObject, iCobrDup)
    private

    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCobrDup;
      function nDup(Value: String): iCobrDup; overload;
      function nDup: String; overload;
      function dVenc(Value: TDateTime): iCobrDup; overload;
      function dVenc: TDateTime; overload;
      function vDup(Value: Currency): iCobrDup; overload;
      function vDup: Currency; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TCobrDup.&End: iNotaFiscal;
begin

end;

constructor TCobrDup.Create;
begin

end;

destructor TCobrDup.Destroy;
begin

  inherited;
end;

function TCobrDup.dVenc(Value: TDateTime): iCobrDup;
begin

end;

function TCobrDup.dVenc: TDateTime;
begin

end;

function TCobrDup.nDup(Value: String): iCobrDup;
begin

end;

function TCobrDup.nDup: String;
begin

end;

class function TCobrDup.New : iCobrDup;
begin
  Result := Self.Create;
end;

function TCobrDup.vDup(Value: Currency): iCobrDup;
begin

end;

function TCobrDup.vDup: Currency;
begin

end;

end.
