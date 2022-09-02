unit ACBrNFe.usecase.RepositoryDuplicata;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryDuplicata = class(TInterfacedObject, iCommand)
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

constructor TRepositoryDuplicata.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryDuplicata.Destroy;
begin

  inherited;
end;

function TRepositoryDuplicata.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.AddDuplicata;
  FConf.Component.ACBr.Duplicata.nDup := FEntity.CobrancaDuplicata.nDup;
  FConf.Component.ACBr.Duplicata.dVenc := FEntity.CobrancaDuplicata.dVenc;
  FConf.Component.ACBr.Duplicata.vDup := FEntity.CobrancaDuplicata.vDup;
end;

class function TRepositoryDuplicata.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
