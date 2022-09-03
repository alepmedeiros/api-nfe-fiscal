unit passaporteacbrapinfe.component.interfaces;

interface

uses
  ACBrNFe,
  ACBrNFeNotasFiscais,
  pcnNFe,
  System.Classes;

type
  iComponent<T> = interface
    function This: T;
    function AddNotaFiscal: NotaFiscal;
    function NotaFiscal: NotaFiscal;
    function AddProduto: TDetCollectionItem;
    function Produto: TDetCollectionItem;
    function AddDuplicata: TDupCollectionItem;
    function Duplicata: TDupCollectionItem;
    function AddPagamento: TpagCollectionItem;
    function Pagamento:  TpagCollectionItem;
  end;

  iAWSS3 = interface
    function Push(Value: String): String;
  end;

  iComponentFactory = interface
    function ACBr: iComponent<TACBrNFe>;
  end;

implementation

end.
