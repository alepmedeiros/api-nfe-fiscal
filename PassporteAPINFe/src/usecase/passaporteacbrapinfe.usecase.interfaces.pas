unit passaporteacbrapinfe.usecase.interfaces;

interface

uses
  passaporteacbrapinfe.component.interfaces,
  ACBrNFe.entity.ResponseNFe,
  ACBrNFe.entity.pedidos,
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.Produto;

type
  iAcoesNfe = interface
    function Clear: iAcoesNfe;
    function component: iComponentFactory;
    function entity: iEntity;
    function Gerar(Nfe: TNfe): TResponseNFe;
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

  iRegras = interface
    function ImpostoICMS(Value: TProduto): iRegras;
    function Visit(Value: iAcoesNfe): iRegras;
  end;

  iRegrasImposto = interface
    function CalculoImpostos: iRegrasImposto;
    function Visit(Value: iAcoesNfe): iRegrasImposto;
  end;

  iVisitable = interface
    function Accept(Value: iRegras): iRegras;
  end;

implementation

end.
