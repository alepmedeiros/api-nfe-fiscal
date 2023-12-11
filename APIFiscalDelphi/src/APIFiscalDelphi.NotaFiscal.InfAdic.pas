unit APIFiscalDelphi.NotaFiscal.InfAdic;

interface

type
  TInfAdic = class(TInterfacedObject, iInfAdic)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfAdic;
      function infCpl(Value: String): iInfAdic; overload;
      function infCpl: String; overload;
      function infAdFisco(Value: String): iInfAdic; overload;
      function infAdFisco: String; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TInfAdic.&End: iNotaFiscal;
begin

end;

constructor TInfAdic.Create;
begin

end;

destructor TInfAdic.Destroy;
begin

  inherited;
end;

function TInfAdic.infAdFisco(Value: String): iInfAdic;
begin

end;

function TInfAdic.infAdFisco: String;
begin

end;

function TInfAdic.infCpl(Value: String): iInfAdic;
begin

end;

function TInfAdic.infCpl: String;
begin

end;

class function TInfAdic.New : iInfAdic;
begin
  Result := Self.Create;
end;

end.
