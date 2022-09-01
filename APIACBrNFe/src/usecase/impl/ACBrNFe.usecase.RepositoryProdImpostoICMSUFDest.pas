unit ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryProdImpostoICMSUFDest = class(TInterfacedObject, iCommand)
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

constructor TRepositoryProdImpostoICMSUFDest.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryProdImpostoICMSUFDest.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpostoICMSUFDest.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.Produto.Imposto.ICMSUFDest.vBCUFDest := FEntity.Produto.Imposto.ICMSUFDest.vBCUFDest;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.pFCPUFDest := FEntity.Produto.Imposto.ICMSUFDest.pFCPUFDest;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.pICMSUFDest := FEntity.Produto.Imposto.ICMSUFDest.pICMSUFDest;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.pICMSInter := FEntity.Produto.Imposto.ICMSUFDest.pICMSInter;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.pICMSInterPart := FEntity.Produto.Imposto.ICMSUFDest.pICMSInterPart;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.vFCPUFDest := FEntity.Produto.Imposto.ICMSUFDest.vFCPUFDest;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFDest := FEntity.Produto.Imposto.ICMSUFDest.vICMSUFDest;
  FConf.ACBr.Produto.Imposto.ICMSUFDest.vICMSUFRemet := FEntity.Produto.Imposto.ICMSUFDest.vICMSUFRemet;
end;

class function TRepositoryProdImpostoICMSUFDest.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
