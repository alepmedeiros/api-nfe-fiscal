unit Workshop.Model.Fiscal.Nfe.Command.Pagamento;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandPagamento = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandPagamento }

constructor TModelFiscalNfeCommandPagamento.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandPagamento.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandPagamento.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddPagamento;
  FParent.Component.Pagamento.indPag := ipVista;
  FParent.Component.Pagamento.tPag   := fpDinheiro;
  FParent.Component.Pagamento.vPag   := 100;
end;

class function TModelFiscalNfeCommandPagamento.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.

