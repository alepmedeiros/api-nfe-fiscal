unit Command.Model.NotaFiscal.Criar;

interface

uses Command.Model.Interfaces;

Type
  TModelNotaFiscalCriar = class(TInterfacedObject, iCommand)
    private
      FReceiver : iNotaFiscal;
    public
      constructor Create(Value : iNotaFiscal);
      destructor Destroy; override;
      class function New(FReceiver : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TModelNotaFiscalCriar }

constructor TModelNotaFiscalCriar.Create(Value : iNotaFiscal);
begin
  FReceiver := Value;
end;

destructor TModelNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TModelNotaFiscalCriar.Execute: iCommand;
begin
  Result := Self;
  FReceiver.Criar;
end;

class function TModelNotaFiscalCriar.New(FReceiver : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(FReceiver);
end;

end.
