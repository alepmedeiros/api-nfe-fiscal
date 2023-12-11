unit passaporteacbrapinfe.usecase.impl.dest;

interface

uses
  passaporteacbrapinfe.usecase.interfaces, pcnConversao;

type
  TDest = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TDest.Create(Acoes: iAcoesNfe);
begin
  FAcoes:= Acoes;
end;

destructor TDest.Destroy;
begin

  inherited;
end;

function TDest.Execute: iCommand;
begin
  Result := Self;

  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.CNPJCPF := '05481336000137';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.IE := '687138770110';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.ISUF := '';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.xNome := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.fone := '1532599600';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.CEP := 18270170;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xLgr := 'Rua Coronel Aureliano de Camargo';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.nro := '973';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xCpl := '';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xBairro := 'Centro';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cMun := UFtoCUF('São Paulo');
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xMun := 'Tatui';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.UF := 'SP';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.cPais := 1058;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Dest.EnderDest.xPais := 'BRASIL';
end;

class function TDest.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
