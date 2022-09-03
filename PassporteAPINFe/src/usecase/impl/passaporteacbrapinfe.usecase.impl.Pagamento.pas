unit passaporteacbrapinfe.usecase.impl.Pagamento;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TPagamento = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TPagamento.Create;
begin

end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

function TPagamento.Execute: iCommand;
begin
  Result := Self;
end;

class function TPagamento.New : iCommand;
begin
  Result := Self.Create;
end;

end.
