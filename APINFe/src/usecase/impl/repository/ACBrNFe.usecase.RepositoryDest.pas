unit ACBrNFe.usecase.RepositoryDest;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.pedidos, ACBrNFe.utils.acbrhelper;

type
  TRepositoryDest = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryDest.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryDest.Destroy;
begin

  inherited;
end;

function TRepositoryDest.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.Dest.CNPJCPF :=
    FConf.Entity.Pedido.Destinatario.CNPJCPF;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.IE := FConf.Entity.Pedido.Destinatario.IE;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.ISUF := FConf.Entity.Pedido.Destinatario.ISUF;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.xNome := FConf.Entity.Pedido.Destinatario.Nome;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.fone :=
    FConf.Entity.Pedido.Destinatario.Endereco.fone;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.CEP :=
    FConf.Entity.Pedido.Destinatario.Endereco.CEP;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xLgr :=
    FConf.Entity.Pedido.Destinatario.Endereco.Logradouro;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.nro :=
    FConf.Entity.Pedido.Destinatario.Endereco.Numero;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xCpl :=
    FConf.Entity.Pedido.Destinatario.Endereco.Complemento;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xBairro :=
    FConf.Entity.Pedido.Destinatario.Endereco.Bairro;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cMun := TAcbrUtils.UFtoCUF(FConf.Entity.Pedido.Destinatario.Endereco.Cidade);
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xMun :=
    FConf.Entity.Pedido.Destinatario.Endereco.Cidade;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.UF :=
    FConf.Entity.Pedido.Destinatario.Endereco.Estado;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cPais := 1058;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xPais :=
    FConf.Entity.Pedido.Destinatario.Endereco.Pais;
end;

class function TRepositoryDest.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
