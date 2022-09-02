unit ACBrNFe.usecase.RepositoryDest;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces;

type
  TRepositoryDest = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
    procedure ConfDest;
  public
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryDest.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryDest.Destroy;
begin

  inherited;
end;

function TRepositoryDest.Execute: iCommand;
begin
  Result := Self;
  ConfDest;
end;

procedure TRepositoryDest.ConfDest;
begin
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.CNPJCPF :=
//    FEntity.Destinatario.CNPJCPF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.IE := FEntity.Destinatario.IE;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.ISUF := FEntity.Destinatario.ISUF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.xNome := FEntity.Destinatario.xNome;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.fone :=
//    FEntity.Destinatario.EnderDest.fone;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.CEP :=
//    FEntity.Destinatario.EnderDest.CEP;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xLgr :=
//    FEntity.Destinatario.EnderDest.xLgr;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.nro :=
//    FEntity.Destinatario.EnderDest.nro;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xCpl :=
//    FEntity.Destinatario.EnderDest.xCpl;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xBairro :=
//    FEntity.Destinatario.EnderDest.xBairro;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cMun :=
//    FEntity.Destinatario.EnderDest.cMun;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xMun :=
//    FEntity.Destinatario.EnderDest.xMun;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.UF :=
//    FEntity.Destinatario.EnderDest.UF;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cPais :=
//    FEntity.Destinatario.EnderDest.cPais;
//  FConf.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xPais :=
//    FEntity.Destinatario.EnderDest.xPais;
end;

class function TRepositoryDest.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
