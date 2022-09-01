unit APIFiscalDelphi.NotaFiscal.ICMSTot;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TICMSTot = class(TInterfacedObject, iICMSTot)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iICMSTot;
      function vBC(Value: Currency): iICMSTot; overload;
      function vBC: Currency; overload;
      function vICMS(Value: Currency): iICMSTot; overload;
      function vICMS: Currency; overload;
      function vBCST(Value: Currency): iICMSTot; overload;
      function vBCST: Currency; overload;
      function vST(Value: Currency): iICMSTot; overload;
      function vST: Currency; overload;
      function vProd(Value: Currency): iICMSTot; overload;
      function vProd: Currency; overload;
      function vFrete(Value: Currency): iICMSTot; overload;
      function vFrete: Currency; overload;
      function vSeg(Value: Currency): iICMSTot; overload;
      function vSeg: Currency; overload;
      function vDesc(Value: Currency): iICMSTot; overload;
      function vDesc: Currency; overload;
      function vII(Value: Currency): iICMSTot; overload;
      function vII: Currency; overload;
      function vIPI(Value: Currency): iICMSTot; overload;
      function vIPI: Currency; overload;
      function vPIS(Value: Currency): iICMSTot; overload;
      function vPIS: Currency; overload;
      function vCOFINS(Value: Currency): iICMSTot; overload;
      function vCOFINS: Currency; overload;
      function vOutro(Value: Currency): iICMSTot; overload;
      function vOutro: Currency; overload;
      function vNF(Value: Currency): iICMSTot; overload;
      function vNF: Currency; overload;
      function vTotTrib(Value: Currency): iICMSTot; overload;
      function vTotTrib: Currency; overload;
      function vFCPUFDest(Value: Currency): iICMSTot; overload;
      function vFCPUFDest: Currency; overload;
      function vICMSUFDest(Value: Currency): iICMSTot; overload;
      function vICMSUFDest: Currency; overload;
      function vICMSUFRemet(Value: Currency): iICMSTot; overload;
      function vICMSUFRemet: Currency; overload;
      function &End: iTotal;
  end;

implementation

function TICMSTot.&End: iTotal;
begin

end;

constructor TICMSTot.Create;
begin

end;

destructor TICMSTot.Destroy;
begin

  inherited;
end;

class function TICMSTot.New : iICMSTot;
begin
  Result := Self.Create;
end;

function TICMSTot.vBC: Currency;
begin

end;

function TICMSTot.vBC(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vBCST: Currency;
begin

end;

function TICMSTot.vBCST(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vCOFINS: Currency;
begin

end;

function TICMSTot.vCOFINS(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vDesc: Currency;
begin

end;

function TICMSTot.vDesc(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vFCPUFDest: Currency;
begin

end;

function TICMSTot.vFCPUFDest(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vFrete: Currency;
begin

end;

function TICMSTot.vFrete(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vICMS(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vICMS: Currency;
begin

end;

function TICMSTot.vICMSUFDest: Currency;
begin

end;

function TICMSTot.vICMSUFDest(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vICMSUFRemet(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vICMSUFRemet: Currency;
begin

end;

function TICMSTot.vII(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vII: Currency;
begin

end;

function TICMSTot.vIPI(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vIPI: Currency;
begin

end;

function TICMSTot.vNF: Currency;
begin

end;

function TICMSTot.vNF(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vOutro: Currency;
begin

end;

function TICMSTot.vOutro(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vPIS: Currency;
begin

end;

function TICMSTot.vPIS(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vProd(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vProd: Currency;
begin

end;

function TICMSTot.vSeg(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vSeg: Currency;
begin

end;

function TICMSTot.vST: Currency;
begin

end;

function TICMSTot.vST(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vTotTrib(Value: Currency): iICMSTot;
begin

end;

function TICMSTot.vTotTrib: Currency;
begin

end;

end.
