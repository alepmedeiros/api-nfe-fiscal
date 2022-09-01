unit Workshop.Controller.Nfe.Interfaces;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Controller.Nfe.Observer.Interfaces, Workshop.Controller.Nfe.Types;

type

  iControllerNFe = interface
    ['{C3BAF967-EF1E-4D49-97F8-D3B8FE89E1F5}']
    function Nfe : iModelFiscalNFe;
    function NotifyNFe (Value : TNotifyNfe) : iControllerNFe;
  end;

implementation

end.
