unit passaporteacbrapinfe.usecase.impl.emitente;

interface

uses
  passaporteacbrapinfe.usecase.interfaces, pcnConversao;

type
  TEmitente = class(TInterfacedObject, iCommand)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TEmitente.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TEmitente.Destroy;
begin

  inherited;
end;

function TEmitente.Execute: iCommand;
begin
  Result := Self;

  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.xNome := 'Emissor teste';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.xFant := 'Emissor teste';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.CNPJCPF := '07193169000154';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.IE := '1234567890';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.IEST := '';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.CNAE := '';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.fone := '(11)2222-4444';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xLgr := 'Endereco teste';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.nro := '1';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xCpl := '';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xBairro := 'Bairro';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xMun := 'Manaus';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cMun := 1302603;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.UF := CUFtoUF(13);
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.CEP := 11222333;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.cPais := 1058;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.EnderEmit.xPais := 'Brasil';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.CRT := crtSimplesNacional;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.IEST := '';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.IM := '2648800';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Emit.CNAE := '6201500';
end;

class function TEmitente.New (Acoes: iAcoesNfe) : iCommand;
begin
  Result := Self.Create(Acoes);
end;

end.
