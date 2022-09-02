unit ACBrNFe.usecase.RepositoryEmitente;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryEmitente = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
    procedure ConfEmitente;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryEmitente.Create(Conf: iActionNFe);
begin
  FConf := Conf;
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
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.xNome := FEntity.Emitente.xNome;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.xFant := FEntity.Emitente.xFant;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.CNPJCPF := FEntity.Emitente.CNPJCPF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.IE := FEntity.Emitente.IE;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.IEST := FEntity.Emitente.IEST;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.CNAE := FEntity.Emitente.CNAE;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.fone := FEntity.Emitente.EnderEmit.fone;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xLgr := FEntity.Emitente.EnderEmit.xLgr;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.nro := FEntity.Emitente.EnderEmit.nro;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xCpl := FEntity.Emitente.EnderEmit.xCpl;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xBairro := FEntity.Emitente.EnderEmit.xBairro;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xMun := FEntity.Emitente.EnderEmit.xMun;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cMun := FEntity.Emitente.EnderEmit.cMun;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.UF := FEntity.Emitente.EnderEmit.UF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.CEP := FEntity.Emitente.EnderEmit.CEP;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cPais := FEntity.Emitente.EnderEmit.cPais;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xPais := FEntity.Emitente.EnderEmit.xPais;
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.CRT := TAcbrUtils.StrToEnumCRT(FEntity.Emitente.CRT);
//  FConf.Component.ACBr.NotaFiscal.NFe.Emit.IM := FEntity.Emitente.IM;
end;

class function TRepositoryEmitente.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
