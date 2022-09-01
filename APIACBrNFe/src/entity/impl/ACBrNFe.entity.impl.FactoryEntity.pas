unit ACBrNFe.entity.impl.FactoryEntity;

interface

uses
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.impl.CobDup,
  ACBrNFe.entity.impl.CobFat, ACBrNFe.entity.impl.compra,
  ACBrNFe.entity.impl.Configuracao, ACBrNFe.entity.impl.TranspVol,
  ACBrNFe.entity.impl.Transp, ACBrNFe.entity.impl.Total,
  ACBrNFe.entity.impl.Prod, ACBrNFe.entity.impl.pagamentos,
  ACBrNFe.entity.impl.InfInterMed, ACBrNFe.entity.impl.InfAdicObsFisco,
  ACBrNFe.entity.impl.InfAdic, ACBrNFe.entity.impl.InfAdicCpl,
  ACBrNFe.entity.impl.Ide, ACBrNFe.entity.impl.exporta,
  ACBrNFe.entity.impl.Emitente, ACBrNFe.entity.impl.Dest;

type
  TFactoryEntity = class(TInterfacedObject, iFactoryEntity)
  private
    FConfiguracao: iConfiguracao;
    FIde: iIde;
    FEmitente: iEmitente;
    FDestinatario: iDest;
    FProduto: iProd;
    FTotal: iTotal;
    FTransportadora: iTransp;
    FTrasportadoraVolume: iTranspVol;
    FCobrancaFatura: iCobFat;
    FCobrancaDuplicata: iCobDup;
    FInfAdicionais: iInfAdic;
    FInfAdicCpl: iInfAdicCpl;
    FInfAdicObsFisco: iInfAdicObsFisco;
    FExporta: iExporta;
    FCompra: iCompra;
    FPagamento: iPagamento;
    FInfIntermed: iInfIntermed;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iFactoryEntity;
    function Configuracao: iConfiguracao;
    function Ide: iIde;
    function Emitente: iEmitente;
    function Destinatario: iDest;
    function Produto: iProd;
    function Total: iTotal;
    function Transportadora: iTransp;
    function TrasportadoraVolume: iTranspVol;
    function CobrancaFatura: iCobFat;
    function CobrancaDuplicata: iCobDup;
    function InfAdicionais: iInfAdic;
    function InfAdicCpl: iInfAdicCpl;
    function InfAdicObsFisco: iInfAdicObsFisco;
    function Exporta: iExporta;
    function Compra: iCompra;
    function Pagamento: iPagamento;
    function InfIntermed: iInfIntermed;
  end;

implementation

function TFactoryEntity.CobrancaDuplicata: iCobDup;
begin
  if not Assigned(FCobrancaDuplicata) then
    FCobrancaDuplicata := TCobDup.New;
  Result := FCobrancaDuplicata;
end;

function TFactoryEntity.CobrancaFatura: iCobFat;
begin
  if not Assigned(FCobrancaFatura) then
    FCobrancaFatura := TCobFat.New;
  Result := FCobrancaFatura;
end;

function TFactoryEntity.Compra: iCompra;
begin
  if not Assigned(FCompra) then
    FCompra := TCompra.New;
  Result := FCompra;
end;

function TFactoryEntity.Configuracao: iConfiguracao;
begin
  if not Assigned(FConfiguracao) then
    FConfiguracao := TConfiguracao.New;
  Result := FConfiguracao;
end;

constructor TFactoryEntity.Create;
begin

end;

function TFactoryEntity.Destinatario: iDest;
begin
  if not Assigned(FDestinatario) then
    FDestinatario := TDest.New;
  Result := FDestinatario;
end;

destructor TFactoryEntity.Destroy;
begin

  inherited;
end;

function TFactoryEntity.Emitente: iEmitente;
begin
  if not Assigned(FEmitente) then
    FEmitente := TEmitente.New;
  Result := FEmitente;
end;

function TFactoryEntity.Exporta: iExporta;
begin
  if not Assigned(FExporta) then
    FExporta := TExporta.New;
  Result := FExporta;
end;

function TFactoryEntity.Ide: iIde;
begin
  if not Assigned(FIde) then
    FIde := TIde.New;
  Result := FIde;
end;

function TFactoryEntity.InfAdicCpl: iInfAdicCpl;
begin
  if not Assigned(FInfAdicCpl) then
    FInfAdicCpl := TInfAdicCpl.New;
  Result := FInfAdicCpl;
end;

function TFactoryEntity.InfAdicionais: iInfAdic;
begin
  if not Assigned(FInfAdicionais) then
    FInfAdicionais := TInfAdic.New;
  Result := FInfAdicionais;
end;

function TFactoryEntity.InfAdicObsFisco: iInfAdicObsFisco;
begin
  if not Assigned(FInfAdicObsFisco) then
    FInfAdicObsFisco := TInfAdicObsFisco.New;
  Result := FInfAdicObsFisco;
end;

function TFactoryEntity.InfIntermed: iInfIntermed;
begin
  if not Assigned(FInfIntermed) then
    FInfIntermed := TInfIntermed.New;
  Result := FInfIntermed;
end;

class function TFactoryEntity.New: iFactoryEntity;
begin
  Result := Self.Create;
end;

function TFactoryEntity.Pagamento: iPagamento;
begin
  if not Assigned(FPagamento) then
    FPagamento := TPagamento.New;
  Result := FPagamento;
end;

function TFactoryEntity.Produto: iProd;
begin
  if not Assigned(FProduto) then
    FProduto := TProd.New;
  Result := FProduto;
end;

function TFactoryEntity.Total: iTotal;
begin
  if not Assigned(FTotal) then
    FTotal := TTotal.New;
  Result := FTotal;
end;

function TFactoryEntity.Transportadora: iTransp;
begin
  if not Assigned(FTransportadora) then
    FTransportadora := TTransp.New;
  Result := FTransportadora;
end;

function TFactoryEntity.TrasportadoraVolume: iTranspVol;
begin
  if not Assigned(FTrasportadoraVolume) then
    FTrasportadoraVolume := TTranspVol.New;
  Result := FTrasportadoraVolume;
end;

end.
