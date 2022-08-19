unit nfefiscal.nfe_.interfaces;

interface

uses
  pcnConversao,
  pcnConversaoNFe;

type
  iInfNFe = interface;
  iIde = interface;
  iEnderEmit = interface;
  iEmit = interface;
  iAvulsa = interface;
  iDest = interface;
  iEnderDest = interface;
  iRetirada = interface;
  iEntrega = interface;
  iTotal = interface;
  iICMSTot = interface;
  iISSQNtot = interface;
  iretTrib = interface;
  iTransp = interface;
  iTransporta = interface;
  iretTransp = interface;
  iveicTransp = interface;
  iCobr = interface;
  iFat = interface;
  iinfIntermed = interface;
  iInfAdic = interface;
  iexporta = interface;
  icompra = interface;
  icana = interface;
  iinfNFeSupl = interface;
  iinfRespTec = interface;

  iNFe = interface
    function infNFe: iInfNFe;
    function Ide: iIde;
    function Emit: iEmit;
    function Avulsa: iAvulsa;
    function Dest: iDest;
    function Retirada: iRetirada;
    function Entrega: iEntrega;
//    function autXML: TautXMLCollection read FautXML write SetautXML;
//    function Det: TDetCollection read FDet write SetDet;
    function Total: iTotal;
    function Transp: iTransp;
    function Cobr: iCobr;
//    function pag: TpagCollection read Fpag write Setpag;
    function infIntermed: iinfIntermed;
    function InfAdic: iInfAdic;
    function exporta: iexporta;
    function compra: icompra;
    function cana: icana;
    function infNFeSupl: iinfNFeSupl;
//    function signature: Tsignature read Fsignature write Fsignature;
//    function procNFe: TProcNFe read FProcNFe write FProcNFe;
    function infRespTec: iinfRespTec;
    function &End: iNFe;
  end;

  iInfNFe = interface
    function ID(Value: String): iInfNFe; overload;
    function ID: String; overload;
    function Versao(Value: Real): iInfNFe; overload;
    function Versao: Real; overload;
    function VersaoStr(Value: String): iInfNFe; overload;
    function VersaoStr: String; overload;
    function &End: iNFe;
  end;

  iIde = interface
    function cUF(Value: Integer): iIde; overload;
    function cUF: Integer; overload;
    function cNF(Value: Integer): iIde; overload;
    function cNF: Integer; overload;
    function natOp(Value: String): iIde; overload;
    function natOp: String; overload;
    function indPag(Value: TpcnIndicadorPagamento): iIde; overload;
    function indPag: TpcnIndicadorPagamento; overload;
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
    function tpNF(Value: TpcnTipoNFe): iIde; overload;
    function tpNF: TpcnTipoNFe; overload;
    function idDest(Value: TpcnDestinoOperacao): iIde; overload;
    function idDest: TpcnDestinoOperacao; overload;
    function cMunFG(Value: Integer): iIde; overload;
    function cMunFG: Integer; overload;
