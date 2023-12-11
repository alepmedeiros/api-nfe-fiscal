unit passaporteacbrapinfe.usecase.impl.regrasicmsnormal;

interface

uses
  passaporteacbrapinfe.usecase.interfaces,
  ACBrNFe.entity.Produto,
  pcnConversao,
  passaporteacbrapinfe.adapter.interfaces,
  passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers,
  passaporteacbrapinfe.adapter.impl.FactotyCalculos,
  passaporteacbrapinfe.adapter.impl.elementos;

type
  TRegrasRegimeNormal = class(TInterfacedObject, iRegras)
  private
    FAcoes: iAcoesNfe;

    FCalculos: iCalculosFiscais;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iRegras;
    function ImpostoICMS(Value: TProduto): iRegras;
    function Visit(Value: iAcoesNfe): iRegras;
  end;

implementation

constructor TRegrasRegimeNormal.Create;
begin

end;

destructor TRegrasRegimeNormal.Destroy;
begin

  inherited;
end;

function TRegrasRegimeNormal.ImpostoICMS(Value: TProduto): iRegras;
begin
  Result := Self;

  FAcoes.component.ACBr.Produto.Imposto.vTotTrib := 0;
  FAcoes.component.ACBr.Produto.Imposto.ICMS.CST :=
    FAcoes.component.ACBr.Produto.Imposto.ICMS.CST.GetValue(Value.CST);
  FAcoes.component.ACBr.Produto.Imposto.ICMS.orig := oeNacional;
  FAcoes.component.ACBr.Produto.Imposto.ICMS.modBC := dbiValorOperacao;

  FCalculos := TFactoryCalculosos.New(
    TElementos
      .New
      .ValorProduto(Value.ValorUnitario)
      .ValorFrete(Value.ValorFrete)
      .ValorSeguro(Value.ValorSeguro)
      .ValorDespesas(Value.ValorDespesa)
      .ValorDesconto(Value.ValorDesconto)
      .ValorIPI(Value.ValorIPI)
      .AliquotaIPI(Value.AliquotaIPI)
      .QuantidadeIPITributada(Value.Quantidade)
      .AliquotaICMS(Value.AliquotaICMS)
      .PercentualReducao(Value.PercentualReducao))
      .Execute(Value.CST);

  FAcoes.Component.ACBr.Produto.Imposto.ICMS.vBC := FCalculos.ValorBaseCalculo;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pICMS := Value.AliquotaICMS;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.vICMS := FCalculos.ValorICMS;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pMVAST := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pRedBCST := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.vBCST := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pICMSST := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.vICMSST := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pRedBC := 0;
end;

class function TRegrasRegimeNormal.New: iRegras;
begin
  Result := Self.Create;
end;

function TRegrasRegimeNormal.Visit(Value: iAcoesNfe): iRegras;
begin
  Result := Self;
  FAcoes := Value;
end;

end.
