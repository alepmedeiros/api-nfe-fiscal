unit ACBrNFe.usecase.RepositoryPagamento;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper,
  ACBrNFe.entity.pedidos;

type
  TRepositoryPagamento = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryPagamento.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryPagamento.Destroy;
begin

  inherited;
end;

function TRepositoryPagamento.Execute: iCommand;
var
  I: Integer;
begin
  Result := Self;

  for I := 0 to Pred(FConf.Entity.Pedido.Pagamento.Count) do
  begin
     FConf.Component.ACBr.AddPagamento;
     FConf.Component.ACBr.Pagamento.indPag := TAcbrUtils.StrToEnumIndPagamento
     (FConf.Entity.Pedido.Pagamento[I].Identificacao);
     FConf.Component.ACBr.Pagamento.tPag := TAcbrUtils.StrToEnumFormaPagamento
     (FConf.Entity.Pedido.Pagamento[I].Tipo);
     FConf.Component.ACBr.Pagamento.vPag := FConf.Entity.Pedido.Pagamento[I].Valor;
     FConf.Component.ACBr.Pagamento.tpIntegra := TAcbrUtils.StrToEnumTipoIntrega
     (FConf.Entity.Pedido.Pagamento[I].Integrado);
     FConf.Component.ACBr.Pagamento.CNPJ := FConf.Entity.Pedido.Pagamento[I].CNPJ;
     FConf.Component.ACBr.Pagamento.tBand := TAcbrUtils.StrToEnumBandeiraCartao
     (FConf.Entity.Pedido.Pagamento[I].BandeiraCartao);
     FConf.Component.ACBr.Pagamento.cAut := FConf.Entity.Pedido.Pagamento[I].CodAutorizacao;
  end;
end;

class function TRepositoryPagamento.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
