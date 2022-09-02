unit ACBrNFe.entity.impl.CobDup;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TCobDup = class(TInterfacedObject, iCobDup)
    private
      FnDup: String;
      FdVenc: TDateTime;
      FvDup: Currency;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCobDup;
      function nDup(Value: String): iCobDup; overload;
      function nDup: String; overload;
      function dVenc(Value: TDateTime): iCobDup; overload;
      function dVenc: TDateTime; overload;
      function vDup(Value: Currency): iCobDup; overload;
      function vDup: Currency; overload;
      function Build: iCobDup;
  end;

implementation

function TCobDup.Build: iCobDup;
begin
  Result := Self;
end;

constructor TCobDup.Create;
begin

end;

destructor TCobDup.Destroy;
begin

  inherited;
end;

function TCobDup.dVenc(Value: TDateTime): iCobDup;
begin
  Result := Self;
  FdVenc := Value;
end;

function TCobDup.dVenc: TDateTime;
begin
  Result := FdVenc;
end;

function TCobDup.nDup(Value: String): iCobDup;
begin
  Result := Self;
  FnDup := Value;
end;

function TCobDup.nDup: String;
begin
  Result := FnDup;
end;

class function TCobDup.New : iCobDup;
begin
  Result := Self.Create;
end;

function TCobDup.vDup(Value: Currency): iCobDup;
begin
  Result := Self;
  FvDup := Value;
end;

function TCobDup.vDup: Currency;
begin
  Result := FvDup;
end;

end.
