unit ACBrNFe.usecase.RepositoryIde;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper, System.SysUtils;

type
  TRepositoryIde = class(TInterfacedObject, iCommand)
  private
    FConf: iComponentFactory;
    FEntity: iFactoryEntity;
    procedure ConfIde;
  public
    constructor Create(Conf: iComponentFactory; Entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iComponentFactory; Entity: iFactoryEntity): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryIde.Create(Conf: iComponentFactory; Entity: iFactoryEntity);
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
  ConfIde;
end;

procedure TRepositoryIde.ConfIde;
begin
  FConf.ACBr.NotaFiscal.NFe.Ide.tpAmb := TAcbrUtils.StrToEnumTipoAmbiente(FEntity.Configuracao.WebService.Ambiente);
  FConf.ACBr.NotaFiscal.NFe.Ide.verProc := FEntity.Ide.verProc;
  FConf.ACBr.NotaFiscal.NFe.Ide.tpImp := FConf.ACBr.this.DANFE.TipoDANFE;
  FConf.ACBr.NotaFiscal.NFe.Ide.natOp := FEntity.Ide.natOp;
  FConf.ACBr.NotaFiscal.NFe.Ide.indPag := TAcbrUtils.StrToEnumIndPagamento(FEntity.Ide.indPag);
  FConf.ACBr.NotaFiscal.NFe.Ide.modelo := FEntity.Ide.modelo;
  FConf.ACBr.NotaFiscal.NFe.Ide.Serie := FEntity.Ide.Serie;
  FConf.ACBr.NotaFiscal.NFe.Ide.nNF := FEntity.Ide.nNF;
  FConf.ACBr.NotaFiscal.NFe.Ide.cNF := TAcbrUtils.GerarCodigoDanfe(FConf.ACBr.NotaFiscal.NFe.Ide.nNF);
  FConf.ACBr.NotaFiscal.NFe.Ide.dEmi := Date;
  FConf.ACBr.NotaFiscal.NFe.Ide.dSaiEnt := Date;
  FConf.ACBr.NotaFiscal.NFe.Ide.hSaiEnt := Now;
  FConf.ACBr.NotaFiscal.NFe.Ide.tpNF := TAcbrUtils.StrToEnumTipoNFe(FEntity.Ide.tpNF);
  FConf.ACBr.NotaFiscal.NFe.Ide.tpEmis := TAcbrUtils.StrToEnumEmissao(FEntity.Ide.tpEmis);
  FConf.ACBr.NotaFiscal.NFe.Ide.tpAmb := TAcbrUtils.StrToEnumTipoAmbiente(FEntity.Ide.tpAmb);
  FConf.ACBr.NotaFiscal.NFe.Ide.verProc := FEntity.Ide.verProc;
  FConf.ACBr.NotaFiscal.NFe.Ide.cUF := FEntity.Ide.cUF;
  FConf.ACBr.NotaFiscal.NFe.Ide.cMunFG := FEntity.Ide.cMunFG;
  FConf.ACBr.NotaFiscal.NFe.Ide.finNFe := TAcbrUtils.StrToEnumFinalidadeNFe(FEntity.Ide.finNFe);
  FConf.ACBr.NotaFiscal.NFe.Ide.indIntermed := TAcbrUtils.StrToEnumIndIntermed(FEntity.Ide.indIntermed);
end;

class function TRepositoryIde.New(Conf: iComponentFactory; Entity: iFactoryEntity): iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
