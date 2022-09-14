unit ACBrNFe.usecase.RepositoryInfAdicObsComp;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryInfAdicObsComp = class(TInterfacedObject, iCommand)
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

constructor TRepositoryInfAdicObsComp.Create(Conf: iActionNFe; Entity: iFactoryEntity);
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

  FConf.Component.ACBr.AddObsComp;
  FConf.Component.ACBr.ObsComp.xCampo := FEntity.InfAdicCpl.xCampo;
  FConf.Component.ACBr.ObsComp.xTexto := FEntity.InfAdicCpl.xTexto;
end;

class function TRepositoryInfAdicObsComp.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
