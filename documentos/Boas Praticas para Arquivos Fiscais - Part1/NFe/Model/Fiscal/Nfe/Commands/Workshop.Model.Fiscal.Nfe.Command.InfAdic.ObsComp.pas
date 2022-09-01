unit Workshop.Model.Fiscal.Nfe.Command.InfAdic.ObsComp;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandInfAdicObsComp = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandInfAdicObsComp }

constructor TModelFiscalNfeCommandInfAdicObsComp.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandInfAdicObsComp.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandInfAdicObsComp.Execute: iCommand;
var
  I: Integer;
begin
  Result := Self;
  FParent.Component.AddObsComp;
  FParent.Component.ObsComp.xCampo := 'ObsCont';
  FParent.Component.ObsComp.xTexto := 'Texto';
end;

class function TModelFiscalNfeCommandInfAdicObsComp.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
