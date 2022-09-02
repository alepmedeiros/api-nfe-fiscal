unit ACBrNFe.adapter.Combustivel;

interface

uses
  ACBrNFe.adapter.CombCIDE, ACBrNFe.adapter.CombICMS,
  ACBrNFe.adapter.CombICMSInter, ACBrNFe.adapter.CombICMSCons;

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
