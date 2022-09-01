unit Workshop.Controller.Nfe.Observer.Subject;

interface

uses
  Workshop.Controller.Nfe.Observer.Interfaces,
  System.Generics.Collections;

type
  TControllerNfeSubject = class(TInterfacedObject, iSubjectNfe)
    private
      FList : TList<iObserverNfe>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iSubjectNfe;
      function AddObserver( Value : iObserverNfe ) : iSubjectNfe;
      function RemoveObserver (Value : iObserverNfe) : iSubjectNfe;
      function Notify ( Value : String ) : iSubjectNfe;
  end;

implementation

uses
  System.SysUtils;

{ TControllerNfeSubject }

function TControllerNfeSubject.AddObserver(Value: iObserverNfe): iSubjectNfe;
begin
  Result := Self;
  FList.Add(Value);
end;

constructor TControllerNfeSubject.Create;
begin
  FList := TList<iObserverNfe>.Create;
end;

destructor TControllerNfeSubject.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

class function TControllerNfeSubject.New: iSubjectNfe;
begin
    Result := Self.Create;
end;

function TControllerNfeSubject.Notify(Value: String): iSubjectNfe;
var
  Observer : iObserverNfe;
begin
  Result := Self;
  for Observer in FList do
    Observer.Update(Value);
end;

function TControllerNfeSubject.RemoveObserver(Value: iObserverNfe): iSubjectNfe;
begin
  Result := Self;
  FList.Remove(Value);
end;

end.
