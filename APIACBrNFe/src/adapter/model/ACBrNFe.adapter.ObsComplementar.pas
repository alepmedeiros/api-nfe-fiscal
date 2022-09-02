unit ACBrNFe.adapter.ObsComplementar;

interface

type
  TObsComplementar = class
  private
    FCampo: String;
    FTexto: String;
  public
    property Campo: String read FCampo write FCampo;
    property Texto: String read FTexto write FTexto;
  end;

implementation

end.
