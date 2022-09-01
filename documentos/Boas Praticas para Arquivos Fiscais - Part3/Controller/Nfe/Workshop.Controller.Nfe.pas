unit Workshop.Controller.Nfe;

interface

uses
  Workshop.Controller.Nfe.Interfaces,
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Controller.Nfe.Observer.Interfaces, Workshop.Controller.Nfe.Types;

type
  TControllerNFe = class(TInterfacedObject, iControllerNFe)
    private
      FNfe : iModelFiscalNFe;
      FObserver : iObserverNfe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerNFe;
      function Nfe : iModelFiscalNFe;
      function NotifyNFe (Value : TNotifyNfe) : iControllerNFe;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe,
  Workshop.Controller.Nfe.Observer.Subject,
  Workshop.Controller.Nfe.Observer;

{ TControllerNFe }

constructor TControllerNFe.Create;
begin
  FObserver := TControllerNFeObserver.New;
  FNfe := TModelFiscalNFe
            .New
            .Observer(
              TControllerNfeSubject
              .New
              .AddObserver(FObserver)
            );
end;

destructor TControllerNFe.Destroy;
begin

  inherited;
end;

class function TControllerNFe.New: iControllerNFe;
begin
    Result := Self.Create;
end;

function TControllerNFe.Nfe: iModelFiscalNFe;
begin
  Result := FNfe;
end;

function TControllerNFe.NotifyNFe(Value: TNotifyNfe): iControllerNFe;
begin
  Result := Self;
  FObserver.NotifyMethod(Value);
end;

end.
