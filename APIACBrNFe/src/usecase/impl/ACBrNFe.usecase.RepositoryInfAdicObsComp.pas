unit ACBrNFe.usecase.RepositoryInfAdicObsComp;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryInfAdicObsComp = class(TInterfacedObject, iCommand)
  private
    FConf: iComponentFactory;
    FEntity: iFactoryEntity;
  public
    constructor Create(Conf: iComponentFactory; entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iComponentFactory; entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryInfAdicObsComp.Create(Conf: iComponentFactory;
  entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := entity;
end;

destructor TRepositoryInfAdicObsComp.Destroy;
begin

  inherited;
end;

function TRepositoryInfAdicObsComp.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.AddObsComp;
  FConf.ACBr.ObsComp.xCampo := FEntity.InfAdicCpl.xCampo;
  FConf.ACBr.ObsComp.xTexto := FEntity.InfAdicCpl.xTexto;
end;

class function TRepositoryInfAdicObsComp.New(Conf: iComponentFactory;
  entity: iFactoryEntity): iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
