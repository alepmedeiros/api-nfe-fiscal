unit ACBrNFe.adapter.impl.elementos;

interface

uses
  System.SysUtils,
  ACBrNFe.adapter.interfaces;

type
  TElementos = class(TInterfacedObject, iElementos)
    private
      FValorProduto: Double;
      FVAlorFrente: Double;
      FValorSeguro: Double;
      FValorDespesas: Double;
      FValorDesconto: Double;
      FValorIPI: Double;
      FAliquotaICMS: Double;
      FPercentualReducao: Double;
      FPercentualDeferimento: Double;
      FAliquotaST: Double;
      FPercReducaoBaseST: Double;
      FPercentualMVA: Double;
      FPercentualCreditoSN: Double;
      FAliquotaIPI: Double;
      FValorIPIUN: Double;
      FQuantidadeIPITributada: Double;
      FAliquotaPIS: Double;
      FValorPISUN: Double;
      FQuantidadePISTributada: Double;
      FAliquotaCOFINS: Double;
      FValorCOFINSUN: Double;
      FQuantidadeCOFINSTrib: Double;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iElementos;
      function ValorProduto(Value: Double): iElementos; overload;
      function ValorProduto: Double; overload;
      function VAlorFrente(Value: Double): iElementos; overload;
      function VAlorFrente: Double; overload;
      function ValorSeguro(Value: Double): iElementos; overload;
      function ValorSeguro: Double; overload;
      function ValorDespesas(Value: Double): iElementos; overload;
      function ValorDespesas: Double; overload;
      function ValorDesconto(Value: Double): iElementos; overload;
      function ValorDesconto: Double; overload;
      function ValorIPI(Value: Double): iElementos; overload;
      function ValorIPI: Double; overload;
      function AliquotaICMS(Value: Double): iElementos; overload;
      function AliquotaICMS: Double; overload;
      function PercentualReducao(Value: Double): iElementos; overload;
      function PercentualReducao: Double; overload;
      function PercentualDeferimento(Value: Double): iElementos; overload;
      function PercentualDeferimento: Double; overload;
      function AliquotaST(Value: Double): iElementos; overload;
      function AliquotaST: Double; overload;
      function PercReducaoBaseST(Value: Double): iElementos; overload;
      function PercReducaoBaseST: Double; overload;
      function PercentualMVA(Value: Double): iElementos; overload;
      function PercentualMVA: Double; overload;
      function PercentualCreditoSN(Value: Double): iElementos; overload;
      function PercentualCreditoSN: Double; overload;
      function AliquotaIPI(Value: Double): iElementos; overload;
      function AliquotaIPI: Double; overload;
      function ValorIPIUN(Value: Double): iElementos; overload;
      function ValorIPIUN: Double; overload;
      function QuantidadeIPITributada(Value: Double): iElementos; overload;
      function QuantidadeIPITributada: Double; overload;
      function AliquotaPIS(Value: Double): iElementos; overload;
      function AliquotaPIS: Double; overload;
      function ValorPISUN(Value: Double): iElementos; overload;
      function ValorPISUN: Double; overload;
      function QuantidadePISTributada(Value: Double): iElementos; overload;
      function QuantidadePISTributada: Double; overload;
      function AliquotaCOFINS(Value: Double): iElementos; overload;
      function AliquotaCOFINS: Double; overload;
      function ValorCOFINSUN(Value: Double): iElementos; overload;
      function ValorCOFINSUN: Double; overload;
      function QuantidadeCOFINSTrib(Value: Double): iElementos; overload;
      function QuantidadeCOFINSTrib: Double; overload;
  end;

implementation

function TElementos.AliquotaCOFINS: Double;
begin
  Result := FAliquotaCOFINS;
end;

