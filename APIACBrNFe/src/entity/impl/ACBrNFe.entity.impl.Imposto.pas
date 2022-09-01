unit ACBrNFe.entity.impl.Imposto;

interface

uses
  ACBrNFe.entity.interfaces, ACBrNFe.entity.impl.COFINS,
  ACBrNFe.entity.impl.COFINSST, ACBrNFe.entity.impl.ICMS,
  ACBrNFe.entity.impl.ICMSUFDest, ACBrNFe.entity.impl.II,
  ACBrNFe.entity.impl.Pis, ACBrNFe.entity.impl.PISST;

type
  TImposto<T : IInterface> = class(TInterfacedObject, iImposto<T>)
    private
      [weak]
      FParent : T;

      FvTotTrib: Currency;
      FICMS: iICMS<iImposto<T>>;
      FICMSUFDest: iICMSUFDest<iImposto<T>>;
      FII: iII<iImposto<T>>;
      FPis: iPis<iImposto<T>>;
      FPISST: iPISST<iImposto<T>>;
      FCOFINS: iCOFINS<iImposto<T>>;
      FCOFINSST: iCOFINSST<iImposto<T>>;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iImposto<T>;
      function vTotTrib(Value: Currency): iImposto<T>; overload;
      function vTotTrib: Currency; overload;
      function ICMS: iICMS<iImposto<T>>;
      function ICMSUFDest: iICMSUFDest<iImposto<T>>;
      function II: iII<iImposto<T>>;
      function Pis: iPis<iImposto<T>>;
      function PISST: iPISST<iImposto<T>>;
      function COFINS: iCOFINS<iImposto<T>>;
      function COFINSST: iCOFINSST<iImposto<T>>;
      function Build: T;
  end;

implementation

function TImposto<T>.Build: T;
begin
  Result := FParent;
end;

function TImposto<T>.COFINS: iCOFINS<iImposto<T>>;
begin
  if not Assigned(FCOFINS) then
    FCOFINS := TCOFINS<iImposto<T>>.New(Self);
  Result := FCOFINS;
end;

function TImposto<T>.COFINSST: iCOFINSST<iImposto<T>>;
begin
  if not Assigned(FCOFINSST) then
    FCOFINSST := TCOFINSST<iImposto<T>>.New(Self);
  Result := FCOFINSST;
end;

constructor TImposto<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TImposto<T>.Destroy;
begin

  inherited;
end;

function TImposto<T>.ICMS: iICMS<iImposto<T>>;
begin
  if not Assigned(FICMS) then
    FICMS := TICMS<iImposto<T>>.New(Self);
  Result := FICMS;
end;

function TImposto<T>.ICMSUFDest: iICMSUFDest<iImposto<T>>;
begin
  if not Assigned(FICMSUFDest) then
    FICMSUFDest := TICMSUFDest<iImposto<T>>.New(Self);
  Result := FICMSUFDest;
end;

function TImposto<T>.II: iII<iImposto<T>>;
begin
  if not Assigned(FII) then
    FII := TII<iImposto<T>>.New(Self);
  Result := FII;
end;

class function TImposto<T>.New(Parent : T) : iImposto<T>;
begin
  Result := Self.Create(Parent);
end;

function TImposto<T>.Pis: iPis<iImposto<T>>;
begin
  if not Assigned(FPis) then
    FPis := TPis<iImposto<T>>.New(Self);
  Result := FPis;
end;

function TImposto<T>.PISST: iPISST<iImposto<T>>;
begin
  if not Assigned(FPISST) then
    FPISST := TPISST<iImposto<T>>.New(Self);
  Result := FPISST;
end;

function TImposto<T>.vTotTrib(Value: Currency): iImposto<T>;
begin
  Result := Self;
  FvTotTrib := Value;
end;

function TImposto<T>.vTotTrib: Currency;
begin
  Result := FvTotTrib;
end;

end.
