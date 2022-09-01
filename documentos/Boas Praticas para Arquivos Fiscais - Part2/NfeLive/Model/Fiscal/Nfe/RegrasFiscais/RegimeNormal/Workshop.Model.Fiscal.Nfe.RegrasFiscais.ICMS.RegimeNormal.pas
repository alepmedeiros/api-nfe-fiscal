unit Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal;

interface

uses
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Helpers;

Type
  TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal = class(TInterfacedObject, iModelNfeRegras)
    private
      FParent : iModelFiscalNFe;
      FRegrasImposto : iModelNfeRegrasImposto;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelNfeRegras;
      function Visit( Value : iModelFiscalNFe ) : iModelNfeRegras;
      function ProdutoImpostoICMS : iModelNfeRegras;
      function AcceptRegraCST ( Value : iModelNfeRegrasImposto) : iModelNfeRegrasImposto;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal }

function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.AcceptRegraCST(
  Value: iModelNfeRegrasImposto): iModelNfeRegrasImposto;
begin
  FRegrasImposto := Value;
  Result := FRegrasImposto.Visit(FParent);
end;

constructor TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.Create;
begin

end;

destructor TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.Destroy;
begin

  inherited;
end;

class function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.New: iModelNfeRegras;
begin
  Result := Self.Create;
end;

function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.ProdutoImpostoICMS: iModelNfeRegras;
begin
  FParent.Component.Produto.Imposto.vTotTrib                  := 0;
  FParent.Component.Produto.Imposto.ICMS.CST                  := cst60;
  FParent.Component.Produto.Imposto.ICMS.orig                 := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC                := dbiValorOperacao;

  AcceptRegraCST(
    FParent.Component.Produto.Imposto.ICMS.CST.Regras
  ).CalculoImpostoProduto;

end;

function TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.Visit(
  Value: iModelFiscalNFe): iModelNfeRegras;
begin
  Result := Self;
  FParent := Value;
end;

end.
