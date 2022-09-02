unit ACBrNFe.entity.impl.II;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TII<T : IInterface> = class(TInterfacedObject, iII<T>)
    private
      [weak]
      FParent : T;

      FvBC: Currency;
      FvDespAdu: Currency;
      FvII: Currency;
      FvIOF: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iII<T>;
      function vBC(Value: Currency): iII<T>; overload;
      function vBC: Currency; overload;
      function vDespAdu(Value: Currency): iII<T>; overload;
      function vDespAdu: Currency; overload;
      function vII(Value: Currency): iII<T>; overload;
      function vII: Currency; overload;
      function vIOF(Value: Currency): iII<T>; overload;
      function vIOF: Currency; overload;
      function Build: T;
  end;

implementation

function TII<T>.Build: T;
begin
  Result := FParent;
end;

constructor TII<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TII<T>.Destroy;
begin

  inherited;
end;

class function TII<T>.New(Parent : T) : iII<T>;
begin
  Result := Self.Create(Parent);
end;

function TII<T>.vBC: Currency;
begin
  Result := FvBC;
end;

function TII<T>.vBC(Value: Currency): iII<T>;
begin
  Result := Self;
  FvBC := Value;
end;

function TII<T>.vDespAdu: Currency;
begin
  Result := FvDespAdu;
end;

function TII<T>.vDespAdu(Value: Currency): iII<T>;
begin
  Result := Self;
  FvDespAdu := Value;
end;

function TII<T>.vII(Value: Currency): iII<T>;
begin
  Result := Self;
  FvII := Value;
end;

function TII<T>.vII: Currency;
begin
  Result := FvII;
end;

function TII<T>.vIOF: Currency;
begin
  Result := FvIOF;
end;

function TII<T>.vIOF(Value: Currency): iII<T>;
begin
  Result := Self;
  FvIOF := Value;
end;

end.
