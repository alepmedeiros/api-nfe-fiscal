unit ACBrNFe.adapter.interfaces;

interface

uses
  ACBrNFe.entity.interfaces;

type
  iAdapterNFe = interface
    function Converter: iFactoryEntity;
  end;

implementation

end.
