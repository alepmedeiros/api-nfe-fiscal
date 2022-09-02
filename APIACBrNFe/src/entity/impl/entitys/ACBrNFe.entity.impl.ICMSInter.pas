unit ACBrNFe.entity.impl.ICMSInter;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TICMSInter<T : IInterface> = class(TInterfacedObject, iICMSInter<T>)
    private
      [weak]
      FParent : T;

      FvBCICMSSTDest: Currency;
      FvICMSSTDest: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iICMSInter<T>;
      function vBCICMSSTDest(Value: Currency): iICMSInter<T>; overload;
      function vBCICMSSTDest: Currency; overload;
      function vICMSSTDest(Value: Currency): iICMSInter<T>; overload;
      function vICMSSTDest: Currency; overload;
      function Build: T;
  end;

implementation

function TICMSInter<T>.Build: T;
begin
  Result := FParent;
end;

constructor TICMSInter<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TICMSInter<T>.Destroy;
begin

  inherited;
end;

class function TICMSInter<T>.New(Parent : T) : iICMSInter<T>;
begin
  Result := Self.Create(Parent);
end;

function TICMSInter<T>.vBCICMSSTDest(Value: Currency): iICMSInter<T>;
begin
  Result := Self;
  FvBCICMSSTDest := Value;
end;

function TICMSInter<T>.vBCICMSSTDest: Currency;
begin
  Result := FvBCICMSSTDest;
end;

function TICMSInter<T>.vICMSSTDest(Value: Currency): iICMSInter<T>;
begin
  Result := Self;
  FvICMSSTDest := Value;
end;

function TICMSInter<T>.vICMSSTDest: Currency;
begin
  Result := FvICMSSTDest;
end;

end.
