unit ACBrNFe.entity.interfaces;

interface

uses
  ACBrNFe.entity.pedidos, ACBrNFe.entity.ResponseNFe;

type
  iEntity = interface
    function Nfe: TNfe; overload;
    function Nfe(Value: TNfe): iEntity; overload;
    function ResponseNfe: TResponseNFe; overload;
    function ResponseNfe(Value: TResponseNFe): iEntity; overload;
  end;

implementation

end.
