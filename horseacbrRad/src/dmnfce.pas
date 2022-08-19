unit dmnfce;

interface

uses
  System.SysUtils,
  System.Classes,
  ACBrPosPrinter,
  ACBrDANFCeFortesFr,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS,
  ACBrBase,
  ACBrDFe,
  ACBrNFe,
  pcnConversaoNFe,
  pcnConversao,
  ACBrDFeSSL,
  blcksock,
  pcnAuxiliar,
  pcnNfe, horseacbrrad.model.pedido;

type
  Tdmnfe = class(TDataModule)
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrPosPrinter1: TACBrPosPrinter;
  private
    procedure Configurar;
  public
    function Emitir(aNFe: TPedido): TPedido;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ Tdmnfe }

procedure Tdmnfe.Configurar;
var
  lPathApp: String;
  lPathArqDFe: String;
  lPathPDF: String;
  lPathArquivos: String;
  lPathSchemas: String;
  lPathTmp: String;
begin
  // caminho das pastas gerais
  lPathApp := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));

  // somente para NFC-e
  lPathSchemas := IncludeTrailingPathDelimiter(lPathApp + 'SCHEMAS');

  // caminhos de pastas especificas por cnpj e comuns aos dois modos de funcionamento
  lPathArqDFe := IncludeTrailingPathDelimiter(lPathApp + 'DOCUMENTOS');
  lPathPDF := IncludeTrailingPathDelimiter(lPathArqDFe + 'PDF');
  lPathArquivos := IncludeTrailingPathDelimiter(lPathArqDFe + 'ARQUIVOS');
  lPathTmp := IncludeTrailingPathDelimiter(lPathArqDFe + 'TMP');

  ForceDirectories(lPathPDF);
  ForceDirectories(lPathArquivos);
  ForceDirectories(lPathTmp);

  ACBrNFe1.Configuracoes.Arquivos.AdicionarLiteral := False;
  ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe := true;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorMes := true;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorModelo := true;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorCNPJ := true;
  ACBrNFe1.Configuracoes.Arquivos.Salvar := true;
  ACBrNFe1.Configuracoes.Arquivos.SalvarEvento := true;
  ACBrNFe1.Configuracoes.Arquivos.PathNFe := lPathArquivos;
  ACBrNFe1.Configuracoes.Arquivos.PathInu := lPathArquivos;
  ACBrNFe1.Configuracoes.Arquivos.PathEvento := lPathArquivos;
  ACBrNFe1.Configuracoes.Arquivos.PathSalvar := lPathTmp;
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas := lPathSchemas;

  // configurações gerais
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;

  // configuracoes do token
  ACBrNFe1.Configuracoes.Geral.IdCSC := '1';
  ACBrNFe1.Configuracoes.Geral.CSC := '0123456789';
  ACBrNFe1.Configuracoes.Geral.Salvar := true;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := TpcnVersaoDF.ve400;
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode := TpcnVersaoQrCode.veqr200;
  ACBrNFe1.Configuracoes.Geral.FormaEmissao := TpcnTipoEmissao.teNormal;

  // autenticacao e assinatura seguras
  ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib.libWinCrypt;
  ACBrNFe1.SSL.SSLType := TSSLType.LT_TLSv1_2;

  // configuracoes de timezone
  ACBrNFe1.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao :=
    TTimeZoneModoDeteccao.tzSistema;

  // propriedades para melhorar a aparencia dos retornos de validação dos schemas
  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  ACBrNFe1.Configuracoes.Geral.FormatoAlerta :=
    '[%TAGNIVEL% %TAG%] %DESCRICAO% - %MSG%';

  // configuracao do webservice
  ACBrNFe1.Configuracoes.WebServices.UF := 'AM';
  ACBrNFe1.Configuracoes.WebServices.Salvar := true;
  ACBrNFe1.Configuracoes.WebServices.Visualizar := False;
  ACBrNFe1.Configuracoes.WebServices.Ambiente := TpcnTipoAmbiente.taHomologacao;

  // interessante deixar configuravel para NF-e, para NFC-e somente timout, os outros são relevantes
  ACBrNFe1.Configuracoes.WebServices.TimeOut := 18000;
  // tempo limite de espera pelo webservice
  ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet := 5000;
  // tempo padrao que vai aguardar para consultar
  ACBrNFe1.Configuracoes.WebServices.Tentativas := 10;
  // quantidade de tentativas de envio
  ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas := 3000;
  // intervalo entre as tentativas de envio
  ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := true;
  // ajustar "AguardarConsultaRet" com o valor

  // proxy de acesso
  ACBrNFe1.Configuracoes.WebServices.ProxyHost := '';
  ACBrNFe1.Configuracoes.WebServices.ProxyPort := '';
  ACBrNFe1.Configuracoes.WebServices.ProxyUser := '';
  ACBrNFe1.Configuracoes.WebServices.ProxyPass := '';

  ACBrNFe1.DANFE.PathPDF := lPathPDF;
  ACBrNFe1.DANFE.Logo := '';
  ACBrNFe1.DANFE.Sistema := '';
  ACBrNFe1.DANFE.Site := '';
  ACBrNFe1.DANFE.Email := '';
