unit ACBrNFe.usecase.RepositoryTransp;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryTransp = class(TInterfacedObject, iCommand)
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

constructor TRepositoryTransp.Create(Conf: iActionNFe; Entity: iFactoryEntity);
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

  FConf.Component.ACBr.NotaFiscal.NFe.Transp.modFrete := TAcbrUtils.StrToEnumModFrete(FEntity.Transportadora.modFrete);
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.Transporta.CNPJCPF := FEntity.Transportadora.CNPJCPF;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.Transporta.xNome := FEntity.Transportadora.xNome;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.Transporta.IE := FEntity.Transportadora.IE;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.Transporta.xEnder := FEntity.Transportadora.xEnder;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.Transporta.xMun := FEntity.Transportadora.xMun;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.Transporta.UF := FEntity.Transportadora.UF;

  FConf.Component.ACBr.NotaFiscal.NFe.Transp.retTransp.vServ := FEntity.Transportadora.vServ;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.retTransp.vBCRet := FEntity.Transportadora.vBCRet;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.retTransp.pICMSRet := FEntity.Transportadora.pICMSRet;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.retTransp.vICMSRet := FEntity.Transportadora.vICMSRet;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.retTransp.CFOP := FEntity.Transportadora.CFOP;
  FConf.Component.ACBr.NotaFiscal.NFe.Transp.retTransp.cMunFG := FEntity.Transportadora.cMunFG;
end;

class function TRepositoryTransp.New (Conf: iActionNFe; Entity: iFactoryEntity) : iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
