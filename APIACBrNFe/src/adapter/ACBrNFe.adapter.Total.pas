unit ACBrNFe.adapter.Total;

interface

uses
  ACBrNFe.adapter.TotalRetTrib, ACBrNFe.adapter.TotalICMS;

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
