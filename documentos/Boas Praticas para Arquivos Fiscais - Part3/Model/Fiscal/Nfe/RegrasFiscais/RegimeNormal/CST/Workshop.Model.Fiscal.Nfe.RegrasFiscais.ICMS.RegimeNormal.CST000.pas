unit Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST000;

interface

uses
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasFiscaisRegimeNormalCST000 = class(TInterfacedObject, iModelNfeRegrasImposto)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelNfeRegrasImposto;
      function CalculoImpostoProduto : iModelNfeRegrasImposto;
      function Visit( Value : iModelFiscalNFe ) : iModelNfeRegrasImposto;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscalNFeRegrasFiscaisRegimeNormalCST000 }

function TModelFiscalNFeRegrasFiscaisRegimeNormalCST000.CalculoImpostoProduto: iModelNfeRegrasImposto;
begin
  Result := Self;
  FParent.Component.Produto.Imposto.ICMS.vBC                  := 100;
  FParent.Component.Produto.Imposto.ICMS.pICMS                := 18;
  FParent.Component.Produto.Imposto.ICMS.vICMS                := 18;
  FParent.Component.Produto.Imposto.ICMS.modBCST              := dbisMargemValorAgregado;
  FParent.Component.Produto.Imposto.ICMS.pMVAST               := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBCST             := 0;
  FParent.Component.Produto.Imposto.ICMS.vBCST                := 0;
  FParent.Component.Produto.Imposto.ICMS.pICMSST              := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMSST              := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBC               := 0;
end;

constructor TModelFiscalNFeRegrasFiscaisRegimeNormalCST000.Create;
begin

end;

destructor TModelFiscalNFeRegrasFiscaisRegimeNormalCST000.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasFiscaisRegimeNormalCST000.New: iModelNfeRegrasImposto;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasFiscaisRegimeNormalCST000.Visit(
  Value: iModelFiscalNFe): iModelNfeRegrasImposto;
begin
  Result := Self;
  FParent := Value;
end;

end.
