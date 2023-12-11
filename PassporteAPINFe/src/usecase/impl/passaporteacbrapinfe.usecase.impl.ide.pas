unit passaporteacbrapinfe.usecase.impl.ide;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TIde = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TIde.Create(Acoes: iAcoesNfe);
begin
  FAcoes:= Acoes;
end;

destructor TIde.Destroy;
begin

  inherited;
end;

function TIde.Execute: iCommand;
begin
  Result := Self;
end;

class function TIde.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
