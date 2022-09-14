unit passaporteacbrapinfe.usecase.impl.produto;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TProduto = class(TInterfacedObject, iCommand)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

function TProduto.Execute: iCommand;
begin
  Result := Self;
end;

class function TProduto.New: iCommand;
begin
  Result := Self.Create;
end;

end.
