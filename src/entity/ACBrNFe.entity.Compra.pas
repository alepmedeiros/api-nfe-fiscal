unit ACBrNFe.entity.Compra;

interface

type
  TCompra = class
  private
    FNEmp: String;
    FPed: String;
    FCont: String;
  public
    property NEmp: String read FNEmp write FNEmp;
    property Ped: String read FPed write FPed;
    property Cont: String read FCont write FCont;
  end;

implementation

end.
