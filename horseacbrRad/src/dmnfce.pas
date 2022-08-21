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
  ActiveX,ACBrDFeUtil,
  pcnNfe, horseacbrrad.model.pedido, ACBrNFeNotasFiscais, ACBrNFeDANFeRLClass;

type
  Tdmnfe = class(TDataModule)
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
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
  CoInitialize(nil);
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

  // configura��es gerais
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;

  // configuracoes do token
  ACBrNFe1.Configuracoes.Geral.IdCSC := '1';
  ACBrNFe1.Configuracoes.Geral.CSC := '0123456789';
  ACBrNFe1.Configuracoes.Geral.Salvar := true;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := TpcnVersaoDF.ve200;
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode := TpcnVersaoQrCode.veqr200;
  ACBrNFe1.Configuracoes.Geral.FormaEmissao := TpcnTipoEmissao.teNormal;

  // autenticacao e assinatura seguras
  ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib.libWinCrypt;
  ACBrNFe1.SSL.SSLType := TSSLType.LT_TLSv1_2;

  // configuracoes de timezone
  ACBrNFe1.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao :=
    TTimeZoneModoDeteccao.tzSistema;

  // propriedades para melhorar a aparencia dos retornos de valida��o dos schemas
  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  ACBrNFe1.Configuracoes.Geral.FormatoAlerta :=
    '[%TAGNIVEL% %TAG%] %DESCRICAO% - %MSG%';

  // configuracao do webservice
  ACBrNFe1.Configuracoes.WebServices.UF := 'AM';
  ACBrNFe1.Configuracoes.WebServices.Salvar := true;
  ACBrNFe1.Configuracoes.WebServices.Visualizar := False;
  ACBrNFe1.Configuracoes.WebServices.Ambiente := TpcnTipoAmbiente.taHomologacao;

  // interessante deixar configuravel para NF-e, para NFC-e somente timout, os outros s�o relevantes
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
  Volume: TVolCollectionItem;
  Duplicata: TDupCollectionItem;
  ObsComplementar: TobsContCollectionItem;
  ObsFisco: TobsFiscoCollectionItem;
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
  lNFe.Ide.natOp     := 'VENDA PRODUCAO DO ESTAB.';
  lNFe.Ide.indPag    := ipVista;
  lNFe.Ide.modelo    := 55;
  lNFe.Ide.serie     := 1;
  lNFe.Ide.nNF       := 123;
  lNFe.Ide.cNF       := GerarCodigoDFe(lNFe.Ide.nNF);
  lNFe.Ide.dEmi      := Date;
  lNFe.Ide.dSaiEnt   := Date;
  lNFe.Ide.hSaiEnt   := Now;
  lNFe.Ide.tpNF      := tnSaida;
  lNFe.Ide.tpEmis    := TpcnTipoEmissao.teNormal;
  lNFe.Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
  lNFe.Ide.verProc   := '1.0.0.0'; //Vers�o do seu sistema
  lNFe.Ide.cUF       := UFtoCUF('AM');
  lNFe.Ide.cMunFG    := 1302603;
  lNFe.Ide.finNFe    := fnNormal;

  lNFe.Ide.indIntermed := iiSemOperacao;

//  lNFe.Ide.modelo := 55;
//  lNFe.Ide.tpNF := tnSaida;
//  lNFe.Ide.finNFe := fnNormal;
//  lNFe.Ide.indFinal := cfConsumidorFinal;
//  lNFe.Ide.nNf := aNFe.Numero;
//  lNFe.Ide.serie := aNFe.Serie;
//  lNFe.Ide.natOp := 'VENDA A CONSUMIDOR FINAL';
//  lNFe.Ide.dEmi := now;
//  lNFe.Ide.dSaiEnt := lNFe.Ide.dEmi;
//  lNFe.Ide.cUF := UFtoCUF('AM');
//  lNFe.Ide.cMunFG := 1302603;

  //deixar o acbr gerar um numero randomico conforme manual da nfe
