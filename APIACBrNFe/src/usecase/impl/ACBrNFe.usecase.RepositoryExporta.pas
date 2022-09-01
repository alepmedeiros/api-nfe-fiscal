unit ACBrNFe.usecase.RepositoryExporta;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryExporta = class(TInterfacedObject, iCommand)
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

constructor TRepositoryExporta.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryExporta.Destroy;
begin

  inherited;
end;

function TRepositoryExporta.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.NotaFiscal.NFe.exporta.UFembarq := FEntity.Exporta.UFembarq;
  FConf.ACBr.NotaFiscal.NFe.exporta.xLocEmbarq := FEntity.Exporta.xLocEmbarq;
end;

class function TRepositoryExporta.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
