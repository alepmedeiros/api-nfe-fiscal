unit ACBrNFe.usecase.RepositoryIde;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper, System.SysUtils;

type
  TRepositoryIde = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
    FEntity: iFactoryEntity;
  public
    constructor Create(Conf: iActionNFe; Entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Entity: iFactoryEntity): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryIde.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryIde.Destroy;
begin

  inherited;
end;

function TRepositoryIde.Execute: iCommand;
begin
  Result := Self;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpAmb := TAcbrUtils.StrToEnumTipoAmbiente(FEntity.Configuracao.WebService.Ambiente);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.verProc := FEntity.Ide.verProc;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpImp := FConf.Component.ACBr.this.DANFE.TipoDANFE;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.natOp := FEntity.Ide.natOp;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.indPag := TAcbrUtils.StrToEnumIndPagamento(FEntity.Ide.indPag);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.modelo := FEntity.Ide.modelo;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.Serie := FEntity.Ide.Serie;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.nNF := FEntity.Ide.nNF;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.cNF := TAcbrUtils.GerarCodigoDanfe(FConf.Component.ACBr.NotaFiscal.NFe.Ide.nNF);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.dEmi := Date;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.dSaiEnt := Date;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.hSaiEnt := Now;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpNF := TAcbrUtils.StrToEnumTipoNFe(FEntity.Ide.tpNF);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpEmis := TAcbrUtils.StrToEnumEmissao(FEntity.Ide.tpEmis);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpAmb := TAcbrUtils.StrToEnumTipoAmbiente(FEntity.Ide.tpAmb);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.verProc := FEntity.Ide.verProc;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.cUF := FEntity.Ide.cUF;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.cMunFG := FEntity.Ide.cMunFG;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.finNFe := TAcbrUtils.StrToEnumFinalidadeNFe(FEntity.Ide.finNFe);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.indIntermed := TAcbrUtils.StrToEnumIndIntermed(FEntity.Ide.indIntermed);
end;

class function TRepositoryIde.New(Conf: iActionNFe; Entity: iFactoryEntity): iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
