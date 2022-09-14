unit ACBrNFe.entity.impl.Prod;

interface

uses
  ACBrNFe.entity.interfaces, ACBrNFe.entity.impl.Comb,
  ACBrNFe.entity.impl.Imposto, ACBrNFe.entity.impl.VeicProd;

type
  TProd = class(TInterfacedObject, iProd)
    private
      FnItem: Integer;
      FcProd: String;
      FcEAN: String;
      FxProd: String;
      FNCM: String;
      FEXTIPI: String;
      FCFOP: String;
      FuCom: String;
      FqCom: Currency;
      FvUnCom: Currency;
      FvProd: Currency;
      FcEANTrib: String;
      FuTrib: String;
      FqTrib: Currency;
      FvUnTrib: Currency;
      FvOutro: Currency;
      FvFrete: Currency;
      FvSeg: Currency;
      FvDesc: Currency;
      FCEST: String;
      FinfAdProd: String;
      FcBarra: String;
      FcBarraTrib: String;
      FveicProd: iVeicProd<iProd>;
      FCombustivel: iComb<iProd>;
      FImposto: iImposto<iProd>;
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
      function cBarra(Value: String): iProd; overload;
      function cBarra: String; overload;
      function cBarraTrib(Value: String): iProd; overload;
      function cBarraTrib: String; overload;
      function veicProd: iVeicProd<iProd>;
      function Combustivel: iComb<iProd>;
      function Imposto: iImposto<iProd>;
      function Build: iProd;
  end;

implementation

function TProd.Build: iProd;
begin
  Result := Self;
end;

function TProd.cBarra: String;
begin
  Result := FcBarra;
end;

function TProd.cBarra(Value: String): iProd;
begin
  Result := Self;
  FcBarra := Value;
end;

function TProd.cBarraTrib: String;
begin
  Result := FcBarraTrib;
end;

function TProd.cBarraTrib(Value: String): iProd;
begin
  Result := Self;
  FcBarraTrib := Value;
end;

function TProd.cEAN: String;
begin
  Result := FcEAN;
end;

function TProd.cEAN(Value: String): iProd;
begin
  Result := Self;
  FcEAN := Value;
end;

function TProd.cEANTrib: String;
begin
  Result := FcEANTrib;
end;

function TProd.cEANTrib(Value: String): iProd;
begin
  Result := Self;
  FcEANTrib := Value;
end;

function TProd.CEST(Value: String): iProd;
begin
  Result := Self;
  FCEST := Value;
end;

function TProd.CEST: String;
begin
  Result := FCEST;
end;

function TProd.CFOP: String;
begin
  Result := FCFOP;
end;

function TProd.CFOP(Value: String): iProd;
begin
  Result := Self;
  FCFOP := Value;
end;

function TProd.Combustivel: iComb<iProd>;
begin
  if not Assigned(FCombustivel) then
    FCombustivel := TComb<iProd>.New(Self);
  Result := FCombustivel;
end;

function TProd.cProd(Value: String): iProd;
begin
  Result := Self;
  FcProd := Value;
end;

function TProd.cProd: String;
begin
  Result := FcProd;
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
  Result := FEXTIPI;
end;

function TProd.EXTIPI(Value: String): iProd;
begin
  Result := Self;
  FEXTIPI := Value;
end;

function TProd.Imposto: iImposto<iProd>;
begin
  if not Assigned(FImposto) then
    FImposto := TImposto<iProd>.New(Self);
  Result := FImposto;
end;

function TProd.infAdProd: String;
begin
  Result := FinfAdProd;
end;

function TProd.infAdProd(Value: String): iProd;
begin
  Result := Self;
  FinfAdProd := Value;
end;

function TProd.NCM: String;
begin
  Result := FNCM;
end;

function TProd.NCM(Value: String): iProd;
begin
  Result := Self;
  FNCM := Value;
end;

class function TProd.New : iProd;
begin
  Result := Self.Create;
end;

function TProd.nItem(Value: Integer): iProd;
begin
  Result := Self;
  FnItem := Value;
end;

function TProd.nItem: Integer;
begin
  Result := FnItem;
end;

function TProd.qCom(Value: Currency): iProd;
begin
  Result := Self;
  FqCom := Value;
end;

function TProd.qCom: Currency;
begin
  Result := FqCom;
end;

function TProd.qTrib: Currency;
begin
  Result := FqTrib;
end;

function TProd.qTrib(Value: Currency): iProd;
begin
  Result := Self;
  FqTrib := Value;
end;

function TProd.uCom(Value: String): iProd;
begin
  Result := Self;
  FuCom := Value;
end;

function TProd.uCom: String;
begin
  Result := FuCom;
end;

function TProd.uTrib(Value: String): iProd;
begin
  Result := Self;
  FuTrib := Value;
end;

function TProd.uTrib: String;
begin
  Result := FuTrib;
end;

function TProd.vDesc: Currency;
begin
  Result := FvDesc;
end;

function TProd.vDesc(Value: Currency): iProd;
begin
  Result := Self;
  FvDesc := Value;
end;

function TProd.veicProd: iVeicProd<iProd>;
begin
  if not Assigned(FveicProd) then
    FveicProd := TVeicProd<iProd>.New(Self);
  Result := FveicProd;
end;

function TProd.vFrete(Value: Currency): iProd;
begin
  Result := Self;
  FvFrete := Value;
end;

function TProd.vFrete: Currency;
begin
  Result := FvFrete;
end;

function TProd.vOutro(Value: Currency): iProd;
begin
  Result := Self;
  FvOutro := Value;
end;

function TProd.vOutro: Currency;
begin
  Result := FvOutro;
end;

function TProd.vProd: Currency;
begin
  Result := FvProd;
end;

function TProd.vProd(Value: Currency): iProd;
begin
  Result := Self;
  FvProd := Value;
end;

function TProd.vSeg: Currency;
begin
  Result := FvSeg;
end;

function TProd.vSeg(Value: Currency): iProd;
begin
  Result := Self;
  FvSeg := Value;
end;

function TProd.vUnCom(Value: Currency): iProd;
begin
  Result := Self;
  FvUnCom := Value;
end;

function TProd.vUnCom: Currency;
begin
  Result := FvUnCom;
end;

function TProd.vUnTrib: Currency;
begin
  Result := FvUnTrib;
end;

function TProd.vUnTrib(Value: Currency): iProd;
begin
  Result := Self;
  FvUnTrib := Value;
end;

function TProd.xProd: String;
begin
  Result := FxProd;
end;

function TProd.xProd(Value: String): iProd;
begin
  Result := Self;
  FxProd := Value;
end;

end.
