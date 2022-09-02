unit ACBrNFe.entity.impl.Transp;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TTransp = class(TInterfacedObject, iTransp)
    private
      FmodFrete: String;
      FCNPJCPF: String;
      FxNome: String;
      FIE: String;
      FxEnder: String;
      FxMun: String;
      FUF: String;
      FvServ: Currency;
      FvBCRet: Currency;
      FpICMSRet: Currency;
      FvICMSRet: Currency;
      FCFOP: String;
      FcMunFG: Integer;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTransp;
      function modFrete(Value: String): iTransp; overload;
      function modFrete: String; overload;
      function CNPJCPF(Value: String): iTransp; overload;
      function CNPJCPF: String; overload;
      function xNome(Value: String): iTransp; overload;
      function xNome: String; overload;
      function IE(Value: String): iTransp; overload;
      function IE: String; overload;
      function xEnder(Value: String): iTransp; overload;
      function xEnder: String; overload;
      function xMun(Value: String): iTransp; overload;
      function xMun: String; overload;
      function UF(Value: String): iTransp; overload;
      function UF: String; overload;
      function vServ(Value: Currency): iTransp; overload;
      function vServ: Currency; overload;
      function vBCRet(Value: Currency): iTransp; overload;
      function vBCRet: Currency; overload;
      function pICMSRet(Value: Currency): iTransp; overload;
      function pICMSRet: Currency; overload;
      function vICMSRet(Value: Currency): iTransp; overload;
      function vICMSRet: Currency; overload;
      function CFOP(Value: String): iTransp; overload;
      function CFOP: String; overload;
      function cMunFG(Value: Integer): iTransp; overload;
      function cMunFG: Integer; overload;
      function Build: iTransp;
  end;

implementation

function TTransp.Build: iTransp;
begin
  Result := Self;
end;

function TTransp.CFOP: String;
begin
  Result := FCFOP;
end;

function TTransp.CFOP(Value: String): iTransp;
begin
  Result := Self;
  FCFOP := Value;
end;

function TTransp.cMunFG: Integer;
begin
  Result := FcMunFG;
end;

function TTransp.cMunFG(Value: Integer): iTransp;
begin
  Result := Self;
  FcMunFG := Value;
end;

function TTransp.CNPJCPF: String;
begin
  Result := FCNPJCPF;
end;

function TTransp.CNPJCPF(Value: String): iTransp;
begin
  Result := Self;
  FCNPJCPF := Value;
end;

constructor TTransp.Create;
begin

end;

destructor TTransp.Destroy;
begin

  inherited;
end;

function TTransp.IE(Value: String): iTransp;
begin
  Result := Self;
  FIE := Value;
end;

function TTransp.IE: String;
begin
  Result := FIE;
end;

function TTransp.modFrete: String;
begin
  Result := FmodFrete;
end;

function TTransp.modFrete(Value: String): iTransp;
begin
  Result := Self;
  FmodFrete := Value;
end;

class function TTransp.New : iTransp;
begin
  Result := Self.Create;
end;

function TTransp.pICMSRet: Currency;
begin
  Result := FpICMSRet;
end;

function TTransp.pICMSRet(Value: Currency): iTransp;
begin
  Result := Self;
  FpICMSRet := Value;
end;

function TTransp.UF(Value: String): iTransp;
begin
  Result := Self;
  FUF := Value;
end;

function TTransp.UF: String;
begin
  Result := FUF;
end;

function TTransp.vBCRet(Value: Currency): iTransp;
begin
  Result := Self;
  FvBCRet := Value;
end;

function TTransp.vBCRet: Currency;
begin
  Result := FvBCRet;
end;

function TTransp.vICMSRet: Currency;
begin
  Result := FvICMSRet;
end;

function TTransp.vICMSRet(Value: Currency): iTransp;
begin
  Result := Self;
  FvICMSRet := Value;
end;

function TTransp.vServ(Value: Currency): iTransp;
begin
  Result := Self;
  FvServ := Value;
end;

function TTransp.vServ: Currency;
begin
  Result := FvServ;
end;

function TTransp.xEnder(Value: String): iTransp;
begin
  Result := Self;
  FxEnder := Value;
end;

function TTransp.xEnder: String;
begin
  Result := FxEnder;
end;

function TTransp.xMun(Value: String): iTransp;
begin
  Result := Self;
  FxMun := Value;
end;

function TTransp.xMun: String;
begin
  Result := FxMun;
end;

function TTransp.xNome: String;
begin
  Result := FxNome;
end;

function TTransp.xNome(Value: String): iTransp;
begin
  Result := Self;
  FxNome := Value;
end;

end.
