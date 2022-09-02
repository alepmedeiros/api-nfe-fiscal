unit ACBrNFe.usecase.RepositoryExporta;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryExporta = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryExporta.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryExporta.Destroy;
begin

  inherited;
end;

function TRepositoryExporta.Execute: iCommand;
begin
  Result := Self;

//  FConf.Component.ACBr.NotaFiscal.NFe.exporta.UFembarq :=
//    FEntity.exporta.UFembarq;
//  FConf.Component.ACBr.NotaFiscal.NFe.exporta.xLocEmbarq :=
//    FEntity.exporta.xLocEmbarq;
end;

class function TRepositoryExporta.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
