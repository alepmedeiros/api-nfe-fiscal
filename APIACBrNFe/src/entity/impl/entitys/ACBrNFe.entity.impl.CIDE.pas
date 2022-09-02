unit ACBrNFe.entity.impl.CIDE;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TCIDE<T : IInterface> = class(TInterfacedObject, iCIDE<T>)
    private
      [weak]
      FParent : T;

      FqBCprod: Currency;
      FvAliqProd: Currency;
      FvCIDE: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iCIDE<T>;
      function qBCprod(Value: Currency): iCIDE<T>; overload;
      function qBCprod: Currency; overload;
      function vAliqProd(Value: Currency): iCIDE<T>; overload;
      function vAliqProd: Currency; overload;
      function vCIDE(Value: Currency): iCIDE<T>; overload;
      function vCIDE: Currency; overload;
      function Build: T;
  end;

implementation

function TCIDE<T>.Build: T;
begin
  Result := FParent;
end;

constructor TCIDE<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TCIDE<T>.Destroy;
begin

  inherited;
end;

class function TCIDE<T>.New(Parent : T) : iCIDE<T>;
begin
  Result := Self.Create(Parent);
end;

function TCIDE<T>.qBCprod: Currency;
begin
  Result := FqBCprod;
end;

function TCIDE<T>.qBCprod(Value: Currency): iCIDE<T>;
begin
  Result := Self;
  FqBCprod := Value;
end;

function TCIDE<T>.vAliqProd(Value: Currency): iCIDE<T>;
begin
  Result := Self;
  FvAliqProd := Value;
end;

function TCIDE<T>.vAliqProd: Currency;
begin
  Result := FvAliqProd;
end;

function TCIDE<T>.vCIDE: Currency;
begin
  Result := FvCIDE;
end;

function TCIDE<T>.vCIDE(Value: Currency): iCIDE<T>;
begin
  Result := Self;
  FvCIDE := Value;
end;

end.
