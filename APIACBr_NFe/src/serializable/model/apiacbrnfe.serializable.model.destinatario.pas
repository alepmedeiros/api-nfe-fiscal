unit apiacbrnfe.serializable.model.destinatario;

interface

uses
  GBJSON.Attributes;

type
  TDestinatario = class
  private
  public
//    NotaF.NFe.Dest.CNPJCPF           := '05481336000137';
//  NotaF.NFe.Dest.IE                := '687138770110';
//  NotaF.NFe.Dest.ISUF              := '';
//  NotaF.NFe.Dest.xNome             := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';
//
//  NotaF.NFe.Dest.EnderDest.Fone    := '1532599600';
//  NotaF.NFe.Dest.EnderDest.CEP     := 18270170;
//  NotaF.NFe.Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
//  NotaF.NFe.Dest.EnderDest.nro     := '973';
//  NotaF.NFe.Dest.EnderDest.xCpl    := '';
//  NotaF.NFe.Dest.EnderDest.xBairro := 'Centro';
//  NotaF.NFe.Dest.EnderDest.cMun    := 3554003;
//  NotaF.NFe.Dest.EnderDest.xMun    := 'Tatui';
//  NotaF.NFe.Dest.EnderDest.UF      := 'SP';
//  NotaF.NFe.Dest.EnderDest.cPais   := 1058;
//  NotaF.NFe.Dest.EnderDest.xPais   := 'BRASIL';
    [JSONProp('')]
    class function New: TDestinatario;
  end;

implementation

{ TDestinatario }

class function TDestinatario.New: TDestinatario;
begin
  Result := Self.Create;
end;

end.
