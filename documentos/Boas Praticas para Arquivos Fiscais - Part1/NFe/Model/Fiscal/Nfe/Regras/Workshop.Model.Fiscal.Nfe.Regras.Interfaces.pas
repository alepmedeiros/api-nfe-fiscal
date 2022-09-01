unit Workshop.Model.Fiscal.Nfe.Regras.Interfaces;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

type
  iVisitor = interface;
  iVisitable = interface;

  iModelNfeRegras = interface
    ['{506A1F99-C428-42A5-B6B2-423DFB4E9E05}']
    function ProdutoImpostoICMS : iModelNfeRegras;
    function ProdutoFundoCombateaProbreza : iModelNfeRegras;
  end;

  iModelNfeRegrasFactory = interface
    ['{98038BB7-04D1-4A8A-8B8F-5CCA99258C1E}']
    function RegimeNormal : iVisitor;
  end;

  iVisitor = interface
    ['{E4C8071B-9497-46A3-BB81-CF18FC1C0DD6}']
    function Visit(Value : iModelFiscalNfe) : iModelNfeRegras;
  end;

  iVisitable = interface
    ['{1450D7D0-B5F4-4105-A412-C3FE6296A7AA}']
    function Accept(Value : iVisitor) : iModelNfeRegras;
  end;

implementation

end.
