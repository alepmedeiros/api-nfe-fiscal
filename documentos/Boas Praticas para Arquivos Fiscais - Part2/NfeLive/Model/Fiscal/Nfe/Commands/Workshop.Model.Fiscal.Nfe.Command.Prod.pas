unit Workshop.Model.Fiscal.Nfe.Command.Prod;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Helpers;

Type
  TModelFiscalNfeCommandProd = class(TInterfacedObject, iCommand, iVisitable)
    private
      FParent : iModelFiscalNfe;
      FRegrasFiscais : iModelNfeRegras;
    public
      constructor Create(Parent : iModelFiscalNfe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNfe) : iCommand;
      function Execute : iCommand;
      function Accept(Value : iModelNfeRegras) : iModelNfeRegras;
  end;

implementation

uses
  pcnConversaoNFe, pcnConversao,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples;

{ TModelFiscalNfeCommandProd }


function TModelFiscalNfeCommandProd.Accept(Value: iModelNfeRegras): iModelNfeRegras;
begin
  FRegrasFiscais := Value;
  Result := FRegrasFiscais.Visit(FParent);
end;

constructor TModelFiscalNfeCommandProd.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandProd.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandProd.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddProduto;
  FParent.Component.Produto.Prod.nItem                        := 1; // N�mero sequencial, para cada item deve ser incrementado
  FParent.Component.Produto.Prod.cProd                        := '123456';
  FParent.Component.Produto.Prod.cEAN                         := '7896523206646';
  FParent.Component.Produto.Prod.xProd                        := 'TESTE DE PRODUTO';
  FParent.Component.Produto.Prod.NCM                          := '94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
  FParent.Component.Produto.Prod.EXTIPI                       := '';
  FParent.Component.Produto.Prod.CFOP                         := '5101';
  FParent.Component.Produto.Prod.uCom                         := 'UN';
  FParent.Component.Produto.Prod.qCom                         := 1;
  FParent.Component.Produto.Prod.vUnCom                       := 100;
  FParent.Component.Produto.Prod.vProd                        := 100;
  FParent.Component.Produto.Prod.cEANTrib                     := '7896523206646';
  FParent.Component.Produto.Prod.uTrib                        := 'UN';
  FParent.Component.Produto.Prod.qTrib                        := 1;
  FParent.Component.Produto.Prod.vUnTrib                      := 100;
  FParent.Component.Produto.Prod.vOutro                       := 0;
  FParent.Component.Produto.Prod.vFrete                       := 0;
  FParent.Component.Produto.Prod.vSeg                         := 0;
  FParent.Component.Produto.Prod.vDesc                        := 0;
  FParent.Component.Produto.Prod.CEST                         := '1111111';
  FParent.Component.Produto.infAdProd                         := 'Informacao Adicional do Produto';

  FParent.Component.Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pFCPUFDest     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vFCPUFDest     := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;

  Accept(
    FParent.Component.NotaFiscal.NFe.Emit.CRT.Regras
  ).ProdutoImpostoICMS;

end;

class function TModelFiscalNfeCommandProd.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
