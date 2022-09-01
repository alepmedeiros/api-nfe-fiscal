unit nfefiscal.nfe.ide;

interface

uses
  nfefiscal.nfe_.interfaces;

type
  TIde = class(TInterfacedObject, iIde)
    private
      FNFe: iNFe
    public
      constructor Create(NFe: iNFe);
      destructor Destroy; override;
      class function New(NFe: iNFe) : iIde;
      function tpAmb(Value: String): iIde; overload;
      function tpAmb: String; overload;
      function verProc(Value: String): iIde; overload;
      function verProc: String; overload;
      function tpImp(Value: String): iIde; overload;
      function tpImp: String; overload;
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
      function cNF(Value: String): iIde; overload;
      function cNF: String; overload;
      function dEmi(Value: TDate): iIde; overload;
      function dEmi: TDate; overload;
      function dSaiEnt(Value: TDate): iIde; overload;
      function dSaiEnt: TDate; overload;
      function hSaiEnt(Value: TDate): iIde; overload;
      function hSaiEnt: TDate; overload;
      function tpNF(Value: String): iIde; overload;
      function tpNF: String; overload;
      function tpEmis(Value: String): iIde; overload;
      function tpEmis: String; overload;
      function cMunFG(Value: Integer): iIde; overload;
      function cMunFG: Integer; overload;
      function finNFe(Value: String): iIde; overload;
      function finNFe: String; overload;
      function indIntermed(Value: String): iIde; overload;
      function &End: iNFe;
  public
    constructor Create(NFe: iNFe);
  end;

implementation

function TIde.cMunFG(Value: Integer): iIde;
begin

end;

function TIde.cMunFG: Integer;
begin

end;

function TIde.cNF: String;
begin

end;

function TIde.cNF(Value: String): iIde;
begin
  Result := Self;
end;

function TIde.&End: iNFe;
begin
  Result := FNFe;
end;

constructor TIde.Create(NFe: iNFe);
begin
  FNFe:= NFe;
end;

function TIde.dEmi(Value: TDate): iIde;
begin

end;

function TIde.dEmi: TDate;
begin

end;

destructor TIde.Destroy;
begin

  inherited;
end;

function TIde.dSaiEnt: TDate;
begin

end;

function TIde.dSaiEnt(Value: TDate): iIde;
begin

end;

function TIde.finNFe: String;
begin

end;

function TIde.finNFe(Value: String): iIde;
begin

end;

function TIde.hSaiEnt: TDate;
begin

end;

function TIde.hSaiEnt(Value: TDate): iIde;
begin

end;

function TIde.indIntermed(Value: String): iIde;
begin

end;

function TIde.indPag(Value: String): iIde;
begin

end;

function TIde.indPag: String;
begin

end;

function TIde.modelo: Integer;
begin

end;

function TIde.modelo(Value: Integer): iIde;
begin

end;

function TIde.natOp(Value: String): iIde;
begin

end;

function TIde.natOp: String;
begin

end;

class function TIde.New(NFe: iNFe) : iIde;
begin
  Result := Self.Create(NFe);
end;

function TIde.nNF(Value: Integer): iIde;
begin

end;

function TIde.nNF: Integer;
begin

end;

function TIde.serie(Value: Integer): iIde;
begin

end;

function TIde.serie: Integer;
begin

end;

function TIde.tpAmb: String;
begin

end;

function TIde.tpAmb(Value: String): iIde;
begin

end;

function TIde.tpEmis: String;
begin

end;

function TIde.tpEmis(Value: String): iIde;
begin

end;

function TIde.tpImp: String;
begin

end;

function TIde.tpImp(Value: String): iIde;
begin

end;

function TIde.tpNF: String;
begin

end;

function TIde.tpNF(Value: String): iIde;
begin

end;

function TIde.verProc: String;
begin

end;

function TIde.verProc(Value: String): iIde;
begin

end;

end.
