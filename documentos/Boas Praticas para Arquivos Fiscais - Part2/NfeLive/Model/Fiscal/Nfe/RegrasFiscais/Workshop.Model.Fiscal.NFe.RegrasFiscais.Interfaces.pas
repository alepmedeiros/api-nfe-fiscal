unit Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

type
  iModelNfeRegrasImposto = interface;

  iModelNfeRegras = interface
    ['{3BD7420A-3D90-43B7-9EEC-CAAAC00473D1}']
    function ProdutoImpostoICMS : iModelNfeRegras;

    function Visit( Value : iModelFiscalNFe ) : iModelNfeRegras;
    function AcceptRegraCST ( Value : iModelNfeRegrasImposto) : iModelNfeRegrasImposto;
  end;

  iModelNfeRegrasImposto = interface
    ['{AF3C874B-F0DC-4363-A41C-23EAA7725D2E}']
    function CalculoImpostoProduto : iModelNfeRegrasImposto;
    function Visit( Value : iModelFiscalNFe ) : iModelNfeRegrasImposto;
  end;

  iVisitable = interface
    ['{304400C1-4CDC-458F-AD54-B4CADAD2A007}']
    function Accept(Value : iModelNfeRegras) : iModelNfeRegras;
  end;

implementation

end.
