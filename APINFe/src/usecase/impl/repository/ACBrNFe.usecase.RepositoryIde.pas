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
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryIde.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryIde.Destroy;
begin

  inherited;
end;

function TRepositoryIde.Execute: iCommand;
begin
  Result := Self;

  FConf.Component.ACBr.NotaFiscal.NFe.Ide.natOp := FConf.Entity.Pedido.NatOp;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.indPag :=
    TAcbrUtils.StrToEnumIndPagamento(FConf.Entity.Pedido.indPag);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.modelo := 55;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.Serie := FConf.Entity.Pedido.Serie;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpNF :=
    TAcbrUtils.StrToEnumTipoNFe(FConf.Entity.Pedido.TipoNfe);
end;

class function TRepositoryIde.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
