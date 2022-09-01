unit Workshop.Model.Fiscal.Nfe.Command.InfAdic;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandInfAdic = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandInfAdic }

constructor TModelFiscalNfeCommandInfAdic.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandInfAdic.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandInfAdic.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.InfAdic.infCpl     :=  '';
  FParent.Component.NotaFiscal.NFe.InfAdic.infAdFisco :=  '';
end;

class function TModelFiscalNfeCommandInfAdic.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
