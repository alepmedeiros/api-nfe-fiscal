unit ACBrNFe.entity.Combustivel;

interface

uses
  ACBrNFe.entity.CombCIDE,
  ACBrNFe.entity.CombICMS,
  ACBrNFe.entity.CombICMSInter,
  ACBrNFe.entity.CombICMSCons;

type
  TCombustivel = class
  private
    FCodigoANP: Integer;
    FCodIF: String;
    FQTemp: Currency;
    FUFcons: String;
    FCIDE: TCombCIDE;
    FICMS: TCombICMS;
    FCombICMSInter: TCombICMSInter;
    FCombICMSCons: TCombICMSCons;
  public
    property CodigoANP: Integer read FCodigoANP write FCodigoANP;
    property CodIF: String read FCodIF write FCodIF;
    property QTemp: Currency read FQTemp write FQTemp;
    property UFcons: String read FUFcons write FUFcons;
    property CIDE: TCombCIDE read FCIDE write FCIDE;
    property ICMS: TCombICMS read FICMS write FICMS;
    property CombICMSInter: TCombICMSInter read FCombICMSInter
      write FCombICMSInter;
    property CombICMSCons: TCombICMSCons read FCombICMSCons write FCombICMSCons;
  end;

implementation

end.
