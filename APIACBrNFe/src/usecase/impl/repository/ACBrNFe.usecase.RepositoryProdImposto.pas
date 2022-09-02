unit ACBrNFe.usecase.RepositoryProdImposto;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryProdImposto = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
    FEntity: iFactoryEntity;
  public
    constructor Create(Conf: iActionNFe; Entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImposto.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryProdImposto.Destroy;
begin

  inherited;
end;

function TRepositoryProdImposto.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.Produto.Imposto.vTotTrib := FEntity.Produto.Imposto.vTotTrib;
end;

class function TRepositoryProdImposto.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