//  lNfe.Ide.cNF := 0;

  //entrar em contigencia quando configurado
//  lNFe.Ide.tpEmis := teNormal;
//  lNFe.Ide.dhCont := now;
//  lNFe.Ide.xJust := 'teste de emissao';

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

  lNFe.Emit.IEST              := '';
  lNFe.Emit.IM                := '2648800';
  lNFe.Emit.CNAE              := '6201500';


  lNFe.Dest.CNPJCPF           := '05481336000137';
  lNFe.Dest.IE                := '687138770110';
  lNFe.Dest.ISUF              := '';
  lNFe.Dest.xNome             := 'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

  lNFe.Dest.EnderDest.Fone    := '1532599600';
  lNFe.Dest.EnderDest.CEP     := 18270170;
  lNFe.Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
  lNFe.Dest.EnderDest.nro     := '973';
  lNFe.Dest.EnderDest.xCpl    := '';
  lNFe.Dest.EnderDest.xBairro := 'Centro';
  lNFe.Dest.EnderDest.cMun    := 3554003;
  lNFe.Dest.EnderDest.xMun    := 'Tatui';
  lNFe.Dest.EnderDest.UF      := 'SP';
  lNFe.Dest.EnderDest.cPais   := 1058;
  lNFe.Dest.EnderDest.xPais   := 'BRASIL';
  //informacoes do destinatario da nota fiscal
//  lNFe.Dest.CNPJCPF := aNFe.Cpf;
//  lNFe.Dest.xNome := aNFe.Nome;
//
//  lNFe.Dest.EnderDest.fone := '';
//  lNFe.Dest.EnderDest.xLgr := 'Endereco teste';
//  lNFe.Dest.EnderDest.nro := '1';
//  lNFe.Dest.EnderDest.xCpl := '';
//  lNFe.Dest.EnderDest.xBairro := 'Bairro';
//  lNFe.Dest.EnderDest.xMun := 'Manaus';
//  lNFe.Dest.EnderDest.cMun := 1302603;
//  lNFe.Dest.EnderDest.UF := CUFtoUF(13);
//  lNFe.Dest.EnderDest.CEP := 11222333;
//  lNFe.Dest.EnderDest.cPais := 1058;
//  lNFe.Dest.EnderDest.xPais := 'Brasil';

  //----------------------------------------------------------------------------
  lItemNota := lNFe.Det.New;
  lItemNota.Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
  lItemNota.Prod.cProd    := '123456';
  lItemNota.Prod.cEAN     := '7896523206646';
  lItemNota.Prod.xProd    := 'TESTE DE PRODUTO';
  lItemNota.Prod.NCM      := '94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
  lItemNota.Prod.EXTIPI   := '';
  lItemNota.Prod.CFOP     := '5101';
  lItemNota.Prod.uCom     := 'UN';
  lItemNota.Prod.qCom     := 1;
  lItemNota.Prod.vUnCom   := 100;
  lItemNota.Prod.vProd    := 100;

  lItemNota.Prod.cEANTrib  := '7896523206646';
  lItemNota.Prod.uTrib     := 'UN';
  lItemNota.Prod.qTrib     := 1;
  lItemNota.Prod.vUnTrib   := 100;

  lItemNota.Prod.vOutro    := 0;
  lItemNota.Prod.vFrete    := 0;
  lItemNota.Prod.vSeg      := 0;
  lItemNota.Prod.vDesc     := 0;

  lItemNota.Prod.CEST := '1111111';

  lItemNota.infAdProd := 'Informacao Adicional do Produto';

  {
    abaixo os campos incluidos no layout a partir da NT 2020/005
  }
  // Opcional - Preencher com o C�digo de Barras pr�prio ou de terceiros que seja diferente do padr�o GTIN
  // por exemplo: c�digo de barras de cat�logo, partnumber, etc
  lItemNota.Prod.cBarra := 'ABC123456';
  // Opcional - Preencher com o C�digo de Barras pr�prio ou de terceiros que seja diferente do padr�o GTIN
  //  correspondente �quele da menor unidade comercializ�vel identificado por C�digo de Barras
  // por exemplo: c�digo de barras de cat�logo, partnumber, etc
  lItemNota.Prod.cBarraTrib := 'ABC123456';

  // Declara��o de Importa��o. Pode ser adicionada v�rias atrav�s do comando Prod.DI.Add
  (*
  DI := lItemNota.Prod.DI.Add;
  DI.nDi         := '';
  DI.dDi         := now;
  DI.xLocDesemb  := '';
  DI.UFDesemb    := '';
  DI.dDesemb     := now;
  {
    tvMaritima, tvFluvial, tvLacustre, tvAerea, tvPostal, tvFerroviaria, tvRodoviaria,

    abaixo os novos valores incluidos a partir da NT 2020/005

    tvConduto, tvMeiosProprios, tvEntradaSaidaFicta, tvCourier, tvEmMaos, tvPorReboque
  }
  DI.tpViaTransp := tvRodoviaria;
  DI.vAFRMM := 0;
  {
    tiContaPropria, tiContaOrdem, tiEncomenda
  }
  DI.tpIntermedio := tiContaPropria;
  DI.CNPJ := '';
  DI.UFTerceiro := '';
  DI.cExportador := '';

  Adicao := DI.adi.Add;
  Adicao.nAdicao     := 1;
  Adicao.nSeqAdi     := 1;
  Adicao.cFabricante := '';
  Adicao.vDescDI     := 0;
  Adicao.nDraw       := '';
  *)

