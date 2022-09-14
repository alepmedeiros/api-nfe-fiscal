unit ACBrNFe.entity.RetTrasnportadora;

interface

type
  TRetTrasnportadora = class
  private
    FvServ: Currency;
    FvBCRet: Currency;
    FpICMSRet: Currency;
    FvICMSRet: Currency;
    FCFOP: String;
    FMunFG: Integer;
  public
    property vServ: Currency read FvServ write FvServ;
    property vBCRet: Currency read FvBCRet write FvBCRet;
    property pICMSRet: Currency read FpICMSRet write FpICMSRet;
    property vICMSRet: Currency read FvICMSRet write FvICMSRet;
    property CFOP: String read FCFOP write FCFOP;
    property MunFG: Integer read FMunFG write FMunFG;
  end;

implementation

end.
