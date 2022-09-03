unit passaporteacbrapinfe.usecase.impl.emitente;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TEmitente = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TEmitente.Create;
begin

end;

destructor TEmitente.Destroy;
begin

  inherited;
end;

function TEmitente.Execute: iCommand;
begin
  Result := Self;
end;

class function TEmitente.New : iCommand;
begin
  Result := Self.Create;
end;

end.
