unit ACBrNFe.usecase.RepositoryCobFat;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryCobFat = class(TInterfacedObject, iCommand)
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

constructor TRepositoryCobFat.Create(Conf: iActionNFe; Entity: iFactoryEntity);
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

  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.nFat := FEntity.CobrancaFatura.nFat;
  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vOrig := FEntity.CobrancaFatura.vOrig;
  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vDesc := FEntity.CobrancaFatura.vDesc;
  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vLiq := FEntity.CobrancaFatura.vLiq;
end;

class function TRepositoryCobFat.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
end;

end.