function TElementos.AliquotaCOFINS(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FAliquotaCOFINS := Value;
end;

function TElementos.AliquotaICMS: Double;
begin
  Result := FAliquotaICMS;
end;

function TElementos.AliquotaICMS(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FAliquotaICMS := Value;
end;

function TElementos.AliquotaIPI(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FAliquotaIPI := Value;
end;

function TElementos.AliquotaIPI: Double;
begin
  Result := FAliquotaIPI;
end;

function TElementos.AliquotaPIS(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FAliquotaIPI := Value;
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
  if not Value.IsNan then
    FAliquotaST := Value;
end;

constructor TElementos.Create;
begin
  FValorProduto := 0;
  FVAlorFrente:= 0;
  FValorSeguro:= 0;
  FValorDespesas:= 0;
  FValorDesconto:= 0;
  FValorIPI:= 0;
  FAliquotaICMS:= 0;
  FPercentualReducao:= 0;
  FPercentualDeferimento:= 0;
  FAliquotaST:= 0;
  FPercReducaoBaseST:= 0;
  FPercentualMVA:= 0;
  FPercentualCreditoSN:= 0;
  FAliquotaIPI:= 0;
  FValorIPIUN:= 0;
  FQuantidadeIPITributada:= 0;
  FAliquotaPIS:= 0;
  FValorPISUN:= 0;
  FQuantidadePISTributada:= 0;
  FAliquotaCOFINS:= 0;
  FValorCOFINSUN:= 0;
  FQuantidadeCOFINSTrib:= 0;
end;

destructor TElementos.Destroy;
begin

  inherited;
end;

class function TElementos.New : iElementos;
begin
  Result := Self.Create;
end;

function TElementos.PercentualCreditoSN(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FPercentualCreditoSN := Value;
end;

function TElementos.PercentualCreditoSN: Double;
begin
  Result := FPercentualCreditoSN;
end;

function TElementos.PercentualDeferimento(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FPercentualDeferimento := Value;
end;

function TElementos.PercentualDeferimento: Double;
begin
  Result := FPercentualDeferimento;
end;

function TElementos.PercentualMVA: Double;
begin
  Result := FPercentualMVA;
end;

function TElementos.PercentualMVA(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FPercentualMVA := Value;
end;

function TElementos.PercentualReducao(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FPercentualReducao := Value;
end;

function TElementos.PercentualReducao: Double;
begin
  Result := FPercentualReducao;
end;

function TElementos.PercReducaoBaseST: Double;
begin
  Result := FPercReducaoBaseST;
end;

function TElementos.PercReducaoBaseST(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FPercReducaoBaseST := Value;
end;

function TElementos.QuantidadeCOFINSTrib: Double;
begin
  Result := FQuantidadeCOFINSTrib;
end;

function TElementos.QuantidadeCOFINSTrib(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FQuantidadeCOFINSTrib := Value;
end;

function TElementos.QuantidadeIPITributada: Double;
begin
  Result := FQuantidadeIPITributada;
end;

function TElementos.QuantidadeIPITributada(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FQuantidadeIPITributada := Value;
end;

function TElementos.QuantidadePISTributada(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FQuantidadePISTributada := Value;
end;

function TElementos.QuantidadePISTributada: Double;
begin
  Result := FQuantidadePISTributada;
end;

function TElementos.ValorCOFINSUN(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorCOFINSUN := Value;
end;

function TElementos.ValorCOFINSUN: Double;
begin
  Result := FValorCOFINSUN;
end;

function TElementos.ValorDesconto: Double;
begin
  Result := FValorDesconto;
end;

function TElementos.ValorDesconto(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorDesconto := Value;
end;

function TElementos.ValorDespesas(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorDespesas := Value;
end;

function TElementos.ValorDespesas: Double;
begin
  Result := FValorDespesas;
end;

function TElementos.VAlorFrente(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FVAlorFrente := Value;
end;

function TElementos.VAlorFrente: Double;
begin
  Result := FVAlorFrente;
end;

function TElementos.ValorIPI(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorIPI := Value;
end;

function TElementos.ValorIPI: Double;
begin
  Result := FValorIPI;
end;

function TElementos.ValorIPIUN(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorIPIUN := Value;
end;

function TElementos.ValorIPIUN: Double;
begin
  Result := FValorIPIUN;
end;

function TElementos.ValorPISUN: Double;
begin
  Result := FValorPISUN;
end;

function TElementos.ValorPISUN(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorPISUN := Value;
end;

function TElementos.ValorProduto(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorProduto := Value;
end;

function TElementos.ValorProduto: Double;
begin
  Result := ValorProduto;
end;

function TElementos.ValorSeguro: Double;
begin
  Result := FValorSeguro;
end;

function TElementos.ValorSeguro(Value: Double): iElementos;
begin
  Result := Self;
  if not Value.IsNan then
    FValorSeguro := Value;
end;

end.
