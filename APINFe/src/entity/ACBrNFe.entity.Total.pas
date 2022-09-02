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
    constructor Create;
    destructor Destroy;
    property ICMS: TTotalICMS read FICMS write FICMS;
    property RetTrib: TTotalRetTrib read FRetTrib write FRetTrib;
  end;

implementation

{ TTotal }

constructor TTotal.Create;
begin
  FICMS := TTotalICMS.Create;
  FRetTrib := TTotalRetTrib.Create;
end;

destructor TTotal.Destroy;
begin
  FICMS.DisposeOf;
  FRetTrib.DisposeOf;
end;

end.
