unit Workshop.Model.Fiscal.Nfe.Command.Transp.Vol;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandTranspVol = class(TInterfacedObject, iCommand)
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

{ TModelFiscalNfeCommandTranspVol }

constructor TModelFiscalNfeCommandTranspVol.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandTranspVol.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandTranspVol.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddTranspVol;
  FParent.Component.TranspVol.qVol  := 1;
  FParent.Component.TranspVol.esp   := 'Especie';
  FParent.Component.TranspVol.marca := 'Marca';
  FParent.Component.TranspVol.nVol  := 'Numero';
  FParent.Component.TranspVol.pesoL := 100;
  FParent.Component.TranspVol.pesoB := 110;
end;

class function TModelFiscalNfeCommandTranspVol.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
