unit ACBrNFe.usecase.RepositoryDuplicata;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces, ACBrNFe.entity.pedidos;

type
  TRepositoryDuplicata = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
      FPedido: TPedido;
    public
      constructor Create(Conf: iActionNFe; Pedido: TPedido);
      destructor Destroy; override;
      class function New(Conf: iActionNFe; Pedido: TPedido) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryDuplicata.Create(Conf: iActionNFe; Pedido: TPedido);
begin
  FConf := Conf;
  FPedido := Pedido;
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

  for I := 0 to Pred(FPedido.CobrancaDuplicata.Count) do
  begin
    FConf.Component.ACBr.AddDuplicata;
    FConf.Component.ACBr.Duplicata.nDup := FPedido.CobrancaDuplicata[I].Numero;
    FConf.Component.ACBr.Duplicata.dVenc := FPedido.CobrancaDuplicata[I].Vencimento;
    FConf.Component.ACBr.Duplicata.vDup := FPedido.CobrancaDuplicata[I].Valor;
  end;
end;

class function TRepositoryDuplicata.New (Conf: iActionNFe; Pedido: TPedido) : iCommand;
begin
  Result := Self.Create(Conf, Pedido);
end;

end.
