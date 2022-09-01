unit APIFiscalDelphi.NotaFiscal.Prod;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TProd = class(TInterfacedObject, iProd)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iProd;
      function nItem(Value: Integer): iProd; overload;
      function nItem: Integer; overload;
      function cProd(Value: String): iProd; overload;
      function cProd: String; overload;
      function cEAN(Value: String): iProd; overload;
      function cEAN: String; overload;
      function xProd(Value: String): iProd; overload;
      function xProd: String; overload;
      function NCM(Value: String): iProd; overload;
      function NCM: String; overload;
      function EXTIPI(Value: String): iProd; overload;
      function EXTIPI: String; overload;
      function CFOP(Value: String): iProd; overload;
      function CFOP: String; overload;
      function uCom(Value: String): iProd; overload;
      function uCom: String; overload;
      function qCom(Value: Currency): iProd; overload;
      function qCom: Currency; overload;
      function vUnCom(Value: Currency): iProd; overload;
      function vUnCom: Currency; overload;
      function vProd(Value: Currency): iProd; overload;
      function vProd: Currency; overload;
      function cEANTrib(Value: String): iProd; overload;
      function cEANTrib: String; overload;
      function uTrib(Value: String): iProd; overload;
      function uTrib: String; overload;
      function qTrib(Value: Currency): iProd; overload;
      function qTrib: Currency; overload;
      function vUnTrib(Value: Currency): iProd; overload;
      function vUnTrib: Currency; overload;
      function vOutro(Value: Currency): iProd; overload;
      function vOutro: Currency; overload;
      function vFrete(Value: Currency): iProd; overload;
      function vFrete: Currency; overload;
      function vSeg(Value: Currency): iProd; overload;
      function vSeg: Currency; overload;
      function vDesc(Value: Currency): iProd; overload;
      function vDesc: Currency; overload;
      function CEST(Value: String): iProd; overload;
      function CEST: String; overload;
      function infAdProd(Value: String): iProd; overload;
      function infAdProd: String; overload;
      function Imposto: iProdImposto;
      function &End: iNotaFiscal;
  end;

implementation

function TProd.cEAN(Value: String): iProd;
begin

end;

function TProd.cEAN: String;
begin

end;

function TProd.cEANTrib: String;
begin

end;

function TProd.cEANTrib(Value: String): iProd;
begin

end;

function TProd.CEST: String;
begin

end;

function TProd.CEST(Value: String): iProd;
begin

end;

function TProd.CFOP(Value: String): iProd;
begin

end;

function TProd.CFOP: String;
begin

end;

function TProd.cProd: String;
begin

end;

function TProd.cProd(Value: String): iProd;
begin

end;

function TProd.&End: iNotaFiscal;
begin

end;

constructor TProd.Create;
begin

end;

destructor TProd.Destroy;
begin

  inherited;
end;

function TProd.EXTIPI: String;
begin

end;

function TProd.EXTIPI(Value: String): iProd;
begin

end;

function TProd.Imposto: iProdImposto;
begin

end;

function TProd.infAdProd: String;
begin

end;

function TProd.infAdProd(Value: String): iProd;
begin

end;

function TProd.NCM: String;
begin

end;

function TProd.NCM(Value: String): iProd;
begin

end;

class function TProd.New : iProd;
begin
  Result := Self.Create;
end;

function TProd.nItem(Value: Integer): iProd;
begin

end;

function TProd.nItem: Integer;
begin

end;

function TProd.qCom(Value: Currency): iProd;
begin

end;

function TProd.qCom: Currency;
begin

end;

function TProd.qTrib: Currency;
begin

end;

function TProd.qTrib(Value: Currency): iProd;
begin

end;

function TProd.uCom: String;
begin

end;

function TProd.uCom(Value: String): iProd;
begin

end;

function TProd.uTrib: String;
begin

end;

function TProd.uTrib(Value: String): iProd;
begin

end;

function TProd.vDesc(Value: Currency): iProd;
begin

end;

function TProd.vDesc: Currency;
begin

end;

function TProd.vFrete(Value: Currency): iProd;
begin

end;

function TProd.vFrete: Currency;
begin

end;

function TProd.vOutro(Value: Currency): iProd;
begin

end;

function TProd.vOutro: Currency;
begin

end;

function TProd.vProd: Currency;
begin

end;

function TProd.vProd(Value: Currency): iProd;
begin

end;

function TProd.vSeg: Currency;
begin

end;

function TProd.vSeg(Value: Currency): iProd;
begin

end;

function TProd.vUnCom: Currency;
begin

end;

function TProd.vUnCom(Value: Currency): iProd;
begin

end;

function TProd.vUnTrib: Currency;
begin

end;

function TProd.vUnTrib(Value: Currency): iProd;
begin

end;

function TProd.xProd(Value: String): iProd;
begin

end;

function TProd.xProd: String;
begin

end;

end.
