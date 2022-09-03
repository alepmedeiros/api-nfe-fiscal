unit passaporteacbrapinfe.usecase.impl.Fatura;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TFatura = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TFatura.Create;
begin

end;

destructor TFatura.Destroy;
begin

  inherited;
end;

function TFatura.Execute: iCommand;
begin
  Result := Self;
end;

class function TFatura.New : iCommand;
begin
  Result := Self.Create;
end;

end.
