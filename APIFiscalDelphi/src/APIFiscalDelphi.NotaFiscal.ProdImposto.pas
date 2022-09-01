unit APIFiscalDelphi.NotaFiscal.ProdImposto;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TProdImposto = class(TInterfacedObject, iProdImposto)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iProdImposto;
      function vBCUFDest(Value: Currency): iProdImposto; overload;
      function vBCUFDest: Currency; overload;
      function pFCPUFDest(Value: Currency): iProdImposto; overload;
      function pFCPUFDest: Currency; overload;
      function pICMSUFDest(Value: Currency): iProdImposto; overload;
      function pICMSUFDest: Currency; overload;
      function pICMSInter(Value: Currency): iProdImposto; overload;
      function pICMSInter: Currency; overload;
      function pICMSInterPart(Value: Currency): iProdImposto; overload;
      function pICMSInterPart: Currency; overload;
      function vFCPUFDest(Value: Currency): iProdImposto; overload;
      function vFCPUFDest: Currency; overload;
      function vICMSUFDest(Value: Currency): iProdImposto; overload;
      function vICMSUFDest: Currency; overload;
      function vICMSUFRemet(Value: Currency): iProdImposto; overload;
      function vICMSUFRemet: Currency; overload;
      function &End: iProd;
  end;

implementation

function TProdImposto.&End: iProd;
begin

end;

constructor TProdImposto.Create;
begin

end;

destructor TProdImposto.Destroy;
begin

  inherited;
end;

class function TProdImposto.New : iProdImposto;
begin
  Result := Self.Create;
end;

function TProdImposto.pFCPUFDest: Currency;
begin

end;

function TProdImposto.pFCPUFDest(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.pICMSInter: Currency;
begin

end;

function TProdImposto.pICMSInter(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.pICMSInterPart(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.pICMSInterPart: Currency;
begin

end;

function TProdImposto.pICMSUFDest(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.pICMSUFDest: Currency;
begin

end;

function TProdImposto.vBCUFDest: Currency;
begin

end;

function TProdImposto.vBCUFDest(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.vFCPUFDest(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.vFCPUFDest: Currency;
begin

end;

function TProdImposto.vICMSUFDest: Currency;
begin

end;

function TProdImposto.vICMSUFDest(Value: Currency): iProdImposto;
begin

end;

function TProdImposto.vICMSUFRemet: Currency;
begin

end;

function TProdImposto.vICMSUFRemet(Value: Currency): iProdImposto;
begin

end;

end.
