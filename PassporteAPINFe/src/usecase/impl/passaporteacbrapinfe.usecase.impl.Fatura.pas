unit passaporteacbrapinfe.usecase.impl.Fatura;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TFatura = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TFatura.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TFatura.Destroy;
begin

  inherited;
end;

function TFatura.Execute: iCommand;
begin
  Result := Self;
end;

class function TFatura.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
