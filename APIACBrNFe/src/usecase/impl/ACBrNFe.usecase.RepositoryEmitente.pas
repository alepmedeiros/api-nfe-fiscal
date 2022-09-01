unit ACBrNFe.usecase.RepositoryEmitente;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces, ACBrNFe.utils.acbrhelper;

type
  TRepositoryEmitente = class(TInterfacedObject, iCommand)
  private
    FConf: iComponentFactory;
    FEntity: iFactoryEntity;
    procedure ConfEmitente;
  public
    constructor Create(Conf: iComponentFactory; entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iComponentFactory; Entity: iFactoryEntity): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryEmitente.Create(Conf: iComponentFactory; entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := Entity;
end;

destructor TRepositoryEmitente.Destroy;
begin

  inherited;
end;

function TRepositoryEmitente.Execute: iCommand;
begin
  Result := Self;
  ConfEmitente;
end;

procedure TRepositoryEmitente.ConfEmitente;
begin
  FConf.ACBr.NotaFiscal.NFe.Emit.xNome := FEntity.Emitente.xNome;
  FConf.ACBr.NotaFiscal.NFe.Emit.xFant := FEntity.Emitente.xFant;
  FConf.ACBr.NotaFiscal.NFe.Emit.CNPJCPF := FEntity.Emitente.CNPJCPF;
  FConf.ACBr.NotaFiscal.NFe.Emit.IE := FEntity.Emitente.IE;
  FConf.ACBr.NotaFiscal.NFe.Emit.IEST := FEntity.Emitente.IEST;
  FConf.ACBr.NotaFiscal.NFe.Emit.CNAE := FEntity.Emitente.CNAE;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.fone := FEntity.Emitente.EnderEmit.fone;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xLgr := FEntity.Emitente.EnderEmit.xLgr;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.nro := FEntity.Emitente.EnderEmit.nro;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xCpl := FEntity.Emitente.EnderEmit.xCpl;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xBairro := FEntity.Emitente.EnderEmit.xBairro;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xMun := FEntity.Emitente.EnderEmit.xMun;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cMun := FEntity.Emitente.EnderEmit.cMun;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.UF := FEntity.Emitente.EnderEmit.UF;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.CEP := FEntity.Emitente.EnderEmit.CEP;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cPais := FEntity.Emitente.EnderEmit.cPais;
  FConf.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xPais := FEntity.Emitente.EnderEmit.xPais;
  FConf.ACBr.NotaFiscal.NFe.Emit.CRT := TAcbrUtils.StrToEnumCRT(FEntity.Emitente.CRT);
  FConf.ACBr.NotaFiscal.NFe.Emit.IM := FEntity.Emitente.IM;
end;

class function TRepositoryEmitente.New(Conf: iComponentFactory; Entity: iFactoryEntity): iCommand;
begin
  Result := Self.Create(Conf, Entity);
end;

end.
