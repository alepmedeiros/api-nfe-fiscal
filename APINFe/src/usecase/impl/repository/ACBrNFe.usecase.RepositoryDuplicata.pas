unit ACBrNFe.usecase.RepositoryDuplicata;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryDuplicata = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
    public
      constructor Create(Conf: iActionNFe);
      destructor Destroy; override;
      class function New(Conf: iActionNFe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRepositoryDuplicata.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryDuplicata.Destroy;
begin

  inherited;
end;

function TRepositoryDuplicata.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.AddDuplicata;
//  FConf.Component.ACBr.Duplicata.nDup := FEntity.CobrancaDuplicata.nDup;
//  FConf.Component.ACBr.Duplicata.dVenc := FEntity.CobrancaDuplicata.dVenc;
//  FConf.Component.ACBr.Duplicata.vDup := FEntity.CobrancaDuplicata.vDup;
end;

class function TRepositoryDuplicata.New (Conf: iActionNFe) : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
