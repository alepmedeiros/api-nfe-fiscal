unit APIFiscalDelphi.NotaFiscal.Transp;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TTransp = class(TInterfacedObject, iTransp)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTransp;
      function ModFrete(Value: String): iTransp; overload;
      function ModFrete: String; overload;
      function CNPJCPF(Value: String): iTransp; overload;
      function CNPJCPF: String; overload;
      function xNome(Value: String): iTransp; overload;
      function xNome: String; overload;
      function IE(Value: String): iTransp; overload;
      function IE: String; overload;
      function xEnder(Value: String): iTransp; overload;
      function xEnder: String; overload;
      function xMun(Value: String): iTransp; overload;
      function xMun: String; overload;
      function UF(Value: String): iTransp; overload;
      function UF: String; overload;
      function VeicTransp : iVeicTransp;
      function &End: iNotaFiscal;
  end;

implementation

function TTransp.CNPJCPF(Value: String): iTransp;
begin

end;

function TTransp.CNPJCPF: String;
begin

end;

function TTransp.&End: iNotaFiscal;
begin

end;

constructor TTransp.Create;
begin

end;

destructor TTransp.Destroy;
begin

  inherited;
end;

function TTransp.IE: String;
begin

end;

function TTransp.IE(Value: String): iTransp;
begin

end;

function TTransp.ModFrete(Value: String): iTransp;
begin

end;

function TTransp.ModFrete: String;
begin

end;

class function TTransp.New : iTransp;
begin
  Result := Self.Create;
end;

function TTransp.UF: String;
begin

end;

function TTransp.UF(Value: String): iTransp;
begin

end;

function TTransp.VeicTransp: iVeicTransp;
begin

end;

function TTransp.xEnder(Value: String): iTransp;
begin

end;

function TTransp.xEnder: String;
begin

end;

function TTransp.xMun(Value: String): iTransp;
begin

end;

function TTransp.xMun: String;
begin

end;

function TTransp.xNome(Value: String): iTransp;
begin

end;

function TTransp.xNome: String;
begin

end;

end.
