unit Workshop.Model.Fiscal.Nfe.Attributes.Modelo;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces,
  System.RTTI;

Type
  TModelFiscalNfeAttributesModelo = class(TInterfacedObject, iModelFiscalNfeAttributesModelo)
    private
      [weak]
      FParent : iModelFiscalNFeAttributes;
      FThis : TValue;
    public
      constructor Create(Parent : iModelFiscalNFeAttributes);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFeAttributes) : iModelFiscalNfeAttributesModelo;
      function Nfe :  iModelFiscalNFeAttributes;
      function NFCe : iModelFiscalNFeAttributes;
      function _this  : TValue;
  end;

implementation

uses
  pcnConversaoNFe;

{ TModelFiscalNfeAttributesModelo }


constructor TModelFiscalNfeAttributesModelo.Create(Parent : iModelFiscalNFeAttributes);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeAttributesModelo.Destroy;
begin

  inherited;
end;

class function TModelFiscalNfeAttributesModelo.New(Parent : iModelFiscalNFeAttributes) : iModelFiscalNfeAttributesModelo;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalNfeAttributesModelo.NFCe: iModelFiscalNFeAttributes;
begin
  Result := FParent;
  FThis.From(moNFCe);
end;

function TModelFiscalNfeAttributesModelo.Nfe: iModelFiscalNFeAttributes;
begin
  Result := FParent;
  FThis.From(moNFe);
end;

function TModelFiscalNfeAttributesModelo._this: TValue;
begin
  Result := FThis;
end;

end.
