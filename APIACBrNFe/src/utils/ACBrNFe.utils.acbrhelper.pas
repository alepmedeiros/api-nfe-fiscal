unit ACBrNFe.utils.acbrhelper;

interface

uses
  System.SysUtils,
  TypInfo,
  pcnConversaoNFe,
  pcnConversao,
  ACBrDFeUtil,
  pcnAuxiliar;

type
  TAcbrUtils = class
  private
    class function FirstUppercase(Value: String): String;
    class function LastLowercase(Value: String): String;
  public
    class function StrToEnumVersaoDF(Value: String): TpcnVersaoDF;
    class function StrToEnumVersaoQrCode(Value: String): TpcnVersaoQrCode;
    class function StrToEnumEmissao(Value: String): TpcnTipoEmissao;
    class function StrToEnumTimeZone(Value: String): TTimeZoneModoDeteccao;
    class function StrToEnumTipoAmbiente(Value: String): TpcnTipoAmbiente;
    class function StrToEnumModeloDF(Value: String): TpcnModeloDF;
    class function StrToEnumIndPagamento(Value: String): TpcnIndicadorPagamento;
    class function StrToEnumTipoNFe(Value: String): TpcnTipoNFe;
    class function StrToEnumFinalidadeNFe(Value: String): TpcnFinalidadeNFe;
    class function StrToEnumIndIntermed(Value: String): TIndIntermed;
    class function StrToEnumCRT(Value: String): TpcnCRT;
    class function StrToEnumTipoOperacao(Value: String): TpcnTipoOperacao;
    class function StrToEnumCondVeic(Value: String): TpcnCondicaoVeiculo;
    class function StrToEnumOrigMerc(Value: String): TpcnOrigemMercadoria;
    class function StrToEnumCST(Value: String): TpcnCSTIcms;
    class function StrToEnumDetBaseIcms(Value: String)
      : TpcnDeterminacaoBaseIcms;
    class function StrToEnumDetBaseIcmsST(Value: String)
      : TpcnDeterminacaoBaseIcmsST;
    class function StrToEnumMotivoDeso(Value: String)
      : TpcnMotivoDesoneracaoICMS;
    class function StrToEnumCSTPis(Value: String): TpcnCstPis;
    class function StrToEnumSomaPISST(Value: String): TIndSomaPISST;
    class function StrToEnumCSTCofins(Value: String): TpcnCstCofins;
    class function StrToEnumSomaCofinsST(Value: String): TIndSomaCOFINSST;
    class function StrToEnumModFrete(Value: String): TpcnModalidadeFrete;
    class function StrToEnumFormaPagamento(Value: String): TpcnFormaPagamento;
    class function StrToEnumTipoIntrega(Value: String): TtpIntegra;
    class function StrToEnumBandeiraCartao(Value: String): TpcnBandeiraCartao;
    class function GerarCodigoDanfe(Value: Integer): Integer;
  end;

implementation

{ TAcbrUtils }

class function TAcbrUtils.FirstUppercase(Value: String): String;
begin
  Result := UpperCase(Copy(Value, 1, 1)) +
    LowerCase(Copy(Value, 2, Length(Value)));
end;

class function TAcbrUtils.GerarCodigoDanfe(Value: Integer): Integer;
begin
  Result := GerarCodigoDFe(Value);
end;

class function TAcbrUtils.LastLowercase(Value: String): String;
begin
  Result := UpperCase(Copy(Value, 1, Length(Value) - 1)) +
    Copy(Value, Length(Value), 1);
end;

class function TAcbrUtils.StrToEnumBandeiraCartao(
  Value: String): TpcnBandeiraCartao;
begin
  Result := TpcnBandeiraCartao(GetEnumValue(TypeInfo(TpcnBandeiraCartao),
    'bc' + Value));
end;

class function TAcbrUtils.StrToEnumCondVeic(Value: String): TpcnCondicaoVeiculo;
begin
  Result := TpcnCondicaoVeiculo(GetEnumValue(TypeInfo(TpcnCondicaoVeiculo),
    'cv' + Value));
end;

class function TAcbrUtils.StrToEnumCRT(Value: String): TpcnCRT;
begin
  Result := TpcnCRT(GetEnumValue(TypeInfo(TpcnCRT), 'crt' + Value));
end;

class function TAcbrUtils.StrToEnumCST(Value: String): TpcnCSTIcms;
begin
  Result := TpcnCSTIcms(GetEnumValue(TypeInfo(TpcnCSTIcms), 'cst' + Value));
end;

class function TAcbrUtils.StrToEnumCSTCofins(Value: String): TpcnCstCofins;
begin
  Result := TpcnCstCofins(GetEnumValue(TypeInfo(TpcnCstCofins), 'cof' + Value));
end;

class function TAcbrUtils.StrToEnumCSTPis(Value: String): TpcnCstPis;
begin
  Result := TpcnCstPis(GetEnumValue(TypeInfo(TpcnCstPis), 'pis' + Value));
end;

