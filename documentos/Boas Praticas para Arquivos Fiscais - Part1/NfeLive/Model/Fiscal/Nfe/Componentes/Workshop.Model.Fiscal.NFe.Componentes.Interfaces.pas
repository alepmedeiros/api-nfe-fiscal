unit Workshop.Model.Fiscal.NFe.Componentes.Interfaces;

interface

uses
  ACBrNFe, ACBrNFeNotasFiscais, pcnNFe;

type

  iModelFiscalNFeComponentes<T> = interface
    ['{6511CBAA-7358-46D8-BB90-B8F2C7522693}']
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

  iModelFiscalNfeFactory = interface
    ['{9AB6AAC2-B5DD-4D52-8662-BC7F4236EEA6}']
    function ACBr : iModelFiscalNFeComponentes<TACbrNFe>;
  end;

implementation

end.
