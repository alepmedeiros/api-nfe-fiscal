unit passaporteacbrapinfe.adapter.impl.elementos;

interface

uses
  passaporteacbrapinfe.adapter.interfaces;

type
  TElementos = class(TInterfacedObject, iElementos)
    private
      FValorProduto: Double;
      FValorFrete: Double;
      FValorSeguro: Double;
      FValorDespesas: Double;
      FValorDesconto: Double;
      FValorIPI: Double;
      FAliquotaIPI: Double;
      FQuantidadeIPITributada: Double;
      FAliquotaICMS: Double;
      FPercentualReducao: Double;
      FAliquotaST: Double;
      FPercentualReducaoBaseST: Double;
      FPercentualMVA: Double;
      FPercentualCreditoSN: Double;
      FAliquotaPIS: Double;
      FValorPIS: Double;
      FQuantidadePISTributada: Double;
      FAliquotaCOFINS: Double;
      FValorCOFINS: Double;
      FQuantidadeCOFINSTributada: Double;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iElementos;
      function ValorProduto(Value: Double): iElementos; overload;
      function ValorProduto: Double; overload;
      function ValorFrete(Value: Double): iElementos; overload;
      function ValorFrete: Double; overload;
      function ValorSeguro(Value: Double): iElementos; overload;
      function ValorSeguro: Double; overload;
      function ValorDespesas(Value: Double): iElementos; overload;
      function ValorDespesas: Double; overload;
      function ValorDesconto(Value: Double): iElementos; overload;
      function ValorDesconto: Double; overload;
      function ValorIPI(Value: Double): iElementos; overload;
      function ValorIPI: Double; overload;
      function AliquotaIPI(Value: Double): iElementos; overload;
      function AliquotaIPI: Double; overload;
      function QuantidadeIPITributada(Value: Double): iElementos; overload;
      function QuantidadeIPITributada: Double; overload;
      function AliquotaICMS(Value: Double): iElementos; overload;
      function AliquotaICMS: Double; overload;
      function PercentualReducao(Value: Double): iElementos; overload;
      function PercentualReducao: Double; overload;
      function AliquotaST(Value: Double): iElementos; overload;
      function AliquotaST: Double; overload;
      function PercentualReducaoBaseST(Value: Double): iElementos; overload;
      function PercentualReducaoBaseST: Double; overload;
      function PercentualMVA(Value: Double): iElementos; overload;
      function PercentualMVA: Double; overload;
      function PercentualCreditoSN(Value: Double): iElementos; overload;
      function PercentualCreditoSN: Double; overload;
      function AliquotaPIS(Value: Double): iElementos; overload;
      function AliquotaPIS: Double; overload;
      function ValorPIS(Value: Double): iElementos; overload;
      function ValorPIS: Double; overload;
      function QuantidadePISTributada(Value: Double): iElementos; overload;
      function QuantidadePISTributada: Double; overload;
      function AliquotaCOFINS(Value: Double): iElementos; overload;
      function AliquotaCOFINS: Double; overload;
      function ValorCOFINS(Value: Double): iElementos; overload;
      function ValorCOFINS: Double; overload;
      function QuantidadeCOFINSTributada(Value: Double): iElementos; overload;
      function QuantidadeCOFINSTributada: Double; overload;
  end;

implementation

