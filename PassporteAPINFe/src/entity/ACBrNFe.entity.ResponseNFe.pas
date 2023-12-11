unit ACBrNFe.entity.ResponseNFe;

interface

type
  TResponseNFe = class
  private
    FURL: String;
    FData: TDateTime;
    FNome: String;
  public
    property Nome: String read FNome write FNome;
    property Data: TDateTime read FData write FData;
    property URL: String read FURL write FURL;
  end;

implementation

end.
