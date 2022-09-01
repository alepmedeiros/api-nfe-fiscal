unit Workshop.Model.Fiscal.Nfe.Regras.Factory;

interface

uses
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasFactory = class(TInterfacedObject, iModelNfeRegrasFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelNfeRegrasFactory;
      function RegimeNormal : iModelNfeRegras;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal;

{ TModelFiscalNFeRegrasFactory }

constructor TModelFiscalNFeRegrasFactory.Create;
begin

end;

destructor TModelFiscalNFeRegrasFactory.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasFactory.New: iModelNfeRegrasFactory;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasFactory.RegimeNormal: iModelNfeRegras;
begin
  Result := TModelFiscalNFeRegrasRegimeNormal.New;
end;

end.
