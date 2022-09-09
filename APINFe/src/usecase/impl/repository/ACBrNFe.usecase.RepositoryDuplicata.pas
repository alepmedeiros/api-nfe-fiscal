unit ACBrNFe.usecase.RepositoryDuplicata;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces, ACBrNFe.entity.pedidos;

type
  TRepositoryDuplicata = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
    public
      constructor Create(Conf: iActionNFe);
      destructor Destroy; override;
      class function New(Conf: iActionNFe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryDuplicata.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryDuplicata.Destroy;
begin

  inherited;
end;

function TRepositoryDuplicata.Execute: iCommand;
var
  I: Integer;
begin
  Result := Self;

  for I := 0 to Pred(FConf.Entity.Pedido.CobrancaDuplicata.Count) do
  begin
    FConf.Component.ACBr.AddDuplicata;
    FConf.Component.ACBr.Duplicata.nDup := FConf.Entity.Pedido.CobrancaDuplicata[I].Numero;
    FConf.Component.ACBr.Duplicata.dVenc := FConf.Entity.Pedido.CobrancaDuplicata[I].Vencimento;
    FConf.Component.ACBr.Duplicata.vDup := FConf.Entity.Pedido.CobrancaDuplicata[I].Valor;
  end;
end;

class function TRepositoryDuplicata.New (Conf: iActionNFe) : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
