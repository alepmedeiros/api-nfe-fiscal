unit ACBrNFe.usecase.RepositoryDuplicata;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryDuplicata = class(TInterfacedObject, iCommand)
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

constructor TRepositoryDuplicata.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
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

  FConf.ACBr.AddDuplicata;
  FConf.ACBr.Duplicata.nDup := FEntity.CobrancaDuplicata.nDup;
  FConf.ACBr.Duplicata.dVenc := FEntity.CobrancaDuplicata.dVenc;
  FConf.ACBr.Duplicata.vDup := FEntity.CobrancaDuplicata.vDup;
end;

class function TRepositoryDuplicata.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
