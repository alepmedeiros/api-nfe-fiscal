unit Command.Model.Interfaces;

interface

type
  TEvDisplay = procedure (Value : String) of Object;

  iCommand = interface
    ['{0C67CE44-B7D0-4A33-8734-AD07D8A8101B}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{C02A74A0-EB39-4782-82FA-F9C948723651}']
    function Add(Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

  iNotaFiscal = interface
    ['{9080D848-8521-46EA-869F-33A16EA10C48}']
    function Criar : iNotaFiscal;
    function Validar : iNotaFiscal;
    function Enviar : iNotaFiscal;
    function Gravar : iNotaFiscal;
    function Email : iNotaFiscal;
    function Display(Value : TEvDisplay) : iNotaFiscal;
    function EnviarNotaFiscal : iNotaFiscal;
  end;

implementation

end.
