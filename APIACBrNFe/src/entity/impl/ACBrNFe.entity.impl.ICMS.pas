unit ACBrNFe.entity.impl.ICMS;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TICMS<T : IInterface> = class(TInterfacedObject, iICMS<T>)
    private
      [weak]
      FParent : T;

      Forig: String;
      FCST: String;
      FCSOSN: String;
      FmodBC: String;
      FvBC: Currency;
      FpICMS: Currency;
      FvICMS: Currency;
      FvBCICMS: Currency;
      FmodBCST: String;
      FpMVAST: Currency;
      FpRedBCST: Currency;
      FvBCST: Currency;
      FpICMSST: Currency;
      FvICMSST: Currency;
      FpRedBC: Currency;
      FvBCICMSST: Currency;
      FpCredSN: Currency;
      FvCredICMSSN: Currency;
      FvBCFCPST: Currency;
      FpFCPST: Currency;
      FvFCPST: Currency;
      FvBCSTRet: Currency;
      FpST: Currency;
      FvICMSSubstituto: Currency;
      FvICMSSTRet: Currency;
      FvBCFCPSTRet: Currency;
      FpFCPSTRet: Currency;
      FvFCPSTRet: Currency;
      FpRedBCEfet: Currency;
      FvBCEfet: Currency;
      FpICMSEfet: Currency;
      FvICMSEfet: Currency;
      FvICMSSTDeson: Currency;
      FmotDesICMSST: String;
      FpFCPDif: Currency;
      FvFCPDif: Currency;
      FvFCPEfet: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iICMS<T>;
      function orig(Value: String): iICMS<T>; overload;
      function orig: String; overload;
      function CST(Value: String): iICMS<T>; overload;
      function CST: String; overload;
      function CSOSN(Value: String): iICMS<T>; overload;
      function CSOSN: String; overload;
      function modBC(Value: String): iICMS<T>; overload;
      function modBC: String; overload;
      function vBC(Value: Currency): iICMS<T>; overload;
      function vBC: Currency; overload;
      function pICMS(Value: Currency): iICMS<T>; overload;
      function pICMS: Currency; overload;
      function vICMS(Value: Currency): iICMS<T>; overload;
      function vICMS: Currency; overload;
      function vBCICMS(Value: Currency): iICMS<T>; overload;
      function vBCICMS: Currency; overload;
      function modBCST(Value: String): iICMS<T>; overload;
      function modBCST: String; overload;
      function pMVAST(Value: Currency): iICMS<T>; overload;
      function pMVAST: Currency; overload;
      function pRedBCST(Value: Currency): iICMS<T>; overload;
      function pRedBCST: Currency; overload;
      function vBCST(Value: Currency): iICMS<T>; overload;
      function vBCST: Currency; overload;
      function pICMSST(Value: Currency): iICMS<T>; overload;
      function pICMSST: Currency; overload;
      function vICMSST(Value: Currency): iICMS<T>; overload;
      function vICMSST: Currency; overload;
      function pRedBC(Value: Currency): iICMS<T>; overload;
      function pRedBC: Currency; overload;
      function vBCICMSST(Value: Currency): iICMS<T>; overload;
      function vBCICMSST: Currency; overload;
      function pCredSN(Value: Currency): iICMS<T>; overload;
      function pCredSN: Currency; overload;
      function vCredICMSSN(Value: Currency): iICMS<T>; overload;
      function vCredICMSSN: Currency; overload;
      function vBCFCPST(Value: Currency): iICMS<T>; overload;
      function vBCFCPST: Currency; overload;
      function pFCPST(Value: Currency): iICMS<T>; overload;
      function pFCPST: Currency; overload;
      function vFCPST(Value: Currency): iICMS<T>; overload;
      function vFCPST: Currency; overload;
      function vBCSTRet(Value: Currency): iICMS<T>; overload;
      function vBCSTRet: Currency; overload;
      function pST(Value: Currency): iICMS<T>; overload;
      function pST: Currency; overload;
      function vICMSSubstituto(Value: Currency): iICMS<T>; overload;
      function vICMSSubstituto: Currency; overload;
      function vICMSSTRet(Value: Currency): iICMS<T>; overload;
      function vICMSSTRet: Currency; overload;
      function vBCFCPSTRet(Value: Currency): iICMS<T>; overload;
      function vBCFCPSTRet: Currency; overload;
      function pFCPSTRet(Value: Currency): iICMS<T>; overload;
      function pFCPSTRet: Currency; overload;
      function vFCPSTRet(Value: Currency): iICMS<T>; overload;
      function vFCPSTRet: Currency; overload;
      function pRedBCEfet(Value: Currency): iICMS<T>; overload;
      function pRedBCEfet: Currency; overload;
      function vBCEfet(Value: Currency): iICMS<T>; overload;
      function vBCEfet: Currency; overload;
      function pICMSEfet(Value: Currency): iICMS<T>; overload;
      function pICMSEfet: Currency; overload;
      function vICMSEfet(Value: Currency): iICMS<T>; overload;
      function vICMSEfet: Currency; overload;
      function vICMSSTDeson(Value: Currency): iICMS<T>; overload;
      function vICMSSTDeson: Currency; overload;
      function motDesICMSST(Value: String): iICMS<T>; overload;
      function motDesICMSST: String; overload;
      function pFCPDif(Value: Currency): iICMS<T>; overload;
      function pFCPDif: Currency; overload;
      function vFCPDif(Value: Currency): iICMS<T>; overload;
      function vFCPDif: Currency; overload;
      function vFCPEfet(Value: Currency): iICMS<T>; overload;
      function vFCPEfet: Currency; overload;
      function Build: T;
  end;

