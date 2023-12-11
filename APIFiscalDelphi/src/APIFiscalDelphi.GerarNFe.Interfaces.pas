unit APIFiscalDelphi.GerarNFe.Interfaces;

interface

uses
  ACBrNFe, ACBrNFeNotasFiscais, pcnNFe;

type
  iGerarNFe<T> = interface
    function AddNotaFiscal : iGerarNFe<T>;
    function NotaFiscal : iGerarNFe<T>;
    function AddProduto : iGerarNFe<T>;
    function Produto : iGerarNFe<T>;
    function AddDuplicata : iGerarNFe<T>;
    function Duplicata : iGerarNFe<T>;
    function AddObsComp : iGerarNFe<T>;
    function ObsComp : iGerarNFe<T>;
    function AddObsFisco : iGerarNFe<T>;
    function ObsFisco : iGerarNFe<T>;
    function AddPagamento : iGerarNFe<T>;
    function Pagamento : iGerarNFe<T>;
    function AddTranspVol : iGerarNFe<T>;
    function TranspVol : iGerarNFe<T>;
    function This: T;
  end;

  iGerarNFeFactory = interface
    function ACBr: iGerarNFe<TACbrNFe>;
  end;

implementation

end.
