unit ACBrNFe.entity.impl.Ide;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TIde = class(TInterfacedObject, iIde)
    private
      FtpAmb: String;
      FverProc: String;
      FtpImp: String;
      FnatOp: String;
      FindPag: String;
      Fmodelo: Integer;
      FSerie: Integer;
      FnNF: Integer;
      FcNF: Integer;
      FdEmi: TDateTime;
      FdSaiEnt: TDateTime;
      FhSaiEnt: TDateTime;
      FtpNF: String;
      FtpEmis: String;
      FcUF: Integer;
      FcMunFG: Integer;
      FfinNFe: String;
      FindIntermed: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iIde;
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
      function Serie(Value: Integer): iIde; overload;
      function Serie: Integer; overload;
      function nNF(Value: Integer): iIde; overload;
      function nNF: Integer; overload;
      function cNF(Value: Integer): iIde; overload;
      function cNF: Integer; overload;
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
      function cUF(Value: Integer): iIde; overload;
      function cUF: Integer; overload;
      function cMunFG(Value: Integer): iIde; overload;
      function cMunFG: Integer; overload;
      function finNFe(Value: String): iIde; overload;
      function finNFe: String; overload;
      function indIntermed(Value: String): iIde; overload;
      function indIntermed: String; overload;
      function Build: iIde;
  end;

implementation

function TIde.Build: iIde;
begin
  Result := Self;
end;

function TIde.cMunFG: Integer;
begin
  Result := FcMunFG;
end;

function TIde.cMunFG(Value: Integer): iIde;
begin
  Result := Self;
  FcMunFG := Value;
end;

function TIde.cNF(Value: Integer): iIde;
begin
  Result := Self;
  FcNF := Value;
end;

function TIde.cNF: Integer;
begin
  Result := FcNF;
end;

constructor TIde.Create;
begin

end;

function TIde.cUF: Integer;
begin
  Result := FcUF;
end;

function TIde.cUF(Value: Integer): iIde;
begin
  Result := Self;
  FcUF := Value;
end;

function TIde.dEmi: TDateTime;
begin
  Result := FdEmi;
end;

function TIde.dEmi(Value: TDateTime): iIde;
begin
  Result := Self;
  FdEmi := Value;
end;

destructor TIde.Destroy;
begin

  inherited;
end;

function TIde.dSaiEnt(Value: TDateTime): iIde;
begin
  Result := Self;
  FdSaiEnt := Value;
end;

function TIde.dSaiEnt: TDateTime;
begin
  Result := FdSaiEnt;
end;

function TIde.finNFe(Value: String): iIde;
begin
  Result := Self;
  FfinNFe := Value;
end;

function TIde.finNFe: String;
begin
  Result := FfinNFe;
end;

function TIde.hSaiEnt: TDateTime;
begin
  Result := FhSaiEnt;
end;

function TIde.hSaiEnt(Value: TDateTime): iIde;
begin
  Result := Self;
  FhSaiEnt := Value;
end;

function TIde.indIntermed: String;
begin
  Result := FindIntermed;
end;

function TIde.indIntermed(Value: String): iIde;
begin
  Result := Self;
  FindIntermed := Value;
end;

function TIde.indPag: String;
begin
  Result := FindPag;
end;

function TIde.indPag(Value: String): iIde;
begin
  Result := Self;
  FindPag := Value;
end;

function TIde.modelo(Value: Integer): iIde;
begin
  Result := Self;
  Fmodelo := Value;
end;

function TIde.modelo: Integer;
begin
  Result := Fmodelo;
end;

function TIde.natOp(Value: String): iIde;
begin
  Result := Self;
  FnatOp := Value;
end;

function TIde.natOp: String;
begin
  Result := FnatOp;
end;

class function TIde.New : iIde;
begin
  Result := Self.Create;
end;

function TIde.nNF(Value: Integer): iIde;
begin
  Result := Self;
  FnNF := Value;
end;

function TIde.nNF: Integer;
begin
  Result := FnNF;
end;

function TIde.Serie: Integer;
begin
  Result := FSerie;
end;

function TIde.Serie(Value: Integer): iIde;
begin
  Result := Self;
  FcMunFG := Value;
end;

function TIde.tpAmb(Value: String): iIde;
begin
  Result := Self;
  FtpAmb := Value;
end;

function TIde.tpAmb: String;
begin
  Result := FtpAmb;
end;

function TIde.tpEmis(Value: String): iIde;
begin
  Result := Self;
  FtpEmis := Value;
end;

function TIde.tpEmis: String;
begin
  Result := FtpEmis;
end;

function TIde.tpImp(Value: String): iIde;
begin
  Result := Self;
  FtpImp := Value;
end;

function TIde.tpImp: String;
begin
  Result := FtpImp;
end;

function TIde.tpNF: String;
begin
  Result := FtpNF;
end;

function TIde.tpNF(Value: String): iIde;
begin
  Result := Self;
  FtpNF := Value;
end;

function TIde.verProc(Value: String): iIde;
begin
  Result := Self;
  FverProc := Value;
end;

function TIde.verProc: String;
begin
  Result := FverProc;
end;

end.