//Campos para venda de ve�culos novos

  lItemNota.Prod.veicProd.tpOP    := toVendaConcessionaria;
  lItemNota.Prod.veicProd.chassi  := '';
  lItemNota.Prod.veicProd.cCor    := '';
  lItemNota.Prod.veicProd.xCor    := '';
  lItemNota.Prod.veicProd.pot     := '';
  lItemNota.Prod.veicProd.Cilin   := '';
  lItemNota.Prod.veicProd.pesoL   := '';
  lItemNota.Prod.veicProd.pesoB   := '';
  lItemNota.Prod.veicProd.nSerie  := '';
  lItemNota.Prod.veicProd.tpComb  := '';
  lItemNota.Prod.veicProd.nMotor  := '';
  lItemNota.Prod.veicProd.CMT     := '';
  lItemNota.Prod.veicProd.dist    := '';
  lItemNota.Prod.veicProd.anoMod  := 0;
  lItemNota.Prod.veicProd.anoFab  := 0;
  lItemNota.Prod.veicProd.tpPint  := '';
  lItemNota.Prod.veicProd.tpVeic  := 0;
  lItemNota.Prod.veicProd.espVeic := 0;
  lItemNota.Prod.veicProd.VIN     := '';
  lItemNota.Prod.veicProd.condVeic := cvAcabado;
  lItemNota.Prod.veicProd.cMod    := '';

// Campos de Rastreabilidade do lItemNota
  {
  O grupo <rastro> permiti a rastreabilidade de qualquer lItemNota sujeito a
  regula��es sanit�rias, casos de recolhimento/recall, al�m de defensivos agr�colas,
  produtos veterin�rios, odontol�gicos, medicamentos, bebidas, �guas envasadas,
  embalagens, etc., a partir da indica��o de informa��es de n�mero de lote,
  data de fabrica��o/produ��o, data de validade, etc.
  Obrigat�rio o preenchimento deste grupo no caso de medicamentos e
  produtos farmac�uticos.
  }

  // Ocorr�ncias: 0 - 500
  (*
  Rastro := lItemNota.Prod.rastro.Add;

  Rastro.nLote  := '17H8F5';
  Rastro.qLote  := 1;
  Rastro.dFab   := StrToDate('01/08/2017');
  Rastro.dVal   := StrToDate('01/08/2019');
  Rastro.cAgreg := ''; // C�digo de Agrega��o (opcional) de 1 at� 20 d�gitos
  *)