//    function NFref: TNFrefCollection read FNFref write SetNFref;
    function tpImp(Value: TpcnTipoImpressao): iIde; overload;
    function tpImp: TpcnTipoImpressao; overload;
    function tpEmis(Value: TpcnTipoEmissao): iIde; overload;
    function tpEmis: TpcnTipoEmissao; overload;
    function cDV(Value: Integer): iIde; overload;
    function cDV: Integer; overload;
    function tpAmb(Value: TpcnTipoAmbiente): iIde; overload;
    function tpAmb: TpcnTipoAmbiente; overload;
    function finNFe(Value: TpcnFinalidadeNFe): iIde; overload;
    function finNFe: TpcnFinalidadeNFe; overload;
    function indFinal(Value: TpcnConsumidorFinal): iIde; overload;
    function indFinal: TpcnConsumidorFinal; overload;
    function indPres(Value: TpcnPresencaComprador): iIde; overload;
    function indPres: TpcnPresencaComprador; overload;
    function indIntermed(Value: TindIntermed): iIde; overload;
    function indIntermed: TindIntermed; overload;
    function procEmi(Value: TpcnProcessoEmissao): iIde; overload;
    function procEmi: TpcnProcessoEmissao; overload;
    function verProc(Value: String): iIde; overload;
    function verProc: String; overload;
    function dhCont(Value: TDateTime): iIde; overload;
    function dhCont: TDateTime; overload;
    function xJust(Value: String): iIde; overload;
    function xJust: String; overload;
    function &End: iNFe;
  end;

  iEmit = interface
    function CNPJCPF(Value: String): iEmit; overload;
    function CNPJCPF: String; overload;
    function xNome(Value: String): iEmit; overload;
    function xNome: String; overload;
    function xFant(Value: String): iEmit; overload;
    function xFant: String; overload;
    function EnderEmit: iEnderEmit;
    function IE(Value: String): iEmit; overload;
    function IEST(Value: String): iEmit; overload;
    function IM(Value: String): iEmit; overload;
    function CNAE(Value: String): iEmit; overload;
    function CRT(Value: TpcnCRT): iEmit; overload;
    function &End: iNFe;
  end;

  iEnderEmit = interface
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
    function CEP(Value: Integer): iEnderEmit; overload;
    function CEP: Integer; overload;
    function cPais(Value: Integer): iEnderEmit; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderEmit; overload;
    function xPais: String; overload;
    function fone(Value: String): iEnderEmit; overload;
    function fone: String; overload;
    function &End: iEmit;
  end;

  iAvulsa = interface
    function CNPJ(Value: String): iAvulsa; overload;
    function CNPJ: String; overload;
    function xOrgao(Value: String): iAvulsa; overload;
    function xOrgao: String; overload;
    function matr(Value: String): iAvulsa; overload;
    function matr: String; overload;
    function xAgente(Value: String): iAvulsa; overload;
    function xAgente: String; overload;
    function fone(Value: String): iAvulsa; overload;
    function fone: String; overload;
    function UF(Value: String): iAvulsa; overload;
    function UF: String; overload;
    function nDAR(Value: String): iAvulsa; overload;
    function nDAR: String; overload;
    function dEmi(Value: TDateTime): iAvulsa; overload;
    function dEmi: TDateTime; overload;
    function vDAR(Value: Currency): iAvulsa; overload;
    function vDAR: Currency; overload;
    function repEmi(Value: String): iAvulsa; overload;
    function repEmi: String; overload;
    function dPag(Value: TDateTime): iAvulsa; overload;
    function dPag: TDateTime; overload;
    function &End: iNFe;
  end;

  iDest = interface
    function CNPJCPF(Value: String): iDest; overload;
    function CNPJCPF: String; overload;
    function idEstrangeiro(Value: String): iDest; overload;
    function idEstrangeiro: String; overload;
    function xNome(Value: String): iDest; overload;
    function xNome: String; overload;
    function EnderDest: iEnderDest;
    function indIEDest(Value: TpcnindIEDest): iDest; overload;
    function indIEDest: TpcnindIEDest; overload;
    function IE(Value: String): iDest; overload;
    function IE: String; overload;
    function ISUF(Value: String): iDest; overload;
    function ISUF: String; overload;
    function IM(Value: String): iDest; overload;
    function IM: String; overload;
    function Email(Value: String): iDest; overload;
    function Email: String; overload;
    function &End: iNFe;
  end;

  iEnderDest = interface
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
    function CEP(Value: Integer): iEnderDest; overload;
    function CEP: Integer; overload;
    function cPais(Value: Integer): iEnderDest; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEnderDest; overload;
    function xPais: String; overload;
    function fone(Value: String): iEnderDest; overload;
    function fone: String; overload;
    function &End: iDest;
  end;

  iRetirada = interface
    function CNPJCPF(Value: String): iRetirada; overload;
    function CNPJCPF: String; overload;
    function xNome(Value: String): iRetirada; overload;
    function xNome: String; overload;
    function xLgr(Value: String): iRetirada; overload;
    function xLgr: String; overload;
    function nro(Value: String): iRetirada; overload;
    function nro: String; overload;
    function xCpl(Value: String): iRetirada; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iRetirada; overload;
    function xBairro: String; overload;
    function cMun(Value: Integer): iRetirada; overload;
    function cMun: Integer; overload;
    function xMun(Value: String): iRetirada; overload;
    function xMun: String; overload;
    function UF(Value: String): iRetirada; overload;
    function UF: String; overload;
    function CEP(Value: Integer): iRetirada; overload;
    function CEP: Integer; overload;
    function cPais(Value: Integer): iRetirada; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iRetirada; overload;
    function xPais: String; overload;
    function fone(Value: String): iRetirada; overload;
    function fone: String; overload;
    function Email(Value: String): iRetirada; overload;
    function Email: String; overload;
    function IE(Value: String): iRetirada; overload;
    function IE: String; overload;
    function &End: iNFe;
  end;

  iEntrega = interface
    function CNPJCPF(Value: String): iEntrega; overload;
    function CNPJCPF: String; overload;
    function xNome(Value: String): iEntrega; overload;
    function xNome: String; overload;
    function xLgr(Value: String): iEntrega; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEntrega; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEntrega; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEntrega; overload;
    function xBairro: String; overload;
    function cMun(Value: Integer): iEntrega; overload;
    function cMun: Integer; overload;
    function xMun(Value: String): iEntrega; overload;
    function xMun: String; overload;
    function UF(Value: String): iEntrega; overload;
    function UF: String; overload;
    function CEP(Value: Integer): iEntrega; overload;
    function CEP: Integer; overload;
    function cPais(Value: Integer): iEntrega; overload;
    function cPais: Integer; overload;
    function xPais(Value: String): iEntrega; overload;
    function xPais: String; overload;
    function fone(Value: String): iEntrega; overload;
    function fone: String; overload;
    function Email(Value: String): iEntrega; overload;
    function Email: String; overload;
    function IE(Value: String): iEntrega; overload;
    function IE: String; overload;
    function &End: iNFe;
  end;

  iTotal = interface
    function ICMSTot: iICMSTot;
    function ISSQNtot: iISSQNtot;
    function retTrib: iretTrib;
    function &End: iNFe;
  end;

  iICMSTot = interface
    function vBC(Value: Currency): iICMSTot; overload;
    function vBC: Currency; overload;
    function vICMS(Value: Currency): iICMSTot; overload;
    function vICMS: Currency; overload;
    function vICMSDeson(Value: Currency): iICMSTot; overload;
    function vICMSDeson: Currency; overload;
    function vFCPUFDest(Value: Currency): iICMSTot; overload;
    function vFCPUFDest: Currency; overload;
    function vICMSUFDest(Value: Currency): iICMSTot; overload;
    function vICMSUFDest: Currency; overload;
    function vICMSUFRemet(Value: Currency): iICMSTot; overload;
    function vICMSUFRemet: Currency; overload;
    function vFCP(Value: Currency): iICMSTot; overload;
    function vFCP: Currency; overload;
    function vBCST(Value: Currency): iICMSTot; overload;
    function vBCST: Currency; overload;
    function vST(Value: Currency): iICMSTot; overload;
    function vST: Currency; overload;
    function vFCPST(Value: Currency): iICMSTot; overload;
    function vFCPST: Currency; overload;
    function vFCPSTRet(Value: Currency): iICMSTot; overload;
    function vFCPSTRet: Currency; overload;
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
    function vIPIDevol(Value: Currency): iICMSTot; overload;
    function vIPIDevol: Currency; overload;
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
    function &End: iTotal;
  end;

  iISSQNtot = interface
    function vServ(Value: Currency): iTotal; overload;
    function vServ: Currency; overload;
    function vBC(Value: Currency): iTotal; overload;
    function vBC: Currency; overload;
    function vISS(Value: Currency): iTotal; overload;
    function vISS: Currency; overload;
    function vPIS(Value: Currency): iTotal; overload;
    function vPIS: Currency; overload;
    function vCOFINS(Value: Currency): iTotal; overload;
    function vCOFINS: Currency; overload;
    function dCompet(Value: TDateTime): iTotal; overload;
    function dCompet: TDateTime; overload;
    function vDeducao(Value: Currency): iTotal; overload;
    function vDeducao: Currency; overload;
    function vOutro(Value: Currency): iTotal; overload;
    function vOutro: Currency; overload;
    function vDescIncond(Value: Currency): iTotal; overload;
    function vDescIncond: Currency; overload;
    function vDescCond(Value: Currency): iTotal; overload;
    function vDescCond: Currency; overload;
    function vISSRet(Value: Currency): iTotal; overload;
    function vISSRet: Currency; overload;
    function cRegTrib(Value: TpcnRegTribISSQN): iTotal; overload;
    function cRegTrib: TpcnRegTribISSQN; overload;
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

  iTransp = interface
    function modFrete(Value: TpcnModalidadeFrete): iTransp; overload;
    function modFrete: TpcnModalidadeFrete; overload;
    function Transporta: iTransporta;
    function retTransp: iretTransp;
    function veicTransp: iveicTransp;
