unit passaporteacbrapinfe.usecase.impl.duplicata;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TDuplicata = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TDuplicata.Create;
begin

end;

destructor TDuplicata.Destroy;
begin

  inherited;
end;

function TDuplicata.Execute: iCommand;
begin
  Result := Self;
end;

class function TDuplicata.New : iCommand;
begin
  Result := Self.Create;
end;

end.
