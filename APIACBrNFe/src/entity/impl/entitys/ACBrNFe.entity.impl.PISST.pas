unit ACBrNFe.entity.impl.PISST;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TPISST<T : IInterface> = class(TInterfacedObject, iPISST<T>)
    private
      [weak]
      FParent : T;

      FvBC: Currency;
      FpPIS: Currency;
      FqBCprod: Currency;
      FvAliqProd: Currency;
      FvPIS: Currency;
      FIndSomaPISST: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iPISST<T>;
      function vBC(Value: Currency): iPISST<T>; overload;
      function vBC: Currency; overload;
      function pPIS(Value: Currency): iPISST<T>; overload;
      function pPIS: Currency; overload;
      function qBCprod(Value: Currency): iPISST<T>; overload;
      function qBCprod: Currency; overload;
      function vAliqProd(Value: Currency): iPISST<T>; overload;
      function vAliqProd: Currency; overload;
      function vPIS(Value: Currency): iPISST<T>; overload;
      function vPIS: Currency; overload;
      function IndSomaPISST(Value: String): iPISST<T>; overload;
      function IndSomaPISST: String; overload;
      function Build: T;
  end;

implementation

function TPISST<T>.Build: T;
begin
  Result := FParent;
end;

constructor TPISST<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TPISST<T>.Destroy;
begin

  inherited;
end;

function TPISST<T>.IndSomaPISST(Value: String): iPISST<T>;
begin
  Result := Self;
  FIndSomaPISST := Value;
end;

function TPISST<T>.IndSomaPISST: String;
begin
  Result := FIndSomaPISST;
end;

class function TPISST<T>.New(Parent : T) : iPISST<T>;
begin
  Result := Self.Create(Parent);
end;

function TPISST<T>.pPIS(Value: Currency): iPISST<T>;
begin
  Result := Self;
  FpPIS := Value;
end;

function TPISST<T>.pPIS: Currency;
begin
  Result := FpPIS;
end;

function TPISST<T>.qBCprod(Value: Currency): iPISST<T>;
begin
  Result := Self;
  FqBCprod := Value;
end;

function TPISST<T>.qBCprod: Currency;
begin
  Result := FqBCprod;
end;

function TPISST<T>.vAliqProd: Currency;
begin
  Result := FvAliqProd;
end;

function TPISST<T>.vAliqProd(Value: Currency): iPISST<T>;
begin
  Result := Self;
  FvAliqProd := Value;
end;

function TPISST<T>.vBC(Value: Currency): iPISST<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TPISST<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TPISST<T>.vPIS(Value: Currency): iPISST<T>;
begin
  Result := Self;
  FvPIS := Value;
end;

function TPISST<T>.vPIS: Currency;
begin
  Result := FvPIS;
end;

end.
