unit Workshop.Model.Fiscal.Nfe.Command.Configuracao;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandConfiguracao = class(TInterfacedObject, iCommand)
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
  pcnConversaoNFe;

{ TModelFiscalNfeCommandConfiguracao }

constructor TModelFiscalNfeCommandConfiguracao.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandConfiguracao.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandConfiguracao.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.Configuracoes.Geral.ModeloDF := moNFe;
  FParent.Component._this.Configuracoes.Geral.VersaoDF :=  ve310;
end;

class function TModelFiscalNfeCommandConfiguracao.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
