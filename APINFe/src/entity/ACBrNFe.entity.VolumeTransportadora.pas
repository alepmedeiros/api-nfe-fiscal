unit ACBrNFe.entity.VolumeTransportadora;

interface

type
  TVolumeTransportadora = class
  private
    FqVol: Integer;
    Fesp: String;
    Fmarca: String;
    FnVol: String;
    FPesoL: Currency;
    FPesoB: Currency;
  public
    property qVol: Integer read FqVol write FqVol;
    property esp: String read Fesp write Fesp;
    property marca: String read Fmarca write Fmarca;
    property nVol: String read FnVol write FnVol;
    property PesoL: Currency read FPesoL write FPesoL;
    property PesoB: Currency read FPesoB write FPesoB;
  end;

implementation

end.
