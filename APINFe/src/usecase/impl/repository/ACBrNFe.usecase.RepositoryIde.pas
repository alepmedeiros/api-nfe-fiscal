unit ACBrNFe.usecase.RepositoryIde;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper,
  System.SysUtils, ACBrNFe.entity.pedidos;

type
  TRepositoryIde = class(TInterfacedObject, iCommand)
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

constructor TRepositoryIde.Create(Conf: iActionNFe; Pedido: TPedido);
begin
  FConf := Conf;
  FPedido := Pedido;
end;

destructor TRepositoryIde.Destroy;
begin

  inherited;
end;

function TRepositoryIde.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.Ide.natOp := FPedido.NatOp;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.indPag :=
    TAcbrUtils.StrToEnumIndPagamento(FPedido.indPag);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.modelo := 55;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.Serie := FPedido.Serie;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpNF :=
    TAcbrUtils.StrToEnumTipoNFe(FPedido.TipoNfe);
end;

class function TRepositoryIde.New(Conf: iActionNFe; Pedido: TPedido): iCommand;
begin
  Result := Self.Create(Conf, Pedido);
end;

end.
