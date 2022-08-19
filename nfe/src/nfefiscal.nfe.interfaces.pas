unit nfefiscal.nfe.interfaces;

interface

type
  irefNF = interface;
  irefNFP = interface;
  iEnderEmit = interface;
  iDocumentoFiscalReferenciado = interface;
  irefECF = interface;
  iDadosNFe = interface;
  iIdentificacaoNFe = interface;
  iIdentificacaoEmitenteNFe = interface;
  iIdentificacaoFiscoNFe = interface;
  iIdentificacaoDestinatarioNFe = interface;
  iEnderecoDestinatiarioNFe = interface;
  iIdentificacaoLocalRetirada = interface;
  iIdentificacaoLocalEntrega = interface;
  iAutorizacaoXML = interface;
  iDetalhamentoProdutosServicosNFe = interface;
  iProdutosServiceNFe = interface;
  iProdutosServicosDeclaracaoImportacao = interface;
  iAdicoes = interface;
  iProdutosServicosGrupoExportacao = interface;
  iExportInd = interface;
  iDetalhamentoEspecificoVeiculosNovos = interface;
  iIdentificacaoEmitenteNFeGRPOpcional = interface;
  iProdutoEspecifico = interface;
  iDetalhamentoMPFarmaceutiva = interface;
  iDetalhamentoEspecificoCombustivel = interface;
  iCIDE = interface;
  iDetalhamentoEspecificoOPImune = interface;
  iTrubutosIncidentesProdutoServico = interface;
  iICMS = interface;
  iICMS00 = interface;
  iICMS10 = interface;
  iSeqXMLGrpOp<T> = interface;
  iseqXMLGrpOpN12_1 = interface;
  iseqXMLGrpOpN17_1 = interface;
  iseqXMLGrpOpN27_1 = interface;
  iseqXMLGrpOpN25_1 = interface;
  iICMS30 = interface;
  iICMS40 = interface;
  iICMS51 = interface;
  iICMS60 = interface;
  iICMS70 = interface;
  iGrupoPartilhaICMS = interface;
  iGrupoRepasseICMSST = interface;
  iGrupoCRT1 = interface;
  iICMSSN101 = interface;
  iICMSSN102 = interface;
  iIPI = interface;
  iIPITrib = interface;
  iseqXMLAliquota = interface;
  iseqXMLValor = interface;
  iIPINT = interface;
  iImpostoImportacao = interface;
  iPISAliq = interface;
  iPISQtde = interface;
  iPISNT = interface;
  iPISOutr = interface;
  iseqXMLGrpOPPISP = interface;
  iseqXMLGrpOPPISV = interface;
  iPISST = interface;
  iseqXMLRPISp = interface;
  iseqXMLRPISv = interface;
  iCOFINS = interface;
  iCOFINSQtde = interface;
  iCofinsNT = interface;
  iCofinsOutr = interface;
  iSeqXMLCofinsp = interface;
  iSeqXMLCofinsv = interface;
  iCofinsST = interface;
  iseqXMLCofinsSTp = interface;
  iseqXMLCofinsSTv = interface;
  iISSQN = interface;

  iNFe = interface{Raiz}
    function InfNFe: iDadosNFe;{A01}
    function &End: iNFe;
  end;

  iDadosNFe = interface{A01}
    function Versao(Value: String): iDadosNFe; overload;
    function Versao: String; overload;
    function Id(Value: String): iDadosNFe; overload;
    function Id: String; overload;
    function Pk_nItem(Value: String): iDadosNFe; overload;
    function Ide: iIdentificacaoNFe;
    function Emi: iIdentificacaoEmitenteNFe;{C01}
    function Avulsa: iIdentificacaoFiscoNFe;{D01}
    function Dest: iIdentificacaoDestinatarioNFe;{E01}
    function Retirada: iIdentificacaoLocalRetirada;{F01}
    function Entrega: iIdentificacaoLocalEntrega;{G01}
    function autXML: iAutorizacaoXML;{GA01}
    function det: iDetalhamentoProdutosServicosNFe;
    function &End: iNFe;{Raiz}
  end;

  iIdentificacaoNFe = interface{B01}
    function cUF(Value: String): iIdentificacaoNFe; overload;
    function cUF: String; overload;
    function natOp(Value: String): iIdentificacaoNFe; overload;
    function natOp: String; overload;
    function indPag(Value: String): iIdentificacaoNFe; overload;
    function indPag: String; overload;
    function &Mod(Value: String): iIdentificacaoNFe; overload;
    function &Mod: String; overload;
    function Serie(Value: String): iIdentificacaoNFe; overload;
    function Serie: String; overload;
    function nNF(Value: String): iIdentificacaoNFe; overload;
    function nNF: String; overload;
    function dhEmi(Value: String): iIdentificacaoNFe; overload;
    function dhEmi: String; overload;
    function dhSaiEnt(Value: String): iIdentificacaoNFe; overload;
    function dhSaiEnt: String; overload;
    function tpNF(Value: String): iIdentificacaoNFe; overload;
    function tpNF: String; overload;
    function idDest(Value: String): iIdentificacaoNFe; overload;
    function idDest: String; overload;
    function cMunFG(Value: String): iIdentificacaoNFe; overload;
    function cMunFG: String; overload;
    function tpImp(Value: String): iIdentificacaoNFe; overload;
    function tpImp: String; overload;
    function tpEmis(Value: String): iIdentificacaoNFe; overload;
    function tpEmis: String; overload;
    function cDV(Value: String): iIdentificacaoNFe; overload;
    function cDV: String; overload;
    function tpAmb(Value: String): iIdentificacaoNFe; overload;
    function tpAmb: String; overload;
    function finNFe(Value: String): iIdentificacaoNFe; overload;
    function finNFe: String; overload;
    function indFinal(Value: String): iIdentificacaoNFe; overload;
    function indFinal: String; overload;
    function indPres(Value: String): iIdentificacaoNFe; overload;
    function indPres: String; overload;
    function procEmi(Value: String): iIdentificacaoNFe; overload;
    function procEmi: String; overload;
    function verProc(Value: String): iIdentificacaoNFe; overload;
    function verProc: String; overload;
    function SegXML: iIdentificacaoNFe;
    function dhCont(Value: String): iIdentificacaoNFe; overload;
    function dhCont: String; overload;
    function xJust(Value: String): iIdentificacaoNFe; overload;
    function xJust: String; overload;
    function NFref: iDocumentoFiscalReferenciado;
    function &End: iDadosNFe;{A01}
  end;

  iDocumentoFiscalReferenciado = interface{BA01}
    function refNFe(Value: String): iDocumentoFiscalReferenciado; overload;
    function refNFe: String; overload;
    function refNF: irefNF;{BA03}
    function refNFP: irefNFP;{BA10}
    function refECF: irefECF;{BA20}
    function &End: iIdentificacaoNFe;{B01}
  end;

  irefNF = interface{BA03}
    function cUF(Value: String): irefNF; overload;
    function cUF: String; overload;
    function AAMM(Value: String): irefNF; overload;
    function AAMM: String; overload;
    function CNPJ(Value: String): irefNF; overload;
    function CNPJ: String; overload;
    function &Mod(Value: String): irefNF; overload;
    function &Mod: String; overload;
    function Serie(Value: String): irefNF; overload;
    function Serie: String; overload;
    function nNF(Value: String): irefNF; overload;
    function nNF: String; overload;
    function &End: iDocumentoFiscalReferenciado;{BA01}
  end;

  irefNFP = interface{BA10}
    function cUF(Value: String): irefNFP; overload;
    function cUF: String; overload;
    function AAMM(Value: String): irefNFP; overload;
    function AAMM: String; overload;
    function CNPJ(Value: String): irefNFP; overload;
    function CNPJ: String; overload;
    function &Mod(Value: String): irefNFP; overload;
    function &Mod: String; overload;
    function Serie(Value: String): irefNFP; overload;
    function Serie: String; overload;
    function nNF(Value: String): irefNFP; overload;
    function nNF: String; overload;
    function refCTe(Value: String): irefNFP;
    function &End: iDocumentoFiscalReferenciado;{BA01}
  end;

  irefECF = interface{BA20}
    function &Mod(Value: String): irefECF; overload;
    function &Mod: String; overload;
    function nECF(Value: String): irefECF; overload;
    function nECF: String; overload;
    function nCOO(Value: String): irefECF; overload;
    function nCOO: String; overload;
    function &End: iDocumentoFiscalReferenciado; {BA01}
  end;

  iIdentificacaoEmitenteNFe = interface{C01}
    function CNPJ(Value: String): iIdentificacaoEmitenteNFe; overload;
    function CNPJ: String; overload;
    function xNome(Value: String): iIdentificacaoEmitenteNFe; overload;
    function xNome: String; overload;
    function xFant(Value: String): iIdentificacaoEmitenteNFe; overload;
    function xFant: String; overload;
    function enderEmit: iEnderEmit;{C05}
    function X_SeqXMLOp: iIdentificacaoEmitenteNFeGRPOpcional;
    function &End: iDadosNFe;{A01}
  end;

  iEnderEmit = interface{C05}
    function xLgr(Value: String): iEnderEmit; overload;
    function xLgr: String; overload;
    function nro(Value: String): iEnderEmit; overload;
    function nro: String; overload;
    function xCpl(Value: String): iEnderEmit; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderEmit; overload;
    function xBairro: String; overload;
    function cMun(Value: String): iEnderEmit; overload;
    function cMun: String; overload;
    function xMun(Value: String): iEnderEmit; overload;
    function UF(Value: String): iEnderEmit; overload;
    function UF: String; overload;
    function CEP(Value: String): iEnderEmit; overload;
    function CEP: String; overload;
    function cPais(Value: String): iEnderEmit; overload;
    function cPais: String; overload;
    function xPais(Value: String): iEnderEmit; overload;
    function xPais: String; overload;
    function fone(Value: String): iEnderEmit; overload;
    function fone: String; overload;
    function IE(Value: String): iEnderEmit; overload;
    function IE: String; overload;
    function IEST(Value: String): iEnderEmit; overload;
    function IEST: String; overload;
    function CRT(Value: String): iEnderEmit; overload;
    function CRT: String; overload;
    function &End: iIdentificacaoEmitenteNFe;{C01}
  end;

  iIdentificacaoEmitenteNFeGRPOpcional = interface{C18.1}
    function IM(Value: String): iIdentificacaoEmitenteNFeGRPOpcional; overload;
    function IM: String; overload;
    function CNAE(Value: String): iIdentificacaoEmitenteNFeGRPOpcional; overload;
    function CNAE: String; overload;
    function &End: iIdentificacaoEmitenteNFe;{C01}
  end;

  iIdentificacaoFiscoNFe = interface{D01}
    function CNPJ(Value: String): iIdentificacaoFiscoNFe; overload;
    function CNPJ: String; overload;
    function xOrgao(Value: String): iIdentificacaoFiscoNFe; overload;
    function xOrgao: String; overload;
    function matr(Value: String): iIdentificacaoFiscoNFe; overload;
    function matr: String; overload;
    function xAgente(Value: String): iIdentificacaoFiscoNFe; overload;
    function xAgente: String; overload;
    function fone(Value: String): iIdentificacaoFiscoNFe; overload;
    function fone: String; overload;
    function UF(Value: String): iIdentificacaoFiscoNFe; overload;
    function UF: String; overload;
    function nDar(Value: String): iIdentificacaoFiscoNFe; overload;
    function nDar: String; overload;
    function dEmi(Value: String): iIdentificacaoFiscoNFe; overload;
    function dEmi: String; overload;
    function vDar(Value: String): iIdentificacaoFiscoNFe; overload;
    function vDar: String; overload;
    function repEmi(Value: String): iIdentificacaoFiscoNFe; overload;
    function repEmi: String; overload;
    function dPag(Value: String): iIdentificacaoFiscoNFe; overload;
    function dPag: String; overload;
    function &End: iNFe;{A01}
  end;

  iIdentificacaoDestinatarioNFe = interface{E01}
    function CNPJ(Value: String): iIdentificacaoDestinatarioNFe; overload;
    function CNPJ: String; overload;
    function CPF(Value: String): iIdentificacaoDestinatarioNFe; overload;
    function CPF: String; overload;
    function idEstrangeiro(Value: String): iIdentificacaoDestinatarioNFe; overload;
    function xNome(Value: String): iIdentificacaoDestinatarioNFe; overload;
    function enderDest: iEnderecoDestinatiarioNFe;
    function &End: iDadosNFe;{A01}
  end;

  iEnderecoDestinatiarioNFe = interface{C05}
    function xLgr(Value: String): iEnderecoDestinatiarioNFe; overload;
    function xLgr: String; overload;
    function Nro(Value: String): iEnderecoDestinatiarioNFe; overload;
    function Nro: String; overload;
    function xCpl(Value: String): iEnderecoDestinatiarioNFe; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iEnderecoDestinatiarioNFe; overload;
    function xBairro: String; overload;
    function cMun(Value: String): iEnderecoDestinatiarioNFe; overload;
    function cMun: String; overload;
    function xMun(Value: String): iEnderecoDestinatiarioNFe; overload;
    function xMun: String; overload;
    function UF(Value: String): iEnderecoDestinatiarioNFe; overload;
    function UF: String; overload;
    function CEP(Value: String): iEnderecoDestinatiarioNFe; overload;
    function CEP: String; overload;
    function cPais(Value: String): iEnderecoDestinatiarioNFe; overload;
    function cPais: String; overload;
    function xPais(Value: String): iEnderecoDestinatiarioNFe; overload;
    function xPais: String; overload;
    function Fone(Value: String): iEnderecoDestinatiarioNFe; overload;
    function Fone: String; overload;
    function indIEDet(Value: String): iEnderecoDestinatiarioNFe; overload;
    function indIEDest: String; overload;
    function IE(Value: String): iEnderecoDestinatiarioNFe; overload;
    function IE: String; overload;
    function ISUF(Value: String): iEnderecoDestinatiarioNFe; overload;
    function ISUF: String; overload;
    function IM(Value: String): iEnderecoDestinatiarioNFe; overload;
    function IM: String; overload;
    function Email(Value: String): iEnderecoDestinatiarioNFe; overload;
    function Email: String; overload;
    function &End: iIdentificacaoDestinatarioNFe;{E01}
  end;

  iIdentificacaoLocalRetirada = interface{F01}
    function CNPJ(Value: String): iIdentificacaoLocalRetirada; overload;
    function CNPJ: String; overload;
    function CPF(Value: String): iIdentificacaoLocalRetirada; overload;
    function CPF: String; overload;
    function xLgr(Value: String): iIdentificacaoLocalRetirada; overload;
    function Nro(Value: String): iIdentificacaoLocalRetirada; overload;
    function Nro: String; overload;
    function xCpl(Value: String): iIdentificacaoLocalRetirada; overload;
    function xBairro(Value: String): iIdentificacaoLocalRetirada; overload;
    function xBairro: String; overload;
    function cMun(Value: String): iIdentificacaoLocalRetirada; overload;
    function cMun: String; overload;
    function xMun(Value: String): iIdentificacaoLocalRetirada; overload;
    function xMun: String; overload;
    function UF(Value: String): iIdentificacaoLocalRetirada; overload;
    function UF: String; overload;
    function &End: iDadosNFe;{A01}
  end;

  iIdentificacaoLocalEntrega = interface{G01}
    function CNPJ(Value: String): iIdentificacaoLocalEntrega; overload;
    function CNPJ: String; overload;
    function CPF(Value: String): iIdentificacaoLocalEntrega; overload;
    function CPF: String; overload;
    function xLgr(Value: String): iIdentificacaoLocalEntrega; overload;
    function xLgr: String; overload;
    function Nro(Value: String): iIdentificacaoLocalEntrega; overload;
    function Nro: String; overload;
    function xCpl(Value: String): iIdentificacaoLocalEntrega; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): iIdentificacaoLocalEntrega; overload;
    function xBairro: String; overload;
    function cMun(Value: String): iIdentificacaoLocalEntrega; overload;
    function cMun: String; overload;
    function xMun(Value: String): iIdentificacaoLocalEntrega; overload;
    function xMun: String; overload;
    function UF(Value: String): iIdentificacaoLocalEntrega; overload;
    function UF: String; overload;
    function &End: iDadosNFe;{A01}
  end;

  iAutorizacaoXML = interface{GA01}
    function CNPJ(Value: String): iAutorizacaoXML; overload;
    function CNPJ: String; overload;
    function CPF(Value: String): iAutorizacaoXML; overload;
    function CPF: String; overload;
    function &End: iDadosNFe;{A01}
  end;

  iDetalhamentoProdutosServicosNFe = interface{H01}
    function nItem(Value: String): iDetalhamentoProdutosServicosNFe; overload;
    function nItem: String; overload;
    function prod: iProdutosServiceNFe;{I01}
    function imposto: iTrubutosIncidentesProdutoServico;{M01}
    function &End: iDadosNFe;{A01}
  end;

  iProdutosServiceNFe = interface{I01}
    function cProd(Value: String): iProdutosServiceNFe; overload;
    function cProd: String; overload;
    function cEAN(Value: String): iProdutosServiceNFe; overload;
    function cEAN: String; overload;
    function xProd(Value: String): iProdutosServiceNFe; overload;
    function xProd: String; overload;
    function NCM(Value: String): iProdutosServiceNFe; overload;
    function NCM: String; overload;
    function NVE(Value: String): iProdutosServiceNFe; overload;
    function NVE: String; overload;
    function EXTIPI(Value: String): iProdutosServiceNFe; overload;
    function EXTIPI: String; overload;
    function CFOP(Value: String): iProdutosServiceNFe; overload;
    function CFOP: String; overload;
    function uCom(Value: String): iProdutosServiceNFe; overload;
    function uCom: String; overload;
    function qCom(Value: String): iProdutosServiceNFe; overload;
    function qCom: String; overload;
    function vUnCom(Value: String): iProdutosServiceNFe; overload;
    function vUnCom: String; overload;
    function vProd(Value: String): iProdutosServiceNFe; overload;
    function vProd: String; overload;
    function cEANTrib(Value: String): iProdutosServiceNFe; overload;
    function cEANTrib: String; overload;
    function uTrib(Value: String): iProdutosServiceNFe; overload;
    function uTrib: String; overload;
    function vUnTrib(Value: String): iProdutosServiceNFe; overload;
    function vUnTrib: String; overload;
    function vFrete(Value: String): iProdutosServiceNFe; overload;
    function vFrete: String; overload;
    function vSeg(Value: String): iProdutosServiceNFe; overload;
    function vSeg: String; overload;
    function vDesc(Value: String): iProdutosServiceNFe; overload;
    function vDesc: String; overload;
    function vOutro(Value: String): iProdutosServiceNFe; overload;
    function vOutro: String; overload;
    function indTot(Value: String): iProdutosServiceNFe; overload;
    function indTot: String; overload;
    function DI: iProdutosServicosDeclaracaoImportacao;{I18}
    function detExport: iProdutosServicosGrupoExportacao;{I50}
    function SequenciaXML: iProdutosServiceNFe;
    function &End: iDetalhamentoProdutosServicosNFe;
  end;

  iProdutosServicosDeclaracaoImportacao = interface{I18}
    function nDI(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function nDI: String; overload;
    function dDI(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function dDI: String; overload;
    function xLocDesmb(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function xLocDesmb: String; overload;
    function UFDesmb(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function UFDesmb: String; overload;
    function dDesemb(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function dDesemb: String; overload;
    function tpViaTransp(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function tpViaTransp: String; overload;
    function vAFRMM(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function vAFRMM: String; overload;
    function tpIntermedio(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function tpIntermedio: String; overload;
    function CNPJ(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function CNPJ: String; overload;
    function UFTerceiro(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function UFTerceiro: String; overload;
    function cExportador(Value: String): iProdutosServicosDeclaracaoImportacao; overload;
    function cExportador: String; overload;
    function adi: iAdicoes;{I25}
    function &End: iProdutosServiceNFe;
  end;

  iAdicoes = interface{I25}
    function nAdicao(Value: String): iAdicoes; overload;
    function nAdicao: String; overload;
    function nSeqAdic(Value: String): iAdicoes; overload;
    function nSegAdic: String; overload;
    function cFabricante(Value: String): iAdicoes; overload;
    function cFabricante: String; overload;
    function vDescDI(Value: String): iAdicoes; overload;
    function vDescDI: String; overload;
    function nDraw(Value: String): iAdicoes; overload;
    function nDraw: String; overload;
    function &End: iProdutosServicosDeclaracaoImportacao;
  end;

  iProdutosServicosGrupoExportacao = interface{I50}
    function nDraw(Value: String): iProdutosServicosGrupoExportacao; overload;
    function nDraw: String; overload;
    function exportInd: iExportInd;{I52}
    function &End: iProdutosServiceNFe;{I01}
  end;

  iExportInd = interface{I52}
    function nRE(Value: String): iExportInd; overload;
    function nRE: String; overload;
    function chNFe(Value: String): iExportInd; overload;
    function chNFe: String; overload;
    function qExport(Value: String): iExportInd; overload;
    function qExport: String; overload;
    function xPed(Value: String): iExportInd; overload;
    function xPed: String; overload;
    function nItemPed(Value: String): iExportInd; overload;
    function nItemPed: String; overload;
    function nFCI(Value: String): iExportInd; overload;
    function nFCI: String; overload;
    function &End: iProdutosServicosGrupoExportacao;{I50}
  end;

  iProdutoEspecifico = interface{I90}
    function veicProd: iDetalhamentoEspecificoVeiculosNovos;{J01}
    function med: iDetalhamentoMPFarmaceutiva;{K01}
    function comb: iDetalhamentoEspecificoCombustivel;
    function nRECOPI: iDetalhamentoEspecificoOPImune;
    function &End: iProdutosServiceNFe;{I01}
  end;

  iDetalhamentoEspecificoVeiculosNovos = interface{J01}
    function tpOp(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function tpOp: String; overload;
    function chassi(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function chassi: String; overload;
    function cCor(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function cCor: String; overload;
    function xCor(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function xCor: String; overload;
    function pot(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function pot: String; overload;
    function cilin(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function cilin: String; overload;
    function pesoL(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function pesoL: String; overload;
    function pesoB(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function nSerie(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function nSerie: String; overload;
    function tpComp(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function tpComp: String; overload;
    function nMotor(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function nMotor: String; overload;
    function CMT(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function CMT: String; overload;
    function dist(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function dist: String; overload;
    function anoMod(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function anoMod: String; overload;
    function anoFab(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function anoFab: String; overload;
    function tpPint(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function tpPint: String; overload;
    function tpVeic(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function tpVeic: String; overload;
    function espVeic(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function espVeic: String; overload;
    function VIN(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function VIN: String; overload;
    function condVeic(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function condVeic: String; overload;
    function cMod(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function cMod: String; overload;
    function cCorDENATRAN(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function cCorDENATRAN: String; overload;
    function lota(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function lota: String; overload;
    function tpRest(Value: String): iDetalhamentoEspecificoVeiculosNovos; overload;
    function tpRest: String; overload;
    function &End: iProdutoEspecifico;{I90}
  end;

  iDetalhamentoMPFarmaceutiva = interface{K01}
    function nLote(Value: String): iDetalhamentoMPFarmaceutiva; overload;
    function nLote: String; overload;
    function qLote(Value: String): iDetalhamentoMPFarmaceutiva; overload;
    function qLote: String; overload;
    function dFab(Value: String): iDetalhamentoMPFarmaceutiva; overload;
    function dFab: String; overload;
    function dVal(Value: String): iDetalhamentoMPFarmaceutiva; overload;
    function dVal: String; overload;
    function vPMC(Value: String): iDetalhamentoMPFarmaceutiva; overload;
    function vPMC: String; overload;
    function &End: iProdutoEspecifico;{I90}
  end;

  iDetalhamentoEspecificoArmamentos = interface{L01}
    function tpArma(Value: String): iDetalhamentoEspecificoArmamentos; overload;
    function tpArma: String; overload;
    function nSerie(Value: String): iDetalhamentoEspecificoArmamentos; overload;
    function nSerie: String; overload;
    function nCano(Value: String): iDetalhamentoEspecificoArmamentos; overload;
    function nCano: String; overload;
    function descr(Value: String): iDetalhamentoEspecificoArmamentos; overload;
    function descr: String; overload;
    function &End: iProdutoEspecifico;{I90}
  end;

  iDetalhamentoEspecificoCombustivel = interface{LA01}
    function cProdANP(Value: String): iDetalhamentoEspecificoCombustivel; overload;
    function cProdANP: String; overload;
    function pMixGN(Value: String): iDetalhamentoEspecificoCombustivel; overload;
    function pMixGN: String; overload;
    function CODIF(Value: String): iDetalhamentoEspecificoCombustivel; overload;
    function CODIF: String; overload;
    function qTemp(Value: String): iDetalhamentoEspecificoCombustivel; overload;
    function qTem: String; overload;
    function UFCons(Value: String): iDetalhamentoEspecificoCombustivel; overload;
    function UFCons: String; overload;
    function CIDE: iCIDE;{LA01}
    function &End: iProdutoEspecifico;{I90}
  end;

  iCIDE = interface{LA07}
    function qBCProd(Value: String): iCIDE; overload;
    function aBCProd: String; overload;
    function vAliqProd(Value: String): iCIDE; overload;
    function vAliqProd: String; overload;
    function vCIDE(Value: String): iCIDE; overload;
    function vCIDE: String; overload;
    function &End: iDetalhamentoEspecificoCombustivel;{LA01}
  end;

  iDetalhamentoEspecificoOPImune = interface{LB01}
    function &End: iProdutoEspecifico;{I90}
  end;

  iTrubutosIncidentesProdutoServico = interface{M01}
    function vTotTrib(Value: String): iTrubutosIncidentesProdutoServico; overload;
    function vTotTrib: String; overload;
    function ICMS: iICMS;{N01}
    function IPI: iIPI;{O01}
    function II: iImpostoImportacao;{P01}
    function PISST: iPISST;
    function COFINS: iCOFINS;
    function CofinsST: iCofinsST;
    function ISSQN: iISSQN;
    function &End: iDetalhamentoProdutosServicosNFe;{H01}
  end;

  iICMS = interface{N01}
    function ICMS00: iICMS00;{N02}
    function ICMS10: iICMS10;{N03}
    function ICMS30: iICMS30;{N05}
    function ICMS40: iICMS40;{N06}
    function ICMS51: iICMS51;{N07}
    function ICMS60: iICMS60;{N08}
    function ICMS70: iICMS70;{n09}
    function ICMSPart: iGrupoPartilhaICMS;{N10a}
    function ICMSST: iGrupoRepasseICMSST;{N10b}
    function ICMSSN101: iGrupoCRT1;{N10c}
    function &End: iTrubutosIncidentesProdutoServico;{M01}
  end;

  iICMS00 = interface{N02}
    function orig(Value: String): iICMS00; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS00; overload;
    function CST: String; overload;
    function modBC(Value: String): iICMS00; overload;
    function modBC: String; overload;
    function vBC(Value: String): iICMS00; overload;
    function vBC: String; overload;
    function pICMS(Value: String): iICMS00; overload;
    function pICMS: String; overload;
    function vICMS(Value: String): iICMS00; overload;
    function vICMS: String; overload;
    function &End: iICMS;{N01}
  end;

  iICMS10 = interface{N03}
    function orig(Value: String): iICMS10; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS10; overload;
    function CST: String; overload;
    function modBC(Value: String): iICMS10; overload;
    function modBC: String; overload;
    function vBC(Value: String): iICMS10; overload;
    function vBC: String; overload;
    function pMVAST(Value: String): iICMS10; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMS10; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iICMS10; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iICMS10; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMS10; overload;
    function vICMSST: String; overload;
    function &End: iICMS;{N01}
  end;

  iICMS20 = interface{N04}
    function orig(Value: String): iICMS10; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS10; overload;
    function CST: String; overload;
    function modBC(Value: String): iICMS10; overload;
    function modBC: String; overload;
    function vBC(Value: String): iICMS10; overload;
    function vBC: String; overload;
    function pMVAST(Value: String): iICMS10; overload;
    function pMVAST: String; overload;
    function pRedBC(Value: String): iICMS10; overload;
    function pRedBC: String; overload;
    function pICMS(Value: String): iICMS10; overload;
    function pICMS: String; overload;
    function vICMS(Value: String): iICMS10; overload;
    function vICMS: String; overload;
    function X_SeqXMLGrpOp: iSeqXMLGrpOp<iICMS20>;
    function &End: iICMS;{N01}
  end;

  iSeqXMLGrpOp<T> = interface{N27.01}
    function vICMSDeson(Value: String): iSeqXMLGrpOp<T>; overload;
    function vICMSDeson: String; overload;
    function motDesICMS(Value: String): iSeqXMLGrpOp<T>; overload;
    function motDesICMS: String; overload;
    function &End: T;{N04}
  end;

  iICMS30 = interface{N05}
    function orig(Value: String): iICMS30; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS30; overload;
    function CST: String; overload;
    function modBCST(Value: String): iICMS30; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iICMS30; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMS30; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iICMS30; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iICMS30; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMS30; overload;
    function vICMSST: String; overload;
    function X_SeqXMLGrpOp: iSeqXMLGrpOp<iICMS30>;
    function &End: iICMS;{N01}
  end;

  iICMS40 = interface{N06}
    function orig(Value: String): iICMS40; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS40; overload;
    function CST: String; overload;
    function X_SeqXMLGrpOp: iSeqXMLGrpOp<iICMS40>;
    function &End: iICMS;{N01}
  end;

  iICMS51 = interface{N07}
    function orig(Value: String): iICMS51; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS51; overload;
    function CST: String; overload;
    function modBC(Value: String): iICMS51; overload;
    function modBC: String; overload;
    function pRedBC(Value: String): iICMS51; overload;
    function pRedBC: String; overload;
    function pICMS(Value: String): iICMS51; overload;
    function pICMS: String; overload;
    function vICMSOp(Value: String): iICMS51; overload;
    function vICMSOp: String; overload;
    function pDif(Value: String): iICMS51; overload;
    function pDif: String; overload;
    function vICMSDif(Value: String): iICMS51; overload;
    function vICMSDif: String; overload;
    function vICMS(Value: String): iICMS51; overload;
    function vICMS: String; overload;
    function &End: iICMS;{N01}
  end;

  iICMS60 = interface{N08}
    function orig(Value: String): iICMS60; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS60; overload;
    function CST: String; overload;
    function X_SeqXMLGrpOp: iSeqXMLGrpOp<iICMS60>;
    function vBCSTRet(Value: String): iICMS60; overload;
    function vBCSTRet: String; overload;
    function &End: iICMS;{N01}
  end;

  iICMS70 = interface{N09}
    function orig(Value: String): iICMS70; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS70; overload;
    function CST: String; overload;
    function modBCST(Value: String): iICMS70; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iICMS70; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMS70; overload;
    function pRedBCST: String; overload;
    function pICMSST(Value: String): iICMS70; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMS70; overload;
    function vICMSST: String; overload;
    function X_SeqXMLGrpOp: iSeqXMLGrpOp<iICMS70>;
    function &End: iICMS;{N01}
  end;

  iICMS90 = interface{N10}
    function orig(Value: String): iICMS90; overload;
    function orig: String; overload;
    function CST(Value: String): iICMS90; overload;
    function CST: String; overload;
    function SeqXMLGrpOp: iSeqXMLGrpOp<iICMS90>;
    function SeqXMLGrpOpST: iSeqXMLGrpOp<iICMS90>;
    function SeqXMLGrpOpDes: iSeqXMLGrpOp<iICMS90>;
    function &End: iICMS;{N01}
  end;

  iGrupoPartilhaICMS = interface{N10a}
    function orig(Value: String): iGrupoPartilhaICMS; overload;
    function orig: String; overload;
    function CST(Value: String): iGrupoPartilhaICMS; overload;
    function CST: String; overload;
    function modBC(Value: String): iGrupoPartilhaICMS; overload;
    function modBC: String; overload;
    function vBC(Value: String): iGrupoPartilhaICMS; overload;
    function vBC: String; overload;
    function pRedBC(Value: String): iGrupoPartilhaICMS; overload;
    function pRedBC: String; overload;
    function pICMS(Value: String): iGrupoPartilhaICMS; overload;
    function pICMS: String; overload;
    function vICMS(Value: String): iGrupoPartilhaICMS; overload;
    function vICMS: String; overload;
    function modBCST(Value: String): iGrupoPartilhaICMS; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iGrupoPartilhaICMS; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iGrupoPartilhaICMS; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iGrupoPartilhaICMS; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iGrupoPartilhaICMS; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iGrupoPartilhaICMS; overload;
    function vICMSST: String; overload;
    function pBCOp(Value: String): iGrupoPartilhaICMS; overload;
    function pBCOp: String; overload;
    function UFST(Value: String): iGrupoPartilhaICMS; overload;
    function UFST: String; overload;
    function &End: iICMS;{N01}
  end;

  iGrupoRepasseICMSST = interface {N10b}
    function orig(Value: String): iGrupoRepasseICMSST; overload;
    function orig: String; overload;
    function CST(Value: String): iGrupoRepasseICMSST; overload;
    function CST: String; overload;
    function vBCSTRet(Value: String): iGrupoRepasseICMSST; overload;
    function vBCSTRet: String; overload;
    function vICMSSTRet(Value: String): iGrupoRepasseICMSST; overload;
    function vICMSSTRet: String; overload;
    function vBCSTDest(Value: String): iGrupoRepasseICMSST; overload;
    function vBCSTDest: String; overload;
    function vICMSSTDest(Value: String): iGrupoRepasseICMSST; overload;
    function vICMSSTDest: String; overload;
    function &End: iICMS;{N01}
  end;

  iGrupoCRT1 = interface
    function ICMSSN101: iICMSSN101;
    function ICMSSN102: iICMSSN102;
    function &End: iICMS;{N01}
  end;

  iICMSSN101 = interface{N10c}
    function orig(Value: String): iICMSSN101; overload;
    function orig: String; overload;
    function CSOSN(Value: String): iICMSSN101; overload;
    function CSOSN: String; overload;
    function pCredSN(Value: String): iICMSSN101; overload;
    function pCredSN: String; overload;
    function vCredICMSSN(Value: String): iICMSSN101; overload;
    function vCredICMSSN: String; overload;
    function &End: iGrupoCRT1;
  end;

  iICMSSN102 = interface{N10d}
    function orig(Value: String): iICMSSN102; overload;
    function orig: String; overload;
    function CSOSN(Value: String): iICMSSN102; overload;
    function CSOSN: String; overload;
    function &End: iGrupoCRT1;
  end;

  iICMSSN201 = interface{N10e}
    function orig(Value: String): iICMSSN201; overload;
    function orig: String; overload;
    function CSOSN(Value: String): iICMSSN201; overload;
    function CSOSN: String; overload;
    function modBCST(Value: String): iICMSSN201; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iICMSSN201; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMSSN201; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iICMSSN201; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iICMSSN201; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMSSN201; overload;
    function vICMSST: String; overload;
    function pCredSN(Value: String): iICMSSN201; overload;
    function pCredSN: String; overload;
    function vCredICMSSN(Value: String): iICMSSN201; overload;
    function vCredICMSSN: String; overload;
    function &End: iGrupoCRT1;
  end;

  iICMSSN202 = interface{N10f}
    function orig(Value: String): iICMSSN202; overload;
    function orig: String; overload;
    function CSOSN(Value: String): iICMSSN202; overload;
    function CSOSN: String; overload;
    function modBCST(Value: String): iICMSSN202; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iICMSSN202; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMSSN202; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iICMSSN202; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iICMSSN202; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMSSN202; overload;
    function vICMSST: String; overload;
    function &End: iGrupoCRT1;
  end;

  iICMSSN500 = interface{N10g}
    function orig(Value: String): iICMSSN500; overload;
    function orig: String; overload;
    function CSOSN(Value: String): iICMSSN500; overload;
    function CSOSN: String; overload;
    function seqXMLGrpOp: iseqXMLGrpOpN25_1;
    function modBCST(Value: String): iICMSSN500; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iICMSSN500; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMSSN500; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iICMSSN500; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iICMSSN500; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMSSN500; overload;
    function vICMSST: String; overload;
    function &End: iGrupoCRT1;
  end;

  iseqXMLGrpOpN25_1 = interface
    function vBCSTRet(Value: String): iseqXMLGrpOpN25_1; overload;
    function vBCSETRet: String; overload;
    function vICMSSTRet(Value: String): iseqXMLGrpOpN25_1; overload;
    function vICMSSTRet: String; overload;
    function &End: iICMSSN500;
  end;

  iICMSSN900 = interface{N10h}
    function orig(Value: String): iICMSSN900; overload;
    function orig: String; overload;
    function CSOSN(Value: String): iICMSSN900; overload;
    function CSOSN: String; overload;
    function seqXMLGrpOp12_1: iseqXMLGrpOpN12_1;
    function seqXMLGrpOp17_1: iseqXMLGrpOpN17_1;
    function seqXMLGrpOp27_1: iseqXMLGrpOpN27_1;
    function modBCST(Value: String): iICMSSN900; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iICMSSN900; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iICMSSN900; overload;
    function pRedBCST: String; overload;
    function vBCST(Value: String): iICMSSN900; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iICMSSN900; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iICMSSN900; overload;
    function vICMSST: String; overload;
    function &End: iGrupoCRT1;
  end;

  iseqXMLGrpOpN12_1 = interface
    function modBC(Value: String): iseqXMLGrpOpN12_1; overload;
    function modBC: String; overload;
    function vBC(Value: String): iseqXMLGrpOpN12_1; overload;
    function vBC: String; overload;
    function pRedBC(Value: String): iseqXMLGrpOpN12_1; overload;
    function pRedBC: String; overload;
    function pICMS(Value: String): iseqXMLGrpOpN12_1; overload;
    function pICMS: String; overload;
    function vICMS(Value: String): iseqXMLGrpOpN12_1; overload;
    function vICMS: String; overload;
    function &End: iICMSSN900;
  end;

  iseqXMLGrpOpN17_1 = interface
    function modBCST(Value: String): iseqXMLGrpOpN17_1; overload;
    function modBCST: String; overload;
    function pMVAST(Value: String): iseqXMLGrpOpN17_1; overload;
    function pMVAST: String; overload;
    function pRedBCST(Value: String): iseqXMLGrpOpN17_1; overload;
    function vBCST: String; overload;
    function pICMSST(Value: String): iseqXMLGrpOpN17_1; overload;
    function pICMSST: String; overload;
    function vICMSST(Value: String): iseqXMLGrpOpN17_1; overload;
    function vICMSST: String; overload;
    function &End: iICMSSN900;
  end;

  iseqXMLGrpOpN27_1 = interface
    function pCredSN(Value: String): iseqXMLGrpOpN27_1; overload;
    function pCredSN: String; overload;
    function vCredICMSSN(Value: String): iseqXMLGrpOpN27_1; overload;
    function vCredICMSSN: String; overload;
    function &End: iICMSSN900;
  end;

  iIPI = interface{O01}
    function clEnq(Value: string): iIPI; overload;
    function clEnq: String; overload;
    function CNPJProd(Value: string): iIPI; overload;
    function CNPJProd: String; overload;
    function cSelo(Value: string): iIPI; overload;
    function cSelo: String; overload;
    function qSelo(Value: string): iIPI; overload;
    function qSelo: String; overload;
    function cEnq(Value: string): iIPI; overload;
    function cEnq: String; overload;
    function IPITrib: iIPITrib;
    function IPINT: iIPINT;
    function &End: iTrubutosIncidentesProdutoServico;
  end;

  iIPITrib = interface
    function CST(Value: String): iIPITrib; overload;
    function CST: String; overload;
    function seqXMLAliquota: iseqXMLAliquota;
    function &End: iIPI;
  end;

  iseqXMLAliquota = interface
    function vBC(Value: string): iseqXMLAliquota; overload;
    function vBC: String; overload;
    function pIPI(Value: String): iseqXMLAliquota; overload;
    function pIPI: String; overload;
    function seqXMLValor: iseqXMLValor;
    function &End: iIPITrib;
  end;

  iseqXMLValor = interface
    function qUnid(Value: String): iseqXMLValor; overload;
    function qUnid: String; overload;
    function vUnid(Value: String): iseqXMLValor; overload;
    function vUnid: String; overload;
    function vIPI(Value: String): iseqXMLValor; overload;
    function vIPI: String; overload;
    function &End: iseqXMLAliquota;
  end;

  iIPINT = interface
    function CST(Value: String): iIPINT; overload;
    function CST: String; overload;
    function &End: iIPI;
  end;

  iImpostoImportacao = interface {P01}
    function vBC(Value: String): iImpostoImportacao; overload;
    function vBC: String; overload;
    function vDespAdu(Value: String): iImpostoImportacao; overload;
    function vDespAdu: String; overload;
    function vII(Value: String): iImpostoImportacao; overload;
    function vII: String; overload;
    function vIOF(Value: String): iImpostoImportacao; overload;
    function vIOF: String; overload;
    function &End: iTrubutosIncidentesProdutoServico;
  end;

  iPIS = interface{Q01}
    function PISAliq: iPISAliq;
    function PISQtde: iPISQtde;
    function PISNT: iPISNT;
    function PISOutr: iPISOutr;
    function &End: iTrubutosIncidentesProdutoServico;
  end;

  iPISAliq = interface
    function CST(Value: String): iPISAliq; overload;
    function CST: String; overload;
    function vBC(Value: String): iPISAliq; overload;
    function vBC: String; overload;
    function pPIS(Value: String): iPISAliq; overload;
    function pPIS: String; overload;
    function &End: iPIS;
  end;

  iPISQtde = interface
    function CST(Value: String): iPISQtde; overload;
    function CST: String; overload;
    function qBCProd(Value: String): iPISQtde; overload;
    function qBCProd: String; overload;
    function vAliqProd(Value: String): iPISQtde; overload;
    function vAliqProd: String; overload;
    function vPis(Value: String): iPISQtde; overload;
    function vPis: String; overload;
    function &End: iPIS;
  end;

  iPISNT = interface
    function CST(Value: String): iPISNT; overload;
    function CST: String; overload;
    function &End: iPIS;
  end;

  iPISOutr = interface
    function CST(Value: String): iPISOutr; overload;
    function CST: String; overload;
    function seqXMLGrpOPp: iseqXMLGrpOPPISP; overload;
    function seqXMLGrpOPv: iseqXMLGrpOPPISV; overload;
    function &End: iPIS;
  end;

  iseqXMLGrpOPPISP = interface
    function vBC(Value: String): iseqXMLGrpOPPISP; overload;
    function vBC: String; overload;
    function pPIS(Value: String): iseqXMLGrpOPPISP; overload;
    function pPIS: String; overload;
    function &End: iPISOutr;
  end;

  iseqXMLGrpOPPISV = interface
    function aBCProd(Value: String): iseqXMLGrpOPPISV; overload;
    function aBCProd: String; overload;
    function vAliqProd(Value: String): iseqXMLGrpOPPISV; overload;
    function vAliqProd: String; overload;
    function vPIS(Value: String): iseqXMLGrpOPPISV; overload;
    function vPIS: String; overload;
    function &End: iPISOutr;
  end;

  iPISST = interface
    function SeqXMLRPISp: iseqXMLRPISp;
    function SeqXMLRPISv: iseqXMLRPISv;
    function &End: iTrubutosIncidentesProdutoServico;
  end;

  iseqXMLRPISp = interface
    function vBC(Value: String): iseqXMLRPISp; overload;
    function vBC: String; overload;
    function pPIS(Value: String): iseqXMLRPISp; overload;
    function pPIS: String; overload;
    function &End: iPISST;
  end;

  iseqXMLRPISv = interface
    function qBCProd(Value: String): iseqXMLRPISv; overload;
    function qBCProd: String; overload;
    function vAliqProd(Value: String): iseqXMLRPISv; overload;
    function vAliqProd: String; overload;
    function vPIS(Value: String): iseqXMLRPISv; overload;
    function vPIS: String; overload;
    function &End: iPISST;
  end;

  iCOFINS = interface
    function CST(Value: String): iCOFINS; overload;
    function CST: String; overload;
    function vBC(Value: String): iCOFINS; overload;
    function vBC: String; overload;
    function pCOFINS(Value: String): iCOFINS; overload;
    function pCOFINS: String; overload;
    function vCOFINS(Value: String): iCOFINS; overload;
    function vCOFINS: String; overload;
    function COFINSQtde: iCOFINSQtde;
    function CofinsNT: iCofinsNT;
    function CofinsOutr: iCofinsOutr;
    function &End: iTrubutosIncidentesProdutoServico;
  end;

  iCOFINSQtde = interface
    function CST(Value: String): iCOFINSQtde; overload;
    function CST: String; overload;
    function qBCProd(Value: String): iCOFINSQtde; overload;
    function qBCProd: String; overload;
    function vAliqProd(Value: String): iCOFINSQtde; overload;
    function vAliqProd: String; overload;
    function vCofins(Value: String): iCOFINSQtde; overload;
    function vCofins: String; overload;
    function &End: iCOFINS;
  end;

  iCofinsNT = interface
    function CST(Value: String): iCofinsNT; overload;
    function CST: String; overload;
    function &End: iCOFINS;
  end;

  iCofinsOutr = interface
    function CST(Value: String): iCofinsOutr; overload;
    function CST: String; overload;
    function seqXMLp: iSeqXMLCofinsp;
    function seqXMLv: iSeqXMLCofinsv;
    function &End: iCofins;
  end;

  iSeqXMLCofinsp = interface
    function vBC(Value: String): iSeqXMLCofinsp; overload;
    function vBC: String; overload;
    function pCofins(Value: String): iSeqXMLCofinsp; overload;
    function pCofins: String; overload;
    function &End: iCofinsOutr;
  end;

  iSeqXMLCofinsv = interface
    function qBCProd(Value: String): iSeqXMLCofinsv; overload;
    function qBCProd: String; overload;
    function vAliqProd(Value: String): iSeqXMLCofinsv; overload;
    function vAliqProd: String; overload;
    function vCofins(Value: String): iSeqXMLCofinsv; overload;
    function vCofins: String; overload;
    function &End: iCofinsOutr;
  end;

  iCofinsST = interface
    function seqXMLCofinsSTp: iseqXMLCofinsSTp;
    function seqXMLCofinsSTv: iseqXMLCofinsSTv;
    function &End: iTrubutosIncidentesProdutoServico;
  end;

  iseqXMLCofinsSTp = interface
    function vBC(Value: String): iseqXMLCofinsSTp; overload;
    function vBC: String; overload;
    function pCofins(Value: String): iseqXMLCofinsSTp; overload;
    function pCofins: String; overload;
    function &End: iCofinsST;  
  end;

  iseqXMLCofinsSTv = interface
    function qBCProd(Value: String): iseqXMLCofinsSTv; overload;
    function qBCProd: String; overload;
    function vAliqProd(Value: String): iseqXMLCofinsSTv; overload;
    function vAliqProd: String; overload;
    function vCofins(Value: String): iseqXMLCofinsSTv; overload;
    function vCofins: String; overload;
    function &End: iCofinsST;
  end;

  iISSQN = interface
    function vBC(Value: String): iISSQN; overload;
    function vBC: String; overload;
    function vAliq(Value: String): iISSQN; overload;
    function vAliq: String; overload;
    function vISSQN(Value: String): iISSQN; overload;
    function vISSQN: String; overload;
    function cMunFG(Value: String): iISSQN; overload;
    function cMunFG: String; overload;
    function cListServ(Value: String): iISSQN; overload;
    function cListServ: String; overload;
    function vDeducao(Value: String): iISSQN; overload;
    function vDeducao: String; overload;
    function vOutro(Value: String): iISSQN; overload;
    function vOutro: String; overload;
    function vDescIncond(Value: String): iISSQN; overload;
    function vDescIncond: String; overload;
    function vDescCond(Value: String): iISSQN; overload;
    function vDescCond: String; overload;
    function vISSRet(Value: String): iISSQN; overload;
    function vISSRet: String; overload;
    function indISS(Value: String): iISSQN; overload;
    function indISS: String; overload;
    function cService(Value: String): iISSQN; overload;
    function cService: String; overload;
    function cMun(Value: String): iISSQN; overload;
    function cMun: String; overload;
    function cPais(Value: String): iISSQN; overload;
    function cPais: String; overload;
    function nProcesso(Value: String): iISSQN; overload;
    function nProcesso: String; overload;
    function impostoDevol(Value: String): iISSQN; overload;
    function impostoDevol: String; overload;
    function pDevol(Value: String): iISSQN; overload;
    function pDevol: String; overload;
    function IPI(Value: String): iISSQN; overload;
    function IPI: String; overload;
    function vIPIdeVol(Value: String): iISSQN; overload;
    function vIPIdeVol: String; overload;
    
    function &End: iTrubutosIncidentesProdutoServico;
  end;
  
implementation

end.
