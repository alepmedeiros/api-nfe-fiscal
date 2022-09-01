unit Workshop.Model.Fiscal.Nfe.Command.Emit;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandEmitente = class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNfe;
    public
      constructor Create(Parent : iModelFiscalNfe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNfe) : iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  pcnConversaoNFe, pcnConversao;

{ TModelFiscalNfeCommandEmitente }

constructor TModelFiscalNfeCommandEmitente.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandEmitente.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandEmitente.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Emit.IE                := ''; //edtEmitIE.Text;
  FParent.Component.NotaFiscal.NFe.Emit.xNome             := ''; //edtEmitRazao.Text;
  FParent.Component.NotaFiscal.NFe.Emit.xFant             := ''; //edtEmitFantasia.Text;
  FParent.Component.NotaFiscal.NFe.Emit.CNPJCPF           := ''; //edtEmitCNPJ.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.fone    := ''; //edtEmitFone.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.CEP     := 0; //StrToInt(edtEmitCEP.Text);
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xLgr    := ''; //edtEmitLogradouro.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.nro     := ''; //edtEmitNumero.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xCpl    := ''; //edtEmitComp.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xBairro := ''; //edtEmitBairro.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.cMun    := 0; //StrToInt(edtEmitCodCidade.Text);
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xMun    := ''; //edtEmitCidade.Text;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.UF      := ''; //edtEmitUF.Text;
  FParent.Component.NotaFiscal.NFe.Emit.enderEmit.cPais   := 1058;
  FParent.Component.NotaFiscal.NFe.Emit.enderEmit.xPais   := 'BRASIL';
  FParent.Component.NotaFiscal.NFe.Emit.IEST              := '';
  FParent.Component.NotaFiscal.NFe.Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
  FParent.Component.NotaFiscal.NFe.Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido						// a inclusão de serviços na NFe
  //FParent.Component.NotaFiscal.NFe.Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

  FParent.Observer.Notify('Emitente Preenchido com Sucesso');
end;

class function TModelFiscalNfeCommandEmitente.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
