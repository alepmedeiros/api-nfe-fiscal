unit Workshop.Model.Fiscal.Nfe.Command.Geral;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandGeral = class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe) : iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  pcnConversaoNFe;

{ TMinhaClasse }

constructor TModelFiscalNfeCommandGeral.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandGeral.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandGeral.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.Configuracoes.Geral.ModeloDF := moNFe;
  FParent.Component._this.Configuracoes.Geral.VersaoDF := ve400;
end;

class function TModelFiscalNfeCommandGeral.New(Parent : iModelFiscalNFe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
