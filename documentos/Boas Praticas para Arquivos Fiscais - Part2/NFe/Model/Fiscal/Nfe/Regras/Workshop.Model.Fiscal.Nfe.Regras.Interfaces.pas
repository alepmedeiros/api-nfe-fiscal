unit Workshop.Model.Fiscal.Nfe.Regras.Interfaces;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

type
  iVisitable = interface;
  iModelNFeRegrasImposto = interface;

  iModelNfeRegras = interface
    ['{506A1F99-C428-42A5-B6B2-423DFB4E9E05}']
    function ProdutoImpostoICMS : iModelNfeRegras;
    function ProdutoFundoCombateaProbreza : iModelNfeRegras;
    function Visit(Value : iModelFiscalNfe) : iModelNfeRegras;
    function AcceptRegraCST (Value : iModelNFeRegrasImposto) : iModelNFeRegrasImposto;
  end;

  iModelNFeRegrasImposto = interface
    ['{5678731B-89E4-4D09-8B15-5692AAC1BB6B}']
    function CalculoICMSProduto : iModelNFeRegrasImposto;
    function Visit (Value : iModelFiscalNFe) : iModelNFeRegrasImposto;
  end;

  iModelNfeRegrasFactory = interface
    ['{98038BB7-04D1-4A8A-8B8F-5CCA99258C1E}']
    function RegimeNormal : iModelNfeRegras;
  end;

  iVisitable = interface
    ['{1450D7D0-B5F4-4105-A412-C3FE6296A7AA}']
    function Accept(Value : iModelNfeRegras) : iModelNfeRegras;
  end;

implementation

end.
