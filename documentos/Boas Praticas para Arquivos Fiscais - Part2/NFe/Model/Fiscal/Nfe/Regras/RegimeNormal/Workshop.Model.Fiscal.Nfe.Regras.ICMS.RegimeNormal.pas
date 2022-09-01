unit Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal;

interface

uses
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasRegimeNormal = class(TInterfacedObject, iModelNfeRegras)
    private
      [weak]
      FParent : iModelFiscalNfe;
      FRegrasCST : iModelNFeRegrasImposto;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelNfeRegras;
      function ProdutoImpostoICMS : iModelNfeRegras;
      function ProdutoFundoCombateaProbreza : iModelNfeRegras;
      function Visit(Value : iModelFiscalNfe) : iModelNfeRegras;
      function AcceptRegraCST (Value : iModelNFeRegrasImposto) : iModelNFeRegrasImposto;
  end;

implementation

uses
  pcnConversao,
  Workshop.Model.Fiscal.Nfe.Regras.Helpers;

{ TModelFiscalNFeRegrasICMSRegimeNormal }

function TModelFiscalNFeRegrasRegimeNormal.AcceptRegraCST(
  Value: iModelNFeRegrasImposto): iModelNFeRegrasImposto;
begin
  FRegrasCST := Value;
  Result := FRegrasCST.Visit(FParent);
end;

constructor TModelFiscalNFeRegrasRegimeNormal.Create;
begin

end;

destructor TModelFiscalNFeRegrasRegimeNormal.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasRegimeNormal.New : iModelNfeRegras;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasRegimeNormal.ProdutoFundoCombateaProbreza: iModelNfeRegras;
begin
  Result := Self;
  FParent.Component.Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pFCPUFDest     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vFCPUFDest     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;
end;

function TModelFiscalNFeRegrasRegimeNormal.ProdutoImpostoICMS: iModelNfeRegras;
begin
  Result := Self;
  FParent.Component.Produto.Imposto.vTotTrib                  := 0;
  FParent.Component.Produto.Imposto.ICMS.CST                  := cst00;
  FParent.Component.Produto.Imposto.ICMS.orig                 := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC                := dbiValorOperacao;

  Self.AcceptRegraCST(
    FParent.Component.Produto.Imposto.ICMS.CST.Regras
  )
  .CalculoICMSProduto;


end;

function TModelFiscalNFeRegrasRegimeNormal.Visit(
  Value: iModelFiscalNfe): iModelNfeRegras;
begin
  Result := Self;
  FParent := Value;
end;

end.