//Campos espec�ficos para venda de medicamentos

  // Ocorr�ncias: 1 - 500 ==> 1 - 1 (4.00)
  (*
  Medicamento := lItemNota.Prod.med.Add;

  Medicamento.cProdANVISA := '1256802470029';
  Medicamento.vPMC        := 100.00; // Pre�o m�ximo consumidor
  *)

//Campos espec�ficos para venda de armamento
  (*
  Arma := lItemNota.Prod.arma.Add;
  Arma.nSerie := 0;
  Arma.tpArma := taUsoPermitido;
  Arma.nCano  := 0;
  Arma.descr  := '';
  *)

//Campos espec�ficos para venda de combust�vel(distribuidoras)

  lItemNota.Prod.comb.cProdANP := 0;
  lItemNota.Prod.comb.CODIF    := '';
  lItemNota.Prod.comb.qTemp    := 0;
  lItemNota.Prod.comb.UFcons   := '';

  lItemNota.Prod.comb.CIDE.qBCprod   := 0;
  lItemNota.Prod.comb.CIDE.vAliqProd := 0;
  lItemNota.Prod.comb.CIDE.vCIDE     := 0;

  lItemNota.Prod.comb.ICMS.vBCICMS   := 0;
  lItemNota.Prod.comb.ICMS.vICMS     := 0;
  lItemNota.Prod.comb.ICMS.vBCICMSST := 0;
  lItemNota.Prod.comb.ICMS.vICMSST   := 0;

  lItemNota.Prod.comb.ICMSInter.vBCICMSSTDest := 0;
  lItemNota.Prod.comb.ICMSInter.vICMSSTDest   := 0;

  lItemNota.Prod.comb.ICMSCons.vBCICMSSTCons := 0;
  lItemNota.Prod.comb.ICMSCons.vICMSSTCons   := 0;
  lItemNota.Prod.comb.ICMSCons.UFcons        := '';


  with lItemNota.Imposto do
  begin
    // lei da transparencia nos impostos
    vTotTrib := 0;

    with ICMS do
    begin
      // caso o CRT seja:
      // 1=Simples Nacional
      // Os valores aceitos para CSOSN s�o:
      // csosn101, csosn102, csosn103, csosn201, csosn202, csosn203,
      // csosn300, csosn400, csosn500,csosn900

      // 2=Simples Nacional, excesso sublimite de receita bruta;
      // ou 3=Regime Normal.
      // Os valores aceitos para CST s�o:
      // cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
      // cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
      // cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN, cstRep60

      // (consulte o contador do seu cliente para saber qual deve ser utilizado)
      // Pode variar de um lItemNota para outro.

      orig := oeNacional;

      if lNFe.Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
      begin
        CST     := cst00;
        modBC   := dbiPrecoTabelado;
        vBC     := 100;
        pICMS   := 18;
        vICMS   := 18;
        modBCST := dbisMargemValorAgregado;
        pMVAST  := 0;
        pRedBCST:= 0;
        vBCST   := 0;
        pICMSST := 0;
        vICMSST := 0;
        pRedBC  := 0;
      end
      else
      begin
        CSOSN   := csosn101;
        modBC   := dbiValorOperacao;
        pCredSN := 5;
        vCredICMSSN := 100 * pCredSN / 100;;
        vBC     := 0;
        pICMS   := 0;
        vICMS   := 0;
        modBCST := dbisListaNeutra;
        pMVAST  := 0;
        pRedBCST:= 0;
        vBCST   := 0;
        pICMSST := 0;
        vICMSST := 0;
      end;

      vBCFCPST := 100;
      pFCPST := 2;
      vFCPST := 2;
      vBCSTRet := 0;
      pST := 0;
      vICMSSubstituto := 0;
      vICMSSTRet := 0;

      vBCFCPSTRet := 0;
      pFCPSTRet := 0;
      vFCPSTRet := 0;
      pRedBCEfet := 0;
      vBCEfet := 0;
      pICMSEfet := 0;
      vICMSEfet := 0;

      {
        abaixo os campos incluidos no layout a partir da NT 2020/005
      }
      // Informar apenas nos motivos de desonera��o documentados abaixo
      vICMSSTDeson := 0;
      {
        o campo abaixo s� aceita os valores:
        mdiProdutorAgropecuario, mdiOutros, mdiOrgaoFomento
        Campo ser� preenchido quando o campo anterior estiver preenchido.
      }
      motDesICMSST := mdiOutros;

      // Percentual do diferimento do ICMS relativo ao Fundo de Combate � Pobreza (FCP).
      // No caso de diferimento total, informar o percentual de diferimento "100"
      pFCPDif := 0;
      // Valor do ICMS relativo ao Fundo de Combate � Pobreza (FCP) diferido
      vFCPDif := 0;
      // Valor do ICMS relativo ao Fundo de Combate � Pobreza (FCP) realmente devido.
      vFCPEfet := 0;
    end;

    with ICMSUFDest do
    begin
      // partilha do ICMS e fundo de probreza
      vBCUFDest      := 0.00;
      pFCPUFDest     := 0.00;
      pICMSUFDest    := 0.00;
      pICMSInter     := 0.00;
      pICMSInterPart := 0.00;
      vFCPUFDest     := 0.00;
      vICMSUFDest    := 0.00;
      vICMSUFRemet   := 0.00;
    end;

    (*
    // IPI, se hpouver...
    with IPI do
    begin
      CST      := ipi99;
      clEnq    := '999';
      CNPJProd := '';
      cSelo    := '';
      qSelo    := 0;
      cEnq     := '';

      vBC    := 100;
      qUnid  := 0;
      vUnid  := 0;
      pIPI   := 5;
      vIPI   := 5;
    end;
    *)

    with II do
    begin
      II.vBc      := 0;
      II.vDespAdu := 0;
      II.vII      := 0;
      II.vIOF     := 0;
    end;

    with PIS do
    begin
      CST  := pis99;
      vBC  := 0;
      pPIS := 0;
      vPIS := 0;

      qBCProd   := 0;
      vAliqProd := 0;
      vPIS      := 0;
    end;

    with PISST do
    begin
      vBc       := 0;
      pPis      := 0;
      qBCProd   := 0;
      vAliqProd := 0;
      vPIS      := 0;
      {
        abaixo o campo incluido no layout a partir da NT 2020/005
      }
      {
        valores aceitos pelo campo:
        ispNenhum, ispPISSTNaoCompoe, ispPISSTCompoe
      }
      // Indica se o valor do PISST comp�e o valor total da NF-e
      IndSomaPISST :=  ispNenhum;
    end;

    with COFINS do
    begin
      CST     := cof99;
      vBC     := 0;
      pCOFINS := 0;
      vCOFINS := 0;
      qBCProd   := 0;
      vAliqProd := 0;
    end;

    with COFINSST do
    begin
      vBC       := 0;
      pCOFINS   := 0;
      qBCProd   := 0;
      vAliqProd := 0;
      vCOFINS   := 0;
      {
        abaixo o campo incluido no layout a partir da NT 2020/005
      }
      {
        valores aceitos pelo campo:
        iscNenhum, iscCOFINSSTNaoCompoe, iscCOFINSSTCompoe
      }
      // Indica se o valor da COFINS ST comp�e o valor total da NF-e
      indSomaCOFINSST :=  iscNenhum;
    end;
  end;

  if lNFe.Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
  begin
    lNFe.Total.ICMSTot.vBC := 100;
    lNFe.Total.ICMSTot.vICMS := 18;
  end
  else
  begin
    lNFe.Total.ICMSTot.vBC := 0;
    lNFe.Total.ICMSTot.vICMS := 0;
  end;

  lNFe.Total.ICMSTot.vBCST   := 0;
  lNFe.Total.ICMSTot.vST     := 0;
  lNFe.Total.ICMSTot.vProd   := 100;
  lNFe.Total.ICMSTot.vFrete  := 0;
  lNFe.Total.ICMSTot.vSeg    := 0;
  lNFe.Total.ICMSTot.vDesc   := 0;
  lNFe.Total.ICMSTot.vII     := 0;
  lNFe.Total.ICMSTot.vIPI    := 0;
  lNFe.Total.ICMSTot.vPIS    := 0;
  lNFe.Total.ICMSTot.vCOFINS := 0;
  lNFe.Total.ICMSTot.vOutro  := 0;
  lNFe.Total.ICMSTot.vNF     := 100;

  // lei da transparencia de impostos
  lNFe.Total.ICMSTot.vTotTrib := 0;

  // partilha do icms e fundo de probreza
  lNFe.Total.ICMSTot.vFCPUFDest   := 0.00;
  lNFe.Total.ICMSTot.vICMSUFDest  := 0.00;
  lNFe.Total.ICMSTot.vICMSUFRemet := 0.00;

  lNFe.Total.ICMSTot.vFCPST     := 0;
  lNFe.Total.ICMSTot.vFCPSTRet  := 0;

  lNFe.Total.retTrib.vRetPIS    := 0;
  lNFe.Total.retTrib.vRetCOFINS := 0;
  lNFe.Total.retTrib.vRetCSLL   := 0;
  lNFe.Total.retTrib.vBCIRRF    := 0;
  lNFe.Total.retTrib.vIRRF      := 0;
  lNFe.Total.retTrib.vBCRetPrev := 0;
  lNFe.Total.retTrib.vRetPrev   := 0;

  lNFe.Transp.modFrete := mfContaEmitente;
  lNFe.Transp.Transporta.CNPJCPF  := '';
  lNFe.Transp.Transporta.xNome    := '';
  lNFe.Transp.Transporta.IE       := '';
  lNFe.Transp.Transporta.xEnder   := '';
  lNFe.Transp.Transporta.xMun     := '';
  lNFe.Transp.Transporta.UF       := '';

  lNFe.Transp.retTransp.vServ    := 0;
  lNFe.Transp.retTransp.vBCRet   := 0;
  lNFe.Transp.retTransp.pICMSRet := 0;
  lNFe.Transp.retTransp.vICMSRet := 0;
  lNFe.Transp.retTransp.CFOP     := '';
  lNFe.Transp.retTransp.cMunFG   := 0;

  Volume := lNFe.Transp.Vol.New;
  Volume.qVol  := 1;
  Volume.esp   := 'Especie';
  Volume.marca := 'Marca';
  Volume.nVol  := 'Numero';
  Volume.pesoL := 100;
  Volume.pesoB := 110;

  //Lacres do volume. Pode ser adicionado v�rios
  (*
  Lacre := Volume.Lacres.Add;
  Lacre.nLacre := '';
  *)

  lNFe.Cobr.Fat.nFat  := '1001'; // 'Numero da Fatura'
  lNFe.Cobr.Fat.vOrig := 100;
  lNFe.Cobr.Fat.vDesc := 0;
  lNFe.Cobr.Fat.vLiq  := 100;

  Duplicata := lNFe.Cobr.Dup.New;
  Duplicata.nDup  := '001';
  Duplicata.dVenc := now+10;
  Duplicata.vDup  := 50;

  Duplicata := lNFe.Cobr.Dup.New;
  Duplicata.nDup  := '002';
  Duplicata.dVenc := now+20;
  Duplicata.vDup  := 50;

    // O grupo infIntermed s� deve ser gerado nos casos de opera��o n�o presencial
    // pela internet em site de terceiros (Intermediadores).
