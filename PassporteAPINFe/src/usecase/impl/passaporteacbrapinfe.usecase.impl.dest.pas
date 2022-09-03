unit passaporteacbrapinfe.usecase.impl.dest;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TDest = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TDest.Create;
begin

end;

destructor TDest.Destroy;
begin

  inherited;
end;

function TDest.Execute: iCommand;
begin
  Result := Self;
end;

class function TDest.New : iCommand;
begin
  Result := Self.Create;
end;

end.
