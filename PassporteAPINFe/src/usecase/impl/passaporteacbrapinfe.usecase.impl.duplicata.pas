unit passaporteacbrapinfe.usecase.impl.duplicata;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TDuplicata = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TDuplicata.Create(Acoes: iAcoesNfe);
begin
  FAcoes:= Acoes;
end;

destructor TDuplicata.Destroy;
begin

  inherited;
end;

function TDuplicata.Execute: iCommand;
begin
  Result := Self;
end;

class function TDuplicata.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
