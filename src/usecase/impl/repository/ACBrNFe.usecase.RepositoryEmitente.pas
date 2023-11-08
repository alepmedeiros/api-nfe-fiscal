unit ACBrNFe.usecase.RepositoryEmitente;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper,
  ACBrNFe.entity.pedidos;

type
  TRepositoryEmitente = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
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

  FConf.Component.ACBr.NotaFiscal.NFe.Emit.xNome := 'Emissor teste';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.xFant := 'Emissor teste';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.CNPJCPF := '07193169000154';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.IE := '1234567890';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.IEST := '';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.CNAE := '6201500';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.fone := '(11)2222-4444';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xLgr := 'Endereco teste';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.nro := '1';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xCpl := '';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xBairro := 'Bairro';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xMun := 'Manaus';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cMun := 1302603;
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.UF := 'AM';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.CEP := 11222333;
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cPais := 1058;
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xPais := 'Brasil';
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.CRT := TAcbrUtils.StrToEnumCRT('SimplesNacional');
  FConf.Component.ACBr.NotaFiscal.NFe.Emit.IM := '2648800';
end;

class function TRepositoryEmitente.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
