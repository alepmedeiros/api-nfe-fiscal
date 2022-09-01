unit Workshop.Model.Fiscal.Nfe.Componentes.Interfaces;

interface

uses
  Classes, ACBrNFe, ACBrNFeNotasFiscais, pcnNFe;

type
  iModelFiscalNfeComponentes<T> = interface;
  iThis<T> = interface;

  IModelFiscalNFeFactory = interface
    ['{C1992B99-B36B-410D-8ED1-5C46FF6C0275}']
    function ACBr : iModelFiscalNfeComponentes<TACBrNFe>;
  end;

  iModelFiscalNfeComponentes<T> = interface
    ['{E146E5FF-98E5-476A-A8C7-74B7BCDA7B89}']
    function _this : T;
    function AddNotaFiscal : NotaFiscal;
    function NotaFiscal : NotaFiscal;
    function AddProduto : TDetCollectionItem;
    function Produto : TDetCollectionItem;
    function AddTranspVol : TVolCollectionItem;
    function TranspVol : TVolCollectionItem;
    function AddDuplicata : TDupCollectionItem;
    function Duplicata : TDupCollectionItem;
    function AddObsComp : TobsContCollectionItem;
    function ObsComp : TobsContCollectionItem;
    function AddObsFisco : TobsFiscoCollectionItem;
    function ObsFisco : TobsFiscoCollectionItem;
    function AddPagamento : TpagCollectionItem;
    function Pagamento : TpagCollectionItem;
  end;

  iThis<T> = interface
    function _this : T;
  end;

implementation

end.
