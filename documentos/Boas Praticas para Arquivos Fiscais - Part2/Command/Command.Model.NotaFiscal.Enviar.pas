unit Command.Model.NotaFiscal.Enviar;

interface

uses Command.Model.Interfaces;

Type
  TModelNotaFiscalEnviar = class(TInterfacedObject, iCommand)
    private
      FReceiver : iNotaFiscal;
    public
      constructor Create(Value : iNotaFiscal);
      destructor Destroy; override;
      class function New(FReceiver : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TModelNotaFiscalEnviar }

constructor TModelNotaFiscalEnviar.Create(Value : iNotaFiscal);
begin
  FReceiver := Value;
end;

destructor TModelNotaFiscalEnviar.Destroy;
begin

  inherited;
end;

function TModelNotaFiscalEnviar.Execute: iCommand;
begin
  Result := Self;
  FReceiver.Enviar;
end;

class function TModelNotaFiscalEnviar.New(FReceiver : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(FReceiver);
end;

end.
