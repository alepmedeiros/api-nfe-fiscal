unit Workshop.Model.Fiscal.Nfe.Command.EnviarNFe;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandEnviarNFe = class(TInterfacedObject, iCommand)
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
  pcnConversaoNFe, pcnConversao;

{ TModelFiscalNfeCommandEnviarNFe }

constructor TModelFiscalNfeCommandEnviarNFe.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandEnviarNFe.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandEnviarNFe.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.Enviar(1, True);
end;

class function TModelFiscalNfeCommandEnviarNFe.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.

