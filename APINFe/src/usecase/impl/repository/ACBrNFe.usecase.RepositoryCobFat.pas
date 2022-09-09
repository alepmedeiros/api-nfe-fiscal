unit ACBrNFe.usecase.RepositoryCobFat;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.pedidos;

type
  TRepositoryCobFat = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
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

  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.nFat := '1001';
  // FPedido.CobrancaFat.Numero;
  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vOrig := 100;
  // FPedido.CobrancaFat.vOrig;
  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vDesc := 0;
  // FPedido.CobrancaFat.vDesc;
  FConf.Component.ACBr.NotaFiscal.NFe.Cobr.Fat.vLiq := 100;
  // FPedido.CobrancaFat.vLiq;
end;

class function TRepositoryCobFat.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
