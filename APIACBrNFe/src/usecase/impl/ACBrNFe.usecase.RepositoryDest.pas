unit ACBrNFe.usecase.RepositoryDest;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces;

type
  TRepositoryDest = class(TInterfacedObject, iCommand)
    private
      FConf: iComponentFactory;
      FEntity: iFactoryEntity;
      procedure ConfDest;
    public
      constructor Create(Conf: iComponentFactory; Entity: iFactoryEntity);
      destructor Destroy; override;
      class function New(Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
      function Execute : iCommand;
  end;

implementation

constructor TRepositoryDest.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryDest.Destroy;
begin

  inherited;
end;

function TRepositoryDest.Execute: iCommand;
begin
  Result := Self;
  ConfDest;
end;

procedure TRepositoryDest.ConfDest;
begin
  FConf.ACBr.NotaFiscal.NFe.Dest.CNPJCPF := FEntity.Destinatario.CNPJCPF;
  FConf.ACBr.NotaFiscal.NFe.Dest.IE := FEntity.Destinatario.IE;
  FConf.ACBr.NotaFiscal.NFe.Dest.ISUF := FEntity.Destinatario.ISUF;
  FConf.ACBr.NotaFiscal.NFe.Dest.xNome := FEntity.Destinatario.xNome;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.fone := FEntity.Destinatario.EnderDest.fone;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.CEP := FEntity.Destinatario.EnderDest.CEP;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.xLgr := FEntity.Destinatario.EnderDest.xLgr;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.nro := FEntity.Destinatario.EnderDest.nro;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.xCpl := FEntity.Destinatario.EnderDest.xCpl;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.xBairro := FEntity.Destinatario.EnderDest.xBairro;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.cMun := FEntity.Destinatario.EnderDest.cMun;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.xMun := FEntity.Destinatario.EnderDest.xMun;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.UF := FEntity.Destinatario.EnderDest.UF;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.cPais := FEntity.Destinatario.EnderDest.cPais;
  FConf.ACBr.NotaFiscal.NFe.Dest.EnderDest.xPais := FEntity.Destinatario.EnderDest.xPais;
end;

class function TRepositoryDest.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
