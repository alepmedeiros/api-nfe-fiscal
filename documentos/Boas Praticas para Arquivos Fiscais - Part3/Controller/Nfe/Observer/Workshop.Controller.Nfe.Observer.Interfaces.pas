unit Workshop.Controller.Nfe.Observer.Interfaces;

interface

uses
  Workshop.Controller.Nfe.Types;

type
  iObserverNfe = interface
    ['{F768124E-CD62-42B4-98CB-6D18D7D95CF4}']
    function Update (Value : String) : iObserverNfe;
    function NotifyMethod ( Value : TNotifyNfe) : iObserverNfe;
  end;

  iSubjectNfe = interface
    ['{D7028F24-ABE8-4F30-8A75-0134B46CFDAB}']
    function AddObserver( Value : iObserverNfe ) : iSubjectNfe;
    function RemoveObserver (Value : iObserverNfe) : iSubjectNfe;
    function Notify ( Value : String ) : iSubjectNfe;
  end;

implementation

end.
