unit ACBrNFe.adapter.InfAdicionais;

interface

uses
  System.Generics.Collections,
  ACBrNFe.adapter.ObsFisco,
  ACBrNFe.adapter.ObsComplementar;

type
  TInfAdicionais = class
  private
    FInfCompleta: String;
    FInfAdicionalFisco: String;
    FObsComplementar: TObjectList<TObsComplementar>;
    FObsFisco: TObjectList<TObsFisco>;
  public
    property InfCompleta: String read FInfCompleta write FInfCompleta;
    property InfAdicionalFisco: String read FInfAdicionalFisco
      write FInfAdicionalFisco;
    property ObsComplementar: TObjectList<TObsComplementar>
      read FObsComplementar write FObsComplementar;
    property ObsFisco: TObjectList<TObsFisco> read FObsFisco write FObsFisco;
  end;

implementation

end.
