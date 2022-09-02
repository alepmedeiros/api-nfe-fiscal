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
    FPedido: TPedido;
  public
    constructor Create(Conf: iActionNFe; Pedido: TPedido);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Pedido: TPedido): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryPagamento.Create(Conf: iActionNFe; Pedido: TPedido);
begin
  FConf := Conf;
  FPedido := Pedido;
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

  for I := 0 to Pred(FPedido.Pagamento.Count) do
  begin
     FConf.Component.ACBr.AddPagamento;
     FConf.Component.ACBr.Pagamento.indPag := TAcbrUtils.StrToEnumIndPagamento
     (FPedido.Pagamento[I].Identificacao);
     FConf.Component.ACBr.Pagamento.tPag := TAcbrUtils.StrToEnumFormaPagamento
     (FPedido.Pagamento[I].Tipo);
     FConf.Component.ACBr.Pagamento.vPag := FPedido.Pagamento[I].Valor;
     FConf.Component.ACBr.Pagamento.tpIntegra := TAcbrUtils.StrToEnumTipoIntrega
     (FPedido.Pagamento[I].Integrado);
     FConf.Component.ACBr.Pagamento.CNPJ := FPedido.Pagamento[I].CNPJ;
     FConf.Component.ACBr.Pagamento.tBand := TAcbrUtils.StrToEnumBandeiraCartao
     (FPedido.Pagamento[I].BandeiraCartao);
     FConf.Component.ACBr.Pagamento.cAut := FPedido.Pagamento[I].CodAutorizacao;
  end;
end;

class function TRepositoryPagamento.New(Conf: iActionNFe; Pedido: TPedido): iCommand;
begin
  Result := Self.Create(Conf, Pedido);
end;

end.
