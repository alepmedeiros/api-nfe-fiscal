unit ACBrNFe.usecase.RepositoryFactory;

interface

uses
  ACBrNFe.usecase.interfaces, ACBrNFe.usecase.RepositoryConf,
  ACBrNFe.entity.pedidos, ACBrNFe.usecase.RepositoryIde,
  ACBrNFe.usecase.RepositoryEmitente, ACBrNFe.usecase.RepositoryDest,
  ACBrNFe.usecase.RepositoryProd, ACBrNFe.usecase.RepositoryTotal,
  ACBrNFe.usecase.RepositoryCobFat, ACBrNFe.usecase.RepositoryDuplicata,
  ACBrNFe.usecase.RepositoryPagamento, ACBrNFe.usecase.RepositoryGerarNFe,
  ACBrNFe.entity.ResponseNFe;

type
  TFactoryCommand = class(TInterfacedObject, iFactoryCommand)
    private
      FParent: iActionNFe;
      FPedido: TPedido;
      FRetorno: TResponseNFe;
    public
      constructor Create(Parent: iActionNFe; Pedido: TPedido);
      destructor Destroy; override;
      class function New(Parent: iActionNFe; Pedido: TPedido) : iFactoryCommand;
      function CobFat: iCommand;
      function Compra: iCommand;
      function Conf: iCommand;
      function Dest: iCommand;
      function Duplicata: iCommand;
      function Emitente: iCommand;
      function Exporta: iCommand;
      function Ide: iCommand;
      function InfAdic: iCommand;
      function InfAdicObsComp: iCommand;
      function InfItermed: iCommand;
      function ObsFisco: iCommand;
      function Pagamento: iCommand;
      function Produto: iCommand;
      function Combustivel: iCommand;
      function ProdImpCOFINS: iCommand;
      function ProdImpCOFINSST: iCommand;
      function ProdImposto: iCommand;
      function ProdImpostoICMS: iCommand;
      function ProdImpostoICMSUFDest: iCommand;
      function Total: iCommand;
      function Transportadora: iCommand;
      function TranspVolume: iCommand;
      function ProdImpPis: iCommand;
      function ProdImpPISST: iCommand;
      function ProdImpII: iCommand;
      function ProdVeiculo: iCommand;
      function GerarNFe(Retorno: TResponseNFe): iCommand;
  end;

implementation

function TFactoryCommand.CobFat: iCommand;
begin
  Result := TRepositoryCobFat.New(FParent, FPedido);
end;

function TFactoryCommand.Combustivel: iCommand;
begin

end;

function TFactoryCommand.Compra: iCommand;
begin

end;

function TFactoryCommand.Conf: iCommand;
begin
  Result := TRepositoryConf.New(FParent);
end;

constructor TFactoryCommand.Create(Parent: iActionNFe; Pedido: TPedido);
begin
  FParent := Parent;
  FPedido := Pedido;
end;

function TFactoryCommand.Dest: iCommand;
begin
  Result := TRepositoryDest.New(FParent, FPedido);
end;

destructor TFactoryCommand.Destroy;
begin

  inherited;
end;

function TFactoryCommand.Duplicata: iCommand;
begin
  Result := TRepositoryDuplicata.New(FParent, FPedido);
end;

function TFactoryCommand.Emitente: iCommand;
begin
  Result := TRepositoryEmitente.New(FParent, FPedido);
end;

function TFactoryCommand.Exporta: iCommand;
begin

end;

function TFactoryCommand.GerarNFe(Retorno: TResponseNFe): iCommand;
begin
  Result := TRespositoryGerarNFe.New(FParent, FRetorno);
end;

function TFactoryCommand.Ide: iCommand;
begin
  Result := TRepositoryIde.New(FParent, FPedido);
end;

function TFactoryCommand.InfAdic: iCommand;
begin

end;

function TFactoryCommand.InfAdicObsComp: iCommand;
begin

end;

function TFactoryCommand.InfItermed: iCommand;
begin

end;

class function TFactoryCommand.New (Parent: iActionNFe; Pedido: TPedido) : iFactoryCommand;
begin
  Result := Self.Create(Parent, Pedido);
end;

function TFactoryCommand.ObsFisco: iCommand;
begin

end;

function TFactoryCommand.Pagamento: iCommand;
begin
  Result := TRepositoryPagamento.New(FParent, FPedido);
end;

function TFactoryCommand.ProdImpCOFINS: iCommand;
begin

end;

function TFactoryCommand.ProdImpCOFINSST: iCommand;
begin

end;

function TFactoryCommand.ProdImpII: iCommand;
begin

end;

function TFactoryCommand.ProdImposto: iCommand;
begin

end;

function TFactoryCommand.ProdImpostoICMS: iCommand;
begin

end;

function TFactoryCommand.ProdImpostoICMSUFDest: iCommand;
begin

end;

function TFactoryCommand.ProdImpPis: iCommand;
begin

end;

function TFactoryCommand.ProdImpPISST: iCommand;
begin

end;

function TFactoryCommand.Produto: iCommand;
begin
  Result := TRepositoryProd.New(FParent, FPedido);
end;

function TFactoryCommand.ProdVeiculo: iCommand;
begin

end;

function TFactoryCommand.Total: iCommand;
begin
  Result := TRepositoryTotal.New(FParent, FPedido);
end;

function TFactoryCommand.Transportadora: iCommand;
begin

end;

function TFactoryCommand.TranspVolume: iCommand;
begin

end;

end.
