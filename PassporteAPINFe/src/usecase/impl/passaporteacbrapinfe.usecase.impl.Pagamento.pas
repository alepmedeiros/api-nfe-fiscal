unit passaporteacbrapinfe.usecase.impl.Pagamento;

interface

uses
  passaporteacbrapinfe.usecase.interfaces;

type
  TPagamento = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TPagamento.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

function TPagamento.Execute: iCommand;
begin
  Result := Self;
end;

class function TPagamento.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
