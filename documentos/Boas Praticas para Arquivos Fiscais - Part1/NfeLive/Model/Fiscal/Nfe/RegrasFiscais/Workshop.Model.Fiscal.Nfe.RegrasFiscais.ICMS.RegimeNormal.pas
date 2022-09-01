unit Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal;

interface

uses
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal = class(TInterfacedObject, iModelNfeRegras, iVisitor)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVisitor;
      function Visit( Value : iModelFiscalNFe ) : iModelNfeRegras;
      function ProdutoImpostoICMS : iModelNfeRegras;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal }

constructor TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.Create;
begin

end;

destructor TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.Destroy;
begin

  inherited;
end;

class function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.New: iVisitor;
begin
  Result := Self.Create;
end;

function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.ProdutoImpostoICMS: iModelNfeRegras;
begin
  FParent.Component.Produto.Imposto.vTotTrib                  := 0;
  FParent.Component.Produto.Imposto.ICMS.CST                  := cst00;
  FParent.Component.Produto.Imposto.ICMS.orig                 := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC                := dbiValorOperacao;
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

function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.Visit(
  Value: iModelFiscalNFe): iModelNfeRegras;
begin
  Result := Self;
  FParent := Value;
end;

end.
