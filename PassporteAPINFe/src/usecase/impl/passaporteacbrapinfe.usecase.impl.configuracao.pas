unit passaporteacbrapinfe.usecase.impl.configuracao;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TConfiguracao = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TConfiguracao.Create;
begin

end;

destructor TConfiguracao.Destroy;
begin

  inherited;
end;

function TConfiguracao.Execute: iCommand;
begin
  Result := Self;
end;

class function TConfiguracao.New : iCommand;
begin
  Result := Self.Create;
end;

end.
