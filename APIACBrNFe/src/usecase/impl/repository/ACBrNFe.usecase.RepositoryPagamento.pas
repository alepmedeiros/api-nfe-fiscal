unit ACBrNFe.usecase.RepositoryPagamento;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryPagamento = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
      FEntity: iFactoryEntity;
    public
      constructor Create(Conf: iActionNFe; Entity: iFactoryEntity);
      destructor Destroy; override;
      class function New(Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryPagamento.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryPagamento.Destroy;
begin

  inherited;
end;

function TRepositoryPagamento.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.AddPagamento;
  FConf.Component.ACBr.Pagamento.indPag := TAcbrUtils.StrToEnumIndPagamento(FEntity.Pagamento.indPag);
  FConf.Component.ACBr.Pagamento.tPag := TAcbrUtils.StrToEnumFormaPagamento(FEntity.Pagamento.tPag);
  FConf.Component.ACBr.Pagamento.vPag := FEntity.Pagamento.vPag;
  FConf.Component.ACBr.Pagamento.tpIntegra := TAcbrUtils.StrToEnumTipoIntrega(FEntity.Pagamento.tpIntegra);
  FConf.Component.ACBr.Pagamento.CNPJ := FEntity.Pagamento.CNPJ;
  FConf.Component.ACBr.Pagamento.tBand := TAcbrUtils.StrToEnumBandeiraCartao(FEntity.Pagamento.tBand);
  FConf.Component.ACBr.Pagamento.cAut := FEntity.Pagamento.cAut;
end;

class function TRepositoryPagamento.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
