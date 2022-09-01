unit ACBrNFe.usecase.RepositoryInfAdic;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryInfAdic = class(TInterfacedObject, iCommand)
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

constructor TRepositoryInfAdic.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryInfAdic.Destroy;
begin

  inherited;
end;

function TRepositoryInfAdic.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.NotaFiscal.NFe.InfAdic.infCpl := '';
  FConf.ACBr.NotaFiscal.NFe.InfAdic.infAdFisco := '';
end;

class function TRepositoryInfAdic.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
