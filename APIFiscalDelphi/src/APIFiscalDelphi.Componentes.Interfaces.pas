unit APIFiscalDelphi.Componentes.Interfaces;

interface

uses
  ACBrNFe, ACBrNFeNotasFiscais, pcnNFe;

type
  iNFeComponentes<T> = interface
    function _this : T;
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

  iNfeFactory = interface
    function ACBr : iNFeComponentes<TACbrNFe>;
  end;

implementation

end.
