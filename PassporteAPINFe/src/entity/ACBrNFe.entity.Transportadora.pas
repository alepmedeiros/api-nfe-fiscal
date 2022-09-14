unit ACBrNFe.entity.Transportadora;

interface

uses
  ACBrNFe.entity.VolumeTransportadora,
  ACBrNFe.entity.RetTrasnportadora;

type
  TTransportadora = class
  private
    FFrete: String;
    FCNPJ: String;
    FNome: String;
    FIE: String;
    FEnder: String;
    FMun: String;
    FUF: String;
    FRetTransp: TRetTrasnportadora;
    FVolume: TVolumeTransportadora;
  public
    property Frete: String read FFrete write FFrete;
    property CNPJ: String read FCNPJ write FCNPJ;
    property Nome: String read FNome write FNome;
    property IE: String read FIE write FIE;
    property Ender: String read FEnder write FEnder;
    property Mun: String read FMun write FMun;
    property UF: String read FUF write FUF;
    property RetTransp: TRetTrasnportadora read FRetTransp write FRetTransp;
    property Volume: TVolumeTransportadora read FVolume write FVolume;
  end;

implementation

end.
