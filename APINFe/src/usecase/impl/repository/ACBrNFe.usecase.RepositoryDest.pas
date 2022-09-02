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
    FPedido: TPedido;
  public
    constructor Create(Conf: iActionNFe; Pedido: TPedido);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Pedido: TPedido): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryDest.Create(Conf: iActionNFe; Pedido: TPedido);
begin
  FConf := Conf;
  FPedido := Pedido;
end;

destructor TRepositoryDest.Destroy;
begin

  inherited;
end;

function TRepositoryDest.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.Dest.CNPJCPF :=
    FPedido.Destinatario.CNPJCPF;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.IE := FPedido.Destinatario.IE;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.ISUF := FPedido.Destinatario.ISUF;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.xNome := FPedido.Destinatario.Nome;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.fone :=
    FPedido.Destinatario.Endereco.fone;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.CEP :=
    FPedido.Destinatario.Endereco.CEP;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xLgr :=
    FPedido.Destinatario.Endereco.Logradouro;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.nro :=
    FPedido.Destinatario.Endereco.Numero;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xCpl :=
    FPedido.Destinatario.Endereco.Complemento;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xBairro :=
    FPedido.Destinatario.Endereco.Bairro;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cMun := TAcbrUtils.UFtoCUF(FPedido.Destinatario.Endereco.Cidade);
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xMun :=
    FPedido.Destinatario.Endereco.Cidade;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.UF :=
    FPedido.Destinatario.Endereco.Estado;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cPais := 1058;
  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xPais :=
    FPedido.Destinatario.Endereco.Pais;
end;

class function TRepositoryDest.New(Conf: iActionNFe; Pedido: TPedido): iCommand;
begin
  Result := Self.Create(Conf, Pedido);
end;

end.