end;

function Tdmnfe.Emitir(aNFe: TPedido): TPedido;
var
  lNFe: TNFe;
  lPagto: TpagCollectionItem;
  lItemNota: TDetCollectionItem;
  ValorTotalNf: Currency;
  lStream: TMemoryStream;
begin
  Configurar;

  aNFe.Numero := 1;
  aNFe.Serie := 1;

  ACBrNFe1.NotasFiscais.Clear;
  lNfe := ACBrNFe1.NotasFiscais.Add.NFe;

  //Ambiente
  lNFe.Ide.tpAmb := ACBrNFe1.Configuracoes.WebServices.Ambiente;
  lNFe.Ide.verProc := '1.0.0.0';
  lNFe.Ide.tpImp := ACBrNFe1.DANFE.TipoDANFE;

  //identificacao da nota fiscal eletronica
  lNFe.Ide.modelo := 65;
  lNFe.Ide.tpNF := tnSaida;
  lNFe.Ide.finNFe := fnNormal;
  lNFe.Ide.indFinal := cfConsumidorFinal;
  lNFe.Ide.nNf := aNFe.Numero;
  lNFe.Ide.serie := aNFe.Serie;
  lNFe.Ide.natOp := 'VENDA A CONSUMIDOR FINAL';
  lNFe.Ide.dEmi := now;
  lNFe.Ide.dSaiEnt := lNFe.Ide.dEmi;
  lNFe.Ide.cUF := UFtoCUF('AM');
  lNFe.Ide.cMunFG := 1302603;

  //deixar o acbr gerar um numero randomico conforme manual da nfe
  lNfe.Ide.cNF := 0;

  //entrar em contigencia quando configurado
  lNFe.Ide.tpEmis := teOffLine;
  lNFe.Ide.dhCont := now;
  lNFe.Ide.xJust := 'teste de emissao';

  //identificacao do emitente
  lNFe.Emit.xNome := 'Emissor teste';
  lNFe.Emit.xFant := 'Emissor teste';
  lNFe.Emit.CNPJCPF := '07193169000154';
  lNFe.Emit.IE := '1234567890';
  lNFe.Emit.IEST := '';
  lNFe.Emit.CNAE := '';
  lNFe.Emit.EnderEmit.fone := '(11)2222-4444';
  lNFe.Emit.EnderEmit.xLgr := 'Endereco teste';
  lNFe.Emit.EnderEmit.nro := '1';
  lNFe.Emit.EnderEmit.xCpl := '';
  lNFe.Emit.EnderEmit.xBairro := 'Bairro';
  lNFe.Emit.EnderEmit.xMun := 'Manaus';
  lNFe.Emit.EnderEmit.cMun := 1302603;
  lNFe.Emit.EnderEmit.UF := CUFtoUF(13);
  lNFe.Emit.EnderEmit.CEP := 11222333;
  lNFe.Emit.EnderEmit.cPais := 1058;
  lNFe.Emit.EnderEmit.xPais := 'Brasil';
  lNFe.Emit.CRT := crtSimplesNacional;

  //informacoes do destinatario da nota fiscal
  lNFe.Dest.CNPJCPF := aNFe.Cpf;
  lNFe.Dest.xNome := aNFe.Nome;

  lNFe.Dest.EnderDest.fone := '';
  lNFe.Dest.EnderDest.xLgr := 'Endereco teste';
  lNFe.Dest.EnderDest.nro := '1';
  lNFe.Dest.EnderDest.xCpl := '';
  lNFe.Dest.EnderDest.xBairro := 'Bairro';
  lNFe.Dest.EnderDest.xMun := 'Manaus';
  lNFe.Dest.EnderDest.cMun := 1302603;
  lNFe.Dest.EnderDest.UF := CUFtoUF(13);
  lNFe.Dest.EnderDest.CEP := 11222333;
  lNFe.Dest.EnderDest.cPais := 1058;
  lNFe.Dest.EnderDest.xPais := 'Brasil';

  //----------------------------------------------------------------------------
  lItemNota := lNFe.Det.New;
  lItemNota.Prod.nItem := 1;
  lItemNota.Prod.cProd := '123';
  lItemNota.Prod.xProd := 'Produto X';
  lItemNota.Prod.NCM := '10061092';
  lItemNota.Prod.CFOP := '5102';
  lItemNota.Prod.CEST := '';

  lItemNota.Prod.cEAN := 'sem gtin';
  lItemNota.Prod.uCom := 'UN';
  lItemNota.Prod.qCom := 1;
  lItemNota.Prod.vUnCom := 10;
  lItemNota.Prod.vProd := lItemNota.Prod.qCom * lItemNota.Prod.vUnCom;

  lItemNota.Prod.cEANTrib := lItemNota.Prod.cEAN;
  lItemNota.Prod.uTrib := lItemNota.Prod.uCom;
  lItemNota.Prod.qTrib := lItemNota.Prod.qCom;
  lItemNota.Prod.vUnTrib := lItemNota.Prod.vUnCom;

  lItemNota.Prod.vOutro    := 0;
  lItemNota.Prod.vFrete    := 0;
  lItemNota.Prod.vSeg      := 0;
  lItemNota.Prod.vDesc     := 0;

  //origem da mercadoria (fixo por enquanto)
  lItemNota.Imposto.ICMS.orig := TpcnOrigemMercadoria.oeNacional;

  //ICMS
  lItemNota.Imposto.ICMS.CSOSN := TpcnCSOSNIcms.csosn102;
  lItemNota.Imposto.ICMS.pCredSN := 0;
  lItemNota.Imposto.ICMS.vCredICMSSN := 0;

  //PIS
  lItemNota.Imposto.PIS.CST := TpcnCstPis.pis07;
  lItemNota.Imposto.PIS.vBC := 0;
  lItemNota.Imposto.PIS.pPIS := 0;
  lItemNota.Imposto.PIS.vPIS := 0;
  lItemNota.Imposto.PIS.qBCProd := 0;
  lItemNota.Imposto.PIS.vAliqProd := 0;

  //COFINS
  lItemNota.Imposto.COFINS.CST := TpcnCstCofins.cof07;
  lItemNota.Imposto.COFINS.vBC := 0;
  lItemNota.Imposto.COFINS.pCOFINS := 0;
  lItemNota.Imposto.COFINS.vCOFINS := 0;
  lItemNota.Imposto.COFINS.qBCProd := 0;
  lItemNota.Imposto.COFINS.vAliqProd := 0;

  //----------------------------------------------------------------------------

  //somente se tiver troco
  lNfe.pag.vTroco := 0.00;

  //pagamento
  lPagto := lNFe.pag.new;
  lPagto.tPag := TpcnFormaPagamento.fpDinheiro;
  lPagto.vPag := ValorTotalNf;
  lPagto.tpIntegra := tiPagNaoIntegrado;

  //somente quando é cartão
  //lPagto.CNPJ
  //lPagto.tBand
  //lPagto.CAut

  //totais da nota fiscal
  lNFe.Total.ICMSTot.vBC := 0.00;
  lNFe.Total.ICMSTot.vICMS := 0.00;
  lNFe.Total.ICMSTot.vBCST := 0.00;
  lNFe.Total.ICMSTot.vST := 0.00;
  lNFe.Total.ICMSTot.vProd := ValorTotalNF;
  lNFe.Total.ICMSTot.vFrete := 0.00;
  lNFe.Total.ICMSTot.vSeg := 0.00;
  lNFe.Total.ICMSTot.vDesc := 0.00;
  lNFe.Total.ICMSTot.vII := 0.00;
  lNFe.Total.ICMSTot.vIPI := 0.00;
  lNFe.Total.ICMSTot.vPIS := 0.00;
  lNFe.Total.ICMSTot.vCOFINS := 0.00;
  lNFe.Total.ICMSTot.vOutro := 0.00;
  lNFe.Total.ICMSTot.vFCP := 0.00;
  lNFe.Total.ICMSTot.vNF := ValorTotalNf;
  lNFe.Total.ICMSTot.vTotTrib := 0.00;

  //servicos (não exite na NFC-e)
  lNFe.Total.ISSQNtot.vServ := 0.00;
  lNFe.Total.ISSQNtot.vBC := 0.00;
  lNFe.Total.ISSQNtot.vISS := 0.00;
  lNFe.Total.ISSQNtot.vPIS := 0.00;
  lNFe.Total.ISSQNtot.vCOFINS := 0.00;

  //transporte (frete), no caso de nfc-e não poder ter frete
  lNFe.Transp.modFrete := mfSemFrete;

  ACBrNFe1.NotasFiscais[0].GravarXML(ExtractFilePath(ParamStr(0))+'notafiscal.xml');

  ACBrNFe1.NotasFiscais.ImprimirPDF;
//  lStream := TMemoryStream.Create;
//  try
//    ACBrNFe1.NotasFiscais.ImprimirPDF(lStream);
//    lStream.SaveToFile(ExtractFilePath(ParamStr(0)));
//  finally
//    lStream.Free;
//  end;

  Result := aNFe;
end;

end.
