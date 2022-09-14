unit passaporteacbrapinfe.usecase.impl.total;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TTotal = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TTotal.Create;
begin

end;

destructor TTotal.Destroy;
begin

  inherited;
end;

function TTotal.Execute: iCommand;
begin
  Result := Self;
end;

class function TTotal.New : iCommand;
begin
  Result := Self.Create;
end;

end.
