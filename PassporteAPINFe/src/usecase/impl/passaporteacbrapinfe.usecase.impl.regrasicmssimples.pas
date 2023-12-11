unit passaporteacbrapinfe.usecase.impl.regrasicmssimples;

interface

uses
  passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers,
  passaporteacbrapinfe.usecase.interfaces,
  pcnConversao,
  passaporteacbrapinfe.adapter.interfaces,
  ACBrNFe.entity.Produto, passaporteacbrapinfe.adapter.impl.elementos,
  passaporteacbrapinfe.adapter.impl.FactotyCalculos;

type
  TRegrasICMSSimples = class(TInterfacedObject, iRegras)
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

constructor TRegrasICMSSimples.Create;
begin

end;

destructor TRegrasICMSSimples.Destroy;
begin

  inherited;
end;

function TRegrasICMSSimples.ImpostoICMS(Value: TProduto): iRegras;
begin
  FAcoes.Component.ACBr.Produto.Imposto.vTotTrib := 0;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.CSOSN :=
    FAcoes.Component.ACBr.Produto.Imposto.ICMS.CSOSN.GetValue(Value.CST);
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.modBC := dbiValorOperacao;
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.modBCST := dbisListaNeutra;

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
  FAcoes.Component.ACBr.Produto.Imposto.ICMS.pMVAST := 0;
end;

class function TRegrasICMSSimples.New: iRegras;
begin
  Result := Self.Create;
end;

function TRegrasICMSSimples.Visit(Value: iAcoesNfe): iRegras;
begin
  FAcoes := Value;
  Result := Self;
end;

end.
