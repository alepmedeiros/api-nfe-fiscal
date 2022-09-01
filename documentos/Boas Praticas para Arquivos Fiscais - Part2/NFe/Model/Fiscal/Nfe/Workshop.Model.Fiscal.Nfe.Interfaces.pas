unit Workshop.Model.Fiscal.Nfe.Interfaces;

interface

uses
  System.RTTI,
  Workshop.Model.Fiscal.Nfe.Componentes.Interfaces,
  ACBrNFe;

type

  iModelFiscalNfe = interface
    ['{D61907D4-90BE-4DBF-9E25-AFC4AA2239E1}']
    function Clear : iModelFiscalNFe;
    function Gerar : iModelFiscalNFe;
    function Component : iModelFiscalNfeComponentes<TACBrNFe>;
  end;

  iCommand = interface
    ['{0C67CE44-B7D0-4A33-8734-AD07D8A8101B}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{C02A74A0-EB39-4782-82FA-F9C948723651}']
    function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

implementation

end.
