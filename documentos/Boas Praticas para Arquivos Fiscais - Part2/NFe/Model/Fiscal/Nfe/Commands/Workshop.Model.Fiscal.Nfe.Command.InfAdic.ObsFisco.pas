unit Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsFisco;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandInfAdicObsFisco = class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNfe;
    public
      constructor Create(Parent : iModelFiscalNfe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNfe) : iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  pcnConversaoNFe, pcnConversao, System.SysUtils;

{ TModelFiscalNfeCommandInfAdicObsFisco }

constructor TModelFiscalNfeCommandInfAdicObsFisco.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandInfAdicObsFisco.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandInfAdicObsFisco.Execute: iCommand;
var
  I: Integer;
begin
  Result := Self;
  FParent.Component.AddObsFisco;
  FParent.Component.ObsFisco.xCampo := 'ObsFisco';
  FParent.Component.ObsFisco.xTexto := 'Texto';
end;

class function TModelFiscalNfeCommandInfAdicObsFisco.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
