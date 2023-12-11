unit APIFiscalDelphi.NotaFiscal.Emitente;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TEmitente = class(TInterfacedObject, iEmitente)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEmitente;
      function IE(Value: String): iEmitente; overload;
      function IE: String; overload;
      function xNome(Value: String): iEmitente; overload;
      function xNome: String; overload;
      function xFant(Value: String): iEmitente; overload;
      function xFant: String; overload;
      function CNPJCPF(Value: String): iEmitente; overload;
      function CNPJCPF: String; overload;
      function EnderEmit: iEnderEmit;
      function IEST(Value: String): iEmitente; overload;
      function IEST: String; overload;
      function IM(Value: String): iEmitente; overload;
      function IM: String; overload;
      function CNAE(Value: String): iEmitente; overload;
      function CNAE: String; overload;
      function CRT(Value: String): iEmitente; overload;
      function CRT: String; overload;
      function &End: iEmitente;
  end;

implementation

function TEmitente.CNAE(Value: String): iEmitente;
begin

end;

function TEmitente.CNAE: String;
begin

end;

function TEmitente.CNPJCPF: String;
begin

end;

function TEmitente.CNPJCPF(Value: String): iEmitente;
begin

end;

function TEmitente.&End: iEmitente;
begin

end;

constructor TEmitente.Create;
begin

end;

function TEmitente.CRT(Value: String): iEmitente;
begin

end;

function TEmitente.CRT: String;
begin

end;

destructor TEmitente.Destroy;
begin

  inherited;
end;

function TEmitente.EnderEmit: iEnderEmit;
begin

end;

function TEmitente.IE: String;
begin

end;

function TEmitente.IE(Value: String): iEmitente;
begin

end;

function TEmitente.IEST: String;
begin

end;

function TEmitente.IEST(Value: String): iEmitente;
begin

end;

function TEmitente.IM: String;
begin

end;

function TEmitente.IM(Value: String): iEmitente;
begin

end;

class function TEmitente.New : iEmitente;
begin
  Result := Self.Create;
end;

function TEmitente.xFant: String;
begin

end;

function TEmitente.xFant(Value: String): iEmitente;
begin

end;

function TEmitente.xNome(Value: String): iEmitente;
begin

end;

function TEmitente.xNome: String;
begin

end;

end.
