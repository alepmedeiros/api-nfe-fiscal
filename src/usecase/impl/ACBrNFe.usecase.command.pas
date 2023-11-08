unit ACBrNFe.usecase.command;

interface

uses
  ACBrNFe.usecase.interfaces;

type
  TCommand = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute : iCommand;
  end;

implementation

constructor TCommand.Create;
begin

end;

destructor TCommand.Destroy;
begin

  inherited;
end;

function TCommand.Execute: iCommand;
begin
  Result := Self;
end;

class function TCommand.New : iCommand;
begin
  Result := Self.Create;
end;

end.
