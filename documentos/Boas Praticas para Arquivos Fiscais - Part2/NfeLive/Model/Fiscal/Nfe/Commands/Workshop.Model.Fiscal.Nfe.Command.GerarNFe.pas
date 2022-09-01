unit Workshop.Model.Fiscal.Nfe.Command.GerarNFe;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandGerarNFe = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandGerarNFe }

constructor TModelFiscalNfeCommandGerarNFe.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandGerarNFe.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandGerarNFe.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.NotasFiscais.GerarNFe;
end;

class function TModelFiscalNfeCommandGerarNFe.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.

