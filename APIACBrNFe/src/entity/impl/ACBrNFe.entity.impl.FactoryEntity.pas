unit ACBrNFe.entity.impl.FactoryEntity;

interface

uses
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.impl.CobDup,
  ACBrNFe.entity.impl.CobFat,
  ACBrNFe.entity.impl.compra,
  ACBrNFe.entity.impl.Configuracao,
  ACBrNFe.entity.impl.TranspVol,
  ACBrNFe.entity.impl.Transp,
  ACBrNFe.entity.impl.Total,
  ACBrNFe.entity.impl.Prod,
  ACBrNFe.entity.impl.pagamentos,
  ACBrNFe.entity.impl.InfInterMed,
  ACBrNFe.entity.impl.InfAdicObsFisco,
  ACBrNFe.entity.impl.InfAdic,
  ACBrNFe.entity.impl.InfAdicCpl,
  ACBrNFe.entity.impl.Ide,
  ACBrNFe.entity.impl.exporta,
  ACBrNFe.entity.impl.Emitente,
  ACBrNFe.entity.impl.Dest;

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
    function exporta: iExporta;
    function compra: iCompra;
    function Pagamento: iPagamento;
    function InfInterMed: iInfIntermed;
    function Build: iFactoryEntity;
  end;

implementation

function TFactoryEntity.Build: iFactoryEntity;
begin
  Result := Self;
end;

function TFactoryEntity.CobrancaDuplicata: iCobDup;
begin
  Result := FCobrancaDuplicata;
end;

function TFactoryEntity.CobrancaFatura: iCobFat;
begin
  Result := FCobrancaFatura;
end;

function TFactoryEntity.compra: iCompra;
begin
  Result := FCompra;
end;

function TFactoryEntity.Configuracao: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TFactoryEntity.Create;
begin
  FConfiguracao := TConfiguracao.New;
  FIde := TIde.New;
  FEmitente := TEmitente.New;
  FDestinatario := TDest.New;
  FProduto := TProd.New;
  FExporta := TExporta.New;
  FInfAdicCpl := TInfAdicCpl.New;
  FInfAdicionais := TInfAdic.New;
  FCompra := TCompra.New;
  FInfAdicObsFisco := TInfAdicObsFisco.New;
  FInfIntermed := TInfIntermed.New;
  FPagamento := TPagamento.New;
  FTotal := TTotal.New;
  FTransportadora := TTransp.New;
  FTrasportadoraVolume := TTranspVol.New;
  FCobrancaFatura := TCobFat.New;
  FCobrancaDuplicata := TCobDup.New;
end;

function TFactoryEntity.Destinatario: iDest;
begin
  Result := FDestinatario;
end;

destructor TFactoryEntity.Destroy;
begin

  inherited;
end;

function TFactoryEntity.Emitente: iEmitente;
begin
  Result := FEmitente;
end;

function TFactoryEntity.exporta: iExporta;
begin
  Result := FExporta;
end;

function TFactoryEntity.Ide: iIde;
begin
  Result := FIde;
end;

function TFactoryEntity.InfAdicCpl: iInfAdicCpl;
begin
  Result := FInfAdicCpl;
end;

function TFactoryEntity.InfAdicionais: iInfAdic;
begin
  Result := FInfAdicionais;
end;

function TFactoryEntity.InfAdicObsFisco: iInfAdicObsFisco;
begin
  Result := FInfAdicObsFisco;
end;

function TFactoryEntity.InfInterMed: iInfIntermed;
begin
  Result := FInfIntermed;
end;

class function TFactoryEntity.New: iFactoryEntity;
begin
  Result := Self.Create;
end;

function TFactoryEntity.Pagamento: iPagamento;
begin
  Result := FPagamento;
end;

function TFactoryEntity.Produto: iProd;
begin
  Result := FProduto;
end;

function TFactoryEntity.Total: iTotal;
begin
  Result := FTotal;
end;

function TFactoryEntity.Transportadora: iTransp;
begin
  Result := FTransportadora;
end;

function TFactoryEntity.TrasportadoraVolume: iTranspVol;
begin
  Result := FTrasportadoraVolume;
end;

end.
