unit ACBrNFe.entity.impl.ICMSCons;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TICMSCons<T : IInterface> = class(TInterfacedObject, iICMSCons<T>)
    private
      [weak]
      FParent : T;

      FvBCICMSSTCons: Currency;
      FvICMSSTCons: Currency;
      FUFcons: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iICMSCons<T>;
      function vBCICMSSTCons(Value: Currency): iICMSCons<T>; overload;
      function vBCICMSSTCons: Currency; overload;
      function vICMSSTCons(Value: Currency): iICMSCons<T>; overload;
      function vICMSSTCons: Currency; overload;
      function UFcons(Value: String): iICMSCons<T>; overload;
      function UFcons: String; overload;
      function Build: T;
  end;

implementation

function TICMSCons<T>.Build: T;
begin
  Result := FParent;
end;

constructor TICMSCons<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TICMSCons<T>.Destroy;
begin

  inherited;
end;

class function TICMSCons<T>.New(Parent : T) : iICMSCons<T>;
begin
  Result := Self.Create(Parent);
end;

function TICMSCons<T>.UFcons(Value: String): iICMSCons<T>;
begin
  Result := Self;
  FUFcons := Value;
end;

function TICMSCons<T>.UFcons: String;
begin
  Result := FUFcons;
end;

function TICMSCons<T>.vBCICMSSTCons: Currency;
begin
  Result := FvBCICMSSTCons;
end;

function TICMSCons<T>.vBCICMSSTCons(Value: Currency): iICMSCons<T>;
begin
  Result := Self;
  FvBCICMSSTCons := Value;
end;

function TICMSCons<T>.vICMSSTCons(Value: Currency): iICMSCons<T>;
begin
  Result := Self;
  FvICMSSTCons := Value;
end;

function TICMSCons<T>.vICMSSTCons: Currency;
begin
  Result := FvICMSSTCons;
end;

end.
