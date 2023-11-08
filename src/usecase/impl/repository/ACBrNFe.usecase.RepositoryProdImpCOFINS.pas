unit ACBrNFe.usecase.RepositoryProdImpCOFINS;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpCOFINS = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpCOFINS.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryProdImpCOFINS.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpCOFINS.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.Produto.Imposto.COFINS.CST :=
//    TAcbrUtils.StrToEnumCSTCofins(FEntity.Produto.Imposto.COFINS.CST);
//  FConf.Component.ACBr.Produto.Imposto.COFINS.vBC :=
//    FEntity.Produto.Imposto.COFINS.vBC;
//  FConf.Component.ACBr.Produto.Imposto.COFINS.pCOFINS :=
//    FEntity.Produto.Imposto.COFINS.pCOFINS;
//  FConf.Component.ACBr.Produto.Imposto.COFINS.vCOFINS :=
//    FEntity.Produto.Imposto.COFINS.vCOFINS;
//  FConf.Component.ACBr.Produto.Imposto.COFINS.qBCprod :=
//    FEntity.Produto.Imposto.COFINS.qBCprod;
//  FConf.Component.ACBr.Produto.Imposto.COFINS.vAliqProd :=
//    FEntity.Produto.Imposto.COFINS.vAliqProd;
end;

class function TRepositoryProdImpCOFINS.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
