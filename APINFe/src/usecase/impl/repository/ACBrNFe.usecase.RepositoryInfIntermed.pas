unit ACBrNFe.usecase.RepositoryInfIntermed;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryInfIntermed = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryInfIntermed.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryInfIntermed.Destroy;
begin

  inherited;
end;

function TRepositoryInfIntermed.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.NotaFiscal.NFe.infIntermed.CNPJ :=
//    FEntity.infIntermed.CNPJ;
//  FConf.Component.ACBr.NotaFiscal.NFe.infIntermed.idCadIntTran :=
//    FEntity.infIntermed.idCadIntTran;
end;

class function TRepositoryInfIntermed.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
