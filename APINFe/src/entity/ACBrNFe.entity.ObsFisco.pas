unit ACBrNFe.entity.ObsFisco;

interface

type
  TObsFisco = class
  private
    FCampo: String;
    FTexto: String;
  public
    property Campo: String read FCampo write FCampo;
    property Texto: String read FTexto write FTexto;
  end;

implementation

end.
