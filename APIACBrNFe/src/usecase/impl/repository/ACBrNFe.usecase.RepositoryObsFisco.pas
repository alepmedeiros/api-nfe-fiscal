unit ACBrNFe.usecase.RepositoryObsFisco;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryObsFisco = class(TInterfacedObject, iCommand)
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

constructor TRepositoryObsFisco.Create(Conf: iActionNFe; Entity: iFactoryEntity);
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

  FConf.Component.ACBr.AddObsFisco;
  FConf.Component.ACBr.ObsFisco.xCampo := FEntity.InfAdicObsFisco.xCampo;
  FConf.Component.ACBr.ObsFisco.xTexto := FEntity.InfAdicObsFisco.xTexto;
end;

class function TRepositoryObsFisco.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
