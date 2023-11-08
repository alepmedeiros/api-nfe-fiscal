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
begin
  Result := Self;

  for var I in FConf.Entity.Pedido.Pagamento do
  begin
     FConf.Component.ACBr.AddPagamento;
     FConf.Component.ACBr.Pagamento.indPag := TAcbrUtils.StrToEnumIndPagamento
     (I.Identificacao);
     FConf.Component.ACBr.Pagamento.tPag := TAcbrUtils.StrToEnumFormaPagamento
     (I.Tipo);
     FConf.Component.ACBr.Pagamento.vPag := I.Valor;
     FConf.Component.ACBr.Pagamento.tpIntegra := TAcbrUtils.StrToEnumTipoIntrega
     (I.Integrado);
     FConf.Component.ACBr.Pagamento.CNPJ := I.CNPJ;
     FConf.Component.ACBr.Pagamento.tBand := TAcbrUtils.StrToEnumBandeiraCartao
     (I.BandeiraCartao);
     FConf.Component.ACBr.Pagamento.cAut := I.CodAutorizacao;
  end;
end;

class function TRepositoryPagamento.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
