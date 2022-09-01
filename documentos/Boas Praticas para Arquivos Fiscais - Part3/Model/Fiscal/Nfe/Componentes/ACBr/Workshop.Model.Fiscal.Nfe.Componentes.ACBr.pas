unit Workshop.Model.Fiscal.Nfe.Componentes.ACBr;

interface

uses
  System.SysUtils, System.Classes,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass,
  ACBrBase,
  ACBrDFe,
  ACBrNFe,
  Workshop.Model.Fiscal.Nfe.Componentes.Interfaces,
  ACBrNFeNotasFiscais,
  pcnNFe;

type
  TdmACBrNFe = class(TDataModule, iModelFiscalNFeComponentes<TACBrNFe>)
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
  private
    { Private declarations }
    FNotaFiscal : NotaFiscal;
    FProduto : TDetCollectionItem;
    FDuplicata : TDupCollectionItem;
    FObsComp : TobsContCollectionItem;
    FObsFisco : TobsFiscoCollectionItem;
    FPagamento : TpagCollectionItem;
    FTranspVol : TVolCollectionItem;
  public
    { Public declarations }
    function _this : TACBrNFe;
    class function New : iModelFiscalNFeComponentes<TACBrNFe>;
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

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmACBrNFe }

function TdmACBrNFe.AddDuplicata: TDupCollectionItem;
begin
  FDuplicata := FNotaFiscal.NFe.Cobr.Dup.Add;
  Result := FDuplicata;
end;

function TdmACBrNFe.AddNotaFiscal: NotaFiscal;
begin
  FNotaFiscal := ACBrNFe1.NotasFiscais.Add;
  Result := FNotaFiscal;
end;

function TdmACBrNFe.AddObsComp: TobsContCollectionItem;
begin
  FObsComp := FNotaFiscal.NFe.InfAdic.obsCont.Add;
  Result := FObsComp;
end;

function TdmACBrNFe.AddObsFisco: TobsFiscoCollectionItem;
begin
  FObsFisco := FNotaFiscal.NFe.InfAdic.obsFisco.Add;
  Result := FObsFisco;
end;

function TdmACBrNFe.AddPagamento: TpagCollectionItem;
begin
  FPagamento := FNotaFiscal.NFe.pag.Add;
  Result := FPagamento;
end;

function TdmACBrNFe.AddProduto: TDetCollectionItem;
begin
  FProduto := FNotaFiscal.NFe.Det.New;
  Result := FProduto;
end;

function TdmACBrNFe.AddTranspVol: TVolCollectionItem;
begin
  FTranspVol := FNotaFiscal.NFe.Transp.Vol.Add;
  Result := FTranspVol;
end;

function TdmACBrNFe.Duplicata: TDupCollectionItem;
begin
  Result := FDuplicata;
end;

class function TdmACBrNFe.New: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  Result := Self.Create(nil);
end;

function TdmACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TdmACBrNFe.ObsComp: TobsContCollectionItem;
begin
  Result := FObsComp;
end;

function TdmACBrNFe.ObsFisco: TobsFiscoCollectionItem;
begin
  Result := FObsFisco;
end;

function TdmACBrNFe.Pagamento: TpagCollectionItem;
begin
  Result := FPagamento;
end;

function TdmACBrNFe.Produto: TDetCollectionItem;
begin
  Result := FProduto;
end;

function TdmACBrNFe.TranspVol: TVolCollectionItem;
begin
  Result := FTranspVol;
end;

function TdmACBrNFe._this: TACBrNFe;
begin
  Result := ACBrNFe1;
end;

end.
