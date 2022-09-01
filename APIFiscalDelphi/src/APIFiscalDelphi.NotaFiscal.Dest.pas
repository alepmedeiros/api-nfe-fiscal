unit APIFiscalDelphi.NotaFiscal.Dest;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TDest = class(TInterfacedObject, iDest)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDest;
      function CNPJCPF(Value: String): iDest; overload;
      function CNPJCPF: String; overload;
      function IE(Value: String): iDest; overload;
      function IE: String; overload;
      function ISUF(Value: String): iDest; overload;
      function ISUF: String; overload;
      function xNome(Value: String): iDest; overload;
      function xNome: String; overload;
      function EnderDest: iEnderDest;
      function &End: iNotaFiscal;
  end;

implementation

function TDest.CNPJCPF(Value: String): iDest;
begin

end;

function TDest.CNPJCPF: String;
begin

end;

function TDest.&End: iNotaFiscal;
begin

end;

constructor TDest.Create;
begin

end;

destructor TDest.Destroy;
begin

  inherited;
end;

function TDest.EnderDest: iEnderDest;
begin

end;

function TDest.IE(Value: String): iDest;
begin

end;

function TDest.IE: String;
begin

end;

function TDest.ISUF(Value: String): iDest;
begin

end;

function TDest.ISUF: String;
begin

end;

class function TDest.New : iDest;
begin
  Result := Self.Create;
end;

function TDest.xNome: String;
begin

end;

function TDest.xNome(Value: String): iDest;
begin

end;

end.
