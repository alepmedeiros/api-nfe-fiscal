unit ACBrNFe.entity.impl.RetTrib;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TRetTrib<T : IInterface> = class(TInterfacedObject, iRetTrib<T>)
    private
      [weak]
      FParent : T;

      FvRetPIS: Currency;
      FvRetCOFINS: Currency;
      FvRetCSLL: Currency;
      FvBCIRRF: Currency;
      FvIRRF: Currency;
      FvBCRetPrev: Currency;
      FvRetPrev: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iRetTrib<T>;
      function vRetPIS(Value: Currency): iRetTrib<T>; overload;
      function vRetPIS: Currency; overload;
      function vRetCOFINS(Value: Currency): iRetTrib<T>; overload;
      function vRetCOFINS: Currency; overload;
      function vRetCSLL(Value: Currency): iRetTrib<T>; overload;
      function vRetCSLL: Currency; overload;
      function vBCIRRF(Value: Currency): iRetTrib<T>; overload;
      function vBCIRRF: Currency; overload;
      function vIRRF(Value: Currency): iRetTrib<T>; overload;
      function vIRRF: Currency; overload;
      function vBCRetPrev(Value: Currency): iRetTrib<T>; overload;
      function vBCRetPrev: Currency; overload;
      function vRetPrev(Value: Currency): iRetTrib<T>; overload;
      function vRetPrev: Currency; overload;
      function Build: T;
  end;

implementation

function TRetTrib<T>.Build: T;
begin
  Result := FParent;
end;

constructor TRetTrib<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TRetTrib<T>.Destroy;
begin

  inherited;
end;

class function TRetTrib<T>.New(Parent : T) : iRetTrib<T>;
begin
  Result := Self.Create(Parent);
end;

function TRetTrib<T>.vBCIRRF(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvBCIRRF := Value;
end;

function TRetTrib<T>.vBCIRRF: Currency;
begin
  Result := FvBCIRRF;
end;

function TRetTrib<T>.vBCRetPrev(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvBCRetPrev := Value;
end;

function TRetTrib<T>.vBCRetPrev: Currency;
begin
  Result := FvBCRetPrev;
end;

function TRetTrib<T>.vIRRF(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvIRRF := Value;
end;

function TRetTrib<T>.vIRRF: Currency;
begin
  Result := FvIRRF;
end;

function TRetTrib<T>.vRetCOFINS(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvRetCOFINS := Value;
end;

function TRetTrib<T>.vRetCOFINS: Currency;
begin
  Result := FvRetCOFINS;
end;

function TRetTrib<T>.vRetCSLL(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvRetCSLL := Value;
end;

function TRetTrib<T>.vRetCSLL: Currency;
begin
  Result := FvRetCSLL;
end;

function TRetTrib<T>.vRetPIS: Currency;
begin
  Result := FvRetPIS;
end;

function TRetTrib<T>.vRetPIS(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvRetPIS := Value;
end;

function TRetTrib<T>.vRetPrev: Currency;
begin
  Result := FvRetPrev;
end;

function TRetTrib<T>.vRetPrev(Value: Currency): iRetTrib<T>;
begin
  Result := Self;
  FvRetPrev := Value;
end;

end.
