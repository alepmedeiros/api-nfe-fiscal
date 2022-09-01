unit APIFiscalDelphi.NotaFiscal.Exporta;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TExporta = class(TInterfacedObject, iExporta)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iExporta;
      function UFembarq(Value: String): iExporta; overload;
      function UFembarq: String; overload;
      function xLocEmbarq(Value: String): iExporta; overload;
      function xLocEmbarq: String; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TExporta.&End: iNotaFiscal;
begin

end;

constructor TExporta.Create;
begin

end;

destructor TExporta.Destroy;
begin

  inherited;
end;

class function TExporta.New : iExporta;
begin
  Result := Self.Create;
end;

function TExporta.UFembarq(Value: String): iExporta;
begin

end;

function TExporta.UFembarq: String;
begin

end;

function TExporta.xLocEmbarq: String;
begin

end;

function TExporta.xLocEmbarq(Value: String): iExporta;
begin

end;

end.
