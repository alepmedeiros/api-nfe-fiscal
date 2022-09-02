unit ACBrNFe.entity.Veiculo;

interface

type
  TVeiculo = class
  private
    FTipoOp: String;
    FChassi: String;
    FCor: String;
    FPot: String;
    FCilin: String;
    FPesoL: String;
    FPesoB: String;
    FSerie: String;
    FTipoCombustivel: String;
    FMotor: String;
    FCMT: String;
    FDist: String;
    FAnoMod: Integer;
    FAnoFab: Integer;
    FTipoPint: String;
    FEspVeic: Integer;
    FVIN: String;
    FModelo: String;
  public
    property TipoOp: String read FTipoOp write FTipoOp;
    property Chassi: String read FChassi write FChassi;
    property Cor: String read FCor write FCor;
    property Pot: String read FPot write FPot;
    property Cilin: String read FCilin write FCilin;
    property PesoL: String read FPesoL write FPesoL;
    property PesoB: String read FPesoB write FPesoB;
    property Serie: String read FSerie write FSerie;
    property TipoCombustivel: String read FTipoCombustivel
      write FTipoCombustivel;
    property Motor: String read FMotor write FMotor;
    property CMT: String read FCMT write FCMT;
    property Dist: String read FDist write FDist;
    property AnoMod: Integer read FAnoMod write FAnoMod;
    property AnoFab: Integer read FAnoFab write FAnoFab;
    property TipoPint: String read FTipoPint write FTipoPint;
    property EspVeic: Integer read FEspVeic write FEspVeic;
    property VIN: String read FVIN write FVIN;
    property Modelo: String read FModelo write FModelo;
  end;

implementation

end.
