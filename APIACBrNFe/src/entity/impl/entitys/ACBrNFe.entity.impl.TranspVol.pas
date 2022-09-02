unit ACBrNFe.entity.impl.TranspVol;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TTranspVol = class(TInterfacedObject, iTranspVol)
    private
      FqVol: Integer;
      Fesp: String;
      Fmarca: String;
      FnVol: String;
      FpesoL: Currency;
      FpesoB: Currency;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTranspVol;
      function qVol(Value: Integer): iTranspVol; overload;
      function qVol: Integer; overload;
      function esp(Value: String): iTranspVol; overload;
      function esp: String; overload;
      function marca(Value: String): iTranspVol; overload;
      function marca: String; overload;
      function nVol(Value: String): iTranspVol; overload;
      function nVol: String; overload;
      function pesoL(Value: Currency): iTranspVol; overload;
      function pesoL: Currency; overload;
      function pesoB(Value: Currency): iTranspVol; overload;
      function pesoB: Currency; overload;
      function Build: iTranspVol;
  end;

implementation

function TTranspVol.Build: iTranspVol;
begin
  Result := Self;
end;

constructor TTranspVol.Create;
begin

end;

destructor TTranspVol.Destroy;
begin

  inherited;
end;

function TTranspVol.esp: String;
begin
  Result := Fesp;
end;

function TTranspVol.esp(Value: String): iTranspVol;
begin
  Result := Self;
  Fesp := Value;
end;

function TTranspVol.marca: String;
begin
  Result := Fmarca;
end;

function TTranspVol.marca(Value: String): iTranspVol;
begin
  Result := Self;
  Fmarca := Value;
end;

class function TTranspVol.New : iTranspVol;
begin
  Result := Self.Create;
end;

function TTranspVol.nVol: String;
begin
  Result := FnVol;
end;

function TTranspVol.nVol(Value: String): iTranspVol;
begin
  Result := Self;
  FnVol := Value;
end;

function TTranspVol.pesoB: Currency;
begin
  Result := FpesoB;
end;

function TTranspVol.pesoB(Value: Currency): iTranspVol;
begin
  Result := Self;
  FpesoB := Value;
end;

function TTranspVol.pesoL: Currency;
begin
  Result := FpesoL;
end;

function TTranspVol.pesoL(Value: Currency): iTranspVol;
begin
  Result := Self;
  FpesoL := Value;
end;

function TTranspVol.qVol(Value: Integer): iTranspVol;
begin
  Result := Self;
  FqVol := Value;
end;

function TTranspVol.qVol: Integer;
begin
  Result := FqVol;
end;

end.
