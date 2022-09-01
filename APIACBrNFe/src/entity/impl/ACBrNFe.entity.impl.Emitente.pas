unit ACBrNFe.entity.impl.Emitente;

interface

uses
  ACBrNFe.entity.interfaces, ACBrNFe.entity.impl.EnderEmit;

type
  TEmitente = class(TInterfacedObject, iEmitente)
    private
      FxNome: String;
      FxFant: String;
      FCNPJCPF: String;
      FIE: String;
      FIEST: String;
      FCNAE: String;
      FEnderEmit: iEnderEmit<iEmitente>;
      FCRT: String;
      FIM: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEmitente;
      function xNome(Value: String): iEmitente; overload;
      function xNome: String; overload;
      function xFant(Value: String): iEmitente; overload;
      function xFant: String; overload;
      function CNPJCPF(Value: String): iEmitente; overload;
      function CNPJCPF: String; overload;
      function IE(Value: String): iEmitente; overload;
      function IE: String; overload;
      function IEST(Value: String): iEmitente; overload;
      function IEST: String; overload;
      function CNAE(Value: String): iEmitente; overload;
      function CNAE: String; overload;
      function EnderEmit: iEnderEmit<iEmitente>;
      function CRT(Value: String): iEmitente; overload;
      function CRT: String; overload;
      function IM(Value: String): iEmitente; overload;
      function IM: String; overload;
      function Build: iEmitente;
  end;

implementation

function TEmitente.Build: iEmitente;
begin
  Result := Self;
end;

function TEmitente.CNAE(Value: String): iEmitente;
begin
  Result := Self;
  FCNAE := Value;
end;

function TEmitente.CNAE: String;
begin
  Result := FCNAE;
end;

function TEmitente.CNPJCPF: String;
begin
  Result := FCNPJCPF;
end;

function TEmitente.CNPJCPF(Value: String): iEmitente;
begin
  Result := Self;
  FCNPJCPF := Value;
end;

constructor TEmitente.Create;
begin

end;

function TEmitente.CRT(Value: String): iEmitente;
begin
  Result := Self;
  FCRT := Value;
end;

function TEmitente.CRT: String;
begin
  Result := FCRT;
end;

destructor TEmitente.Destroy;
begin

  inherited;
end;

function TEmitente.EnderEmit: iEnderEmit<iEmitente>;
begin
  if not Assigned(FEnderEmit) then
    FEnderEmit := TEnderEmit<iEmitente>.New(Self);
  Result := FEnderEmit;
end;

function TEmitente.IE: String;
begin
  Result := FIE;
end;

function TEmitente.IE(Value: String): iEmitente;
begin
  Result := Self;
  FIE := Value;
end;

function TEmitente.IEST: String;
begin
  Result := FIEST
end;

function TEmitente.IEST(Value: String): iEmitente;
begin
  Result := Self;
  FIEST := Value;
end;

function TEmitente.IM: String;
begin
  Result := FIM;
end;

function TEmitente.IM(Value: String): iEmitente;
begin
  Result := Self;
  FIM := Value;
end;

class function TEmitente.New : iEmitente;
begin
  Result := Self.Create;
end;

function TEmitente.xFant: String;
begin
  Result := FxFant;
end;

function TEmitente.xFant(Value: String): iEmitente;
begin
  Result := Self;
  FxFant := Value;
end;

function TEmitente.xNome(Value: String): iEmitente;
begin
  Result := Self;
  FxNome := Value;
end;

function TEmitente.xNome: String;
begin
  Result := FxNome;
end;

end.
