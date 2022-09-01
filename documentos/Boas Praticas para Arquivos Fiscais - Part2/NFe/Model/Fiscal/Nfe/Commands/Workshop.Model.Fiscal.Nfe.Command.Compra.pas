unit Workshop.Model.Fiscal.Nfe.Command.Compra;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandCompra = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandCompra }

constructor TModelFiscalNfeCommandCompra.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandCompra.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandCompra.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.compra.xNEmp := '';
  FParent.Component.NotaFiscal.NFe.compra.xPed  := '';
  FParent.Component.NotaFiscal.NFe.compra.xCont := '';
end;

class function TModelFiscalNfeCommandCompra.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.

