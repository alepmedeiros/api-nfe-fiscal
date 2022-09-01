unit ACBrNFe.usecase.RepositoryPagamento;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryPagamento = class(TInterfacedObject, iCommand)
    private
      FConf: iComponentFactory;
      FEntity: iFactoryEntity;
    public
      constructor Create(Conf: iComponentFactory; Entity: iFactoryEntity);
      destructor Destroy; override;
      class function New(Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryPagamento.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
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

  FConf.ACBr.AddPagamento;
  FConf.ACBr.Pagamento.indPag := TAcbrUtils.StrToEnumIndPagamento(FEntity.Pagamento.indPag);
  FConf.ACBr.Pagamento.tPag := TAcbrUtils.StrToEnumFormaPagamento(FEntity.Pagamento.tPag);
  FConf.ACBr.Pagamento.vPag := FEntity.Pagamento.vPag;
  FConf.ACBr.Pagamento.tpIntegra := TAcbrUtils.StrToEnumTipoIntrega(FEntity.Pagamento.tpIntegra);
  FConf.ACBr.Pagamento.CNPJ := FEntity.Pagamento.CNPJ;
  FConf.ACBr.Pagamento.tBand := TAcbrUtils.StrToEnumBandeiraCartao(FEntity.Pagamento.tBand);
  FConf.ACBr.Pagamento.cAut := FEntity.Pagamento.cAut;
end;

class function TRepositoryPagamento.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