//  NotaF.NFe.infIntermed.CNPJ := '';
//  NotaF.NFe.infIntermed.idCadIntTran := '';

  lNFe.InfAdic.infCpl     :=  '';
  lNFe.InfAdic.infAdFisco :=  '';

  ObsComplementar := lNFe.InfAdic.obsCont.New;
  ObsComplementar.xCampo := 'ObsCont';
  ObsComplementar.xTexto := 'Texto';

  ObsFisco := lNFe.InfAdic.obsFisco.New;
  ObsFisco.xCampo := 'ObsFisco';
  ObsFisco.xTexto := 'Texto';

//Processo referenciado
  (*
  ProcReferenciado := NotaF.Nfe.InfAdic.procRef.Add;
  ProcReferenciado.nProc := '';
  ProcReferenciado.indProc := ipSEFAZ;
  *)

  lNFe.exporta.UFembarq   := '';;
  lNFe.exporta.xLocEmbarq := '';

  lNFe.compra.xNEmp := '';
  lNFe.compra.xPed  := '';
  lNFe.compra.xCont := '';

// YA. Informa��es de pagamento

  lPagto := lNFe.pag.New;
  lPagto.indPag := ipVista;
  lPagto.tPag   := fpDinheiro;
  lPagto.vPag   := 50;

