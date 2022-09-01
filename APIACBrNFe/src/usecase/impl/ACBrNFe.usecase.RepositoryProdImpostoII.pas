unit ACBrNFe.usecase.RepositoryProdImpostoII;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRespositoryProdImpII = class(TInterfacedObject, iCommand)
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

constructor TRespositoryProdImpII.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRespositoryProdImpII.Destroy;
begin

  inherited;
end;

function TRespositoryProdImpII.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.Produto.Imposto.II.vBC := FEntity.Produto.Imposto.II.vBC;
  FConf.ACBr.Produto.Imposto.II.vDespAdu := FEntity.Produto.Imposto.II.vDespAdu;
  FConf.ACBr.Produto.Imposto.II.vII := FEntity.Produto.Imposto.II.vII;
  FConf.ACBr.Produto.Imposto.II.vIOF := FEntity.Produto.Imposto.II.vIOF;
end;

class function TRespositoryProdImpII.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
