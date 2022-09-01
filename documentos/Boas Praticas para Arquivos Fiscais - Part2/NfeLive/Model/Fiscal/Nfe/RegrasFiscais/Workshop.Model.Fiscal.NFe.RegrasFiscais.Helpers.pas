unit Workshop.Model.Fiscal.NFe.RegrasFiscais.Helpers;

interface

uses
  pcnConversao,
  Workshop.Model.Fiscal.NFe.RegrasFiscais.Interfaces;

type
  TpcnCRTHelper = record helper for TpcnCRT
    function Regras : iModelNfeRegras;
  end;

  TpcnCSTIcmsHelper = record helper for TpcnCSTIcms
    function Regras : iModelNfeRegrasImposto;
  end;

  TpcnCSOSNIcmsHelper = record helper for TpcnCSOSNIcms
    function Regras : iModelNfeRegrasImposto;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST000,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.RegimeNormal.CST060,
  Workshop.Model.Fiscal.Nfe.RegrasFiscais.ICMS.Simples.CSOSN101;

{ TpcnCRTHelper }

function TpcnCRTHelper.Regras: iModelNfeRegras;
begin
  case Self of
    crtSimplesNacional:       Result := TModelFiscaoNFeRegrasFisicaisICMSSimples.New;
    crtSimplesExcessoReceita: Result := nil;
    crtRegimeNormal:          Result := TModelFiscaoNFeRegrasFisicaisICMSRegimeNormal.New;
  end;
end;

{ TpcnCSTIcmsHelper }

function TpcnCSTIcmsHelper.Regras: iModelNfeRegrasImposto;
begin
  case Self of
    cst00: Result := TModelFiscalNFeRegrasFiscaisRegimeNormalCST000.New;
    cst10: ;
    cst20: ;
    cst30: ;
    cst40: ;
    cst41: ;
    cst45: ;
    cst50: ;
    cst51: ;
    cst60: Result := TModelFiscalNFeRegrasFiscaisRegimeNormalCST060.New;
    cst70: ;
    cst80: ;
    cst81: ;
    cst90: ;
    cstPart10: ;
    cstPart90: ;
    cstRep41: ;
    cstVazio: ;
    cstICMSOutraUF: ;
    cstICMSSN: ;
    cstRep60: ;
  end;
end;

{ TpcnCSOSNIcms }

function TpcnCSOSNIcmsHelper.Regras: iModelNfeRegrasImposto;
begin
  case Self of
    csosnVazio: ;
    csosn101: Result := TModelFiscalNFeRegrasFiscaisRegimeSimplesCSOSN101.New;
    csosn102: ;
    csosn103: ;
    csosn201: ;
    csosn202: ;
    csosn203: ;
    csosn300: ;
    csosn400: ;
    csosn500: ;
    csosn900: ;
  end;
end;

end.
