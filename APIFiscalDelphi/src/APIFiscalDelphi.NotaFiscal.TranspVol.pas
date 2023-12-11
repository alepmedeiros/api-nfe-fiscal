unit APIFiscalDelphi.NotaFiscal.TranspVol;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TTranspVol = class(TInterfacedObject, iTranspVol)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTranspVol;
      function QVol(Value: Integer): iTranspVol; overload;
      function QVol: Integer; overload;
      function Esp(Value: String): iTranspVol; overload;
      function Esp: String; overload;
      function Marca(Value: String): iTranspVol; overload;
      function Marca: String; overload;
      function NVol(Value: String): iTranspVol; overload;
      function NVol: String; overload;
      function PesoL(Value: Currency): iTranspVol; overload;
      function PesoL: Currency; overload;
      function PesoB(Value: Currency): iTranspVol; overload;
      function PesoB: Currency; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TTranspVol.&End: iNotaFiscal;
begin

end;

constructor TTranspVol.Create;
begin

end;

destructor TTranspVol.Destroy;
begin

  inherited;
end;

function TTranspVol.Esp(Value: String): iTranspVol;
begin

end;

function TTranspVol.Esp: String;
begin

end;

function TTranspVol.Marca: String;
begin

end;

function TTranspVol.Marca(Value: String): iTranspVol;
begin

end;

class function TTranspVol.New : iTranspVol;
begin
  Result := Self.Create;
end;

function TTranspVol.NVol(Value: String): iTranspVol;
begin

end;

function TTranspVol.NVol: String;
begin

end;

function TTranspVol.PesoB: Currency;
begin

end;

function TTranspVol.PesoB(Value: Currency): iTranspVol;
begin

end;

function TTranspVol.PesoL(Value: Currency): iTranspVol;
begin

end;

function TTranspVol.PesoL: Currency;
begin

end;

function TTranspVol.QVol(Value: Integer): iTranspVol;
begin

end;

function TTranspVol.QVol: Integer;
begin

end;

end.
