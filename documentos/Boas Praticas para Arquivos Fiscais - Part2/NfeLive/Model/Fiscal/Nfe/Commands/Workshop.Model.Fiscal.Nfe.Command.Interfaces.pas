unit Workshop.Model.Fiscal.Nfe.Command.Interfaces;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;


type

  iModelFiscalNFeCommandFactory = interface
    ['{7EF0938F-5E29-461C-93C1-0AE3C63B6249}']
    function Geral : iCommand;
    function Emitente  : iCommand;
    function Ide  : iCommand;
    function Dest  : iCommand;
    function Prod  : iCommand;
    function Total  : iCommand;
    function Transp  : iCommand;
    function TranspVol  : iCommand;
    function CobrFat  : iCommand;
    function CobrDup  : iCommand;
    function InfAdic  : iCommand;
    function InfAdicObsFisco  : iCommand;
    function InfAdicObsComp  : iCommand;
    function Exporta  : iCommand;
    function Pagamento  : iCommand;
    function Compra : iCommand;
    function GerarNFe : iCommand;
    function EnviarNFe : iCommand;
  end;
implementation

end.
