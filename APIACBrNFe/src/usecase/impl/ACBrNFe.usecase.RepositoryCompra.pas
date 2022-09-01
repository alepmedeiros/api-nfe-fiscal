unit ACBrNFe.usecase.RepositoryCompra;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryCompra = class(TInterfacedObject, iCommand)
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

constructor TRepositoryCompra.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryCompra.Destroy;
begin

  inherited;
end;

function TRepositoryCompra.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.NotaFiscal.NFe.compra.xNEmp := FEntity.Compra.xNEmp;
  FConf.ACBr.NotaFiscal.NFe.compra.xPed := FEntity.Compra.xPed;
  FConf.ACBr.NotaFiscal.NFe.compra.xCont := FEntity.Compra.xCont;
end;

class function TRepositoryCompra.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
