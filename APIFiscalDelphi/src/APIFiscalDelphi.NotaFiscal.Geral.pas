unit APIFiscalDelphi.NotaFiscal.Geral;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TGeral = class(TInterfacedObject, iGeral)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iGeral;
      function ModeloDF(Value: String): iGeral; overload;
      function ModeloDF: String; overload;
      function VersaoDF(Value: String): iGeral; overload;
      function VersaoDF: String; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TGeral.&End: iNotaFiscal;
begin

end;

constructor TGeral.Create;
begin

end;

destructor TGeral.Destroy;
begin

  inherited;
end;

function TGeral.ModeloDF: String;
begin

end;

function TGeral.ModeloDF(Value: String): iGeral;
begin

end;

class function TGeral.New : iGeral;
begin
  Result := Self.Create;
end;

function TGeral.VersaoDF(Value: String): iGeral;
begin

end;

function TGeral.VersaoDF: String;
begin

end;

end.