//    function Vol: TVolCollection read FVol write SetVol;
//    function Reboque: TReboqueCollection read FReboque write SetReboque;
    function vagao(Value: String): iTransp; overload;
    function vagao: String; overload;
    function balsa(Value: String): iTransp; overload;
    function balsa: String; overload;
    function &End: iNFe;
  end;

  iTransporta = interface
    function CNPJCPF(Value: String): iTransporta; overload;
    function xNome(Value: String): iTransporta; overload;
    function IE(Value: String): iTransporta; overload;
    function xEnder(Value: String): iTransporta; overload;
    function xMun(Value: String): iTransporta; overload;
    function UF(Value: String): iTransporta; overload;
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
    function CFOP(Value: String): iretTransp; overload;
    function CFOP: String; overload;
    function cMunFG(Value: Integer): iretTransp; overload;
    function cMunFG: Integer; overload;
    function &End: iTransp;
  end;

  iveicTransp = interface
    function placa(Value: String): iveicTransp; overload;
    function UF(Value: String): iveicTransp; overload;
    function RNTC(Value: String): iveicTransp; overload;
    function &End: iTransp;
  end;

  iCobr = interface
    function Fat: iFat;
//    property Dup: TDupCollection read FDup write SetDup;
    function &End: iNFe;
  end;

  iFat = interface
    function nFat(Value: String): iFat; overload;
    function vOrig(Value: Currency): iFat; overload;
    function vDesc(Value: Currency): iFat; overload;
    function vLiq(Value: Currency): iFat; overload;
    function &End: iCobr;
  end;

  iinfIntermed = interface
    function CNPJ(Value: String): iinfIntermed; overload;
    function CNPJ: String; overload;
    function idCadIntTran(Value: String): iinfIntermed; overload;
    function idCadIntTran: String; overload;
    function &End: iNFe;
  end;

  iInfAdic = interface
    function infAdFisco(Value: String): iInfAdic; overload;
    function infAdFisco: String; overload;
    function infCpl(Value: String): iInfAdic; overload;
    function infCpl: String; overload;
