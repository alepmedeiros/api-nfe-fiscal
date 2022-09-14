unit APIFiscalDelphi.Interfaces;

interface

type
  iNotaFiscal = interface;
  iTransp = interface;
  iTotal = interface;
  iProd = interface;
  iEmitente = interface;
  iDest = interface;
  iConfiguracao = interface;
  
  iTranspVol = interface
    function QVol(Value: Integer): iTranspVol; overload;
    function QVol: Integer; overload;
    function Esp(Value: String): iTranspVol; overload;
    function Esp: String; overload;
    function Marca(Value: String): iTranspVol; overload;
    function Marca: String; overload;
    function NVol(Value: String): iTranspVol; overload;
    function NVol: String; overload;
    function PesoL(Value: Currency): iTranspVol; overload;
    function PesoL: Currency; overload;
    function PesoB(Value: Currency): iTranspVol; overload;
    function PesoB: Currency; overload;
    function &End: iNotaFiscal;
  end;

  iVeicTransp = interface
    function Placa(Value: String): iVeicTransp; overload;
    function Placa: String; overload;
    function UG(Value: String): iVeicTransp; overload;
    function UG: String; overload;
    function RNTC(Value: String): iVeicTransp; overload;
    function RNTC: String; overload;
    function &End: iTransp;
  end;

  iTransp = interface
    function ModFrete(Value: String): iTransp; overload;
    function ModFrete: String; overload;
    function CNPJCPF(Value: String): iTransp; overload;
    function CNPJCPF: String; overload;
    function xNome(Value: String): iTransp; overload;
    function xNome: String; overload;
    function IE(Value: String): iTransp; overload;
    function IE: String; overload;
    function xEnder(Value: String): iTransp; overload;
    function xEnder: String; overload;
    function xMun(Value: String): iTransp; overload;
    function xMun: String; overload;
    function UF(Value: String): iTransp; overload;
    function UF: String; overload;
    function VeicTransp : iVeicTransp;
    function &End: iNotaFiscal;
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
    function &End: iTotal;
  end;

  iTotal = interface
    function ICMSTot: iICMSTot;
    function &End: iNotaFiscal;
  end;

  iProdImposto = interface
    function vBCUFDest(Value: Currency): iProdImposto; overload;
    function vBCUFDest: Currency; overload;
    function pFCPUFDest(Value: Currency): iProdImposto; overload;
    function pFCPUFDest: Currency; overload;
    function pICMSUFDest(Value: Currency): iProdImposto; overload;
    function pICMSUFDest: Currency; overload;
    function pICMSInter(Value: Currency): iProdImposto; overload;
    function pICMSInter: Currency; overload;
    function pICMSInterPart(Value: Currency): iProdImposto; overload;
    function pICMSInterPart: Currency; overload;
    function vFCPUFDest(Value: Currency): iProdImposto; overload;
    function vFCPUFDest: Currency; overload;
    function vICMSUFDest(Value: Currency): iProdImposto; overload;
    function vICMSUFDest: Currency; overload;
    function vICMSUFRemet(Value: Currency): iProdImposto; overload;
    function vICMSUFRemet: Currency; overload;
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
    function qCom(Value: Currency): iProd; overload;
    function qCom: Currency; overload;
    function vUnCom(Value: Currency): iProd; overload;
    function vUnCom: Currency; overload;
    function vProd(Value: Currency): iProd; overload;
    function vProd: Currency; overload;
    function cEANTrib(Value: String): iProd; overload;
    function cEANTrib: String; overload;
    function uTrib(Value: String): iProd; overload;
    function uTrib: String; overload;
    function qTrib(Value: Currency): iProd; overload;
    function qTrib: Currency; overload;
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
    function infAdProd(Value: String): iProd; overload;
    function infAdProd: String; overload;
    function Imposto: iProdImposto;
    function &End: iNotaFiscal;
  end;

  iPagamento = interface
    function indPag(Value: String): iPagamento; overload;
    function indPag: String; overload;
    function tPag(Value: String): iPagamento; overload;
    function tPag: String; overload;
    function vPag(Value: Currency): iPagamento; overload;
    function vPag: Currency; overload;
    function &End: iNotaFiscal;
  end;

  iInfAdic = interface
    function infCpl(Value: String): iInfAdic; overload;
    function infCpl: String; overload;
    function infAdFisco(Value: String): iInfAdic; overload;
    function infAdFisco: String; overload;
    function &End: iNotaFiscal;
  end;

  iInfAdicObsFisco = interface
    function xCampo(Value: String): iInfAdicObsFisco; overload;
    function xCampo: String; overload;
    function xTexto(Value: String): iInfAdicObsFisco; overload;
    function xTexto: String; overload;
    function &End: iNotaFiscal;
  end;

  iInfAdicObsComp = interface
    function xCampo(Value: String): iInfAdicObsComp; overload;
    function xCampo: String; overload;
    function xTexto(Value: String): iInfAdicObsComp; overload;
    function xTexto: String; overload;
    function &End: iNotaFiscal;
  end;

  iIde = interface
    function cNF(Value: Integer): iIde; overload;
    function cNF: Integer; overload;
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
    function dEmi(Value: TDateTime): iIde; overload;
    function dEmi: TDateTime; overload;
    function dSaiEnt(Value: TDateTime): iIde; overload;
    function dSaiEnt: TDateTime; overload;
    function hSaiEnt(Value: TDateTime): iIde; overload;
    function hSaiEnt: TDateTime; overload;
    function tpNF(Value: String): iIde; overload;
    function tpNF: String; overload;
    function tpEmis(Value: String): iIde; overload;
    function tpEmis: String; overload;
    function tpAmb(Value: String): iIde; overload;
    function tpAmb: String; overload;
    function verProc(Value: String): iIde; overload;
    function verProc: String; overload;
    function cUF(Value: String): iIde; overload;
    function cUF: String; overload;
    function cMunFG(Value: Integer): iIde; overload;
    function cMunFG: Integer; overload;
    function finNFe(Value: String): iIde; overload;
    function finNFe: String; overload;
    function tpImp(Value: String): iIde; overload;
    function tpImp: String; overload;
    function &End: iNotaFiscal;
  end;

  iGeral = interface
    function ModeloDF(Value: String): iGeral; overload;
    function ModeloDF: String; overload;
    function VersaoDF(Value: String): iGeral; overload;
    function VersaoDF: String; overload;
    function IdCSC(Value: String): iGeral; overload;
    function IdCSC: String; overload;
    function CSC(Value: String): iGeral; overload;
    function CSC: String; overload;
    function Salvar(Value: Boolean): iGeral; overload;
    function Salvar: Boolean; overload;
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
    function &End: iNotaFiscal;
  end;

  iExporta = interface
    function UFembarq(Value: String): iExporta; overload;
    function UFembarq: String; overload;
    function xLocEmbarq(Value: String): iExporta; overload;
    function xLocEmbarq: String; overload;
    function &End: iNotaFiscal;
  end;

  iEnderEmit = interface
    function fone(Value: String): iEnderEmit; overload;
    function fone: String; overload;
    function CEP(Value: Integer): iEnderEmit; overload;
    function CEP: Integer; overload;
    function xLgr(Value: String): iEnderEmit; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEnderEmit; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEnderEmit; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderEmit; overload;
    function xBairro: String; overload;
    function cMun(Value: Integer): iEnderEmit; overload;
    function cMun: Integer; overload;
    function xMun(Value: String): iEnderEmit; overload;
    function xMun: String; overload;
    function UF(Value: String): iEnderEmit; overload;
    function UF: String; overload;
    function cPais(Value: Integer): iEnderEmit; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderEmit; overload;
    function xPais: String; overload;
    function &End: iEmitente;
  end;

  iEmitente = interface
    function IE(Value: String): iEmitente; overload;
    function IE: String; overload;
    function xNome(Value: String): iEmitente; overload;
    function xNome: String; overload;
    function xFant(Value: String): iEmitente; overload;
    function xFant: String; overload;
    function CNPJCPF(Value: String): iEmitente; overload;
    function CNPJCPF: String; overload;
    function EnderEmit: iEnderEmit;
    function IEST(Value: String): iEmitente; overload;
    function IEST: String; overload;
    function IM(Value: String): iEmitente; overload;
    function IM: String; overload;
    function CNAE(Value: String): iEmitente; overload;
    function CNAE: String; overload;
    function CRT(Value: String): iEmitente; overload;
    function CRT: String; overload;
    function &End: iEmitente;
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
    function &End: iNotaFiscal;
  end;

  iCompra = interface
    function xNEmp(Value: String): iCompra; overload;
    function xNEmp: String; overload;
    function xPed(Value: String): iCompra; overload;
    function xPed: String; overload;
    function xCont(Value: String): iCompra; overload;
    function xCont: String; overload;
    function &End: iNotaFiscal;
  end;

  iCobrFat = interface
    function nFat(Value: String): iCobrFat; overload;
    function nFat: String; overload;
    function vOrig(Value: Currency): iCobrFat; overload;
    function vOrig: Currency; overload;
    function vDesc(Value: Currency): iCobrFat; overload;
    function vDesc: Currency; overload;
    function vLiq(Value: Currency): iCobrFat; overload;
    function vLiq: Currency; overload;
    function &End: iNotaFiscal;
  end;
  
  iCobrDup = interface
    function nDup(Value: String): iCobrDup; overload;
    function nDup: String; overload;
    function dVenc(Value: TDateTime): iCobrDup; overload;
    function dVenc: TDateTime; overload;
    function vDup(Value: Currency): iCobrDup; overload;
    function vDup: Currency; overload;
    function &End: iNotaFiscal;
  end;
  
  iNotaFiscal = interface
    function Geral : iGeral;
    function Emitente  : iEmitente;
    function Ide  : iIde;
    function Dest  : iDest;
    function Prod  : iProd;
    function Total  : iTotal;
    function Transp  : iTransp;
    function TranspVol  : iTranspVol;
    function CobrFat  : iCobrFat;
    function CobrDup  : iCobrDup;
    function InfAdic  : iInfAdic;
    function InfAdicObsFisco  : iInfAdicObsFisco;
    function InfAdicObsComp  : iInfAdicObsComp;
    function Exporta  : iExporta;
    function Pagamento  : iPagamento;
    function Compra : iCompra;
    function GerarNFe : iNotaFiscal;
    function EnviarNFe : iNotaFiscal;
  end;

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

  iWebService = interface
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

  iDanfe = interface
    function PahePDF(Value: String): iDanfe; overload;
    function PahePDF: String; overload;
    function Logo(Value: String): iDanfe; overload;
    function Logo: String; overload;
    function Sistema(Value: String): iDanfe; overload;
    function Sistema: String; overload;
    function Site(Value: String): iDanfe; overload;
    function Site: String; overload;
    function Email(Value: String): iDanfe; overload;
    function Email: String; overload;
    function &End: iCOnfiguracao;
  end;

  iConfiguracao = interface
    function Arquivos: iArquivos;
    function WebService: iWebService;
    function Danfe: iDanfe;
  end;

implementation

end.
