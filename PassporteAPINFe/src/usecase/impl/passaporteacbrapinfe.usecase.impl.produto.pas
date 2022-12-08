unit passaporteacbrapinfe.usecase.impl.produto;

interface

uses
  passaporteacbrapinfe.usecase.interfaces,
  ACBrNFe.entity.Produto,
  pcnConversao,
  passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers;

type
  TProdutoNota = class(TInterfacedObject, iCommand, iVisitable)
  private
    FAcoes: iAcoesNfe;
    FRegrasFiscais: iRegras;
    function Accept(Value: iRegras): iRegras;
  public
    constructor Create(Acoes: iAcoesNfe);
    destructor Destroy; override;
    class function New(Acoes: iAcoesNfe): iCommand;
    function Execute: iCommand;
  end;

implementation

function TProdutoNota.Accept(Value: iRegras): iRegras;
begin
  FRegrasFiscais := Value;
  Result := FRegrasFiscais.Visit(FAcoes);
end;

constructor TProdutoNota.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TProdutoNota.Destroy;
begin

  inherited;
end;

function TProdutoNota.Execute: iCommand;
begin
  Result := Self;

  for var lProduto: TProduto in FAcoes.Entity.Nfe.Produto do
  begin
    FAcoes.Component.ACBr.AddProduto;
    FAcoes.Component.ACBr.Produto.Prod.nItem := lProduto.Item;
    FAcoes.Component.ACBr.Produto.Prod.cProd := lProduto.Codigo;
    FAcoes.Component.ACBr.Produto.Prod.cEAN := lProduto.EAN;
    FAcoes.Component.ACBr.Produto.Prod.xProd := lProduto.Descricao;
    FAcoes.Component.ACBr.Produto.Prod.NCM := lProduto.NCM;
    FAcoes.Component.ACBr.Produto.Prod.EXTIPI := lProduto.ExtIPI;
    FAcoes.Component.ACBr.Produto.Prod.CFOP := lProduto.CFOP;
    FAcoes.Component.ACBr.Produto.Prod.uCom := lProduto.Unidade;
    FAcoes.Component.ACBr.Produto.Prod.qCom := lProduto.Quantidade;
    FAcoes.Component.ACBr.Produto.Prod.vUnCom := lProduto.ValorUnitario;
    FAcoes.Component.ACBr.Produto.Prod.vProd := lProduto.PrecoVenda;
    FAcoes.Component.ACBr.Produto.Prod.cEANTrib := lProduto.EAN;
    FAcoes.Component.ACBr.Produto.Prod.uTrib := lProduto.Unidade;
    FAcoes.Component.ACBr.Produto.Prod.qTrib := lProduto.Quantidade;
    FAcoes.Component.ACBr.Produto.Prod.vUnTrib := lProduto.ValorUnitario;
    FAcoes.Component.ACBr.Produto.Prod.vOutro := lProduto.ValorOutro;
    FAcoes.Component.ACBr.Produto.Prod.vFrete := lProduto.ValorFrete;
    FAcoes.Component.ACBr.Produto.Prod.vSeg := lProduto.ValorSeguro;
    FAcoes.Component.ACBr.Produto.Prod.vDesc := lProduto.ValorDesconto;
    FAcoes.Component.ACBr.Produto.Prod.CEST := lProduto.CEST;
    FAcoes.Component.ACBr.Produto.infAdProd := lProduto.InfAdProd;
    FAcoes.Component.ACBr.Produto.Prod.cBarra := lProduto.CodBarra;
    FAcoes.Component.ACBr.Produto.Prod.cBarraTrib := lProduto.CodBarra;

    Accept(FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.CRT.Regras).ImpostoICMS(lProduto);
  end;
end;

class function TProdutoNota.New(Acoes: iAcoesNfe): iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