function TElementos.AliquotaCOFINS(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaCOFINS := Value;
end;

function TElementos.AliquotaCOFINS: Double;
begin
  Result := FAliquotaCOFINS;
end;

function TElementos.AliquotaICMS: Double;
begin
  Result := FAliquotaICMS;
end;

function TElementos.AliquotaICMS(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaICMS := Value;
end;

function TElementos.AliquotaIPI(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaIPI := Value;
end;

function TElementos.AliquotaIPI: Double;
begin
  Result := FAliquotaIPI;
end;

function TElementos.AliquotaPIS(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaPIS := Value;
end;

function TElementos.AliquotaPIS: Double;
begin
  Result := FAliquotaPIS;
end;

function TElementos.AliquotaST: Double;
begin
  Result := FAliquotaST;
end;

function TElementos.AliquotaST(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaST := Value;
end;

constructor TElementos.Create;
begin
  FValorProduto:= 0;
  FValorFrete:= 0;
  FValorSeguro:= 0;
  FValorDespesas:= 0;
  FValorDesconto:= 0;
  FValorIPI:= 0;
  FAliquotaIPI:= 0;
  FQuantidadeIPITributada:= 0;
  FAliquotaICMS:= 0;
  FPercentualReducao:= 0;
  FAliquotaST:= 0;
  FPercentualReducaoBaseST:= 0;
  FPercentualMVA:= 0;
  FPercentualCreditoSN:= 0;
  FAliquotaPIS:= 0;
  FValorPIS:= 0;
  FQuantidadePISTributada:= 0;
  FAliquotaCOFINS:= 0;
  FValorCOFINS:= 0;
  FQuantidadeCOFINSTributada:= 0;
end;

destructor TElementos.Destroy;
begin

  inherited;
end;

class function TElementos.New : iElementos;
begin
  Result := Self.Create;
end;

function TElementos.PercentualCreditoSN: Double;
begin
  Result := FPercentualCreditoSN;
end;

function TElementos.PercentualCreditoSN(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualCreditoSN := Value;
end;

function TElementos.PercentualMVA(Value: Double): iElementos;
begin
   Result := Self;
  FPercentualMVA := Value;
end;

function TElementos.PercentualMVA: Double;
begin
  Result := FPercentualMVA;
end;

function TElementos.PercentualReducao: Double;
begin
  Result := FPercentualReducao;
end;

function TElementos.PercentualReducao(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualReducao := Value;
end;

function TElementos.PercentualReducaoBaseST: Double;
begin
  Result := FPercentualReducaoBaseST;
end;

function TElementos.PercentualReducaoBaseST(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualReducaoBaseST := Value;
end;

function TElementos.QuantidadeCOFINSTributada(Value: Double): iElementos;
begin
  Result := Self;
  FQuantidadeCOFINSTributada := Value;
end;

function TElementos.QuantidadeCOFINSTributada: Double;
begin
  Result := FQuantidadeCOFINSTributada;
end;

function TElementos.QuantidadeIPITributada: Double;
begin
  Result := FQuantidadeIPITributada;
end;

function TElementos.QuantidadeIPITributada(Value: Double): iElementos;
begin
   Result := Self;
  FQuantidadeIPITributada := Value;
end;

function TElementos.QuantidadePISTributada(Value: Double): iElementos;
begin
  Result := Self;
  FQuantidadeIPITributada := Value;
end;

function TElementos.QuantidadePISTributada: Double;
begin
  Result := FQuantidadePISTributada;
end;

function TElementos.ValorCOFINS: Double;
begin
  Result := FValorCOFINS;
end;

function TElementos.ValorCOFINS(Value: Double): iElementos;
begin
  Result := Self;
  FValorCOFINS := Value;
end;

function TElementos.ValorDesconto(Value: Double): iElementos;
begin
  Result := Self;
  FValorDesconto := Value;
end;

function TElementos.ValorDesconto: Double;
begin
  Result := FValorDesconto;
end;

function TElementos.ValorDespesas: Double;
begin
  Result := FValorDespesas;
end;

function TElementos.ValorDespesas(Value: Double): iElementos;
begin
  Result := Self;
  FValorDespesas := Value;
end;

function TElementos.ValorFrete(Value: Double): iElementos;
begin
  Result := Self;
  FValorFrete := Value;
end;

function TElementos.ValorFrete: Double;
begin
  Result := FValorFrete;
end;

function TElementos.ValorIPI: Double;
begin
  Result := FValorIPI;
end;

function TElementos.ValorIPI(Value: Double): iElementos;
begin
  Result := Self;
  FValorIPI := Value;
end;

function TElementos.ValorPIS(Value: Double): iElementos;
begin
  Result := Self;
  FValorPIS := Value;
end;

function TElementos.ValorPIS: Double;
begin
  Result := FValorPIS;
end;

function TElementos.ValorProduto(Value: Double): iElementos;
begin
  Result := Self;
  FValorProduto := Value;
end;

function TElementos.ValorProduto: Double;
begin
  Result := FValorProduto;
end;

function TElementos.ValorSeguro(Value: Double): iElementos;
begin
  Result := Self;
  FValorSeguro := Value;
end;

function TElementos.ValorSeguro: Double;
begin
  Result := FValorSeguro;
end;

end.
