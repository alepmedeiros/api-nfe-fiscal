unit ACBrNFe.usecase.RepositoryInfAdic;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryInfAdic = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryInfAdic.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryInfAdic.Destroy;
begin

  inherited;
end;

function TRepositoryInfAdic.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.NotaFiscal.NFe.InfAdic.infCpl := '';
//  FConf.Component.ACBr.NotaFiscal.NFe.InfAdic.infAdFisco := '';
end;

class function TRepositoryInfAdic.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
