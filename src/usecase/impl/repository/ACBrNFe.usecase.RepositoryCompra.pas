unit ACBrNFe.usecase.RepositoryCompra;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryCompra = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryCompra.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryCompra.Destroy;
begin

  inherited;
end;

function TRepositoryCompra.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.NotaFiscal.NFe.compra.xNEmp := FEntity.compra.xNEmp;
//  FConf.Component.ACBr.NotaFiscal.NFe.compra.xPed := FEntity.compra.xPed;
//  FConf.Component.ACBr.NotaFiscal.NFe.compra.xCont := FEntity.compra.xCont;
end;

class function TRepositoryCompra.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
