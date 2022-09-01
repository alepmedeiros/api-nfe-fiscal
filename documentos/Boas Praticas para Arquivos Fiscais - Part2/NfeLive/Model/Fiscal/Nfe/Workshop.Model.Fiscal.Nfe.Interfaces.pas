unit Workshop.Model.Fiscal.Nfe.Interfaces;

interface

uses
  Workshop.Model.Fiscal.NFe.Componentes.Interfaces,
  ACBrNFe;

type
  iNFeConfig = interface;

  iModelFiscalNFe = interface
    ['{1AE1FDBA-C25F-49A0-88C5-3F40AC801E4E}']
    function Clear : iModelFiscalNFe;
    function Gerar : iModelFiscalNFe;
    function Component : iModelFiscalNFeComponentes<TACbrNFe>;
    function Config : iNfeConfig;
  end;

  iNFeConfig = interface
    ['{77D7E567-3436-4266-ABB3-24A6FB5AE62C}']
    function Versao : String;
  end;

  iCommand = interface
    ['{46EDD05F-F525-488E-BF46-F006481E6162}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{F6CA4333-11C1-4768-857C-E9B867A19D86}']
    function Add( Value : iCommand ) : iInvoker;
    function Execute : iInvoker;
  end;

implementation

end.
