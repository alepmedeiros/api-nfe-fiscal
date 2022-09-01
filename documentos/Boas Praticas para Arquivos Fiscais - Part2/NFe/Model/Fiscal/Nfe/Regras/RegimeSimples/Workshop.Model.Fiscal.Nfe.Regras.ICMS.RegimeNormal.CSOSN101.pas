unit Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal.CSOSN101;

interface

uses
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101 = class(TInterfacedObject, iModelNFeRegrasImposto)
    private
      [weak]
      FParent : iModelFiscalNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelNFeRegrasImposto;
      function CalculoICMSProduto : iModelNFeRegrasImposto;
      function Visit (Value : iModelFiscalNFe) : iModelNFeRegrasImposto;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101 }


function TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101.CalculoICMSProduto: iModelNFeRegrasImposto;
begin
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

constructor TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101.Create;
begin

end;

destructor TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101.New : iModelNFeRegrasImposto;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101.Visit(
  Value: iModelFiscalNfe): iModelNFeRegrasImposto;
begin
  Result := Self;
  FParent := Value;
end;

end.
