unit passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers;

interface

uses
  System.TypInfo,
  pcnConversao,
  passaporteacbrapinfe.usecase.interfaces;

type
  TCRTHelper = record helper for TpcnCRT
    function Regras: iRegras;
  end;

  TCSTICMSHelper = record helper for TpcnCSTIcms
    function GetValue(Value: String): TpcnCSTIcms;
  end;

  TCSTCSOSNHelper = record helper for TpcnCSOSNIcms
    function GetValue(Value: String): TpcnCSOSNIcms;
  end;

  TOrigMercadoriaHelper = record helper for TpcnOrigemMercadoria
    function GetValue(Value: String): TpcnOrigemMercadoria;
  end;

  TDeterminacaoBaseICMS = record helper for TpcnDeterminacaoBaseIcms
    function GetValue(Value: String): TpcnDeterminacaoBaseIcms;
  end;

  TDeterminacaoBaseICMSST = record helper for TpcnDeterminacaoBaseIcmsST
    function GetValue(Value: String): TpcnDeterminacaoBaseIcmsST;
  end;

implementation

uses
  passaporteacbrapinfe.usecase.impl.regrasicmssimples,
  passaporteacbrapinfe.usecase.impl.regrasicmsnormal;

{ TCSTCSOSNHelper }

function TCSTCSOSNHelper.GetValue(Value: String): TpcnCSOSNIcms;
begin
  Result := TpcnCSOSNIcms(GetEnumValue(TypeInfo(TpcnCSOSNIcms), 'csosn' + Value));
end;

{ TCRTHelper }

function TCRTHelper.Regras: iRegras;
begin
  case Self of
    crtSimplesNacional: Result := TRegrasICMSSimples.New;
    crtRegimeNormal,crtSimplesExcessoReceita: Result := TRegrasRegimeNormal.New;
  end;
end;

{ TCSTICMSHelper }

function TCSTICMSHelper.GetValue(Value: String): TpcnCSTIcms;
begin
  Result := TpcnCSTIcms(GetEnumValue(TypeInfo(TpcnCSTIcms), 'cst' + Value));
end;

{ TOrigMercadoriaHelper }

function TOrigMercadoriaHelper.GetValue(Value: String): TpcnOrigemMercadoria;
begin
  Result := TpcnOrigemMercadoria(GetEnumValue(TypeInfo(TpcnOrigemMercadoria), 'oe' + Value));
end;

{ TDeterminacaoBaseICMS }

function TDeterminacaoBaseICMS.GetValue(
  Value: String): TpcnDeterminacaoBaseIcms;
begin
  Result := TpcnDeterminacaoBaseIcms(GetEnumValue(TypeInfo(TpcnDeterminacaoBaseIcms), 'dbi' + Value));
end;

{ TDeterminacaoBaseICMSST }

function TDeterminacaoBaseICMSST.GetValue(
  Value: String): TpcnDeterminacaoBaseIcmsST;
begin
  Result := TpcnDeterminacaoBaseIcmsST(GetEnumValue(TypeInfo(TpcnDeterminacaoBaseIcmsST), 'dbis' + Value));
end;

end.