//    function obsCont: TobsContCollection read FobsCont write SetobsCont;
//    function obsFisco: TobsFiscoCollection read FobsFisco write SetobsFisco;
//    function procRef: TprocRefCollection read FprocRef write SetprocRef;
    function &End: iNFe;
  end;

  iexporta = interface
    function UFembarq(Value: String): iexporta; overload;
    function UFembarq: String; overload;
    function xLocEmbarq(Value: String): iexporta; overload;
    function xLocEmbarq: String; overload;
    function UFSaidaPais(Value: String): iexporta; overload;
    function UFSaidaPais: String; overload;
    function xLocExporta(Value: String): iexporta; overload;
    function xLocExporta: String; overload;
    function xLocDespacho(Value: String): iexporta; overload;
    function xLocDespacho: String; overload;
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

  icana = interface
    function safra(Value: String): icana; overload;
    function ref(Value: String): icana; overload;
//    function fordia: TForDiaCollection read Ffordia write SetForDia;
    function qTotMes(Value: Double): icana; overload;
    function qTotAnt(Value: Double): icana; overload;
    function qTotGer(Value: Double): icana; overload;
//    function deduc: TDeducCollection read Fdeduc write SetDeduc;
    function vFor(Value: Currency): icana; overload;
    function vTotDed(Value: Currency): icana; overload;
    function vLiqFor(Value: Currency): icana; overload;
    function &End: iNFe;
  end;

  iinfNFeSupl = interface
    function ID(Value: String): iinfNFeSupl; overload;
    function ID: String; overload;
    function Versao(Value: Real): iinfNFeSupl; overload;
    function Versao: Real; overload;
    function VersaoStr(Value: String): iinfNFeSupl; overload;
    function VersaoStr: String; overload;
    function &End: iNFe;
  end;

  iinfRespTec = interface
    function CNPJ(Value: String): iinfRespTec; overload;
    function CNPJ: String; overload;
    function xContato(Value: String): iinfRespTec; overload;
    function xContato: String; overload;
    function email(Value: String): iinfRespTec; overload;
    function email: String; overload;
    function fone(Value: String): iinfRespTec; overload;
    function fone: String; overload;
    function idCSRT(Value: Integer): iinfRespTec; overload;
    function idCSRT: Integer; overload;
    function hashCSRT(Value: String): iinfRespTec; overload;
    function hashCSRT: String; overload;
    function &End: iNFe;
  end;

implementation

end.

