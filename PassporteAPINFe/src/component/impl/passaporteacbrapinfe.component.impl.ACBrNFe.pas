unit passaporteacbrapinfe.component.impl.ACBrNFe;

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
  passaporteacbrapinfe.component.interfaces;

type
  TComponentACBrNFe = class(TInterfacedObject, iComponent<TACBrNFe>)
    private
      FACBrNFe: TACBrNFe;
      FACBrNFeDANFeRL: TACBrNFeDANFeRL;
      FAddNotaFiscal: NotaFiscal;
      FNotaFiscal: NotaFiscal;
      FAddProduto: TDetCollectionItem;
      FProduto: TDetCollectionItem;
      FAddDuplicata: TDupCollectionItem;
      FDuplicata: TDupCollectionItem;
      FAddPagamento: TpagCollectionItem;
      FPagamento:  TpagCollectionItem;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iComponent<TACBrNFe>;
      function This: TACBrNFe;
      function AddNotaFiscal: NotaFiscal;
      function NotaFiscal: NotaFiscal;
      function AddProduto: TDetCollectionItem;
      function Produto: TDetCollectionItem;
      function AddDuplicata: TDupCollectionItem;
      function Duplicata: TDupCollectionItem;
      function AddPagamento: TpagCollectionItem;
      function Pagamento:  TpagCollectionItem;
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

constructor TComponentACBrNFe.Create;
begin
  FACBrNFe := TACBrNFe.Create(nil);
  FACBrNFeDANFeRL := TACBrNFeDANFeRL.Create(nil);
  FACBrNFeDANFeRL.MostraPreview := False;
  FACBrNFeDANFeRL.MostraSetup := FAlse;
  FACBrNFeDANFeRL.MostraStatus := False;

  FACBrNFe.DANFE := FACBrNFeDANFeRL;
  FACBrNFeDANFeRL.ACBrNFe := FACBrNFe;
end;

destructor TComponentACBrNFe.Destroy;
begin

  inherited;
end;

function TComponentACBrNFe.Duplicata: TDupCollectionItem;
begin
  Result := FDuplicata;
end;

class function TComponentACBrNFe.New : iComponent<TACBrNFe>;
begin
  Result := Self.Create;
end;

function TComponentACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TComponentACBrNFe.Pagamento: TpagCollectionItem;
begin
  Result := FPagamento;
end;

function TComponentACBrNFe.Produto: TDetCollectionItem;
begin
  Result := FProduto;
end;

function TComponentACBrNFe.This: TAcbrNFe;
begin
  Result := FACBrNFe;
end;

end.
