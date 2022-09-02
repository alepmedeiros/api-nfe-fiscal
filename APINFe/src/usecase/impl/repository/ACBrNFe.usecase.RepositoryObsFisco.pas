unit ACBrNFe.usecase.RepositoryObsFisco;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryObsFisco = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryObsFisco.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryObsFisco.Destroy;
begin

  inherited;
end;

function TRepositoryObsFisco.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.AddObsFisco;
//  FConf.Component.ACBr.ObsFisco.xCampo := FEntity.InfAdicObsFisco.xCampo;
//  FConf.Component.ACBr.ObsFisco.xTexto := FEntity.InfAdicObsFisco.xTexto;
end;

class function TRepositoryObsFisco.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
