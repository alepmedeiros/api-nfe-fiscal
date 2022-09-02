unit ACBrNFe.entity.impl.COFINSST;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TCOFINSST<T : IInterface> = class(TInterfacedObject, iCOFINSST<T>)
    private
      [weak]
      FParent : T;

      FvBC: Currency;
      FpCOFINS: Currency;
      FqBCprod: Currency;
      FvAliqProd: Currency;
      FvCOFINS: Currency;
      FindSomaCOFINSST: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iCOFINSST<T>;
      function vBC(Value: Currency): iCOFINSST<T>; overload;
      function vBC: Currency; overload;
      function pCOFINS(Value: Currency): iCOFINSST<T>; overload;
      function pCOFINS: Currency; overload;
      function qBCprod(Value: Currency): iCOFINSST<T>; overload;
      function qBCprod: Currency; overload;
      function vAliqProd(Value: Currency): iCOFINSST<T>; overload;
      function vAliqProd: Currency; overload;
      function vCOFINS(Value: Currency): iCOFINSST<T>; overload;
      function vCOFINS: Currency; overload;
      function indSomaCOFINSST(Value: String): iCOFINSST<T>; overload;
      function indSomaCOFINSST: String; overload;
      function Build: T;
  end;

implementation

function TCOFINSST<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCOFINSST<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TCOFINSST<T>.Destroy;
begin

  inherited;
end;

function TCOFINSST<T>.indSomaCOFINSST(Value: String): iCOFINSST<T>;
begin
  Result := Self;
  FindSomaCOFINSST := Value;
end;

function TCOFINSST<T>.indSomaCOFINSST: String;
begin
  Result := FindSomaCOFINSST;
end;

class function TCOFINSST<T>.New(Parent : T) : iCOFINSST<T>;
begin
  Result := Self.Create(Parent);
end;

function TCOFINSST<T>.pCOFINS(Value: Currency): iCOFINSST<T>;
begin
  Result := Self;
  FpCOFINS := Value;
end;

function TCOFINSST<T>.pCOFINS: Currency;
begin
  Result := FpCOFINS;
end;

function TCOFINSST<T>.qBCprod(Value: Currency): iCOFINSST<T>;
begin
  Result := Self;
  FqBCprod := Value;
end;

function TCOFINSST<T>.qBCprod: Currency;
begin
  Result := FqBCprod;
end;

function TCOFINSST<T>.vAliqProd: Currency;
begin
  Result := FvAliqProd;
end;

function TCOFINSST<T>.vAliqProd(Value: Currency): iCOFINSST<T>;
begin
  Result := Self;
  FvAliqProd := Value;
end;

function TCOFINSST<T>.vBC(Value: Currency): iCOFINSST<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TCOFINSST<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TCOFINSST<T>.vCOFINS(Value: Currency): iCOFINSST<T>;
begin
  Result := Self;
  FvCOFINS := Value;
end;

function TCOFINSST<T>.vCOFINS: Currency;
begin
  Result := FvCOFINS;
end;

end.
