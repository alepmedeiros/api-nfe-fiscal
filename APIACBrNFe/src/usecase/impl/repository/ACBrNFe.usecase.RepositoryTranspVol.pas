unit ACBrNFe.usecase.RepositoryTranspVol;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryTranspVol = class(TInterfacedObject, iCommand)
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

constructor TRepositoryTranspVol.Create(Conf: iActionNFe; Entity: iFactoryEntity);
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

  FConf.Component.ACBr.AddTranspVol;
  FConf.Component.ACBr.TranspVol.qVol := FEntity.TrasportadoraVolume.qVol;
  FConf.Component.ACBr.TranspVol.esp := FEntity.TrasportadoraVolume.esp;
  FConf.Component.ACBr.TranspVol.marca := FEntity.TrasportadoraVolume.marca;
  FConf.Component.ACBr.TranspVol.nVol := FEntity.TrasportadoraVolume.nVol;
  FConf.Component.ACBr.TranspVol.pesoL := FEntity.TrasportadoraVolume.pesoL;
  FConf.Component.ACBr.TranspVol.pesoB := FEntity.TrasportadoraVolume.pesoB;
end;

class function TRepositoryTranspVol.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
