unit APIFiscalDelphi.NotaFiscal.EnderDest;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TEnderDest = class(TInterfacedObject, iEnderDest)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEnderDest;
      function Fone(Value: String): iEnderDest; overload;
      function Fone: String; overload;
      function CEP(Value: Integer): iEnderDest; overload;
      function CEP: Integer; overload;
      function xLgr(Value: String): iEnderDest; overload;
      function xLgr: String; overload;
      function nro(Value: String): iEnderDest; overload;
      function nro: String; overload;
      function xCpl(Value: String): iEnderDest; overload;
      function xCpl: String; overload;
      function xBairro(Value: String): iEnderDest; overload;
      function xBairro: String; overload;
      function cMun(Value: Integer): iEnderDest; overload;
      function cMun: Integer; overload;
      function xMun(Value: String): iEnderDest; overload;
      function xMun: String; overload;
      function UF(Value: String): iEnderDest; overload;
      function UF: String; overload;
      function cPais(Value: Integer): iEnderDest; overload;
      function cPais: Integer; overload;
      function xPais(Value: String): iEnderDest; overload;
      function xPais: String; overload;
      function &End: iDest;
  end;

implementation

function TEnderDest.CEP(Value: Integer): iEnderDest;
begin

end;

function TEnderDest.CEP: Integer;
begin

end;

function TEnderDest.cMun: Integer;
begin

end;

function TEnderDest.cMun(Value: Integer): iEnderDest;
begin

end;

function TEnderDest.cPais(Value: Integer): iEnderDest;
begin

end;

function TEnderDest.cPais: Integer;
begin

end;

function TEnderDest.&End: iDest;
begin

end;

constructor TEnderDest.Create;
begin

end;

destructor TEnderDest.Destroy;
begin

  inherited;
end;

function TEnderDest.Fone(Value: String): iEnderDest;
begin

end;

function TEnderDest.Fone: String;
begin

end;

class function TEnderDest.New : iEnderDest;
begin
  Result := Self.Create;
end;

function TEnderDest.nro(Value: String): iEnderDest;
begin

end;

function TEnderDest.nro: String;
begin

end;

function TEnderDest.UF: String;
begin

end;

function TEnderDest.UF(Value: String): iEnderDest;
begin

end;

function TEnderDest.xBairro(Value: String): iEnderDest;
begin

end;

function TEnderDest.xBairro: String;
begin

end;

function TEnderDest.xCpl(Value: String): iEnderDest;
begin

end;

function TEnderDest.xCpl: String;
begin

end;

function TEnderDest.xLgr(Value: String): iEnderDest;
begin

end;

function TEnderDest.xLgr: String;
begin

end;

function TEnderDest.xMun: String;
begin

end;

function TEnderDest.xMun(Value: String): iEnderDest;
begin

end;

function TEnderDest.xPais: String;
begin

end;

function TEnderDest.xPais(Value: String): iEnderDest;
begin

end;

end.
