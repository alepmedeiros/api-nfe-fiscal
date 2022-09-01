unit ACBrNFe.entity.impl.exporta;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TExporta = class(TInterfacedObject, iExporta)
    private
      FUFembarq: String;
      FxLocEmbarq: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iExporta;
      function UFembarq(Value: String): iExporta; overload;
      function UFembarq: String; overload;
      function xLocEmbarq(Value: String): iExporta; overload;
      function xLocEmbarq: String; overload;
      function Build: iExporta;
  end;

implementation

function TExporta.Build: iExporta;
begin
  Result := Self;
end;

constructor TExporta.Create;
begin

end;

destructor TExporta.Destroy;
begin

  inherited;
end;

class function TExporta.New : iExporta;
begin
  Result := Self.Create;
end;

function TExporta.UFembarq(Value: String): iExporta;
begin
  Result := Self;
  FUFembarq := Value;
end;

function TExporta.UFembarq: String;
begin
  Result := FUFembarq;
end;

function TExporta.xLocEmbarq: String;
begin
  Result := FxLocEmbarq;
end;

function TExporta.xLocEmbarq(Value: String): iExporta;
begin
  Result := Self;
  FxLocEmbarq := Value;
end;

end.
