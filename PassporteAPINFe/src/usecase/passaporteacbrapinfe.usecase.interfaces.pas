unit passaporteacbrapinfe.usecase.interfaces;

interface

uses
  passaporteacbrapinfe.component.interfaces,
  pcnNFe,
  ACBrNFe.entity.ResponseNFe;

type
  iAcoesNfe = interface
    function Clear: iAcoesNfe;
    function component: iComponentFactory;
    function Gerar: iAcoesNfe; overload;
    function Gerar(Value: TNfe): TResponseNFe; overload;
  end;

  iCommand = interface
    function Execute: iCommand;
  end;

  iInvoker = interface
    function Add(Value: iCommand): iInvoker;
    function Execute: iInvoker;
  end;

  iFactoryUsecase = interface
    function Configuracao: iCommand;
    function Ide: iCommand;
    function Emitente: iCommand;
    function Dest: iCommand;
    function Produto: iCommand;
    function Total: iCommand;
    function Fatura: iCommand;
    function Duplicata: iCommand;
    function Pagamento: iCommand;
    function GerarNFe: iCommand;
  end;

implementation

end.
