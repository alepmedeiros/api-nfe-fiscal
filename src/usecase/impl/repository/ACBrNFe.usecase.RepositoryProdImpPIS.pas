unit ACBrNFe.usecase.RepositoryProdImpPIS;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryProdImpPIS = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryProdImpPIS.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryProdImpPIS.Destroy;
begin

  inherited;
end;

function TRepositoryProdImpPIS.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.Produto.Imposto.PIS.CST :=
//    TAcbrUtils.StrToEnumCSTPis(FEntity.Produto.Imposto.PIS.CST);
//  FConf.Component.ACBr.Produto.Imposto.PIS.vBC :=
//    FEntity.Produto.Imposto.PIS.vBC;
//  FConf.Component.ACBr.Produto.Imposto.PIS.pPIS :=
//    FEntity.Produto.Imposto.PIS.pPIS;
//  FConf.Component.ACBr.Produto.Imposto.PIS.vPIS :=
//    FEntity.Produto.Imposto.PIS.vPIS;
//  FConf.Component.ACBr.Produto.Imposto.PIS.qBCprod :=
//    FEntity.Produto.Imposto.PIS.qBCprod;
//  FConf.Component.ACBr.Produto.Imposto.PIS.vAliqProd :=
//    FEntity.Produto.Imposto.PIS.vAliqProd;
//  FConf.Component.ACBr.Produto.Imposto.PIS.vPIS :=
//    FEntity.Produto.Imposto.PIS.vPIS;
end;

class function TRepositoryProdImpPIS.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
