unit APIFiscalDelphi.NotaFiscal.Total;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TTotal = class(TInterfacedObject, iTotal)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTotal;
      function ICMSTot: iICMSTot;
      function &End: iNotaFiscal;
  end;

implementation

function TTotal.&End: iNotaFiscal;
begin

end;

constructor TTotal.Create;
begin

end;

destructor TTotal.Destroy;
begin

  inherited;
end;

function TTotal.ICMSTot: iICMSTot;
begin

end;

class function TTotal.New : iTotal;
begin
  Result := Self.Create;
end;

end.
