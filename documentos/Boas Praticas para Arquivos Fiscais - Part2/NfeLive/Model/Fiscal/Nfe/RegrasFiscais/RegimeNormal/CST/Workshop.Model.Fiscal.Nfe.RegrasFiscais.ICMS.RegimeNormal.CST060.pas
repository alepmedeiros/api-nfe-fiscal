unit Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST060;

interface

uses
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasFiscaisRegimeNormalCST060 = class(TInterfacedObject, iModelNfeRegrasImposto)
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

{ TModelFiscalNFeRegrasFiscaisRegimeNormalCST060 }

function TModelFiscalNFeRegrasFiscaisRegimeNormalCST060.CalculoImpostoProduto: iModelNfeRegrasImposto;
begin
  Result := Self;
  FParent.Component.Produto.Imposto.ICMS.vBC                  := 0;
  FParent.Component.Produto.Imposto.ICMS.pICMS                := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMS                := 0;
  FParent.Component.Produto.Imposto.ICMS.modBCST              := dbisMargemValorAgregado;
  FParent.Component.Produto.Imposto.ICMS.pMVAST               := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBCST             := 0;
  FParent.Component.Produto.Imposto.ICMS.vBCST                := 0;
  FParent.Component.Produto.Imposto.ICMS.pICMSST              := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMSST              := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBC               := 0;
end;

constructor TModelFiscalNFeRegrasFiscaisRegimeNormalCST060.Create;
begin

end;

destructor TModelFiscalNFeRegrasFiscaisRegimeNormalCST060.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasFiscaisRegimeNormalCST060.New: iModelNfeRegrasImposto;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasFiscaisRegimeNormalCST060.Visit(
  Value: iModelFiscalNFe): iModelNfeRegrasImposto;
begin
  Result := Self;
  FParent := Value;
end;

end.
