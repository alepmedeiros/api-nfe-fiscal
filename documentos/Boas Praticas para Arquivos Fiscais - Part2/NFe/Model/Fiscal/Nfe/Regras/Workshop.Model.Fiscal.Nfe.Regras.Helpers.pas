unit Workshop.Model.Fiscal.Nfe.Regras.Helpers;

interface

uses
  pcnConversao,
  Workshop.Model.Fiscal.Nfe.Regras.Interfaces;

type

  TpcnCSTIcmsHelper = record helper for TpcnCSTIcms
    function Regras  : iModelNFeRegrasImposto;
  end;

  TpcnCSOSNIcmsHelper = record helper for TpcnCSOSNIcms
    function Regras : iModelNFeRegrasImposto;
  end;

  TpcnCRTHelper = record helper for TpcnCRT
    function Regras : iModelNfeRegras;
  end;

implementation

uses
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal.CST00,
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal.CST060,
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal.CSOSN101,
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeSimples,
  Workshop.Model.Fiscal.Nfe.Regras.ICMS.RegimeNormal;

{ TpcnCSTIcmsHelper }

function TpcnCSTIcmsHelper.Regras: iModelNFeRegrasImposto;
begin
  case Self of
    cst00: Result := TModelFiscalNFeRegrasICMSRegimeNormalCST00.New;
    cst10: ;
    cst20: ;
    cst30: ;
    cst40: ;
    cst41: ;
    cst45: ;
    cst50: ;
    cst51: ;
    cst60: Result := TModelFiscalNFeRegrasICMSRegimeNormalCST060.New;
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

{ TpcnCSOSNIcmsHelper }

function TpcnCSOSNIcmsHelper.Regras: iModelNFeRegrasImposto;
begin
  case Self of
    csosnVazio: ;
    csosn101: Result := TModelFiscalNFeRegrasICMSRegimeNormalCSOSN101.New;
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

{ TpcnCRTHelper }

function TpcnCRTHelper.Regras: iModelNfeRegras;
begin
  case Self of
    crtSimplesNacional:       Result := TModelFiscalNFeRegrasRegimSimples.New;
    crtSimplesExcessoReceita: Result := nil;
    crtRegimeNormal:          Result := TModelFiscalNFeRegrasRegimeNormal.New;
  end;
end;

end.
