unit ACBrNFe.usecase.RepositoryInfIntermed;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryInfIntermed = class(TInterfacedObject, iCommand)
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

constructor TRepositoryInfIntermed.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryInfIntermed.Destroy;
begin

  inherited;
end;

function TRepositoryInfIntermed.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.infIntermed.CNPJ := FEntity.InfIntermed.CNPJ;
  FConf.Component.ACBr.NotaFiscal.NFe.infIntermed.idCadIntTran := FEntity.InfIntermed.idCadIntTran;
end;

class function TRepositoryInfIntermed.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(COnf, Entity);
end;

end.