// Exemplo de pagamento integrado.

  lPagto := lNFe.pag.New;
  lPagto.indPag := ipVista;
  lPagto.tPag   := fpCartaoCredito;

  {
    abaixo o campo incluido no layout a partir da NT 2020/006
  }
  {
    se tPag for fpOutro devemos incluir o campo xPag
  InfoPgto.xPag := 'Caderneta';
  }
  lPagto.vPag   := 50;
  lPagto.tpIntegra := tiPagIntegrado;
  lPagto.CNPJ      := '05481336000137';
  lPagto.tBand     := bcVisa;
  lPagto.cAut      := '1234567890123456';

// YA09 Troco
// Regra opcional: Informar se valor dos pagamentos maior que valor da nota.
// Regra obrigat�ria: Se informado, N�o pode diferir de "(+) vPag (id:YA03) (-) vNF (id:W16)"
//  NotaF.NFe.pag.vTroco := 75;

  {
    abaixo o campo incluido no layout a partir da NT 2020/006
  }
  // CNPJ do Intermediador da Transa��o (agenciador, plataforma de delivery,
  // marketplace e similar) de servi�os e de neg�cios.
  lNFe.infIntermed.CNPJ := '';
  // Nome do usu�rio ou identifica��o do perfil do vendedor no site do intermediador
  // (agenciador, plataforma de delivery, marketplace e similar) de servi�os e de
  // neg�cios.
  lNFe.infIntermed.idCadIntTran := '';

  ACBrNFe1.NotasFiscais.GerarNFe;
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

  //somente quando � cart�o
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

  //servicos (n�o exite na NFC-e)
  lNFe.Total.ISSQNtot.vServ := 0.00;
  lNFe.Total.ISSQNtot.vBC := 0.00;
  lNFe.Total.ISSQNtot.vISS := 0.00;
  lNFe.Total.ISSQNtot.vPIS := 0.00;
  lNFe.Total.ISSQNtot.vCOFINS := 0.00;

  //transporte (frete), no caso de nfc-e n�o poder ter frete
  lNFe.Transp.modFrete := mfSemFrete;


  ACBrNFe1.NotasFiscais.GerarNFe;
  ACBrNFe1.NotasFiscais[0].GravarXML(ExtractFilePath(ParamStr(0))+'notafiscal.xml');
  ACBrNFe1.NotasFiscais.ImprimirPDF;

  Result := aNFe;
end;

end.
