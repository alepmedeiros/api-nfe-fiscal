unit Workshop.Model.Fiscal.Nfe.Attributes;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNFeAttributes = class(TInterfacedObject, iModelFiscalNfeAttributes)
    private
      [weak]
      FParent : iModelFiscalNFe;
      FNumero : Integer;
      FLote : String;
      FModelo : iModelFiscalNFeAttributesModelo;
      FVersao : iModelFiscalNFeAttributesVersao;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe) : iModelFiscalNfeAttributes;
      function Numero (aValue : Integer)  : iModelFiscalNFeAttributes; overload;
      function Lote   (aValue : String)  : iModelFiscalNFeAttributes; overload;
      function Numero                     : Integer; overload;
      function Lote                       : String; overload;
      function Modelo                     : iModelFiscalNFeAttributesModelo; overload;
      function Versao                     : iModelFiscalNFeAttributesVersao; overload;
      function &End                       : iModelFiscalNfe;
  end;

implementation

uses
  System.SysUtils, Workshop.Model.Fiscal.Nfe.Attributes.Modelo,
  Workshop.Model.Fiscal.Nfe.Attributes.Versao;

{ TModelFiscalNFeAttributes }

function TModelFiscalNFeAttributes.&End: iModelFiscalNfe;
begin
  Result := FParent;
end;

constructor TModelFiscalNFeAttributes.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
  FModelo := TModelFiscalNfeAttributesModelo.New(Self);
  FVersao := TModelFiscalNfeAttributesVersao.New(Self);
end;

destructor TModelFiscalNFeAttributes.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeAttributes.Lote: String;
begin
  Result := FLote;
end;

function TModelFiscalNFeAttributes.Modelo: iModelFiscalNFeAttributesModelo;
begin
  Result := FModelo;
end;

function TModelFiscalNFeAttributes.Lote(
  aValue: String): iModelFiscalNFeAttributes;
begin
  Result := Self;
  FLote := aValue;
  if Trim(FLote) = '' then
    raise Exception.Create('Número do Lote inválido.');
end;

class function TModelFiscalNFeAttributes.New(Parent : iModelFiscalNFe) : iModelFiscalNfeAttributes;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalNFeAttributes.Numero(
  aValue: Integer): iModelFiscalNFeAttributes;
begin
  Result := Self;
  FNumero := aValue;
end;

function TModelFiscalNFeAttributes.Numero: Integer;
begin
  Result := FNumero;
end;

function TModelFiscalNFeAttributes.Versao: iModelFiscalNFeAttributesVersao;
begin
  Result := FVersao;
end;

end.
