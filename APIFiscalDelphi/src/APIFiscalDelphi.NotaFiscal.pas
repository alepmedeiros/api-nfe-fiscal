unit APIFiscalDelphi.NotaFiscal;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TNotaFiscal = class(TInterfacedObject, iNotaFiscal)
    private
      FGeral : iGeral;
      FEmitente  : iEmitente;
      FIde  : iIde;
      FDest  : iDest;
      FProd  : iProd;
      FTotal  : iTotal;
      FTransp  : iTransp;
      FTranspVol  : iTranspVol;
      FCobrFat  : iCobrFat;
      FCobrDup  : iCobrDup;
      FInfAdic  : iInfAdic;
      FInfAdicObsFisco  : iInfAdicObsFisco;
      FInfAdicObsComp  : iInfAdicObsComp;
      FExporta  : iExporta;
      FPagamento  : iPagamento;
      FCompra : iCompra;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iNotaFiscal;
      function Geral : iGeral;
      function Emitente  : iEmitente;
      function Ide  : iIde;
      function Dest  : iDest;
      function Prod  : iProd;
      function Total  : iTotal;
      function Transp  : iTransp;
      function TranspVol  : iTranspVol;
      function CobrFat  : iCobrFat;
      function CobrDup  : iCobrDup;
      function InfAdic  : iInfAdic;
      function InfAdicObsFisco  : iInfAdicObsFisco;
      function InfAdicObsComp  : iInfAdicObsComp;
      function Exporta  : iExporta;
      function Pagamento  : iPagamento;
      function Compra : iCompra;
      function GerarNFe : iNotaFiscal;
      function EnviarNFe : iNotaFiscal;
  end;

implementation

function TNotaFiscal.CobrDup: iCobrDup;
begin
  if not Assigned(FCobrDup) then
    FCobrDup := TCobrDup.New;
  Result := FCobrDup;
end;

function TNotaFiscal.CobrFat: iCobrFat;
begin
  if not Assigned(FCobrFat) then
    FCobrFat := TCobrFat.New;
  Result := FCobrFat;
end;

function TNotaFiscal.Compra: iCompra;
begin
  if not Assigned(FCompra) then
    FCompra := TCompra.New;
  Result := FCompra;
end;

constructor TNotaFiscal.Create;
begin

end;

function TNotaFiscal.Dest: iDest;
begin
  if not Assigned(FDest) then
    FDest := TDest.New;
  Result := FDest;
end;

destructor TNotaFiscal.Destroy;
begin

  inherited;
end;

function TNotaFiscal.Emitente: iEmitente;
begin
  if not Assigned(FEmitente) then
    FEmitente := TEmitente.New;
  Result := FEmitente;
end;

function TNotaFiscal.EnviarNFe: iNotaFiscal;
begin
  Result := Self;
end;

function TNotaFiscal.Exporta: iExporta;
begin
  if not Assigned(FExporta) then
    FExporta := TExporta.New;
  Result := FExporta;
end;

function TNotaFiscal.Geral: iGeral;
begin
  if not Assigned(FGeral) then
    FGeral := TGeral.New;
  Result := FGeral;
end;

function TNotaFiscal.GerarNFe: iNotaFiscal;
begin
  Result := Self;
end;

function TNotaFiscal.Ide: iIde;
begin
  if not Assigned(FIde) then
    FIde := TIde.New;
  Result := FIde;
end;

function TNotaFiscal.InfAdic: iInfAdic;
begin
  if not Assigned(FInfAdic) then
    FInfAdic := TInfAdic.New;
  Result := FInfAdic;
end;

function TNotaFiscal.InfAdicObsComp: iInfAdicObsComp;
begin
  if not Assigned(FInfAdicObsComp) then
    FInfAdicObsComp := TInfAdicObsComp.New;
  Result := FInfAdicObsComp;
end;

function TNotaFiscal.InfAdicObsFisco: iInfAdicObsFisco;
begin
  if not Assigned(FInfAdicObsFisco) then
    FInfAdicObsFisco := TInfAdicObsFisco.New;
  Result := FInfAdicObsFisco;
end;

class function TNotaFiscal.New : iNotaFiscal;
begin
  Result := Self.Create;
end;

function TNotaFiscal.Pagamento: iPagamento;
begin
  if not Assigned(FPagamento) then
    FPagamento := TPagamento.New;
  Result := FPagamento;
end;

function TNotaFiscal.Prod: iProd;
begin
  if not Assigned(FProd) then
    FProd := TProd.New;
  Result := FProd;
end;

function TNotaFiscal.Total: iTotal;
begin
  if not Assigned(FTotal) then
    FTotal := TTotal.New;
  Result := FTotal;
end;

function TNotaFiscal.Transp: iTransp;
begin
  if not Assigned(FTransp) then
    FTransp := TTransp.New;
  Result := FTransp;
end;

function TNotaFiscal.TranspVol: iTranspVol;
begin
  if not Assigned(FTranspVol) then
    FTranspVol := TTranspVol.New;
  Result := FTranspVol;
end;

end.
