unit ACBrNFe.entity.impl.CobFat;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TCobFat = class(TInterfacedObject, iCobFat)
    private
      FnFat: String;
      FvOrig: Currency;
      FvDesc: Currency;
      FvLiq: Currency;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCobFat;
      function nFat(Value: String): iCobFat; overload;
      function nFat: String; overload;
      function vOrig(Value: Currency): iCobFat; overload;
      function vOrig: Currency; overload;
      function vDesc(Value: Currency): iCobFat; overload;
      function vDesc: Currency; overload;
      function vLiq(Value: Currency): iCobFat; overload;
      function vLiq: Currency; overload;
      function Build: iCobFat;
  end;

implementation

function TCobFat.Build: iCobFat;
begin
  Result := Self;
end;

constructor TCobFat.Create;
begin

end;

destructor TCobFat.Destroy;
begin

  inherited;
end;

class function TCobFat.New : iCobFat;
begin
  Result := Self.Create;
end;

function TCobFat.nFat: String;
begin
  Result := FnFat;
end;

function TCobFat.nFat(Value: String): iCobFat;
begin
  Result := Self;
  FnFat := Value;
end;

function TCobFat.vDesc(Value: Currency): iCobFat;
begin
  Result := Self;
  FvDesc := Value;
end;

function TCobFat.vDesc: Currency;
begin
  Result := FvDesc;
end;

function TCobFat.vLiq(Value: Currency): iCobFat;
begin
  Result := Self;
  FvLiq := Value;
end;

function TCobFat.vLiq: Currency;
begin
  Result := FvLiq;
end;

function TCobFat.vOrig: Currency;
begin
  Result := FvOrig;
end;

function TCobFat.vOrig(Value: Currency): iCobFat;
begin
  Result := Self;
  FvOrig := Value;
end;

end.
