unit ACBrNFe.adapter.impl.adapternfe;

interface

uses
  ACBrNFe.adapter.interfaces,
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.impl.FactoryEntity,
  ACBrNFe.adapter.pedidos;

type
  TAdapterNFe = class(TInterfacedObject, iAdapterNFe)
  private
    FEntity: iFactoryEntity;
    FPedido: TPedido;
    procedure ObjDuplicataToInt;
    procedure ObjFaturaToInt;
    procedure ObjCombustivelToInt;
  public
    constructor Create(Pedido: TPedido);
    destructor Destroy; override;
    class function New(Pedido: TPedido): iAdapterNFe;
    function Converter: iFactoryEntity;
  end;

implementation

function TAdapterNFe.Converter: iFactoryEntity;
begin
  Result := FEntity;
end;

constructor TAdapterNFe.Create(Pedido: TPedido);
begin
  FPedido := Pedido;
  FEntity := TFactoryEntity.New;
end;

destructor TAdapterNFe.Destroy;
begin

  inherited;
end;

class function TAdapterNFe.New(Pedido: TPedido): iAdapterNFe;
begin
  Result := Self.Create(Pedido);
end;

procedure TAdapterNFe.ObjCombustivelToInt;
var
  I: Integer;
begin
  for I := 0 to Pred(FPedido.Produto.Count) do
    FEntity
      .Produto
        .Combustivel
          .cProdANP(FPedido.Produto[I].Combustivel.CodigoANP)
          .CODIF(FPedido.Produto[I].Combustivel.CodIF)
          .qTemp(FPedido.Produto[I].Combustivel.QTemp)
          .UFcons(FPedido.Produto[I].Combustivel.UFcons)
          .CIDE
            .qBCprod(FPedido.Produto[I].Combustivel.CIDE.QBCProd)
            .vAliqProd(FPedido.Produto[I].Combustivel.CIDE.AliqProd)
            .vCIDE(FPedido.Produto[I].Combustivel.CIDE.VCIDE)
          .Build
          .ICMS
            .vBCICMS(FPedido.Produto[I].Combustivel.ICMS.vBCICMS)
            .vICMS(FPedido.Produto[I].Combustivel.ICMS.vICMS)
            .vBCICMSST(FPedido.Produto[I].Combustivel.ICMS.vBCICMSST)
            .vICMSST(FPedido.Produto[I].Combustivel.ICMS.vICMSST)
          .Build
        .Build
      .Build;
end;

procedure TAdapterNFe.ObjDuplicataToInt;
var
  I: Integer;
begin
  for I := 0 to Pred(FPedido.CobrancaDuplicata.Count) do
    FEntity
      .CobrancaDuplicata
        .nDup(FPedido.CobrancaDuplicata[I].Numero)
        .dVenc(FPedido.CobrancaDuplicata[I].Vencimento)
        .vDup(FPedido.CobrancaDuplicata[I].Valor)
        .Build;
end;

procedure TAdapterNFe.ObjFaturaToInt;
begin
  FEntity
    .CobrancaFatura
      .nFat(FPedido.CobrancaFat.Numero)
      .vOrig(FPedido.CobrancaFat.vOrig)
      .vDesc(FPedido.CobrancaFat.vDesc)
      .vLiq(FPedido.CobrancaFat.vLiq)
  .Build;
end;

end.
