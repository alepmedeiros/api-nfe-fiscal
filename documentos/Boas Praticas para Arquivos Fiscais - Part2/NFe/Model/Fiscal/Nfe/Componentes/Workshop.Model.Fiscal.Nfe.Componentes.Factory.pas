unit Workshop.Model.Fiscal.Nfe.Componentes.Factory;

interface

uses
  Workshop.Model.Fiscal.Nfe.Componentes.Interfaces, ACBrNFe,
  Workshop.Model.Fiscal.Nfe.Componentes.ACBr;

Type
  TModelFiscalNFeComponentesFactory = class(TInterfacedObject, IModelFiscalNFeFactory)
    private
      FACBr : TdmACBrNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IModelFiscalNFeFactory;
      function ACBr : iModelFiscalNfeComponentes<TACBrNFe>;
  end;

implementation

uses
  System.SysUtils;

{ TModelFiscalNFeComponentesFactory }

function TModelFiscalNFeComponentesFactory.ACBr: iModelFiscalNfeComponentes<TACBrNFe>;
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

class function TModelFiscalNFeComponentesFactory.New: IModelFiscalNFeFactory;
begin
  Result := Self.Create;
end;

end.