class function TAcbrUtils.StrToEnumDetBaseIcms(Value: String)
  : TpcnDeterminacaoBaseIcms;
begin
  Result := TpcnDeterminacaoBaseIcms
    (GetEnumValue(TypeInfo(TpcnDeterminacaoBaseIcms), 'dbi' + Value));
end;

class function TAcbrUtils.StrToEnumDetBaseIcmsST(Value: String)
  : TpcnDeterminacaoBaseIcmsST;
begin
  Result := TpcnDeterminacaoBaseIcmsST
    (GetEnumValue(TypeInfo(TpcnDeterminacaoBaseIcmsST), 'dbi' + Value));
end;

class function TAcbrUtils.StrToEnumEmissao(Value: String): TpcnTipoEmissao;
begin
  Result := TpcnTipoEmissao(GetEnumValue(TypeInfo(TpcnTipoEmissao),
    'te' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumFinalidadeNFe(Value: String)
  : TpcnFinalidadeNFe;
begin
  Result := TpcnFinalidadeNFe(GetEnumValue(TypeInfo(TpcnFinalidadeNFe),
    'fn' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumFormaPagamento(Value: String)
  : TpcnFormaPagamento;
begin
  Result := TpcnFormaPagamento(GetEnumValue(TypeInfo(TpcnFormaPagamento),
    'fp' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumIndIntermed(Value: String): TIndIntermed;
begin
  Result := TIndIntermed(GetEnumValue(TypeInfo(TIndIntermed), 'ii' + Value));
end;

class function TAcbrUtils.StrToEnumIndPagamento(Value: String)
  : TpcnIndicadorPagamento;
begin
  Result := TpcnIndicadorPagamento
    (GetEnumValue(TypeInfo(TpcnIndicadorPagamento),
    'ip' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumModeloDF(Value: String): TpcnModeloDF;
begin
  Result := TpcnModeloDF(GetEnumValue(TypeInfo(TpcnModeloDF),
    'mo' + LastLowercase(Value)));
end;

class function TAcbrUtils.StrToEnumModFrete(Value: String): TpcnModalidadeFrete;
begin
  Result := TpcnModalidadeFrete(GetEnumValue(TypeInfo(TpcnModalidadeFrete),
    'mf' + Value));
end;

class function TAcbrUtils.StrToEnumMotivoDeso(Value: String)
  : TpcnMotivoDesoneracaoICMS;
begin
  Result := TpcnMotivoDesoneracaoICMS
    (GetEnumValue(TypeInfo(TpcnMotivoDesoneracaoICMS), 'mdi' + Value));
end;

class function TAcbrUtils.StrToEnumOrigMerc(Value: String)
  : TpcnOrigemMercadoria;
begin
  Result := TpcnOrigemMercadoria(GetEnumValue(TypeInfo(TpcnOrigemMercadoria),
    'oe' + Value));
end;

class function TAcbrUtils.StrToEnumSomaCofinsST(Value: String)
  : TIndSomaCOFINSST;
begin
  Result := TIndSomaCOFINSST(GetEnumValue(TypeInfo(TIndSomaCOFINSST),
    'isc' + Value));
end;

class function TAcbrUtils.StrToEnumSomaPISST(Value: String): TIndSomaPISST;
begin
  Result := TIndSomaPISST(GetEnumValue(TypeInfo(TIndSomaPISST), 'isp' + Value));
end;

class function TAcbrUtils.StrToEnumTimeZone(Value: String)
  : TTimeZoneModoDeteccao;
begin
  Result := TTimeZoneModoDeteccao(GetEnumValue(TypeInfo(TTimeZoneModoDeteccao),
    'tx' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumTipoAmbiente(Value: String)
  : TpcnTipoAmbiente;
begin
  Result := TpcnTipoAmbiente(GetEnumValue(TypeInfo(TpcnTipoAmbiente),
    'ta' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumTipoIntrega(Value: String): TtpIntegra;
begin
  Result := TtpIntegra(GetEnumValue(TypeInfo(TtpIntegra),
    'ti' + Value));
end;

class function TAcbrUtils.StrToEnumTipoNFe(Value: String): TpcnTipoNFe;
begin
  Result := TpcnTipoNFe(GetEnumValue(TypeInfo(TpcnTipoNFe),
    'tp' + FirstUppercase(Value)));
end;

class function TAcbrUtils.StrToEnumTipoOperacao(Value: String)
  : TpcnTipoOperacao;
begin
  Result := TpcnTipoOperacao(GetEnumValue(TypeInfo(TpcnTipoOperacao),
    'to' + Value));
end;

class function TAcbrUtils.StrToEnumVersaoDF(Value: String): TpcnVersaoDF;
begin
  Result := TpcnVersaoDF(GetEnumValue(TypeInfo(TpcnVersaoDF), 've' + Value));
end;

class function TAcbrUtils.StrToEnumVersaoQrCode(Value: String)
  : TpcnVersaoQrCode;
begin
  Result := TpcnVersaoQrCode(GetEnumValue(TypeInfo(TpcnVersaoQrCode),
    'veqr' + Value))
end;

end.
