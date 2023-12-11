unit APIFiscalDelphi.NotaFiscal.EnderEmit;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TEnderEmit = class(TInterfacedObject, iEnderEmit)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEnderEmit;
      function fone(Value: String): iEnderEmit; overload;
      function fone: String; overload;
      function CEP(Value: Integer): iEnderEmit; overload;
      function CEP: Integer; overload;
      function xLgr(Value: String): iEnderEmit; overload;
      function xLgr: String; overload;
      function nro(Value: String): iEnderEmit; overload;
      function nro: String; overload;
      function xCpl(Value: String): iEnderEmit; overload;
      function xCpl: String; overload;
      function xBairro(Value: String): iEnderEmit; overload;
      function xBairro: String; overload;
      function cMun(Value: Integer): iEnderEmit; overload;
      function cMun: Integer; overload;
      function xMun(Value: String): iEnderEmit; overload;
      function xMun: String; overload;
      function UF(Value: String): iEnderEmit; overload;
      function UF: String; overload;
      function cPais(Value: Integer): iEnderEmit; overload;
      function cPais: Integer; overload;
      function xPais(Value: String): iEnderEmit; overload;
      function xPais: String; overload;
      function &End: iEmitente;
  end;

implementation

function TEnderEmit.CEP(Value: Integer): iEnderEmit;
begin

end;

function TEnderEmit.CEP: Integer;
begin

end;

function TEnderEmit.cMun: Integer;
begin

end;

function TEnderEmit.cMun(Value: Integer): iEnderEmit;
begin

end;

function TEnderEmit.cPais(Value: Integer): iEnderEmit;
begin

end;

function TEnderEmit.cPais: Integer;
begin

end;

function TEnderEmit.&End: iEmitente;
begin

end;

constructor TEnderEmit.Create;
begin

end;

destructor TEnderEmit.Destroy;
begin

  inherited;
end;

function TEnderEmit.fone(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.fone: String;
begin

end;

class function TEnderEmit.New : iEnderEmit;
begin
  Result := Self.Create;
end;

function TEnderEmit.nro(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.nro: String;
begin

end;

function TEnderEmit.UF: String;
begin

end;

function TEnderEmit.UF(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.xBairro(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.xBairro: String;
begin

end;

function TEnderEmit.xCpl(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.xCpl: String;
begin

end;

function TEnderEmit.xLgr(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.xLgr: String;
begin

end;

function TEnderEmit.xMun: String;
begin

end;

function TEnderEmit.xMun(Value: String): iEnderEmit;
begin

end;

function TEnderEmit.xPais: String;
begin

end;

function TEnderEmit.xPais(Value: String): iEnderEmit;
begin

end;

end.
