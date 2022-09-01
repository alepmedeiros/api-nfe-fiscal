unit Workshop.Model.Fiscal.Nfe.Attributes.Versao;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  System.RTTI;

Type
  TModelFiscalNfeAttributesVersao = class(TInterfacedObject, iModelFiscalNfeAttributesVersao)
    private
      FParent : iModelFiscalNFeAttributes;
      FThis : TValue;
    public
      constructor Create(Parent : iModelFiscalNFeAttributes);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFeAttributes) : iModelFiscalNfeAttributesVersao;
      function ve200 : iModelFiscalNFeAttributes;
      function ve300 : iModelFiscalNFeAttributes;
      function ve310 : iModelFiscalNFeAttributes;
      function ve400 : iModelFiscalNFeAttributes;
      function _this : TValue;
  end;

implementation

{ TModelFiscalNfeAttributesVersao }

constructor TModelFiscalNfeAttributesVersao.Create(Parent : iModelFiscalNFeAttributes);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeAttributesVersao.Destroy;
begin

  inherited;
end;

class function TModelFiscalNfeAttributesVersao.New(Parent : iModelFiscalNFeAttributes) : iModelFiscalNfeAttributesVersao;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalNfeAttributesVersao.ve200: iModelFiscalNFeAttributes;
begin
  Result := FParent;
  FThis.From(ve200);
end;

function TModelFiscalNfeAttributesVersao.ve300: iModelFiscalNFeAttributes;
begin
  Result := FParent;
  FThis.From(ve300);
end;

function TModelFiscalNfeAttributesVersao.ve310: iModelFiscalNFeAttributes;
begin
  Result := FParent;
  FThis.From(ve310);
end;

function TModelFiscalNfeAttributesVersao.ve400: iModelFiscalNFeAttributes;
begin
  Result := FParent;
  FThis.From(ve400);
end;

function TModelFiscalNfeAttributesVersao._this: TValue;
begin
  Result := FThis;
end;

end.
