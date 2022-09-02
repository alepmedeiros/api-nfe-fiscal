unit ACBrNFe.usecase.RepositoryProdImposto;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryProdImposto = class(TInterfacedObject, iCommand)
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

constructor TRepositoryProdImposto.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryProdImposto.Destroy;
begin

  inherited;
end;

function TRepositoryProdImposto.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.Produto.Imposto.vTotTrib := FEntity.Produto.Imposto.vTotTrib;
end;

class function TRepositoryProdImposto.New(Conf: iActionNFe)
      : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