implementation

function TICMS<T>.Build: T;
begin
  Result := FParent;
end;

constructor TICMS<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

function TICMS<T>.CSOSN(Value: String): iICMS<T>;
begin
  Result := Self;
  FCSOSN := Value;
end;

function TICMS<T>.CSOSN: String;
begin
  Result := FCSOSN;
end;

function TICMS<T>.CST: String;
begin
  Result := FCST;
end;

function TICMS<T>.CST(Value: String): iICMS<T>;
begin
  Result := Self;
  FCST := Value;
end;

destructor TICMS<T>.Destroy;
begin

  inherited;
end;

function TICMS<T>.modBC(Value: String): iICMS<T>;
begin
  Result := Self;
  FmodBC := Value;
end;

function TICMS<T>.modBC: String;
begin
  Result := FmodBC;
end;

function TICMS<T>.modBCST(Value: String): iICMS<T>;
begin
  Result := Self;
  FmodBCST := Value;
end;

function TICMS<T>.modBCST: String;
begin
  Result := FmodBCST;
end;

function TICMS<T>.motDesICMSST: String;
begin
  Result := FmotDesICMSST;
end;

function TICMS<T>.motDesICMSST(Value: String): iICMS<T>;
begin
  Result := Self;
  FmotDesICMSST := Value;
end;

class function TICMS<T>.New(Parent : T) : iICMS<T>;
begin
  Result := Self.Create(Parent);
end;

function TICMS<T>.orig: String;
begin
  Result := Forig;
end;

function TICMS<T>.orig(Value: String): iICMS<T>;
begin
  Result := Self;
  Forig := Value;
end;

