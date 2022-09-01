unit ACBrNFe.usecase.interfaces;

interface

uses
  ACBrNFe.Component.interfaces, ACBrNFe.entity.interfaces;

type
  iActionNFe = interface
    function Clear: iActionNFe;
    function Component: iComponentFactory;
    function Gerar: iActionNFe;
  end;

  iCommand = interface
    function Execute: iCommand;
  end;

  iInvoker = interface
    function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

implementation

end.
