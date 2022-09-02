unit ACBrNFe.entity.impl.InfInterMed;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TInfIntermed = class(TInterfacedObject, iInfIntermed)
    private
      FCNPJ: String;
      FidCadIntTran: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfIntermed;
      function CNPJ(Value: String): iInfIntermed; overload;
      function CNPJ: String; overload;
      function idCadIntTran(Value: String): iInfIntermed; overload;
      function idCadIntTran: String; overload;
      function Build: iInfIntermed;
  end;

implementation

function TInfIntermed.Build: iInfIntermed;
begin
  Result := Self;
end;

function TInfIntermed.CNPJ(Value: String): iInfIntermed;
begin
  Result := Self;
  FCNPJ := Value;
end;

function TInfIntermed.CNPJ: String;
begin
  Result := FCNPJ;
end;

constructor TInfIntermed.Create;
begin

end;

destructor TInfIntermed.Destroy;
begin

  inherited;
end;

function TInfIntermed.idCadIntTran(Value: String): iInfIntermed;
begin
  Result := Self;
  FidCadIntTran := Value;
end;

function TInfIntermed.idCadIntTran: String;
begin
  Result := FidCadIntTran;
end;

class function TInfIntermed.New : iInfIntermed;
begin
  Result := Self.Create;
end;

end.
