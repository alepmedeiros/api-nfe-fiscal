unit ACBrNFe.usecase.RepositoryCobFat;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryCobFat = class(TInterfacedObject, iCommand)
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

constructor TRepositoryCobFat.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryCobFat.Destroy;
begin

  inherited;
end;

function TRepositoryCobFat.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.nFat := FEntity.CobrancaFatura.nFat;
//  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vOrig := FEntity.CobrancaFatura.vOrig;
//  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vDesc := FEntity.CobrancaFatura.vDesc;
//  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vLiq := FEntity.CobrancaFatura.vLiq;
end;

class function TRepositoryCobFat.New(Conf: iActionNFe)
      : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
