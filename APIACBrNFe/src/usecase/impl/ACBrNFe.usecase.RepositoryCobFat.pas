unit ACBrNFe.usecase.RepositoryCobFat;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryCobFat = class(TInterfacedObject, iCommand)
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

constructor TRepositoryCobFat.Create(Conf: iComponentFactory;
  entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := entity;
end;

destructor TRepositoryCobFat.Destroy;
begin

  inherited;
end;

function TRepositoryCobFat.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.NotaFiscal.NFe.Cobr.Fat.nFat := FEntity.CobrancaFatura.nFat;
  FConf.ACBr.NotaFiscal.NFe.Cobr.Fat.vOrig := FEntity.CobrancaFatura.vOrig;
  FConf.ACBr.NotaFiscal.NFe.Cobr.Fat.vDesc := FEntity.CobrancaFatura.vDesc;
  FConf.ACBr.NotaFiscal.NFe.Cobr.Fat.vLiq := FEntity.CobrancaFatura.vLiq;
end;

class function TRepositoryCobFat.New(Conf: iComponentFactory;
  entity: iFactoryEntity): iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
