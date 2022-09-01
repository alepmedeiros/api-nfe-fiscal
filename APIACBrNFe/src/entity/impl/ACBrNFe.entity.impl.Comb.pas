unit ACBrNFe.entity.impl.Comb;

interface

uses
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.impl.CIDE,
  ACBrNFe.entity.impl.ICMS, ACBrNFe.entity.impl.ICMSCons,
  ACBrNFe.entity.impl.ICMSInter;

type
  TComb<T: IInterface> = class(TInterfacedObject, iComb<T>)
  private
    [weak]
    FParent: T;

    FcProdANP: Integer;
    FCODIF: String;
    FqTemp: Currency;
    FUFcons: String;
    FCIDE: iCIDE<iComb<T>>;
    FICMS: iICMS<iComb<T>>;
    FICMSInter: iICMSInter<iComb<T>>;
    FICMSCons: iICMSCons<iComb<T>>;
  public
    constructor Create(Parent: T);
    destructor Destroy; override;
    class function New(Parent: T): iComb<T>;
    function cProdANP(Value: Integer): iComb<T>; overload;
    function cProdANP: Integer; overload;
    function CODIF(Value: String): iComb<T>; overload;
    function CODIF: String; overload;
    function qTemp(Value: Currency): iComb<T>; overload;
    function qTemp: Currency; overload;
    function UFcons(Value: String): iComb<T>; overload;
    function UFcons: String; overload;
    function CIDE: iCIDE<iComb<T>>;
    function ICMS: iICMS<iComb<T>>;
    function ICMSInter: iICMSInter<iComb<T>>;
    function ICMSCons: iICMSCons<iComb<T>>;
    function Build: T;
  end;

implementation

function TComb<T>.Build: T;
begin
  Result := FParent;
end;

function TComb<T>.CIDE: iCIDE<iComb<T>>;
begin
  if not Assigned(FCIDE) then
    FCIDE := TCIDE < iComb < T >>.New(Self);
  Result := FCIDE;
end;

function TComb<T>.CODIF(Value: String): iComb<T>;
begin
  Result := Self;
  FCODIF := Value;
end;

function TComb<T>.CODIF: String;
begin
  Result := FCODIF;
end;

function TComb<T>.cProdANP(Value: Integer): iComb<T>;
begin
  Result := Self;
  FcProdANP := Value;
end;

function TComb<T>.cProdANP: Integer;
begin
  Result := FcProdANP;
end;

constructor TComb<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TComb<T>.Destroy;
begin

  inherited;
end;

function TComb<T>.ICMS: iICMS<iComb<T>>;
begin
  if not Assigned(FICMS) then
    FICMS := TICMS < iComb < T >>.New(Self);
  Result := FICMS;
end;

function TComb<T>.ICMSCons: iICMSCons<iComb<T>>;
begin
  if not Assigned(FICMSCons) then
    FICMSCons := TICMSCons < iComb < T >>.New(Self);
  Result := FICMSCons;
end;

function TComb<T>.ICMSInter: iICMSInter<iComb<T>>;
begin
  if not Assigned(FICMSInter) then
    FICMSInter := TICMSInter < iComb < T >>.New(Self);
  Result := FICMSInter;
end;

class function TComb<T>.New(Parent: T): iComb<T>;
begin
  Result := Self.Create(Parent);
end;

function TComb<T>.qTemp: Currency;
begin
  Result := FqTemp;
end;

function TComb<T>.qTemp(Value: Currency): iComb<T>;
begin
  Result := Self;
  FqTemp := Value;
end;

function TComb<T>.UFcons(Value: String): iComb<T>;
begin
  Result := Self;
  FUFcons := Value;
end;

function TComb<T>.UFcons: String;
begin
  Result := FUFcons;
end;

end.
