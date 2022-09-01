unit Workshop.Model.Fiscal.Nfe.Command.Total;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandTotal = class(TInterfacedObject, iCommand)
    private
      [weak]
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

{ TModelFiscalNfeCommandTotal }

constructor TModelFiscalNfeCommandTotal.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandTotal.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandTotal.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vBC     := 100;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vICMS   := 18;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vBCST   := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vST     := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vProd   := 100;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vFrete  := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vSeg    := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vDesc   := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vII     := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vIPI    := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vPIS    := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vCOFINS := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vOutro  := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vNF     := 100;

  // lei da transparencia de impostos
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vTotTrib := 0;

  // partilha do icms e fundo de probreza
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vFCPUFDest   := 0.00;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vICMSUFDest  := 0.00;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vICMSUFRemet := 0.00;
end;

class function TModelFiscalNfeCommandTotal.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
