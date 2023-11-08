unit ACBrNFe.usecase.RepositoryTranspVol;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryTranspVol = class(TInterfacedObject, iCommand)
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

constructor TRepositoryTranspVol.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryTranspVol.Destroy;
begin

  inherited;
end;

function TRepositoryTranspVol.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.AddTranspVol;
//  FConf.Component.ACBr.TranspVol.qVol := FEntity.TrasportadoraVolume.qVol;
//  FConf.Component.ACBr.TranspVol.esp := FEntity.TrasportadoraVolume.esp;
//  FConf.Component.ACBr.TranspVol.marca := FEntity.TrasportadoraVolume.marca;
//  FConf.Component.ACBr.TranspVol.nVol := FEntity.TrasportadoraVolume.nVol;
//  FConf.Component.ACBr.TranspVol.pesoL := FEntity.TrasportadoraVolume.pesoL;
//  FConf.Component.ACBr.TranspVol.pesoB := FEntity.TrasportadoraVolume.pesoB;
end;

class function TRepositoryTranspVol.New(Conf: iActionNFe)
      : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
