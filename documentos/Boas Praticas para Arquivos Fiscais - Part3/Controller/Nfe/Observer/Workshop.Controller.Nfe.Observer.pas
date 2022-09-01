unit Workshop.Controller.Nfe.Observer;

interface

uses
  Workshop.Controller.Nfe.Observer.Interfaces,
  Workshop.Controller.Nfe.Types;

type
  TControllerNFeObserver = class(TInterfacedObject, iObserverNfe)
    private
      FNotifyMethod : TNotifyNfe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iObserverNfe;
      function Update (Value : String) : iObserverNfe;
      function NotifyMethod ( Value : TNotifyNfe) : iObserverNfe;
  end;

implementation

{ TControllerNFeObserver }

constructor TControllerNFeObserver.Create;
begin

end;

destructor TControllerNFeObserver.Destroy;
begin

  inherited;
end;

class function TControllerNFeObserver.New: iObserverNfe;
begin
    Result := Self.Create;
end;

function TControllerNFeObserver.NotifyMethod(Value: TNotifyNfe): iObserverNfe;
begin
  Result := Self;
  FNotifyMethod := Value;
end;

function TControllerNFeObserver.Update(Value: String): iObserverNfe;
begin
  Result := Self;
  FNotifyMethod(Value);
end;

end.
