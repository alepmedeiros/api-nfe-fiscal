unit ACBrNFe.entity.impl.COFINS;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TCOFINS<T : IInterface> = class(TInterfacedObject, iCOFINS<T>)
    private
      [weak]
      FParent : T;

      FCST: String;
      FvBC: Currency;
      FpCOFINS: Currency;
      FvCOFINS: Currency;
      FqBCprod: Currency;
      FvAliqProd: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iCOFINS<T>;
      function CST(Value: String): iCOFINS<T>; overload;
      function CST: String; overload;
      function vBC(Value: Currency): iCOFINS<T>; overload;
      function vBC: Currency; overload;
      function pCOFINS(Value: Currency): iCOFINS<T>; overload;
      function pCOFINS: Currency; overload;
      function vCOFINS(Value: Currency): iCOFINS<T>; overload;
      function vCOFINS: Currency; overload;
      function qBCprod(Value: Currency): iCOFINS<T>; overload;
      function qBCprod: Currency; overload;
      function vAliqProd(Value: Currency): iCOFINS<T>; overload;
      function vAliqProd: Currency; overload;
      function Build: T;
  end;

implementation

function TCOFINS<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCOFINS<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

function TCOFINS<T>.CST(Value: String): iCOFINS<T>;
begin
  Result := Self;
  FCST := Value;
end;

function TCOFINS<T>.CST: String;
begin
  Result := FCST;
end;

destructor TCOFINS<T>.Destroy;
begin

  inherited;
end;

class function TCOFINS<T>.New(Parent : T) : iCOFINS<T>;
begin
  Result := Self.Create(Parent);
end;

function TCOFINS<T>.pCOFINS: Currency;
begin
  Result := FpCOFINS;
end;

function TCOFINS<T>.pCOFINS(Value: Currency): iCOFINS<T>;
begin
  Result := Self;
  FpCOFINS := Value;
end;

function TCOFINS<T>.qBCprod: Currency;
begin
  Result := FqBCprod;
end;

function TCOFINS<T>.qBCprod(Value: Currency): iCOFINS<T>;
begin
  Result := Self;
  FqBCprod := Value;
end;

function TCOFINS<T>.vAliqProd(Value: Currency): iCOFINS<T>;
begin
  Result := Self;
  FvAliqProd := Value;
end;

function TCOFINS<T>.vAliqProd: Currency;
begin
  Result := FvAliqProd;
end;

function TCOFINS<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TCOFINS<T>.vBC(Value: Currency): iCOFINS<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TCOFINS<T>.vCOFINS(Value: Currency): iCOFINS<T>;
begin
  Result := Self;
  FvCOFINS := Value;
end;

function TCOFINS<T>.vCOFINS: Currency;
begin
  Result := FvCOFINS;
end;

end.
