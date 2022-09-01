unit ACBrNFe.usecase.RepositoryProdImposto;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryProdImposto = class(TInterfacedObject, iCommand)
  private
    FConf: iComponentFactory;
    FEntity: iFactoryEntity;
  public
    constructor Create(Conf: iComponentFactory; Entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iComponentFactory; Entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImposto.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
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
end;

class function TRepositoryProdImposto.New(Conf: iComponentFactory; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
