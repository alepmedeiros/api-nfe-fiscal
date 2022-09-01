unit Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal.CST060;

interface

uses
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasICMSRegimeNormalCST060 = class(TInterfacedObject, iModelNFeRegrasImposto)
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

{ TModelFiscalNFeRegrasICMSRegimeNormalCST060 }


function TModelFiscalNFeRegrasICMSRegimeNormalCST060.CalculoICMSProduto: iModelNFeRegrasImposto;
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

constructor TModelFiscalNFeRegrasICMSRegimeNormalCST060.Create;
begin

end;

destructor TModelFiscalNFeRegrasICMSRegimeNormalCST060.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasICMSRegimeNormalCST060.New : iModelNFeRegrasImposto;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasICMSRegimeNormalCST060.Visit(
  Value: iModelFiscalNfe): iModelNFeRegrasImposto;
begin
  Result := Self;
  FParent := Value;
end;

end.
