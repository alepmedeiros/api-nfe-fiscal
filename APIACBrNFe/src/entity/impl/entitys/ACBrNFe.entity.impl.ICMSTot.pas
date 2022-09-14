unit ACBrNFe.entity.impl.ICMSTot;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TICMSTot<T : IInterface> = class(TInterfacedObject, iICMSTot<T>)
    private
      [weak]
      FParent : T;

      FvBC: Currency;
      FvICMS: Currency;
      FvBCST: Currency;
      FvST: Currency;
      FvProd: Currency;
      FvFrete: Currency;
      FvSeg: Currency;
      FvDesc: Currency;
      FvII: Currency;
      FvIPI: Currency;
      FvPIS: Currency;
      FvCOFINS: Currency;
      FvOutro: Currency;
      FvNF: Currency;
      FvTotTrib: Currency;
      FvFCPUFDest: Currency;
      FvICMSUFDest: Currency;
      FvICMSUFRemet: Currency;
      FvFCPST: Currency;
      FvFCPSTRet: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iICMSTot<T>;
      function vBC(Value: Currency): iICMSTot<T>; overload;
      function vBC: Currency; overload;
      function vICMS(Value: Currency): iICMSTot<T>; overload;
      function vICMS: Currency; overload;
      function vBCST(Value: Currency): iICMSTot<T>; overload;
      function vBCST: Currency; overload;
      function vST(Value: Currency): iICMSTot<T>; overload;
      function vST: Currency; overload;
      function vProd(Value: Currency): iICMSTot<T>; overload;
      function vProd: Currency; overload;
      function vFrete(Value: Currency): iICMSTot<T>; overload;
      function vFrete: Currency; overload;
      function vSeg(Value: Currency): iICMSTot<T>; overload;
      function vSeg: Currency; overload;
      function vDesc(Value: Currency): iICMSTot<T>; overload;
      function vDesc: Currency; overload;
      function vII(Value: Currency): iICMSTot<T>; overload;
      function vII: Currency; overload;
      function vIPI(Value: Currency): iICMSTot<T>; overload;
      function vIPI: Currency; overload;
      function vPIS(Value: Currency): iICMSTot<T>; overload;
      function vPIS: Currency; overload;
      function vCOFINS(Value: Currency): iICMSTot<T>; overload;
      function vCOFINS: Currency; overload;
      function vOutro(Value: Currency): iICMSTot<T>; overload;
      function vOutro: Currency; overload;
      function vNF(Value: Currency): iICMSTot<T>; overload;
      function vNF: Currency; overload;
      function vTotTrib(Value: Currency): iICMSTot<T>; overload;
      function vTotTrib: Currency; overload;
      function vFCPUFDest(Value: Currency): iICMSTot<T>; overload;
      function vFCPUFDest: Currency; overload;
      function vICMSUFDest(Value: Currency): iICMSTot<T>; overload;
      function vICMSUFDest: Currency; overload;
      function vICMSUFRemet(Value: Currency): iICMSTot<T>; overload;
      function vICMSUFRemet: Currency; overload;
      function vFCPST(Value: Currency): iICMSTot<T>; overload;
      function vFCPST: Currency; overload;
      function vFCPSTRet(Value: Currency): iICMSTot<T>; overload;
      function vFCPSTRet: Currency; overload;
      function Build: T;
  end;

implementation

function TICMSTot<T>.Build: T;
begin
  Result := FParent;
end;

constructor TICMSTot<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TICMSTot<T>.Destroy;
begin

  inherited;
end;

class function TICMSTot<T>.New(Parent : T) : iICMSTot<T>;
begin
  Result := Self.Create(Parent);
end;

function TICMSTot<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TICMSTot<T>.vBC(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TICMSTot<T>.vBCST(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvBCST := Value;
end;

function TICMSTot<T>.vBCST: Currency;
begin
  Result := FvBCST;
end;

function TICMSTot<T>.vCOFINS: Currency;
begin
  Result := FvCOFINS;
end;

function TICMSTot<T>.vCOFINS(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvCOFINS := Value;
end;

function TICMSTot<T>.vDesc(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvDesc := Value;
end;

function TICMSTot<T>.vDesc: Currency;
begin
  Result := FvDesc;
end;

function TICMSTot<T>.vFCPST: Currency;
begin
  Result := FvFCPST;
end;

function TICMSTot<T>.vFCPST(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvFCPST := Value;
end;

function TICMSTot<T>.vFCPSTRet: Currency;
begin
  Result := FvFCPSTRet;
end;

function TICMSTot<T>.vFCPSTRet(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvFCPSTRet := Value;
end;

function TICMSTot<T>.vFCPUFDest(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvFCPUFDest := Value;
end;

function TICMSTot<T>.vFCPUFDest: Currency;
begin
  Result := FvFCPUFDest;
end;

function TICMSTot<T>.vFrete(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvFrete := Value;
end;

function TICMSTot<T>.vFrete: Currency;
begin
  Result := FvFrete;
end;

function TICMSTot<T>.vICMS(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvICMS := Value;
end;

function TICMSTot<T>.vICMS: Currency;
begin
  Result := FvICMS;
end;

function TICMSTot<T>.vICMSUFDest(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvICMSUFDest := Value;
end;

function TICMSTot<T>.vICMSUFDest: Currency;
begin
  Result := FvICMSUFDest;
end;

function TICMSTot<T>.vICMSUFRemet(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvICMSUFRemet := Value;
end;

function TICMSTot<T>.vICMSUFRemet: Currency;
begin
  Result := FvICMSUFRemet;
end;

function TICMSTot<T>.vII(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvII := Value;
end;

function TICMSTot<T>.vII: Currency;
begin
  Result := FvII;
end;

function TICMSTot<T>.vIPI(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvIPI := Value;
end;

function TICMSTot<T>.vIPI: Currency;
begin
  Result := FvIPI;
end;

function TICMSTot<T>.vNF: Currency;
begin
  Result := FvNF;
end;

function TICMSTot<T>.vNF(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvNF := Value;
end;

function TICMSTot<T>.vOutro: Currency;
begin
  Result := FvOutro;
end;

function TICMSTot<T>.vOutro(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvOutro := Value;
end;

function TICMSTot<T>.vPIS(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvPIS := Value;
end;

function TICMSTot<T>.vPIS: Currency;
begin
  Result := FvPIS;
end;

function TICMSTot<T>.vProd(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvProd := Value;
end;

function TICMSTot<T>.vProd: Currency;
begin
  Result := FvProd;
end;

function TICMSTot<T>.vSeg(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvSeg := Value;
end;

function TICMSTot<T>.vSeg: Currency;
begin
  Result := FvSeg;
end;

function TICMSTot<T>.vST(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvST := Value;
end;

function TICMSTot<T>.vST: Currency;
begin
  Result := FvST;
end;

function TICMSTot<T>.vTotTrib(Value: Currency): iICMSTot<T>;
begin
  Result := Self;
  FvTotTrib := Value;
end;

function TICMSTot<T>.vTotTrib: Currency;
begin
  Result := FvTotTrib;
end;

end.
