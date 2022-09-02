unit ACBrNFe.Component.interfaces;

interface

uses
  ACBrNFe,
  ACBrNFeNotasFiscais,
  pcnNFe,
  System.Classes;

type
  iComponent<T> = interface
    function this: T;
    function AddNotaFiscal: NotaFiscal;
    function NotaFiscal: NotaFiscal;
    function AddProduto: TDetCollectionItem;
    function Produto: TDetCollectionItem;
    function AddDuplicata: TDupCollectionItem;
    function Duplicata: TDupCollectionItem;
    function AddObsComp: TobsContCollectionItem;
    function ObsComp: TobsContCollectionItem;
    function AddObsFisco: TobsFiscoCollectionItem;
    function ObsFisco: TobsFiscoCollectionItem;
    function AddPagamento: TpagCollectionItem;
    function Pagamento: TpagCollectionItem;
    function AddTranspVol: TVolCollectionItem;
    function TranspVol: TVolCollectionItem;
  end;

  iAWSS3 = interface
    function Push(Value: String): String;
  end;

  iComponentFactory = interface
    function ACBr: iComponent<TACbrNFe>;
    function AWS: iAWSS3;
  end;

implementation

end.
