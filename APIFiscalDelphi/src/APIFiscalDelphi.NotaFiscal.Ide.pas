unit APIFiscalDelphi.NotaFiscal.Ide;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TIde = class(TInterfacedObject, iIde)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iIde;
      function cNF(Value: Integer): iIde; overload;
      function cNF: Integer; overload;
      function natOp(Value: String): iIde; overload;
      function natOp: String; overload;
      function indPag(Value: String): iIde; overload;
      function indPag: String; overload;
      function modelo(Value: Integer): iIde; overload;
      function modelo: Integer; overload;
      function serie(Value: Integer): iIde; overload;
      function serie: Integer; overload;
      function nNF(Value: Integer): iIde; overload;
      function nNF: Integer; overload;
      function dEmi(Value: TDateTime): iIde; overload;
      function dEmi: TDateTime; overload;
      function dSaiEnt(Value: TDateTime): iIde; overload;
      function dSaiEnt: TDateTime; overload;
      function hSaiEnt(Value: TDateTime): iIde; overload;
      function hSaiEnt: TDateTime; overload;
      function tpNF(Value: String): iIde; overload;
      function tpNF: String; overload;
      function tpEmis(Value: String): iIde; overload;
      function tpEmis: String; overload;
      function tpAmb(Value: String): iIde; overload;
      function tpAmb: String; overload;
      function verProc(Value: String): iIde; overload;
      function verProc: String; overload;
      function cUF(Value: String): iIde; overload;
      function cUF: String; overload;
      function cMunFG(Value: Integer): iIde; overload;
      function cMunFG: Integer; overload;
      function finNFe(Value: String): iIde; overload;
      function finNFe: String; overload;
      function tpImp(Value: String): iIde; overload;
      function tpImp: String; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TIde.cMunFG(Value: Integer): iIde;
begin

end;

function TIde.cMunFG: Integer;
begin

end;

function TIde.cNF: Integer;
begin

end;

function TIde.cNF(Value: Integer): iIde;
begin

end;

function TIde.&End: iNotaFiscal;
begin

end;

constructor TIde.Create;
begin

end;

function TIde.cUF(Value: String): iIde;
begin

end;

function TIde.cUF: String;
begin

end;

function TIde.dEmi(Value: TDateTime): iIde;
begin

end;

function TIde.dEmi: TDateTime;
begin

end;

destructor TIde.Destroy;
begin

  inherited;
end;

function TIde.dSaiEnt: TDateTime;
begin

end;

function TIde.dSaiEnt(Value: TDateTime): iIde;
begin

end;

function TIde.finNFe(Value: String): iIde;
begin

end;

function TIde.finNFe: String;
begin

end;

function TIde.hSaiEnt: TDateTime;
begin

end;

function TIde.hSaiEnt(Value: TDateTime): iIde;
begin

end;

function TIde.indPag: String;
begin

end;

function TIde.indPag(Value: String): iIde;
begin

end;

function TIde.modelo: Integer;
begin

end;

function TIde.modelo(Value: Integer): iIde;
begin

end;

function TIde.natOp: String;
begin

end;

function TIde.natOp(Value: String): iIde;
begin

end;

class function TIde.New : iIde;
begin
  Result := Self.Create;
end;

function TIde.nNF(Value: Integer): iIde;
begin

end;

function TIde.nNF: Integer;
begin

end;

function TIde.serie: Integer;
begin

end;

function TIde.serie(Value: Integer): iIde;
begin

end;

function TIde.tpAmb: String;
begin

end;

function TIde.tpAmb(Value: String): iIde;
begin

end;

function TIde.tpEmis(Value: String): iIde;
begin

end;

function TIde.tpEmis: String;
begin

end;

function TIde.tpImp(Value: String): iIde;
begin

end;

function TIde.tpImp: String;
begin

end;

function TIde.tpNF(Value: String): iIde;
begin

end;

function TIde.tpNF: String;
begin

end;

function TIde.verProc(Value: String): iIde;
begin

end;

function TIde.verProc: String;
begin

end;

end.
