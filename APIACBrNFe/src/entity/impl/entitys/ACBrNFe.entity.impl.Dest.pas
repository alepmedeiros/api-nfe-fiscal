unit ACBrNFe.entity.impl.Dest;

interface

uses
  ACBrNFe.entity.interfaces, ACBrNFe.entity.impl.EnderDest;

type
  TDest = class(TInterfacedObject, iDest)
    private
      FCNPJCPF: String;
      FIE: String;
      FISUF: String;
      FxNome: String;
      FEnderDest: iEnderDest<iDest>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDest;
      function CNPJCPF(Value: String): iDest; overload;
      function CNPJCPF: String; overload;
      function IE(Value: String): iDest; overload;
      function IE: String; overload;
      function ISUF(Value: String): iDest; overload;
      function ISUF: String; overload;
      function xNome(Value: String): iDest; overload;
      function xNome: String; overload;
      function EnderDest: iEnderDest<iDest>;
      function Build: iDest;
  end;

implementation

function TDest.Build: iDest;
begin
  Result := Self;
end;

function TDest.CNPJCPF: String;
begin
  Result := FCNPJCPF;
end;

function TDest.CNPJCPF(Value: String): iDest;
begin
  Result := Self;
  FCNPJCPF := Value;
end;

constructor TDest.Create;
begin

end;

destructor TDest.Destroy;
begin

  inherited;
end;

function TDest.EnderDest: iEnderDest<iDest>;
begin
  if not Assigned(FEnderDest) then
    FEnderDest := TEnderDest<iDest>.NEw(Self);
  Result := FEnderDest;
end;

function TDest.IE: String;
begin
  Result := FIE;
end;

function TDest.IE(Value: String): iDest;
begin
  Result := Self;
  FIE := Value;
end;

function TDest.ISUF(Value: String): iDest;
begin
  Result := Self;
  FISUF := Value;
end;

function TDest.ISUF: String;
begin
  Result := FISUF;
end;

class function TDest.New : iDest;
begin
  Result := Self.Create;
end;

function TDest.xNome(Value: String): iDest;
begin
  Result := Self;
  FxNome := Value;
end;

function TDest.xNome: String;
begin
  Result := FxNome;
end;

end.
