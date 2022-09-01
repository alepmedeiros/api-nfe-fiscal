unit Command.Model.NotaFiscal.Validar;

interface

uses Command.Model.Interfaces;

Type
  TModelNotaFiscalValidar = class(TInterfacedObject, iCommand)
    private
      FReceiver : iNotaFiscal;
    public
      constructor Create(Value : iNotaFiscal);
      destructor Destroy; override;
      class function New(FReceiver : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TModelNotaFiscalValidar }

constructor TModelNotaFiscalValidar.Create(Value : iNotaFiscal);
begin
  FReceiver := Value;
end;

destructor TModelNotaFiscalValidar.Destroy;
begin

  inherited;
end;

function TModelNotaFiscalValidar.Execute: iCommand;
begin
  Result := Self;
  FReceiver.Validar;
end;

class function TModelNotaFiscalValidar.New(FReceiver : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(FReceiver);
end;

end.
