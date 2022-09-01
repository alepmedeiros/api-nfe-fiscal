unit Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

type

  iModelNfeRegras = interface
    ['{3BD7420A-3D90-43B7-9EEC-CAAAC00473D1}']
    function ProdutoImpostoICMS : iModelNfeRegras;
  end;

  iVisitor = interface
    ['{BD606840-9205-4A50-A7B2-C6AFCEE36728}']
    function Visit( Value : iModelFiscalNFe ) : iModelNfeRegras;
  end;

  iVisitable = interface
    ['{304400C1-4CDC-458F-AD54-B4CADAD2A007}']
    function Accept(Value : iVisitor) : iModelNfeRegras;
  end;

implementation

end.
