unit ACBrNFe.entity.Total;

interface

uses
  ACBrNFe.entity.TotalRetTrib,
  ACBrNFe.entity.TotalICMS;

type
  TTotal = class
  private
    FICMS: TTotalICMS;
    FRetTrib: TTotalRetTrib;
  public
    property ICMS: TTotalICMS read FICMS write FICMS;
    property RetTrib: TTotalRetTrib read FRetTrib write FRetTrib;
  end;

implementation

end.
