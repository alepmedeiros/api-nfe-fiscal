unit ACBrNFe.usecase.RepositoryProdImpostoII;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRespositoryProdImpII = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRespositoryProdImpII.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRespositoryProdImpII.Destroy;
begin

  inherited;
end;

function TRespositoryProdImpII.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.Produto.Imposto.II.vBC := FEntity.Produto.Imposto.II.vBC;
//  FConf.Component.ACBr.Produto.Imposto.II.vDespAdu :=
//    FEntity.Produto.Imposto.II.vDespAdu;
//  FConf.Component.ACBr.Produto.Imposto.II.vII := FEntity.Produto.Imposto.II.vII;
//  FConf.Component.ACBr.Produto.Imposto.II.vIOF :=
//    FEntity.Produto.Imposto.II.vIOF;
end;

class function TRespositoryProdImpII.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