function TICMS<T>.pCredSN(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpCredSN := Value;
end;

function TICMS<T>.pCredSN: Currency;
begin
  Result := FpCredSN;
end;

function TICMS<T>.pFCPDif: Currency;
begin
  Result := FpFCPDif;
end;

function TICMS<T>.pFCPDif(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpFCPDif := Value;
end;

function TICMS<T>.pFCPST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpFCPST := Value;
end;

function TICMS<T>.pFCPST: Currency;
begin
  Result := FpFCPST;
end;

function TICMS<T>.pFCPSTRet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpFCPSTRet := Value;
end;

function TICMS<T>.pFCPSTRet: Currency;
begin
  Result := FpFCPSTRet;
end;

function TICMS<T>.pICMS(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpICMS := Value;
end;

function TICMS<T>.pICMS: Currency;
begin
  Result := FpICMS;
end;

function TICMS<T>.pICMSEfet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpICMSEfet := Value;
end;

function TICMS<T>.pICMSEfet: Currency;
begin
  Result := FpICMSEfet;
end;

function TICMS<T>.pICMSST: Currency;
begin
  Result := FpICMSST;
end;

function TICMS<T>.pICMSST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpICMSST := Value;
end;

function TICMS<T>.pMVAST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpMVAST := Value;
end;

function TICMS<T>.pMVAST: Currency;
begin
  Result := FpMVAST;
end;

function TICMS<T>.pRedBC(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpRedBC := Value;
end;

function TICMS<T>.pRedBC: Currency;
begin
  Result := FpRedBC;
end;

function TICMS<T>.pRedBCEfet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpRedBCEfet := Value;
end;

function TICMS<T>.pRedBCEfet: Currency;
begin
  Result := FpRedBCEfet;
end;

function TICMS<T>.pRedBCST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpRedBCST := Value;
end;

function TICMS<T>.pRedBCST: Currency;
begin
  Result := FpRedBCST;
end;

function TICMS<T>.pST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FpST := Value;
end;

function TICMS<T>.pST: Currency;
begin
  Result := FpST;
end;

function TICMS<T>.vBC(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TICMS<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TICMS<T>.vBCEfet: Currency;
begin
  Result := FvBCEfet;
end;

function TICMS<T>.vBCEfet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCEfet := Value;
end;

function TICMS<T>.vBCFCPST: Currency;
begin
  Result := FvBCFCPST;
end;

function TICMS<T>.vBCFCPST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCFCPST := Value;
end;

function TICMS<T>.vBCFCPSTRet: Currency;
begin
  Result := FvBCFCPSTRet;
end;

function TICMS<T>.vBCFCPSTRet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCFCPSTRet := Value;
end;

function TICMS<T>.vBCICMS(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCICMS := Value;
end;

function TICMS<T>.vBCICMS: Currency;
begin
  Result := FvBCICMS;
end;

function TICMS<T>.vBCICMSST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCICMSST := Value;
end;

function TICMS<T>.vBCICMSST: Currency;
begin
  Result := FvBCICMSST;
end;

function TICMS<T>.vBCST: Currency;
begin
  Result := FvBCST;
end;

function TICMS<T>.vBCST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCST := Value;
end;

function TICMS<T>.vBCSTRet: Currency;
begin
  Result := FvBCSTRet;
end;

function TICMS<T>.vBCSTRet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvBCSTRet := Value;
end;

function TICMS<T>.vCredICMSSN: Currency;
begin
  Result := FvCredICMSSN;
end;

function TICMS<T>.vCredICMSSN(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvCredICMSSN := Value;
end;

function TICMS<T>.vFCPDif: Currency;
begin
  Result := FvFCPDif;
end;

function TICMS<T>.vFCPDif(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvFCPDif := Value;
end;

function TICMS<T>.vFCPEfet: Currency;
begin
  Result := FvFCPDif;
end;

function TICMS<T>.vFCPEfet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvFCPEfet := Value;
end;

function TICMS<T>.vFCPST: Currency;
begin
  Result := FvFCPST;
end;

function TICMS<T>.vFCPST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvFCPST := Value;
end;

function TICMS<T>.vFCPSTRet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvFCPSTRet := Value;
end;

function TICMS<T>.vFCPSTRet: Currency;
begin
  Result := FvFCPSTRet;
end;

function TICMS<T>.vICMS: Currency;
begin
  Result := FvICMS;
end;

function TICMS<T>.vICMS(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvICMS := Value;
end;

function TICMS<T>.vICMSEfet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvICMSEfet := Value;
end;

function TICMS<T>.vICMSEfet: Currency;
begin
  Result := FvICMSEfet;
end;

function TICMS<T>.vICMSST(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvICMSST := Value;
end;

function TICMS<T>.vICMSST: Currency;
begin
  Result := FvICMSST;
end;

function TICMS<T>.vICMSSTDeson: Currency;
begin
  Result := FvICMSSTDeson;
end;

function TICMS<T>.vICMSSTDeson(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvICMSSTDeson := Value;
end;

function TICMS<T>.vICMSSTRet: Currency;
begin
  Result := FvICMSSTRet;
end;

function TICMS<T>.vICMSSTRet(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvICMSSTRet := Value;
end;

function TICMS<T>.vICMSSubstituto(Value: Currency): iICMS<T>;
begin
  Result := Self;
  FvICMSSubstituto := Value;
end;

function TICMS<T>.vICMSSubstituto: Currency;
begin
  Result := FvICMSSubstituto;
end;

end.
