unit ACBrNFe.entity.interfaces;

interface

type
  iGeral<T> = interface
    function IdCSC(Value: String): iGeral<T>; overload;
    function IdCSC: String; overload;
    function CSC(Value: String): iGeral<T>; overload;
    function CSC: String; overload;
    function Salvar(Value: Boolean): iGeral<T>; overload;
    function Salvar: Boolean; overload;
    function VersaoDF(Value: String): iGeral<T>; overload;
    function VersaoDF: String; overload;
    function VersaoQRCode(Value: String): iGeral<T>; overload;
    function VersaoQRCode: String; overload;
    function FormaEmissao(Value: String): iGeral<T>; overload;
    function FormaEmissao: String; overload;
    function SSLLib(Value: String): iGeral<T>; overload;
    function SSLLib: String; overload;
    function ExibirErroSchema(Value: Boolean): iGeral<T>; overload;
    function ExibirErroSchema: Boolean; overload;
    function FormatoAlerta(Value: String): iGeral<T>; overload;
    function FormatoAlerta: String; overload;
    function Build: T;
  end;

  iWebService<T> = interface
    function TimeZoneModoDeteccao(Value: String): iWebService<T>; overload;
    function TimeZoneModoDeteccao: String; overload;
    function UF(Value: String): iWebService<T>; overload;
    function UF: String; overload;
    function Salvar(Value: Boolean): iWebService<T>; overload;
    function Salvar: Boolean; overload;
    function Visualizar(Value: Boolean): iWebService<T>; overload;
    function Visualizar: Boolean; overload;
    function Ambiente(Value: String): iWebService<T>; overload;
    function Ambiente: String; overload;
    function TimeOut(Value: Integer): iWebService<T>; overload;
    function TimeOut: Integer; overload;
    function AguardarConsultaRet(Value: Integer): iWebService<T>; overload;
    function AguardarConsultaRet: Integer; overload;
    function Tentativas(Value: Integer): iWebService<T>; overload;
    function Tentativas: Integer; overload;
    function IntervaloTentativas(Value: Integer): iWebService<T>; overload;
    function IntervaloTentativas: Integer; overload;
    function AjustaAguardaConsultaRet(Value: Boolean): iWebService<T>; overload;
    function AjustaAguardaConsultaRet: Boolean; overload;
    function ProxyHost(Value: String): iWebService<T>; overload;
    function ProxyHost: String; overload;
    function ProxyPort(Value: String): iWebService<T>; overload;
    function ProxyPort: String; overload;
    function ProxyUser(Value: String): iWebService<T>; overload;
    function ProxyUser: String; overload;
    function ProxyPass(Value: String): iWebService<T>; overload;
    function ProxyPass: String; overload;
    function Build: T;
  end;

  iConfiguracao = interface
    function AdicionarLiteral(Value: Boolean): iConfiguracao; overload;
    function AdicionarLiteral: Boolean; overload;
    function EmissaoPathNFe(Value: Boolean): iConfiguracao; overload;
    function EmissaoPathNFe: Boolean; overload;
    function SepararPorMes(Value: Boolean): iConfiguracao; overload;
    function SepararPorMes: Boolean; overload;
    function SepararPorModelo(Value: Boolean): iConfiguracao; overload;
    function SepararPorModelo: Boolean; overload;
    function SepararPorCNPJ(Value: Boolean): iConfiguracao; overload;
    function SepararPorCNPJ: Boolean; overload;
    function Salvar(Value: Boolean): iConfiguracao; overload;
    function Salvar: Boolean; overload;
    function SalvarEvento(Value: Boolean): iConfiguracao; overload;
    function SalvarEvento: Boolean; overload;
    function PathNFe(Value: String): iConfiguracao; overload;
    function PathNFe: String; overload;
    function PathInu(Value: String): iConfiguracao; overload;
    function PathInu: String; overload;
    function PathEvento(Value: String): iConfiguracao; overload;
    function PathEvento: String; overload;
    function PathSalvar(Value: String): iConfiguracao; overload;
    function PathSalvar: String; overload;
    function PathSchemas(Value: String): iConfiguracao; overload;
    function PathSchemas: String; overload;
    function ModeloDF(Value: String): iConfiguracao; overload;
    function ModeloDF: String; overload;
    function SSL(Value: String): iConfiguracao; overload;
    function SSL: String; overload;
    function Geral: iGeral<iConfiguracao>;
    function WebService: iWebService<iConfiguracao>;
    function PathPDF(Value: String): iConfiguracao; overload;
    function PathPDF: String; overload;
    function Logo(Value: String): iConfiguracao; overload;
    function Logo: String; overload;
    function Sistema(Value: String): iConfiguracao; overload;
    function Sistema: String; overload;
    function Site(Value: String): iConfiguracao; overload;
    function Site: String; overload;
    function Email(Value: String): iConfiguracao; overload;
    function Email: String; overload;
    function Build: iConfiguracao;
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
    function Serie(Value: Integer): iIde; overload;
    function Serie: Integer; overload;
    function nNF(Value: Integer): iIde; overload;
    function nNF: Integer; overload;
    function cNF(Value: Integer): iIde; overload;
    function cNF: Integer; overload;
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
    function cUF(Value: Integer): iIde; overload;
    function cUF: Integer; overload;
    function cMunFG(Value: Integer): iIde; overload;
    function cMunFG: Integer; overload;
    function finNFe(Value: String): iIde; overload;
    function finNFe: String; overload;
    function indIntermed(Value: String): iIde; overload;
    function indIntermed: String; overload;
    function Build: iIde;
  end;

  iEnderEmit<T> = interface
    function fone(Value: String): iEnderEmit<T>; overload;
    function fone: String; overload;
    function xLgr(Value: String): iEnderEmit<T>; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEnderEmit<T>; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEnderEmit<T>; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderEmit<T>; overload;
    function xBairro: String; overload;
    function xMun(Value: String): iEnderEmit<T>; overload;
    function xMun: String; overload;
    function cMun(Value: Integer): iEnderEmit<T>; overload;
    function cMun: Integer; overload;
    function UF(Value: String): iEnderEmit<T>; overload;
    function UF: String; overload;
    function CEP(Value: Integer): iEnderEmit<T>; overload;
    function CEP: Integer; overload;
    function cPais(Value: Integer): iEnderEmit<T>; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderEmit<T>; overload;
    function xPais: String; overload;
    function Build: T;
  end;

  iEmitente = interface
    function xNome(Value: String): iEmitente; overload;
    function xNome: String; overload;
    function xFant(Value: String): iEmitente; overload;
    function xFant: String; overload;
    function CNPJCPF(Value: String): iEmitente; overload;
    function CNPJCPF: String; overload;
    function IE(Value: String): iEmitente; overload;
    function IE: String; overload;
    function IEST(Value: String): iEmitente; overload;
    function IEST: String; overload;
    function CNAE(Value: String): iEmitente; overload;
    function CNAE: String; overload;
    function EnderEmit: iEnderEmit<iEmitente>;
    function CRT(Value: String): iEmitente; overload;
    function CRT: String; overload;
    function IM(Value: String): iEmitente; overload;
    function IM: String; overload;
    function Build: iEmitente;
  end;

  iEnderDest<T> = interface
    function fone(Value: String): iEnderDest<T>; overload;
    function fone: String; overload;
    function CEP(Value: Integer): iEnderDest<T>; overload;
    function CEP: Integer; overload;
    function xLgr(Value: String): iEnderDest<T>; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEnderDest<T>; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEnderDest<T>; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderDest<T>; overload;
    function xBairro: String; overload;
    function cMun(Value: Integer): iEnderDest<T>; overload;
    function cMun: Integer; overload;
    function xMun(Value: String): iEnderDest<T>; overload;
    function xMun: String; overload;
    function UF(Value: String): iEnderDest<T>; overload;
    function UF: String; overload;
    function cPais(Value: Integer): iEnderDest<T>; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderDest<T>; overload;
    function xPais: String; overload;
    function Build: T;
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
    function EnderDest: iEnderDest<iDest>;
    function Build: iDest;
  end;

  iVeicProd<T> = interface
    function tpOP(Value: String): iVeicProd<T>; overload;
    function tpOP: String; overload;
    function chassi(Value: String): iVeicProd<T>; overload;
    function chassi: String; overload;
    function cCor(Value: String): iVeicProd<T>; overload;
    function cCor: String; overload;
    function xCor(Value: String): iVeicProd<T>; overload;
    function xCor: String; overload;
    function pot(Value: String): iVeicProd<T>; overload;
    function pot: String; overload;
    function Cilin(Value: String): iVeicProd<T>; overload;
    function Cilin: String; overload;
    function pesoL(Value: String): iVeicProd<T>; overload;
    function pesoL: String; overload;
    function pesoB(Value: String): iVeicProd<T>; overload;
    function pesoB: String; overload;
    function nSerie(Value: String): iVeicProd<T>; overload;
    function nSerie: String; overload;
    function tpComb(Value: String): iVeicProd<T>; overload;
    function tpComb: String; overload;
    function nMotor(Value: String): iVeicProd<T>; overload;
    function nMotor: String; overload;
    function CMT(Value: String): iVeicProd<T>; overload;
    function CMT: String; overload;
    function dist(Value: String): iVeicProd<T>; overload;
    function dist: String; overload;
    function anoMod(Value: Integer): iVeicProd<T>; overload;
    function anoMod: Integer; overload;
    function anoFab(Value: Integer): iVeicProd<T>; overload;
    function anoFab: Integer; overload;
    function tpPint(Value: String): iVeicProd<T>; overload;
    function tpPint: String; overload;
    function tpVeic(Value: Integer): iVeicProd<T>; overload;
    function tpVeic: Integer; overload;
    function espVeic(Value: Integer): iVeicProd<T>; overload;
    function espVeic: Integer; overload;
    function VIN(Value: String): iVeicProd<T>; overload;
    function VIN: String; overload;
    function condVeic(Value: String): iVeicProd<T>; overload;
    function condVeic: String; overload;
    function cMod(Value: String): iVeicProd<T>; overload;
    function cMod: String; overload;
    function Build: T;
  end;

  iCIDE<T> = interface
    function qBCprod(Value: Currency): iCIDE<T>; overload;
    function qBCprod: Currency; overload;
    function vAliqProd(Value: Currency): iCIDE<T>; overload;
    function vAliqProd: Currency; overload;
    function vCIDE(Value: Currency): iCIDE<T>; overload;
    function vCIDE: Currency; overload;
    function Build: T;
  end;

  iICMSUFDest<T> = interface
    function vBCUFDest(Value: Currency): iICMSUFDest<T>; overload;
    function vBCUFDest: Currency; overload;
    function pFCPUFDest(Value: Currency): iICMSUFDest<T>; overload;
    function pFCPUFDest: Currency; overload;
    function pICMSUFDest(Value: Currency): iICMSUFDest<T>; overload;
    function pICMSUFDest: Currency; overload;
    function pICMSInter(Value: Currency): iICMSUFDest<T>; overload;
    function pICMSInter: Currency; overload;
    function pICMSInterPart(Value: Currency): iICMSUFDest<T>; overload;
    function pICMSInterPart: Currency; overload;
    function vFCPUFDest(Value: Currency): iICMSUFDest<T>; overload;
    function vFCPUFDest: Currency; overload;
    function vICMSUFDest(Value: Currency): iICMSUFDest<T>; overload;
    function vICMSUFDest: Currency; overload;
    function vICMSUFRemet(Value: Currency): iICMSUFDest<T>; overload;
    function vICMSUFRemet: Currency; overload;
    function Build: T;
  end;

  iICMS<T> = interface
    function orig(Value: String): iICMS<T>; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS<T>; overload;
    function CST: String; overload;
    function CSOSN(Value: String): iICMS<T>; overload;
    function CSOSN: String; overload;
    function modBC(Value: String): iICMS<T>; overload;
    function modBC: String; overload;
    function vBC(Value: Currency): iICMS<T>; overload;
    function vBC: Currency; overload;
    function pICMS(Value: Currency): iICMS<T>; overload;
    function pICMS: Currency; overload;
    function vICMS(Value: Currency): iICMS<T>; overload;
    function vICMS: Currency; overload;
    function vBCICMS(Value: Currency): iICMS<T>; overload;
    function vBCICMS: Currency; overload;
    function modBCST(Value: String): iICMS<T>; overload;
    function modBCST: String; overload;
    function pMVAST(Value: Currency): iICMS<T>; overload;
    function pMVAST: Currency; overload;
    function pRedBCST(Value: Currency): iICMS<T>; overload;
    function pRedBCST: Currency; overload;
    function vBCST(Value: Currency): iICMS<T>; overload;
    function vBCST: Currency; overload;
    function pICMSST(Value: Currency): iICMS<T>; overload;
    function pICMSST: Currency; overload;
    function vICMSST(Value: Currency): iICMS<T>; overload;
    function vICMSST: Currency; overload;
    function pRedBC(Value: Currency): iICMS<T>; overload;
    function pRedBC: Currency; overload;
    function vBCICMSST(Value: Currency): iICMS<T>; overload;
    function vBCICMSST: Currency; overload;
    function pCredSN(Value: Currency): iICMS<T>; overload;
    function pCredSN: Currency; overload;
    function vCredICMSSN(Value: Currency): iICMS<T>; overload;
    function vCredICMSSN: Currency; overload;
    function vBCFCPST(Value: Currency): iICMS<T>; overload;
    function vBCFCPST: Currency; overload;
    function pFCPST(Value: Currency): iICMS<T>; overload;
    function pFCPST: Currency; overload;
    function vFCPST(Value: Currency): iICMS<T>; overload;
    function vFCPST: Currency; overload;
    function vBCSTRet(Value: Currency): iICMS<T>; overload;
    function vBCSTRet: Currency; overload;
    function pST(Value: Currency): iICMS<T>; overload;
    function pST: Currency; overload;
    function vICMSSubstituto(Value: Currency): iICMS<T>; overload;
    function vICMSSubstituto: Currency; overload;
    function vICMSSTRet(Value: Currency): iICMS<T>; overload;
    function vICMSSTRet: Currency; overload;
    function vBCFCPSTRet(Value: Currency): iICMS<T>; overload;
    function vBCFCPSTRet: Currency; overload;
    function pFCPSTRet(Value: Currency): iICMS<T>; overload;
    function pFCPSTRet: Currency; overload;
    function vFCPSTRet(Value: Currency): iICMS<T>; overload;
    function vFCPSTRet: Currency; overload;
    function pRedBCEfet(Value: Currency): iICMS<T>; overload;
    function pRedBCEfet: Currency; overload;
    function vBCEfet(Value: Currency): iICMS<T>; overload;
    function vBCEfet: Currency; overload;
    function pICMSEfet(Value: Currency): iICMS<T>; overload;
    function pICMSEfet: Currency; overload;
    function vICMSEfet(Value: Currency): iICMS<T>; overload;
    function vICMSEfet: Currency; overload;
    function vICMSSTDeson(Value: Currency): iICMS<T>; overload;
    function vICMSSTDeson: Currency; overload;
    function motDesICMSST(Value: String): iICMS<T>; overload;
    function motDesICMSST: String; overload;
    function pFCPDif(Value: Currency): iICMS<T>; overload;
    function pFCPDif: Currency; overload;
    function vFCPDif(Value: Currency): iICMS<T>; overload;
    function vFCPDif: Currency; overload;
    function vFCPEfet(Value: Currency): iICMS<T>; overload;
    function vFCPEfet: Currency; overload;
    function Build: T;
  end;

  iICMSInter<T> = interface
    function vBCICMSSTDest(Value: Currency): iICMSInter<T>; overload;
    function vBCICMSSTDest: Currency; overload;
    function vICMSSTDest(Value: Currency): iICMSInter<T>; overload;
    function vICMSSTDest: Currency; overload;
    function Build: T;
  end;
  
  iICMSCons<T> = interface
    function vBCICMSSTCons(Value: Currency): iICMSCons<T>; overload;
    function vBCICMSSTCons: Currency; overload;
    function vICMSSTCons(Value: Currency): iICMSCons<T>; overload;
    function vICMSSTCons: Currency; overload;
    function UFcons(Value: String): iICMSCons<T>; overload;
    function UFcons: String; overload;
    function Build: T;
  end;
  
  iComb<T> = interface
    function cProdANP(Value: Integer): iComb<T>; overload;
    function cProdANP: Integer; overload;
    function CODIF(Value: String): iComb<T>; overload;
    function CODIF: String; overload;
    function qTemp(Value: Currency): iComb<T>; overload;
    function qTemp: Currency; overload;
    function UFcons(Value: String): iComb<T>; overload;
    function UFcons: String; overload;
    function CIDE: iCIDE<iComb<T>>;
    function ICMS: iICMS<iComb<T>>;
    function ICMSInter: iICMSInter<iComb<T>>;
    function ICMSCons: iICMSCons<iComb<T>>;
    function Build: T;
  end;

  iII<T> = interface
    function vBC(Value: Currency): iII<T>; overload;
    function vBC: Currency; overload;
    function vDespAdu(Value: Currency): iII<T>; overload;
    function vDespAdu: Currency; overload;
    function vII(Value: Currency): iII<T>; overload;
    function vII: Currency; overload;
    function vIOF(Value: Currency): iII<T>; overload;
    function vIOF: Currency; overload;
    function Build: T;
  end;
  
  iPis<T> = interface
    function CST(Value: String): iPis<T>; overload;
    function CST: String; overload;
    function vBC(Value: Currency): iPis<T>; overload;
    function vBC: Currency; overload;
    function pPIS(Value: Currency): iPis<T>; overload;
    function pPIS: Currency; overload;
    function vPIS(Value: Currency): iPis<T>; overload;
    function vPIS: Currency; overload;
    function qBCprod(Value: Currency): iPis<T>; overload;
    function qBCprod: Currency; overload;
    function vAliqProd(Value: Currency): iPis<T>; overload;
    function vAliqProd: Currency; overload;
    function Build: T;
  end;

  iPISST<T> = interface
    function vBC(Value: Currency): iPISST<T>; overload;
    function vBC: Currency; overload;
    function pPIS(Value: Currency): iPISST<T>; overload;
    function pPIS: Currency; overload;
    function qBCprod(Value: Currency): iPISST<T>; overload;
    function qBCprod: Currency; overload;
    function vAliqProd(Value: Currency): iPISST<T>; overload;
    function vAliqProd: Currency; overload;
    function vPIS(Value: Currency): iPISST<T>; overload;
    function vPIS: Currency; overload;
    function IndSomaPISST(Value: String): iPISST<T>; overload;
    function IndSomaPISST: String; overload;
    function Build: T;
  end;
  
  iCOFINS<T> = interface
    function CST(Value: String): iCOFINS<T>; overload;
    function CST: String; overload;
    function vBC(Value: Currency): iCOFINS<T>; overload;
    function vBC: Currency; overload;
    function pCOFINS(Value: Currency): iCOFINS<T>; overload;
    function pCOFINS: Currency; overload;
    function vCOFINS(Value: Currency): iCOFINS<T>; overload;
    function vCOFINS: Currency; overload;
    function qBCprod(Value: Currency): iCOFINS<T>; overload;
    function qBCprod: Currency; overload;
    function vAliqProd(Value: Currency): iCOFINS<T>; overload;
    function vAliqProd: Currency; overload;
    function Build: T;
  end;

  iCOFINSST<T> = interface
    function vBC(Value: Currency): iCOFINSST<T>; overload;
    function vBC: Currency; overload;
    function pCOFINS(Value: Currency): iCOFINSST<T>; overload;
    function pCOFINS: Currency; overload;
    function qBCprod(Value: Currency): iCOFINSST<T>; overload;
    function qBCprod: Currency; overload;
    function vAliqProd(Value: Currency): iCOFINSST<T>; overload;
    function vAliqProd: Currency; overload;
    function vCOFINS(Value: Currency): iCOFINSST<T>; overload;
    function vCOFINS: Currency; overload;
    function indSomaCOFINSST(Value: String): iCOFINSST<T>; overload;
    function indSomaCOFINSST: String; overload;
    function Build: T;
  end;
  
  iImposto<T> = interface
    function vTotTrib(Value: Currency): iImposto<T>; overload;
    function vTotTrib: Currency; overload;
    function ICMS: iICMS<iImposto<T>>;
    function ICMSUFDest: iICMSUFDest<iImposto<T>>;
    function II: iII<iImposto<T>>;
    function Pis: iPis<iImposto<T>>;
    function PISST: iPISST<iImposto<T>>;
    function COFINS: iCOFINS<iImposto<T>>;
    function COFINSST: iCOFINSST<iImposto<T>>;
    function Build: T;
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
    function cBarra(Value: String): iProd; overload;
    function cBarra: String; overload;
    function cBarraTrib(Value: String): iProd; overload;
    function cBarraTrib: String; overload;
    function veicProd: iVeicProd<iProd>;
    function Combustivel: iComb<iProd>;
    function Imposto: iImposto<iProd>;
    function Build: iProd;
  end;

  iICMSTot<T> = interface
    function vBC(Value: Currency): iICMSTot<T>; overload;
    function vBC: Currency; overload;
    function vICMS(Value: Currency): iICMSTot<T>; overload;
    function vICMS: Currency; overload;
    function vBCST(Value: Currency): iICMSTot<T>; overload;
    function vBCST: Currency; overload;
    function vST(Value: Currency): iICMSTot<T>; overload;
    function vST: Currency; overload;
    function vProd(Value: Currency): iICMSTot<T>; overload;
    function vProd: Currency; overload;
    function vFrete(Value: Currency): iICMSTot<T>; overload;
    function vFrete: Currency; overload;
    function vSeg(Value: Currency): iICMSTot<T>; overload;
    function vSeg: Currency; overload;
    function vDesc(Value: Currency): iICMSTot<T>; overload;
    function vDesc: Currency; overload;
    function vII(Value: Currency): iICMSTot<T>; overload;
    function vII: Currency; overload;
    function vIPI(Value: Currency): iICMSTot<T>; overload;
    function vIPI: Currency; overload;
    function vPIS(Value: Currency): iICMSTot<T>; overload;
    function vPIS: Currency; overload;
    function vCOFINS(Value: Currency): iICMSTot<T>; overload;
    function vCOFINS: Currency; overload;
    function vOutro(Value: Currency): iICMSTot<T>; overload;
    function vOutro: Currency; overload;
    function vNF(Value: Currency): iICMSTot<T>; overload;
    function vNF: Currency; overload;
    function vTotTrib(Value: Currency): iICMSTot<T>; overload;
    function vTotTrib: Currency; overload;
    function vFCPUFDest(Value: Currency): iICMSTot<T>; overload;
    function vFCPUFDest: Currency; overload;
    function vICMSUFDest(Value: Currency): iICMSTot<T>; overload;
    function vICMSUFDest: Currency; overload;
    function vICMSUFRemet(Value: Currency): iICMSTot<T>; overload;
    function vICMSUFRemet: Currency; overload;
    function vFCPST(Value: Currency): iICMSTot<T>; overload;
    function vFCPST: Currency; overload;
    function vFCPSTRet(Value: Currency): iICMSTot<T>; overload;
    function vFCPSTRet: Currency; overload;    
    function Build: T;
  end;

  iRetTrib<T> = interface
    function vRetPIS(Value: Currency): iRetTrib<T>; overload;
    function vRetPIS: Currency; overload;
    function vRetCOFINS(Value: Currency): iRetTrib<T>; overload;
    function vRetCOFINS: Currency; overload;
    function vRetCSLL(Value: Currency): iRetTrib<T>; overload;
    function vRetCSLL: Currency; overload;
    function vBCIRRF(Value: Currency): iRetTrib<T>; overload;
    function vBCIRRF: Currency; overload;
    function vIRRF(Value: Currency): iRetTrib<T>; overload;
    function vIRRF: Currency; overload;
    function vBCRetPrev(Value: Currency): iRetTrib<T>; overload;
    function vBCRetPrev: Currency; overload;
    function vRetPrev(Value: Currency): iRetTrib<T>; overload;
    function vRetPrev: Currency; overload;
    function Build: T;
  end;
  
  iTotal = interface
    function ICMSTot: iICMSTot<iTotal>;
    function retTrib: iRetTrib<iTotal>;
    function Build: iTotal;
  end;

  iTransp = interface
    function modFrete(Value: String): iTransp; overload;
    function modFrete: String; overload;
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
    function vServ(Value: Currency): iTransp; overload;
    function vServ: Currency; overload;
    function vBCRet(Value: Currency): iTransp; overload;
    function vBCRet: Currency; overload;
    function pICMSRet(Value: Currency): iTransp; overload;
    function pICMSRet: Currency; overload;
    function vICMSRet(Value: Currency): iTransp; overload;
    function vICMSRet: Currency; overload;
    function CFOP(Value: String): iTransp; overload;
    function CFOP: String; overload;
    function cMunFG(Value: Integer): iTransp; overload;
    function cMunFG: Integer; overload;
    function Build: iTransp;
  end;

  iTranspVol = interface
    function qVol(Value: Integer): iTranspVol; overload;
    function qVol: Integer; overload;
    function esp(Value: String): iTranspVol; overload;
    function esp: String; overload;
    function marca(Value: String): iTranspVol; overload;
    function marca: String; overload;
    function nVol(Value: String): iTranspVol; overload;
    function nVol: String; overload;
    function pesoL(Value: Currency): iTranspVol; overload;
    function pesoL: Currency; overload;
    function pesoB(Value: Currency): iTranspVol; overload;
    function pesoB: Currency; overload;
    function Build: iTranspVol;
  end;

  iCobFat = interface
    function nFat(Value: String): iCobFat; overload;
    function nFat: String; overload;
    function vOrig(Value: Currency): iCobFat; overload;
    function vOrig: Currency; overload;
    function vDesc(Value: Currency): iCobFat; overload;
    function vDesc: Currency; overload;
    function vLiq(Value: Currency): iCobFat; overload;
    function vLiq: Currency; overload;
    function Build: iCobFat;
  end;

  iCobDup = interface
    function nDup(Value: String): iCobDup; overload;
    function nDup: String; overload;
    function dVenc(Value: TDateTime): iCobDup; overload;
    function dVenc: TDateTime; overload;
    function vDup(Value: Currency): iCobDup; overload;
    function vDup: Currency; overload;
    function Build: iCobDup;
  end;

  iInfAdic = interface
    function infCpl(Value: String): iInfAdic; overload;
    function infCpl: String; overload;
    function infAdFisco(Value: String): iInfAdic; overload;
    function infAdFisco: String; overload;
    function Build: iInfAdic;
  end;

  iInfAdicCpl = interface
    function xCampo(Value: String): iInfAdicCpl; overload;
    function xCampo: String; overload;
    function xTexto(Value: String): iInfAdicCpl; overload;
    function xTexto: String; overload;
    function Build: iInfAdicCpl;
  end;

  iInfAdicObsFisco = interface
    function xCampo(Value: String): iInfAdicObsFisco; overload;
    function xCampo: String; overload;
    function xTexto(Value: String): iInfAdicObsFisco; overload;
    function xTexto: String; overload;
    function Build: iInfAdicObsFisco;
  end;

  iExporta = interface
    function UFembarq(Value: String): iExporta; overload;
    function UFembarq: String; overload;
    function xLocEmbarq(Value: String): iExporta; overload;
    function xLocEmbarq: String; overload;
    function Build: iExporta;
  end;

  iCompra = interface
    function xNEmp(Value: String): iCompra; overload;
    function xNEmp: String; overload;
    function xPed(Value: String): iCompra; overload;
    function xPed: String; overload;
    function xCont(Value: String): iCompra; overload;
    function xCont: String; overload;
    function Build: iCompra;
  end;

  iPagamento = interface
    function indPag(Value: String): iPagamento; overload;
    function indPag: String; overload;
    function tPag(Value: String): iPagamento; overload;
    function tPag: String; overload;
    function vPag(Value: Currency): iPagamento; overload;
    function vPag: Currency; overload;
    function tpIntegra(Value: String): iPagamento; overload;
    function tpIntegra: String; overload;
    function CNPJ(Value: String): iPagamento; overload;
    function CNPJ: String; overload;
    function tBand(Value: String): iPagamento; overload;
    function tBand: String; overload;
    function cAut(Value: String): iPagamento; overload;
    function cAut: String; overload;
    function Build: iPagamento;
  end;

  iInfIntermed = interface
    function CNPJ(Value: String): iInfIntermed; overload;
    function CNPJ: String; overload;
    function idCadIntTran(Value: String): iInfIntermed; overload;
    function idCadIntTran: String; overload;
    function Build: iInfIntermed;
  end;

  iFactoryEntity = interface
    function Configuracao: iConfiguracao;
    function Ide: iIde;
    function Emitente: iEmitente;
    function Destinatario: iDest;
    function Produto: iProd;
    function Total: iTotal;
    function Transportadora: iTransp;
    function TrasportadoraVolume: iTranspVol;
    function CobrancaFatura: iCobFat;
    function CobrancaDuplicata: iCobDup;
    function InfAdicionais: iInfAdic;
    function InfAdicCpl: iInfAdicCpl;
    function InfAdicObsFisco: iInfAdicObsFisco;
    function Exporta: iExporta;
    function Compra: iCompra;
    function Pagamento: iPagamento;
    function InfIntermed: iInfIntermed;
  end;

implementation

end.
