unit ACBrNFe.usecase.RepositoryTranspVol;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryTranspVol = class(TInterfacedObject, iCommand)
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

constructor TRepositoryTranspVol.Create(Conf: iComponentFactory;
  entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := entity;
end;

destructor TRepositoryTranspVol.Destroy;
begin

  inherited;
end;

function TRepositoryTranspVol.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.AddTranspVol;
  FConf.ACBr.TranspVol.qVol := FEntity.TrasportadoraVolume.qVol;
  FConf.ACBr.TranspVol.esp := FEntity.TrasportadoraVolume.esp;
  FConf.ACBr.TranspVol.marca := FEntity.TrasportadoraVolume.marca;
  FConf.ACBr.TranspVol.nVol := FEntity.TrasportadoraVolume.nVol;
  FConf.ACBr.TranspVol.pesoL := FEntity.TrasportadoraVolume.pesoL;
  FConf.ACBr.TranspVol.pesoB := FEntity.TrasportadoraVolume.pesoB;
end;

class function TRepositoryTranspVol.New(Conf: iComponentFactory;
  entity: iFactoryEntity): iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
