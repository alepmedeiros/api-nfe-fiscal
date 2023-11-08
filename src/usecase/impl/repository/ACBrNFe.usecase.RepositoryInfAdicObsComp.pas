unit ACBrNFe.usecase.RepositoryInfAdicObsComp;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryInfAdicObsComp = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryInfAdicObsComp.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryInfAdicObsComp.Destroy;
begin

  inherited;
end;

function TRepositoryInfAdicObsComp.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.AddObsComp;
//  FConf.Component.ACBr.ObsComp.xCampo := FEntity.InfAdicCpl.xCampo;
//  FConf.Component.ACBr.ObsComp.xTexto := FEntity.InfAdicCpl.xTexto;
end;

class function TRepositoryInfAdicObsComp.New(Conf: iActionNFe)
      : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
