unit passaporteacbrapinfe.usecase.impl.total;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TTotal = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TTotal.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TTotal.Destroy;
begin

  inherited;
end;

function TTotal.Execute: iCommand;
begin
  Result := Self;
end;

class function TTotal.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
