unit ACBrNFe.usecase.interfaces;

interface

uses
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.pedidos,
  ACBrNFe.entity.ResponseNFe;

type

  iActionNFe = interface
    function Clear: iActionNFe;
    function Component: iComponentFactory;
    function Gerar: iActionNFe; overload;
    function Gerar(Pedido: TPedido): TResponseNFe; overload;
  end;

  iCommand = interface
    function Execute: iCommand;
  end;

  iInvoker = interface
    function Add(Value: iCommand): iInvoker;
    function Execute: iInvoker;
  end;

  iFactoryCommand = interface
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
    function GerarNFe(var Response: TResponseNFe): iCommand;
  end;

implementation

end.
