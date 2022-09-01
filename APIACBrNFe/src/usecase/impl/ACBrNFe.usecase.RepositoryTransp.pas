unit ACBrNFe.usecase.RepositoryTransp;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryTransp = class(TInterfacedObject, iCommand)
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

constructor TRepositoryTransp.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryTransp.Destroy;
begin

  inherited;
end;

function TRepositoryTransp.Execute: iCommand;
begin
  Result := Self;

  FConf.ACBr.NotaFiscal.NFe.Transp.modFrete := TAcbrUtils.StrToEnumModFrete(FEntity.Transportadora.modFrete);
  FConf.ACBr.NotaFiscal.NFe.Transp.Transporta.CNPJCPF := FEntity.Transportadora.CNPJCPF;
  FConf.ACBr.NotaFiscal.NFe.Transp.Transporta.xNome := FEntity.Transportadora.xNome;
  FConf.ACBr.NotaFiscal.NFe.Transp.Transporta.IE := FEntity.Transportadora.IE;
  FConf.ACBr.NotaFiscal.NFe.Transp.Transporta.xEnder := FEntity.Transportadora.xEnder;
  FConf.ACBr.NotaFiscal.NFe.Transp.Transporta.xMun := FEntity.Transportadora.xMun;
  FConf.ACBr.NotaFiscal.NFe.Transp.Transporta.UF := FEntity.Transportadora.UF;

  FConf.ACBr.NotaFiscal.NFe.Transp.retTransp.vServ := FEntity.Transportadora.vServ;
  FConf.ACBr.NotaFiscal.NFe.Transp.retTransp.vBCRet := FEntity.Transportadora.vBCRet;
  FConf.ACBr.NotaFiscal.NFe.Transp.retTransp.pICMSRet := FEntity.Transportadora.pICMSRet;
  FConf.ACBr.NotaFiscal.NFe.Transp.retTransp.vICMSRet := FEntity.Transportadora.vICMSRet;
  FConf.ACBr.NotaFiscal.NFe.Transp.retTransp.CFOP := FEntity.Transportadora.CFOP;
  FConf.ACBr.NotaFiscal.NFe.Transp.retTransp.cMunFG := FEntity.Transportadora.cMunFG;
end;

class function TRepositoryTransp.New (Conf: iComponentFactory; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
