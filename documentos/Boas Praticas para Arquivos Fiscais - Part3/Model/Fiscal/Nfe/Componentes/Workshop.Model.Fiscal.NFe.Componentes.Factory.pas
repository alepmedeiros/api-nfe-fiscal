unit Workshop.Model.Fiscal.NFe.Componentes.Factory;

interface

uses
  Workshop.Model.Fiscal.NFe.Componentes.Interfaces, ACBrNFe,
  Workshop.Model.Fiscal.Nfe.Componentes.ACBr;

Type
  TModelFiscalNFeComponentesFactory = class(TInterfacedObject, iModelFiscalNfeFactory)
    private
      FACBr : TdmACBrNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFiscalNfeFactory;
      function ACBr : iModelFiscalNFeComponentes<TACbrNFe>;
  end;

implementation

uses
  System.SysUtils;

{ TModelFiscalNFeComponentesFactory }

function TModelFiscalNFeComponentesFactory.ACBr: iModelFiscalNFeComponentes<TACbrNFe>;
begin
  if not Assigned(FACBr) then
    FACBr := TdmACBrNFe.Create(nil);

  Result := FACBr;
end;

constructor TModelFiscalNFeComponentesFactory.Create;
begin

end;

destructor TModelFiscalNFeComponentesFactory.Destroy;
begin
  if Assigned(FACBr) then
    FreeAndNil(FACBr);
  inherited;
end;

class function TModelFiscalNFeComponentesFactory.New: iModelFiscalNfeFactory;
begin
  Result := Self.Create;
end;

end.
