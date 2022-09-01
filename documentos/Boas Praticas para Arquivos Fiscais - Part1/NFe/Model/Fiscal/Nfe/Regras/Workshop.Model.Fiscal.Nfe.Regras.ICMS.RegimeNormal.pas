unit Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal;

interface

uses
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeRegrasICMSRegimeNormal = class(TInterfacedObject, iModelNfeRegras, iVisitor)
    private
      [weak]
      FParent : iModelFiscalNfe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVisitor;
      function ProdutoImpostoICMS : iModelNfeRegras;
      function ProdutoFundoCombateaProbreza : iModelNfeRegras;
      function Visit(Value : iModelFiscalNfe) : iModelNfeRegras;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscalNFeRegrasICMSRegimeNormal }

constructor TModelFiscalNFeRegrasICMSRegimeNormal.Create;
begin

end;

destructor TModelFiscalNFeRegrasICMSRegimeNormal.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasICMSRegimeNormal.New : iVisitor;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasICMSRegimeNormal.ProdutoFundoCombateaProbreza: iModelNfeRegras;
begin
  FParent.Component.Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pFCPUFDest     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vFCPUFDest     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;
end;

function TModelFiscalNFeRegrasICMSRegimeNormal.ProdutoImpostoICMS: iModelNfeRegras;
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

function TModelFiscalNFeRegrasICMSRegimeNormal.Visit(
  Value: iModelFiscalNfe): iModelNfeRegras;
begin
  Result := Self;
  FParent := Value;
end;

end.
