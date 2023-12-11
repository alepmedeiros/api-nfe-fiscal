unit ACBrNFe.entity.impl.ICMSUFDest;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TICMSUFDest<T : IInterface> = class(TInterfacedObject, iICMSUFDest<T>)
    private
      [weak]
      FParent : T;

      FvBCUFDest: Currency;
      FpFCPUFDest: Currency;
      FpICMSUFDest: Currency;
      FpICMSInter: Currency;
      FpICMSInterPart: Currency;
      FvFCPUFDest: Currency;
      FvICMSUFDest: Currency;
      FvICMSUFRemet: Currency;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iICMSUFDest<T>;
      function vBCUFDest(Value: Currency): iICMSUFDest<T>; overload;
      function vBCUFDest: Currency; overload;
      function pFCPUFDest(Value: Currency): iICMSUFDest<T>; overload;
      function pFCPUFDest: Currency; overload;
      function pICMSUFDest(Value: Currency): iICMSUFDest<T>; overload;
      function pICMSUFDest: Currency; overload;
      function pICMSInter(Value: Currency): iICMSUFDest<T>; overload;
      function pICMSInter: Currency; overload;
      function pICMSInterPart(Value: Currency): iICMSUFDest<T>; overload;
      function pICMSInterPart: Currency; overload;
      function vFCPUFDest(Value: Currency): iICMSUFDest<T>; overload;
      function vFCPUFDest: Currency; overload;
      function vICMSUFDest(Value: Currency): iICMSUFDest<T>; overload;
      function vICMSUFDest: Currency; overload;
      function vICMSUFRemet(Value: Currency): iICMSUFDest<T>; overload;
      function vICMSUFRemet: Currency; overload;
      function Build: T;
  end;

implementation

function TICMSUFDest<T>.Build: T;
begin
  Result := FParent;
end;

constructor TICMSUFDest<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TICMSUFDest<T>.Destroy;
begin

  inherited;
end;

class function TICMSUFDest<T>.New(Parent : T) : iICMSUFDest<T>;
begin
  Result := Self.Create(Parent);
end;

function TICMSUFDest<T>.pFCPUFDest: Currency;
begin
  Result := FpFCPUFDest;
end;

function TICMSUFDest<T>.pFCPUFDest(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FpFCPUFDest := Value;
end;

function TICMSUFDest<T>.pICMSInter: Currency;
begin
  Result := FpICMSInter;
end;

function TICMSUFDest<T>.pICMSInter(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FpICMSInter := Value;
end;

function TICMSUFDest<T>.pICMSInterPart(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FpICMSInterPart := Value;
end;

function TICMSUFDest<T>.pICMSInterPart: Currency;
begin
  Result := FpICMSInterPart;
end;

function TICMSUFDest<T>.pICMSUFDest: Currency;
begin
  Result := FpICMSUFDest;
end;

function TICMSUFDest<T>.pICMSUFDest(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FpICMSUFDest := Value;
end;

function TICMSUFDest<T>.vBCUFDest(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FvBCUFDest := Value;
end;

function TICMSUFDest<T>.vBCUFDest: Currency;
begin
  Result := FvBCUFDest;
end;

function TICMSUFDest<T>.vFCPUFDest(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FvFCPUFDest := Value;
end;

function TICMSUFDest<T>.vFCPUFDest: Currency;
begin
  Result := FvFCPUFDest;
end;

function TICMSUFDest<T>.vICMSUFDest(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FvICMSUFDest := Value;
end;

function TICMSUFDest<T>.vICMSUFDest: Currency;
begin
  Result := FvICMSUFDest;
end;

function TICMSUFDest<T>.vICMSUFRemet: Currency;
begin
  Result := FvICMSUFRemet;
end;

function TICMSUFDest<T>.vICMSUFRemet(Value: Currency): iICMSUFDest<T>;
begin
  Result := Self;
  FvICMSUFRemet := Value;
end;

end.
