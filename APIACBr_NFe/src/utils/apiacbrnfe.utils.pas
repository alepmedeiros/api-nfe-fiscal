unit apiacbrnfe.utils;

interface

uses
  pcnConversao;

type
  TpcnIndicadorPagamentoHelper = record helper for TpcnIndicadorPagamento
    function ToString: String;
    function ToEnum(Value: String): TpcnIndicadorPagamento;
  end;

  TpcnTipoNFeHelper = record helper for TpcnTipoNFe
    function ToString: String;
    function ToEnum(Value: String): TpcnTipoNFe;
  end;

implementation

uses
  System.SysUtils,
  System.TypInfo;

function TpcnIndicadorPagamentoHelper.ToEnum(
  Value: String): TpcnIndicadorPagamento;
begin
  for var I := Ord(Low(TpcnIndicadorPagamento)) to Ord(High(TpcnIndicadorPagamento)) do
  begin
    var lTipo := LowerCase(GetEnumName(TypeInfo(TpcnIndicadorPagamento), I));
    if not (Pos(Copy(lTipo,2, lTipo.Length), Value) = 0) then
      Result := TpcnIndicadorPagamento(GetEnumValue(TypeInfo(TpcnIndicadorPagamento), lTipo));
  end;

end;

function TpcnIndicadorPagamentoHelper.ToString: String;
begin
  Result := LowerCase(GetEnumName(TypeInfo(TpcnIndicadorPagamento), Integer(self)));
end;

{ TpcnTipoNFeHelper }

function TpcnTipoNFeHelper.ToEnum(Value: String): TpcnTipoNFe;
begin
  for var I := Ord(Low(TpcnTipoNFe)) to Ord(High(TpcnTipoNFe)) do
  begin
    var lTipo := LowerCase(GetEnumName(TypeInfo(TpcnTipoNFe), I));
    if not (Pos(Copy(lTipo,2, lTipo.Length), Value) = 0) then
      Result := TpcnTipoNFe(GetEnumValue(TypeInfo(TpcnTipoNFe), lTipo));
  end;
end;

function TpcnTipoNFeHelper.ToString: String;
begin
  Result := LowerCase(GetEnumName(TypeInfo(TpcnTipoNFe), Integer(self)));
end;

end.
