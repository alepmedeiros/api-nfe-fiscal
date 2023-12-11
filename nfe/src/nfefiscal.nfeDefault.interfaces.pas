unit nfefiscal.nfeDefault.interfaces;

interface

type
  iConfiguracao = interface;
  iWebService = interface;
  iDest = interface;
  iNFe = interface;
  iEmit = interface;
  iTotal = interface;
  iTransp = interface;
  iCobr = interface;
  iindPag = interface;
  iProd = interface;
  iComb = interface;

  iArquivos = interface
    function AdicionarLiteral(Value: Boolean): iArquivos; overload;
    function AdicionarLiteral: Boolean; overload;
    function EmissaoPathNFe(Value: Boolean): iArquivos; overload;
    function EmissaoPathNFe: Boolean; overload;
    function SepararPorMes(Value: Boolean): iArquivos; overload;
    function SepararPorMes: Boolean; overload;
    function SepararPorModelo(Value: Boolean): iArquivos; overload;
    function SepararPorModelo: Boolean; overload;
    function SepararPorCNPJ(Value: Boolean): iArquivos; overload;
    function SepararPorCNPJ: Boolean; overload;
    function Salvar(Value: Boolean): iArquivos; overload;
    function Salvar: Boolean; overload;
    function SalvarEvento(Value: Boolean): iArquivos; overload;
    function SalvarEvento: Boolean; overload;
    function PathNFe(Value: String): iArquivos; overload;
    function PathNFe: String; overload;
    function PathInu(Value: String): iArquivos; overload;
    function PathInu: String; overload;
    function PathEvento(Value: String): iArquivos; overload;
    function PathEvento: String; overload;
    function PathSalvar(Value: String): iArquivos; overload;
    function PathSalvar: String; overload;
    function PathSchemas(Value: String): iArquivos; overload;
    function PathSchemas: String; overload;
    function &End: iConfiguracao;
  end;

  iGeral = interface
    function ModeloDF(Value: String): iGeral; overload;
    function ModeloDF: String; overload;
    function IdCSC(Value: String): iGeral; overload;
    function IdCSC: String; overload;
    function CSC(Value: String): iGeral; overload;
    function CSC: String; overload;
    function Salvar(Value: Boolean): iGeral; overload;
    function Salvar: Boolean; overload;
    function VersaoDF(Value: String): iGeral; overload;
    function VersaoDF: String; overload;
    function VersaoQRCode(Value: String): iGeral; overload;
    function VersaoQRCode: String; overload;
    function FormaEmissao(Value: String): iGeral; overload;
    function FormaEmissao: String; overload;
    function SSLLib(Value: String): iGeral; overload;
    function SSLLib: String; overload;
    function ExibirErroSchema(Value: Boolean): iGeral; overload;
    function ExibirErroSchema: Boolean; overload;
    function FormatoAlerta(Value: String): iGeral; overload;
    function FormatoAlerta: String; overload;
    function &End: iConfiguracao;
  end;


  iTimeZoneConf = interface
    function ModoDeteccao(Value: String): iTimeZoneConf; overload;
    function ModoDeteccao: String; overload;
    function &End: iWebService;
  end;

  iWebService = interface
    function TimeZoneConf: iTimeZoneConf;
    function UF(Value: String): iWebService; overload;
    function UF: String; overload;
    function Salvar(Value: Boolean): iWebService; overload;
    function Salvar: Boolean; overload;
    function Visualizar(Value: Boolean): iWebService; overload;
    function Visualizar: Boolean; overload;
    function Ambiente(Value: String): iWebService; overload;
    function Ambiente: String; overload;
    function TimeOut(Value: Integer): iWebService; overload;
    function TimeOut: Integer; overload;
    function AguardarConsultaRet(Value: Integer): iWebService; overload;
    function AguardarConsultaRet: Integer; overload;
    function Tentativas(Value: Integer): iWebService; overload;
    function Tentativas: Integer; overload;
    function IntervaloTentativas(Value: Integer): iWebService; overload;
    function IntervaloTentativas: Integer; overload;
    function AjustaAguardaConsultaRet(Value: Boolean): iWebService; overload;
    function AjustaAguardaConsultaRet: Boolean; overload;
    function ProxyHost(Value: String): iWebService; overload;
    function ProxyHost: String; overload;
    function ProxyPort(Value: String): iWebService; overload;
    function ProxyPort: String; overload;
    function ProxyUser(Value: String): iWebService; overload;
    function ProxyUser: String; overload;
    function ProxyPass(Value: String): iWebService; overload;
    function ProxyPass: String; overload;
    function &End: iConfiguracao;
  end;

  iSSL = interface
    function SSLType(Value: String): iSSL; overload;
    function SSLType: String; overload;
    function &End: iConfiguracao;
  end;

  iDanfe = interface
    function PathPDF(Value: String): iDanfe; overload;
    function PathPDF: String; overload;
    function Logo(Value: String): iDanfe; overload;
    function Logo: String; overload;
    function Sistema(Value: String): iDanfe; overload;
    function Sistema: String; overload;
    function Site(Value: String): iDanfe; overload;
    function Site: String; overload;
    function Email(Value: String): iDanfe; overload;
    function Email: String; overload;
    function &End: iConfiguracao;
  end;

  iConfiguracao = interface
    function Arquivos: iArquivos;
    function Geral: iGeral;
    function SSL: iSSL;
    function WebService: iWebService;
    function DANFE: iDanfe;
    function &End: iConfiguracao;
  end;

  iIde = interface
    function tpAmb(Value: String): iIde; overload;
    function tpAmb: String; overload;
    function verProc(Value: String): iIde; overload;
    function verProc: String; overload;
    function tpImp(Value: String): iIde; overload;
    function tpImp: String; overload;
    function natOp(Value: String): iIde; overload;
    function natOp: String; overload;
    function indPag(Value: String): iIde; overload;
    function indPag: String; overload;
    function modelo(Value: Integer): iIde; overload;
    function modelo: Integer; overload;
    function serie(Value: Integer): iIde; overload;
    function serie: Integer; overload;
    function nNF(Value: Integer): iIde; overload;
    function nNF: Integer; overload;
    function cNF(Value: String): iIde; overload;
    function cNF: String; overload;
    function dEmi(Value: TDate): iIde; overload;
    function dEmi: TDate; overload;
    function dSaiEnt(Value: TDate): iIde; overload;
    function dSaiEnt: TDate; overload;
    function hSaiEnt(Value: TDate): iIde; overload;
    function hSaiEnt: TDate; overload;
    function tpNF(Value: String): iIde; overload;
    function tpNF: String; overload;
    function tpEmis(Value: String): iIde; overload;
    function tpEmis: String; overload;
    function cMunFG(Value: Integer): iIde; overload;
    function cMunFG: Integer; overload;
    function finNFe(Value: String): iIde; overload;
    function finNFe: String; overload;
    function indIntermed(Value: String): iIde; overload;
    function &End: iNFe;
  end;

  iEnderEmit = interface
    function fone(Value: String): iEnderEmit; overload;
    function fone: String; overload;
    function xLgr(Value: String): iEnderEmit; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEnderEmit; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEnderEmit; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderEmit; overload;
    function xBairro: String; overload;
    function xMun(Value: String): iEnderEmit; overload;
    function xMun: String; overload;
    function cMun(Value: Integer): iEnderEmit; overload;
    function cMun: Integer; overload;
    function UF(Value: String): iEnderEmit; overload;
    function UF: String; overload;
    function CEP(Value: Integer): iEnderEmit; overload;
    function CEP: Integer; overload;
    function cPais(Value: Integer): iEnderEmit; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderEmit; overload;
    function xPais: String; overload;
    function &End: iEmit;
  end;

  iEmit = interface
    function xNome(Value: String): iEmit; overload;
    function xNome: String; overload;
    function xFant(Value: String): iEmit; overload;
    function xFant: String; overload;
    function CNPJCPF(Value: String): iEmit; overload;
    function CNPJCPF: String; overload;
    function IE(Value: String): iEmit; overload;
    function IE: String; overload;
    function IEST(Value: String): iEmit; overload;
    function IEST: String; overload;
    function CNAE(Value: String): iEmit; overload;
    function CNAE: String; overload;
    function CRT(Value: String): iEmit; overload;
    function CRT: String; overload;
    function IM(Value: String): iEmit; overload;
    function IM: String; overload;
    function EnderEmit: iEnderEmit;
    function &End: iNFe;
  end;

  iEnderDest = interface
    function Fone(Value: String): iEnderDest; overload;
    function Fone: String; overload;
    function CEP(Value: Integer): iEnderDest; overload;
    function CEP: Integer; overload;
    function xLgr(Value: String): iEnderDest; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEnderDest; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEnderDest; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderDest; overload;
    function xBairro: String; overload;
    function cMun(Value: Integer): iEnderDest; overload;
    function cMun: Integer; overload;
    function xMun(Value: String): iEnderDest; overload;
    function xMun: String; overload;
    function UF(Value: String): iEnderDest; overload;
    function UF: String; overload;
    function cPais(Value: Integer): iEnderDest; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderDest; overload;
    function xPais: String; overload;
    function &End: iDest;
  end;

  iDest = interface
    function CNPJCPF(Value: String): iDest; overload;
    function CNPJCPF: String; overload;
    function IE(Value: String): iDest; overload;
    function IE: String; overload;
    function ISUF(Value: String): iDest; overload;
    function ISUF: String; overload;
    function xNome(Value: String): iDest; overload;
    function xNome: String; overload;
    function EnderDest: iEnderDest;
    function &End: iNFe;
  end;

  iICMSTot = interface
    function vBC(Value: Currency): iICMSTot; overload;
    function vBC: Currency; overload;
    function vICMS(Value: Currency): iICMSTot; overload;
    function vICMS: Currency; overload;
    function vBCST(Value: Currency): iICMSTot; overload;
    function vBCST: Currency; overload;
    function vST(Value: Currency): iICMSTot; overload;
    function vST: Currency; overload;
    function vProd(Value: Currency): iICMSTot; overload;
    function vProd: Currency; overload;
    function vFrete(Value: Currency): iICMSTot; overload;
    function vFrete: Currency; overload;
    function vSeg(Value: Currency): iICMSTot; overload;
    function vSeg: Currency; overload;
    function vDesc(Value: Currency): iICMSTot; overload;
    function vDesc: Currency; overload;
    function vII(Value: Currency): iICMSTot; overload;
    function vII: Currency; overload;
    function vIPI(Value: Currency): iICMSTot; overload;
    function vIPI: Currency; overload;
    function vPIS(Value: Currency): iICMSTot; overload;
    function vPIS: Currency; overload;
    function vCOFINS(Value: Currency): iICMSTot; overload;
    function vCOFINS: Currency; overload;
    function vOutro(Value: Currency): iICMSTot; overload;
    function vOutro: Currency; overload;
    function vNF(Value: Currency): iICMSTot; overload;
    function vNF: Currency; overload;
    function vTotTrib(Value: Currency): iICMSTot; overload;
    function vTotTrib: Currency; overload;
    function vFCPUFDest(Value: Currency): iICMSTot; overload;
    function vFCPUFDest: Currency; overload;
    function vICMSUFDest(Value: Currency): iICMSTot; overload;
    function vICMSUFDest: Currency; overload;
    function vICMSUFRemet(Value: Currency): iICMSTot; overload;
    function vICMSUFRemet: Currency; overload;
    function vFCPST(Value: Currency): iICMSTot; overload;
    function vFCPST: Currency; overload;
    function vFCPSTRet(Value: Currency): iICMSTot; overload;
    function vFCPSTRet: Currency; overload;
    function &End: iTotal;
  end;

  iretTrib = interface
    function vRetPIS(Value: Currency): iretTrib; overload;
    function vRetPIS: Currency; overload;
    function vRetCOFINS(Value: Currency): iretTrib; overload;
    function vRetCOFINS: Currency; overload;
    function vRetCSLL(Value: Currency): iretTrib; overload;
    function vRetCSLL: Currency; overload;
    function vBCIRRF(Value: Currency): iretTrib; overload;
    function vBCIRRF: Currency; overload;
    function vIRRF(Value: Currency): iretTrib; overload;
    function vIRRF: Currency; overload;
    function vBCRetPrev(Value: Currency): iretTrib; overload;
    function vBCRetPrev: Currency; overload;
    function vRetPrev(Value: Currency): iretTrib; overload;
    function vRetPrev: Currency; overload;
    function &End: iTotal;
  end;

  iTotal = interface
    function ICMSTot: iICMSTot;
    function retTrib: iretTrib;
  end;

  iTransporta = interface
    function CNPJCPF(Value: String): iTransporta; overload;
    function CNPJCPF: String; overload;
    function xNome(Value: String): iTransporta; overload;
    function xNome: String; overload;
    function IE(Value: String): iTransporta; overload;
    function IE: String; overload;
    function xEnder(Value: String): iTransporta; overload;
    function xEnder: String; overload;
    function xMun(Value: String): iTransporta; overload;
    function xMun: String; overload;
    function UF(Value: String): iTransporta; overload;
    function UF: String; overload;
    function &End: iTransp;
  end;

  iretTransp = interface
    function vServ(Value: Currency): iretTransp; overload;
    function vServ: Currency; overload;
    function vBCRet(Value: Currency): iretTransp; overload;
    function vBCRet: Currency; overload;
    function pICMSRet(Value: Currency): iretTransp; overload;
    function pICMSRet: Currency; overload;
    function vICMSRet(Value: Currency): iretTransp; overload;
    function vICMSRet: Currency; overload;
    function CFOP(Value: Currency): iretTransp; overload;
    function CFOP: Currency; overload;
    function cMunFG(Value: Integer): iretTransp; overload;
    function cMunFG: Integer; overload;
    function &End: iTransp;
  end;

  iTransp = interface
    function modFrete(Value: String): iTransp; overload;
    function modFrete: String; overload;
    function Transporta: iTransporta;
    function retTransp: iretTransp;
    function Transp: iTransp;
  end;

  iFat = interface
    function nFat(Value: String): iFat; overload;
    function nFat: String; overload;
    function vOrig(Value: Currency): iFat; overload;
    function vOrig: Currency; overload;
    function vDesc(Value: Currency): iFat; overload;
    function vDesc: Currency; overload;
    function vLiq(Value: Currency): iFat; overload;
    function vLiq: Currency; overload;
    function &End: iCobr;
  end;

  iCobr = interface
    function Fat: iFat;
    function &End: iNFe;
  end;

  iInfAdic = interface
    function infCpl(Value: String): iInfAdic; overload;
    function infCpl: String; overload;
    function infAdFisco(Value: String): iInfAdic; overload;
    function infAdFisco: String; overload;
    function &End: iNFe;
  end;


  iexporta = interface
    function UFembarq(Value: String): iexporta; overload;
    function UFembarq: String; overload;
    function xLocEmbarq(Value: String): iexporta; overload;
    function xLocEmbarq: String; overload;
    function &End: iNFe;
  end;

  icompra = interface
    function xNEmp(Value: String): icompra; overload;
    function xNEmp: String; overload;
    function xPed(Value: String): icompra; overload;
    function xPed: String; overload;
    function xCont(Value: String): icompra; overload;
    function xCont: String; overload;
    function &End: iNFe;
  end;

  iPag = interface
    function indPag: iindPag;
    function tPag(Value: String): iPag; overload;
    function tPag: String; overload;
    function vPag(Value: Currency): iPag; overload;
    function vPag: Currency; overload;
    function vTroco(Value: Currency): iPag; overload;
    function vTroco: Currency; overload;
    function &End: iNFe;
  end;

  iindPag = interface
    function indPag(Value: String): iindPag; overload;
    function indPag: String; overload;
    function tPag(Value: String): iindPag; overload;
    function tPag: String; overload;
    function vPag(Value: Currency): iindPag; overload;
    function vPag: Currency; overload;
    function tpIntegra(Value: String): iindPag; overload;
    function tpIntegra: String; overload;
    function CNPJ(Value: String): iindPag; overload;
    function CNPJ: String; overload;
    function tBand(Value: String): iindPag; overload;
    function tBand: String; overload;
    function cAut(Value: String): iindPag; overload;
    function cAut: String; overload;
    function &End: iPag;
  end;

  iinfIntermed = interface
    function CNPJ(Value: String): iinfIntermed; overload;
    function CNPJ: String; overload;
    function idCadIntTran(Value: String): iinfIntermed; overload;
    function idCadIntTran: String; overload;
    function &End: iNFe;
  end;

  iNfe = interface
    function Configuracao: iConfiguracao;
    function Ide: iIde;
    function Emit: iEmit;
    function Dest: iDest;
    function infAdProd(Value: String) : iNFe; overload;
    function infAdProd: String; overload;
    function Total: iTotal;
    function Transp: iTransp;
    function Cobr: iCobr;
    function InfAdic: iInfAdic;
    function compra: icompra;
    function exporta: iexporta;
    function pag: iPag;
    function indPag: iindPag;
    function infIntermed: iinfIntermed;
    function &End: iNFe;
  end;

  iVeicProd = interface
    function tpOP(Value: String): iVeicProd; overload;
    function tpOP: String; overload;
    function chassi(Value: String): iVeicProd; overload;
    function chassi: String; overload;
    function cCor(Value: string): iVeicProd; overload;
    function cCor: string; overload;
    function xCor(Value: String): iVeicProd; overload;
    function xCor: String; overload;
    function pot(Value: String): iVeicProd; overload;
    function pot: String; overload;
    function Cilin(Value: String): iVeicProd; overload;
    function Cilin: String; overload;
    function pesoL(Value: String): iVeicProd; overload;
    function pesoL: String; overload;
    function pesoB(Value: String): iVeicProd; overload;
    function pesoB: String; overload;
    function nSerie(Value: String): iVeicProd; overload;
    function nSerie: String; overload;
    function tpComb(Value: String): iVeicProd; overload;
    function tpComb: String; overload;
    function nMotor(Value: String): iVeicProd; overload;
    function nMotor: String; overload;
    function CMT(Value: String): iVeicProd; overload;
    function CMT: String; overload;
    function dist(Value: String): iVeicProd; overload;
    function dist: String; overload;
    function anoMod(Value: Integer): iVeicProd; overload;
    function anoMod: Integer; overload;
    function anoFab(Value: Integer): iVeicProd; overload;
    function anoFab: Integer; overload;
    function tpPint(Value: String): iVeicProd; overload;
    function tpPint: String; overload;
    function tpVeic(Value: Integer): iVeicProd; overload;
    function tpVeic: Integer; overload;
    function espVeic(Value: Integer): iVeicProd; overload;
    function espVeic: Integer; overload;
    function VIN(Value: String): iVeicProd; overload;
    function VIN: String; overload;
    function condVeic(Value: String): iVeicProd; overload;
    function condVeic: String; overload;
    function cMod(Value: String): iVeicProd; overload;
    function cMod: String; overload;
    function &End: iProd;
  end;

  iCIDE = interface
    function qBCprod(Value: Currency): iCIDE; overload;
    function qBCprod: Currency; overload;
    function vAliqProd(Value: Currency): iCIDE; overload;
    function vAliqProd: Currency; overload;
    function vCIDE(Value: Currency): iCIDE; overload;
    function vCIDE: Currency; overload;
    function &End: iComb;
  end;

  iICMSInter = interface
    function vBCICMSSTDest(Value: Currency): iICMSInter; overload;
    function vBCICMSSTDest: Currency; overload;
    function vICMSSTDest(Value: Currency): iICMSInter; overload;
    function vICMSSTDest: Currency; overload;
    function &End: iComb;
  end;

  iICMSCons = interface
    function vBCICMSSTCons(Value: Currency): iICMSCons; overload;
    function vBCICMSSTCons: Currency; overload;
    function vICMSSTCons(Value: Currency): iICMSCons; overload;
    function vICMSSTCons: Currency; overload;
    function UFcons(Value: String): iICMSCons; overload;
    function UFcons: String; overload;
    function &End: iComb;
  end;

  iComb = interface
    function cProdANP(Value: Integer): iComb; overload;
    function cProdANP: Integer; overload;
    function CODIF(Value: string): iComb; overload;
    function CODIF: string; overload;
    function qTemp(Value: Integer): iComb; overload;
    function qTemp: Integer; overload;
    function UFcons(Value: String): iComb; overload;
    function UFcons: String; overload;
    function CIDE: iCIDE;
    function ICMSInter: iICMSInter;
    function ICMSCons: iICMSCons;
    function &End: iProd;
  end;

  iProd = interface
    function nItem(Value: Integer): iProd; overload;
    function nItem: Integer; overload;
    function cProd(Value: String): iProd; overload;
    function cProd: String; overload;
    function cEAN(Value: String): iProd; overload;
    function cEAN: String; overload;
    function xProd(Value: String): iProd; overload;
    function xProd: String; overload;
    function NCM(Value: String): iProd; overload;
    function NCM: String; overload;
    function EXTIPI(Value: String): iProd; overload;
    function EXTIPI: String; overload;
    function CFOP(Value: String): iProd; overload;
    function CFOP: String; overload;
    function uCom(Value: String): iProd; overload;
    function uCom: String; overload;
    function qCom(Value: Integer): iProd; overload;
    function qCom: Integer; overload;
    function vUnCom(Value: Currency): iProd; overload;
    function vUnCom: Currency; overload;
    function vProd(Value: Currency): iProd; overload;
    function vProd: Currency; overload;
    function cEANTrib(Value: String): iProd; overload;
    function cEANTrib: String; overload;
    function uTrib(Value: String): iProd; overload;
    function uTrib: String; overload;
    function qTrib(Value: Integer): iProd; overload;
    function qTrib: Integer; overload;
    function vUnTrib(Value: Currency): iProd; overload;
    function vUnTrib: Currency; overload;
    function vOutro(Value: Currency): iProd; overload;
    function vOutro: Currency; overload;
    function vFrete(Value: Currency): iProd; overload;
    function vFrete: Currency; overload;
    function vSeg(Value: Currency): iProd; overload;
    function vSeg: Currency; overload;
    function vDesc(Value: Currency): iProd; overload;
    function vDesc: Currency; overload;
    function CEST(Value: String): iProd; overload;
    function CEST: String; overload;
    function cBarra(Value: String): iProd; overload;
    function cBarra: String; overload;
    function cBarraTrib(Value: String): iProd; overload;
    function cBarraTrib: String; overload;
    function veicProd: iVeicProd;
    function comb: iComb;
    function &End: iNFe;
  end;

  iDetItem = interface
    function Prod: iProd;
  end;

  iICMS = interface
    function orig(Value: String): iICMS; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS; overload;
    function CST: String; overload;
    function modBC(Value: String): iICMS; overload;
    function modBC: String; overload;
    function vBC(Value: Currency): iICMS; overload;
    function vBC: Currency; overload;
    function pICMS(Value: Currency): iICMS; overload;
    function pICMS: Currency; overload;
    function modBCST(Value: String): iICMS; overload;
    function modBCST: String; overload;
    function pMVAST(Value: Currency): iICMS; overload;
    function pMVAST: Currency; overload;
    function pRedBCST(Value: Currency): iICMS; overload;
    function pRedBCST: Currency; overload;
    function vBCST(Value: Currency): iICMS; overload;
    function vBCST: Currency; overload;
    function pICMSST(Value: Currency): iICMS; overload;
    function pICMSST: Currency; overload;
    function vICMSST(Value: Currency): iICMS; overload;
    function vICMSST: Currency; overload;
    function pRedBC(Value: Currency): iICMS; overload;
    function pRedBC: Currency; overload;
    function CSOSN(Value: String): iICMS; overload;
    function CSOSN: String; overload;
    function pCredSN(Value: Currency): iICMS; overload;
    function pCredSN: Currency; overload;
    function vCredICMSSN(Value: Currency): iICMS; overload;
    function vCredICMSSN: Currency; overload;
    function vICMS(Value: Currency): iICMS; overload;
    function vICMS: Currency; overload;
    function vBCFCPST(Value: Currency): iICMS; overload;
    function vBCFCPST: Currency; overload;
    function pFCPST(Value: Currency): iICMS; overload;
    function pFCPST: Currency; overload;
    function vFCPST(Value: Currency): iICMS; overload;
    function vFCPST: Currency; overload;
    function vBCSTRet(Value: Currency): iICMS; overload;
    function vBCSTRet: Currency; overload;
    function pST(Value: Currency): iICMS; overload;
    function pST: Currency; overload;
    function vICMSSubstituto(Value: Currency): iICMS; overload;
    function vICMSSubstituto: Currency; overload;
    function vICMSSTRet(Value: Currency): iICMS; overload;
    function vICMSSTRet: Currency; overload;
    function vBCFCPSTRet(Value: Currency): iICMS; overload;
    function vBCFCPSTRet: Currency; overload;
    function pFCPSTRet(Value: Currency): iICMS; overload;
    function pFCPSTRet: Currency; overload;
    function vFCPSTRet(Value: Currency): iICMS; overload;
    function vFCPSTRet: Currency; overload;
    function pRedBCEfet(Value: Currency): iICMS; overload;
    function pRedBCEfet: Currency; overload;
    function vBCEfet(Value: Currency): iICMS; overload;
    function vBCEfet: Currency; overload;
    function pICMSEfet(Value: Currency): iICMS; overload;
    function pICMSEfet: Currency; overload;
    function vICMSEfet(Value: Currency): iICMS; overload;
    function vICMSEfet: Currency; overload;
    function vICMSSTDeson(Value: Currency): iICMS; overload;
    function vICMSSTDeson: Currency; overload;
    function motDesICMSST(Value: String): iICMS; overload;
    function motDesICMSST: String; overload;
    function pFCPDif(Value: Currency): iICMS; overload;
    function pFCPDif: Currency; overload;
    function vFCPDif(Value: Currency): iICMS; overload;
    function vFCPDif: Currency; overload;
    function vFCPEfet(Value: Currency): iICMS; overload;
    function vFCPEfet: Currency; overload;
  end;

  iICMSUFDest = interface
    function vBCUFDest(Value: Currency): iICMSUFDest; overload;
    function vBCUFDest: Currency; overload;
    function pFCPUFDest(Value: Currency): iICMSUFDest; overload;
    function pFCPUFDest: Currency; overload;
    function pICMSUFDest(Value: Currency): iICMSUFDest; overload;
    function pICMSUFDest: Currency; overload;
    function pICMSInter(Value: Currency): iICMSUFDest; overload;
    function pICMSInter: Currency; overload;
    function pICMSInterPart(Value: Currency): iICMSUFDest; overload;
    function pICMSInterPart: Currency; overload;
    function vFCPUFDest(Value: Currency): iICMSUFDest; overload;
    function vFCPUFDest: Currency; overload;
    function vICMSUFDest(Value: Currency): iICMSUFDest; overload;
    function vICMSUFDest: Currency; overload;
    function vICMSUFRemet(Value: Currency): iICMSUFDest; overload;
    function vICMSUFRemet: Currency; overload;
  end;

  iII = interface
    function vBc(Value: Currency): iII; overload;
    function vBc: Currency; overload;
    function vDespAdu(Value: Currency): iII; overload;
    function vDespAdu: Currency; overload;
    function vII(Value: Currency): iII; overload;
    function vII: Currency; overload;
    function vIOF(Value: Currency): iII; overload;
    function vIOF: Currency; overload;
  end;

  iPIS = interface
    function CST(Value: String): iPIS; overload;
    function CST: String; overload;
    function vBC(Value: Currency): iPIS; overload;
    function vBC: Currency; overload;
    function pPIS(Value: Currency): iPIS; overload;
    function pPIS: Currency; overload;
    function vPIS(Value: Currency): iPIS; overload;
    function vPIS: Currency; overload;
    function qBCProd(Value: Currency): iPIS; overload;
    function qBCProd: Currency; overload;
    function vAliqProd(Value: Currency): iPIS; overload;
    function vAliqProd: Currency; overload;
  end;

  iPISST = interface
    function vBc(Value: Currency): iPISST; overload;
    function vBc: Currency; overload;
    function pPis(Value: Currency): iPISST; overload;
    function pPis: Currency; overload;
    function qBCProd(Value: Currency): iPISST; overload;
    function qBCProd: Currency; overload;
    function vAliqProd(Value: Currency): iPISST; overload;
    function vAliqProd: Currency; overload;
    function vPIS(Value: Currency): iPISST; overload;
    function vPIS: Currency; overload;
    function IndSomaPISST(Value: String): iPISST; overload;
  end;

  iCOFINS = interface
    function CST(Value: String): iCOFINS; overload;
    function CST: String; overload;
    function vBC(Value: String): iCOFINS; overload;
    function vBC: String; overload;
    function pCOFINS(Value: Currency): iCOFINS; overload;
    function pCOFINS: Currency; overload;
    function vCOFINS(Value: Currency): iCOFINS; overload;
    function vCOFINS: Currency; overload;
    function qBCProd(Value: Currency): iCOFINS; overload;
    function qBCProd: Currency; overload;
    function vAliqProd(Value: Currency): iCOFINS; overload;
    function vAliqProd: Currency; overload;
  end;

  iCOFINSST = interface
    function vBC(Value: Currency): iCOFINSST; overload;
    function vBC: Currency; overload;
    function pCOFINS(Value: Currency): iCOFINSST; overload;
    function pCOFINS: Currency; overload;
    function qBCProd(Value: Currency): iCOFINSST; overload;
    function qBCProd: Currency; overload;
    function vAliqProd(Value: Currency): iCOFINSST; overload;
    function vAliqProd: Currency; overload;
    function vCOFINS(Value: Currency): iCOFINSST; overload;
    function vCOFINS: Currency; overload;
    function indSomaCOFINSST(Value: String): iCOFINSST; overload;
    function indSomaCOFINSST: String; overload;
  end;

  iVolume = interface
    function qVol(Value: Integer): iVolume; overload;
    function qVol: Integer; overload;
    function esp(Value: String): iVolume; overload;
    function esp: String; overload;
    function marca(Value: String): iVolume; overload;
    function marca: String; overload;
    function nVol(Value: String): iVolume; overload;
    function nVol: String; overload;
    function pesoL(Value: Currency): iVolume; overload;
    function pesoL: Currency; overload;
    function pesoB(Value: Currency): iVolume; overload;
    function pesoB: Currency; overload;
  end;

  iDuplicata = interface
    function nDup(Value: String): iDuplicata; overload;
    function nDup: String; overload;
    function dVenc(Value: TDateTime): iDuplicata; overload;
    function dVenc: TDateTime; overload;
    function vDup(Value: Currency): iDuplicata; overload;
    function vDup: Currency; overload;
  end;

  iObsComplementar = interface
    function xCampo(Value: String): iObsComplementar; overload;
    function xCampo: String; overload;
    function xTexto(Value: String): iObsComplementar; overload;
    function xTexto: String; overload;
  end;

  iObsFisco = interface
    function xCampo(Value: String): iObsFisco; overload;
    function xCampo: String; overload;
    function xTexto(Value: String): iObsFisco; overload;
    function xTexto: String; overload;
  end;

  iImposto = interface
    function vTotTrib(Value: Currency): iImposto; overload;
    function vTotTrib: Currency; overload;
    function Imposto: iImposto;
    function ICMSUFDest: iICMSUFDest;
    function II: iII;
    function PIS: iPIS;
    function PISST: iPISST;
    function COFINS: iCOFINS;
    function COFINSST: iCOFINSST;
    function Volume: iVolume;
    function Duplicata: iDuplicata;
    function ObsComplementar: iObsComplementar;
    function ObsFisco: iObsFisco;
  end;

implementation

end.


