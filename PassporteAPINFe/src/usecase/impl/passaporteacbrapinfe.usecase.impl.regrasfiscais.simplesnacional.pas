unit passaporteacbrapinfe.usecase.impl.regrasfiscais.simplesnacional;

interface

uses
  passaporteacbrapinfe.usecase.interfaces,
  ACBrNFe.entity.Produto,
  pcnConversao,
  passaporteacbrapinfe.adapter.interfaces,
  passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers;

type
  TRegrasSimplesNacional = class(TInterfacedObject, iRegras)
  private
    FAcoes: iAcoesNfe;
    FCalculos: iCalculosFiscais;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iRegras;
    function ImpostoICMS(Value: TProduto): iRegras;
    function Visit(Value: iAcoesNFe): iRegras;
  end;

implementation

uses
  passaporteacbrapinfe.adapter.impl.FactotyCalculos,
  passaporteacbrapinfe.adapter.impl.elementos;

constructor TRegrasSimplesNacional.Create;
begin

end;

destructor TRegrasSimplesNacional.Destroy;
begin

  inherited;
end;

function TRegrasSimplesNacional.ImpostoICMS(Value: TProduto): iRegras;
begin
  Result := Self;

  FAcoes.Component.ACBr.Produto.Imposto.vTotTrib := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.CSOSN :=
    FAcoes.Component.ACBr.Produto.Imposto.ICMS.CSOSN.GetValue(Value.CST);
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.modBC := dbiValorOperacao;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.modBCST := dbisListaNeutra;

  FCalculos := TFactoryCalculos.New(
    TElementos.New
      .ValorProduto(Value.ValorUnitario)
      .ValorFrete(Value.ValorFrete)
      .ValorDespesas(Value.ValorDespesa)
      .ValorDesconto(Value.ValorDesconto)
      .ValorIPI(Value.ValorIPI)
      .AliquotaIPI(Value.AliquotaIPI)
      .QuantidadeIPITributada(Value.Quantidade)
      .AliquotaICMS(Value.AliquotaICMS)
      .PercentualReducao(Value.PercentualReducao)).Execute(Value.CST);

  FAcoes.Component.ACBr.Produto.Imposto.ICMS.vBC := FCalculos.ValorBaseCalculo;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pICMS := Value.AliquotaICMS;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.vICMS := FCalculos.ValorICMS;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pMVAST := 0;
end;

class function TRegrasSimplesNacional.New: iRegras;
begin
  Result := Self.Create;
end;

function TRegrasSimplesNacional.Visit(Value: iAcoesNFe): iRegras;
begin

end;

end.
