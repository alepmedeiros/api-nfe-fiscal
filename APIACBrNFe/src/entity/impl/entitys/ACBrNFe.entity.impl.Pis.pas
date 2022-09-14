unit ACBrNFe.entity.impl.Pis;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TPis<T : IInterface> = class(TInterfacedObject, iPis<T>)
    private
      [weak]
      FParent : T;

      FCST: String;
      FvBC: Currency;
      FpPIS: Currency;
      FvPIS: Currency;
      FqBCprod: Currency;
      FvAliqProd: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iPis<T>;
      function CST(Value: String): iPis<T>; overload;
      function CST: String; overload;
      function vBC(Value: Currency): iPis<T>; overload;
      function vBC: Currency; overload;
      function pPIS(Value: Currency): iPis<T>; overload;
      function pPIS: Currency; overload;
      function vPIS(Value: Currency): iPis<T>; overload;
      function vPIS: Currency; overload;
      function qBCprod(Value: Currency): iPis<T>; overload;
      function qBCprod: Currency; overload;
      function vAliqProd(Value: Currency): iPis<T>; overload;
      function vAliqProd: Currency; overload;
      function Build: T;
  end;

implementation

function TPis<T>.Build: T;
begin
  Result := FParent;
end;

constructor TPis<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

function TPis<T>.CST(Value: String): iPis<T>;
begin
  Result := Self;
  FCST := Value;
end;

function TPis<T>.CST: String;
begin
  Result := FCST;
end;

destructor TPis<T>.Destroy;
begin

  inherited;
end;

class function TPis<T>.New(Parent : T) : iPis<T>;
begin
  Result := Self.Create(Parent);
end;

function TPis<T>.pPIS: Currency;
begin
  Result := FpPIS;
end;

function TPis<T>.pPIS(Value: Currency): iPis<T>;
begin
  Result := Self;
  FpPIS := Value;
end;

function TPis<T>.qBCprod: Currency;
begin
  Result := FqBCprod;
end;

function TPis<T>.qBCprod(Value: Currency): iPis<T>;
begin
  Result := Self;
  FqBCprod := Value;
end;

function TPis<T>.vAliqProd(Value: Currency): iPis<T>;
begin
  Result := Self;
  FvAliqProd := Value;
end;

function TPis<T>.vAliqProd: Currency;
begin
  Result := FvAliqProd;
end;

function TPis<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TPis<T>.vBC(Value: Currency): iPis<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TPis<T>.vPIS(Value: Currency): iPis<T>;
begin
  Result := Self;
  FvPIS := Value;
end;

function TPis<T>.vPIS: Currency;
begin
  Result := FvPIS;
end;

end.
