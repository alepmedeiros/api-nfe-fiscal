unit ACBrNFe.Component.impl.NFe;

interface

uses
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass,
  ACBrBase,
  ACBrDFe,
  ACBrNFe,
  ACBrNFeNotasFiscais,
  pcnNFe,
  ACBrNFe.Component.interfaces;

type
  TComponentACBrNFe = class(TInterfacedObject, iComponent<TACBrNFe>)
  private
    FACBrNFe: TACBrNFe;
    FACBrNFeDANFeRL: TACBrNFeDANFeRL;
    FNotaFiscal : NotaFiscal;
    FProduto : TDetCollectionItem;
    FDuplicata : TDupCollectionItem;
    FObsComp : TobsContCollectionItem;
    FObsFisco : TobsFiscoCollectionItem;
    FPagamento : TpagCollectionItem;
    FTranspVol : TVolCollectionItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iComponent<TACBrNFe>;
    function this : TACBrNFe;
    function AddNotaFiscal : NotaFiscal;
    function NotaFiscal : NotaFiscal;
    function AddProduto : TDetCollectionItem;
    function Produto : TDetCollectionItem;
    function AddDuplicata : TDupCollectionItem;
    function Duplicata : TDupCollectionItem;
    function AddObsComp : TobsContCollectionItem;
    function ObsComp : TobsContCollectionItem;
    function AddObsFisco : TobsFiscoCollectionItem;
    function ObsFisco : TobsFiscoCollectionItem;
    function AddPagamento : TpagCollectionItem;
    function Pagamento : TpagCollectionItem;
    function AddTranspVol : TVolCollectionItem;
    function TranspVol : TVolCollectionItem;
  end;

implementation

function TComponentACBrNFe.AddDuplicata: TDupCollectionItem;
begin
  FDuplicata := FNotaFiscal.NFe.Cobr.Dup.New;
  Result := FDuplicata;
end;

function TComponentACBrNFe.AddNotaFiscal: NotaFiscal;
begin
  FNotaFiscal := FACBrNFe.NotasFiscais.Add;
  Result := FNotaFiscal;
end;

function TComponentACBrNFe.AddObsComp: TobsContCollectionItem;
begin
  FObsComp := FNotaFiscal.NFe.InfAdic.obsCont.New;
  Result := FObsComp;
end;

function TComponentACBrNFe.AddObsFisco: TobsFiscoCollectionItem;
begin
  FObsFisco := FNotaFiscal.NFe.InfAdic.obsFisco.New;
  Result := FObsFisco;
end;

function TComponentACBrNFe.AddPagamento: TpagCollectionItem;
begin
  FPagamento := FNotaFiscal.NFe.pag.New;
  Result := FPagamento;
end;

function TComponentACBrNFe.AddProduto: TDetCollectionItem;
begin
  FProduto := FNotaFiscal.NFe.Det.New;
  Result := FProduto;
end;

function TComponentACBrNFe.AddTranspVol: TVolCollectionItem;
begin
  FTranspVol := FNotaFiscal.NFe.Transp.Vol.New;
  Result := FTranspVol;
end;

constructor TComponentACBrNFe.Create;
begin
  FACBrNFe:= TACBrNFe.Create(nil);
  FACBrNFeDANFeRL:= TACBrNFeDANFeRL.Create(nil);
  FACBrNFeDANFeRL.MostraPreview := False;
  FACBrNFeDANFeRL.MostraSetup := False;
  FACBrNFeDANFeRL.MostraStatus := False;

  FACBrNFe.DANFE := FACBrNFeDANFeRL;
  FACBrNFeDANFeRL.ACBrNFe := FACBrNFe;
end;

destructor TComponentACBrNFe.Destroy;
begin
  FACBrNFe.DisposeOf;
  FACBrNFeDANFeRL.DisposeOf;
  inherited;
end;

function TComponentACBrNFe.Duplicata: TDupCollectionItem;
begin
  Result := FDuplicata;
end;

class function TComponentACBrNFe.New: iComponent<TACBrNFe>;
begin
  Result := Self.Create;
end;

function TComponentACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TComponentACBrNFe.ObsComp: TobsContCollectionItem;
begin
  Result := FObsComp;
end;

function TComponentACBrNFe.ObsFisco: TobsFiscoCollectionItem;
begin
  Result := FObsFisco;
end;

function TComponentACBrNFe.Pagamento: TpagCollectionItem;
begin
  Result := FPagamento;
end;

function TComponentACBrNFe.Produto: TDetCollectionItem;
begin
  Result := FProduto;
end;

function TComponentACBrNFe.TranspVol: TVolCollectionItem;
begin
  Result := FTranspVol;
end;

function TComponentACBrNFe.this: TACBrNFe;
begin
  Result := FACBrNFe;
end;

end.
