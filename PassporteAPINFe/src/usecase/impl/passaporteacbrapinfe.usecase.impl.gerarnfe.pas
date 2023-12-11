unit passaporteacbrapinfe.usecase.impl.gerarnfe;

interface

uses
  passaporteacbrapinfe.usecase.interfaces, ACBrNFe.entity.ResponseNFe;

type
  TGerarNFe = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TGerarNFe.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TGerarNFe.Destroy;
begin

  inherited;
end;

function TGerarNFe.Execute: iCommand;
var
  lResp: TResponseNFE;
begin
  Result := Self;

  lResp := TResponseNFe.Create;

  FAcoes.Entity.ResponseNfe(lResp);
end;

class function TGerarNFe.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
