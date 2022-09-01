unit Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples;

interface

uses
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Helpers;

Type
  TModelFiscaoNFeRegrasFisicaisICMSSimples = class(TInterfacedObject, iModelNfeRegras)
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

{ TModelFiscaoNFeRegrasFisicaisICMSSimples }

function TModelFiscaoNFeRegrasFisicaisICMSSimples.AcceptRegraCST(
  Value: iModelNfeRegrasImposto): iModelNfeRegrasImposto;
begin
  FRegrasImposto := Value;
  Result := FRegrasImposto.Visit(FParent);
end;

constructor TModelFiscaoNFeRegrasFisicaisICMSSimples.Create;
begin

end;

destructor TModelFiscaoNFeRegrasFisicaisICMSSimples.Destroy;
begin

  inherited;
end;

class function TModelFiscaoNFeRegrasFisicaisICMSSimples.New: iModelNfeRegras;
begin
  Result := Self.Create;
end;

function TModelFiscaoNFeRegrasFisicaisICMSSimples.ProdutoImpostoICMS: iModelNfeRegras;
begin
  FParent.Component.Produto.Imposto.vTotTrib                  := 0;
  FParent.Component.Produto.Imposto.ICMS.CSOSN                := csosn101;
  FParent.Component.Produto.Imposto.ICMS.orig                 := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC                := dbiValorOperacao;

  AcceptRegraCST(
    FParent.Component.Produto.Imposto.ICMS.CSOSN.Regras
  ).CalculoImpostoProduto;

end;

function TModelFiscaoNFeRegrasFisicaisICMSSimples.Visit(
  Value: iModelFiscalNFe): iModelNfeRegras;
begin
  Result := Self;
  FParent := Value;
end;

end.
