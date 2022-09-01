unit Workshop.Model.Fiscal.Nfe.Command.Ide;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandIde = class(TInterfacedObject, iCommand)
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
  pcnConversaoNFe, pcnConversao, System.SysUtils;

{ TModelFiscalNfeCommandIde }

constructor TModelFiscalNfeCommandIde.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandIde.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandIde.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Ide.cNF       := 0; //StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
  FParent.Component.NotaFiscal.NFe.Ide.natOp     := 'VENDA PRODUCAO DO ESTAB.';
  FParent.Component.NotaFiscal.NFe.Ide.indPag    := ipVista;
  FParent.Component.NotaFiscal.NFe.Ide.modelo    := 55;
  FParent.Component.NotaFiscal.NFe.Ide.serie     := 1;
  FParent.Component.NotaFiscal.NFe.Ide.nNF       := 0; //StrToInt(NumNFe);
  FParent.Component.NotaFiscal.NFe.Ide.dEmi      := Date;
  FParent.Component.NotaFiscal.NFe.Ide.dSaiEnt   := Date;
  FParent.Component.NotaFiscal.NFe.Ide.hSaiEnt   := Now;
  FParent.Component.NotaFiscal.NFe.Ide.tpNF      := tnSaida;
  FParent.Component.NotaFiscal.NFe.Ide.tpEmis    := teNormal;// TpcnTipoEmissao(cbFormaEmissao.ItemIndex);;
  FParent.Component.NotaFiscal.NFe.Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
  FParent.Component.NotaFiscal.NFe.Ide.verProc   := '1.0.0.0'; //Vers�o do seu sistema
  FParent.Component.NotaFiscal.NFe.Ide.cUF       := UFtoCUF('RJ');
  FParent.Component.NotaFiscal.NFe.Ide.cMunFG    := 0; //StrToInt(edtEmitCodCidade.Text);
  FParent.Component.NotaFiscal.NFe.Ide.finNFe    := fnNormal;
  if  Assigned(FParent.Component._this.DANFE ) then
	  FParent.Component.NotaFiscal.NFe.Ide.tpImp     := FParent.Component._this.DANFE.TipoDANFE;
end;

class function TModelFiscalNfeCommandIde.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
