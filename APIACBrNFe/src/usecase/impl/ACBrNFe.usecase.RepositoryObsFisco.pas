unit ACBrNFe.usecase.RepositoryObsFisco;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryObsFisco = class(TInterfacedObject, iCommand)
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

constructor TRepositoryObsFisco.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryObsFisco.Destroy;
begin

  inherited;
end;

function TRepositoryObsFisco.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.AddObsFisco;
  FConf.ACBr.ObsFisco.xCampo := FEntity.InfAdicObsFisco.xCampo;
  FConf.ACBr.ObsFisco.xTexto := FEntity.InfAdicObsFisco.xTexto;
end;

class function TRepositoryObsFisco.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
