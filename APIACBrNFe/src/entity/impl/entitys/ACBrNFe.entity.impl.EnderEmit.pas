unit ACBrNFe.entity.impl.EnderEmit;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TEnderEmit<T : IInterface> = class(TInterfacedObject, iEnderEmit<T>)
    private
      [weak]
      FParent : T;

      Ffone: String;
      FxLgr: String;
      Fnro: String;
      FxCpl: String;
      FxBairro: String;
      FxMun: String;
      FcMun: Integer;
      FUF: String;
      FCEP: Integer;
      FcPais: Integer;
      FxPais: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEnderEmit<T>;
      function fone(Value: String): iEnderEmit<T>; overload;
      function fone: String; overload;
      function xLgr(Value: String): iEnderEmit<T>; overload;
      function xLgr: String; overload;
      function nro(Value: String): iEnderEmit<T>; overload;
      function nro: String; overload;
      function xCpl(Value: String): iEnderEmit<T>; overload;
      function xCpl: String; overload;
      function xBairro(Value: String): iEnderEmit<T>; overload;
      function xBairro: String; overload;
      function xMun(Value: String): iEnderEmit<T>; overload;
      function xMun: String; overload;
      function cMun(Value: Integer): iEnderEmit<T>; overload;
      function cMun: Integer; overload;
      function UF(Value: String): iEnderEmit<T>; overload;
      function UF: String; overload;
      function CEP(Value: Integer): iEnderEmit<T>; overload;
      function CEP: Integer; overload;
      function cPais(Value: Integer): iEnderEmit<T>; overload;
      function cPais: Integer; overload;
      function xPais(Value: String): iEnderEmit<T>; overload;
      function xPais: String; overload;
      function Build: T;
  end;

implementation

function TEnderEmit<T>.Build: T;
begin
  Result := FParent;
end;

function TEnderEmit<T>.CEP(Value: Integer): iEnderEmit<T>;
begin
  Result := Self;
  FCEP := Value;
end;

function TEnderEmit<T>.CEP: Integer;
begin
  Result := FCEP;
end;

function TEnderEmit<T>.cMun: Integer;
begin
  Result := FcMun;
end;

function TEnderEmit<T>.cMun(Value: Integer): iEnderEmit<T>;
begin
  Result := Self;
  FcMun := Value;
end;

function TEnderEmit<T>.cPais(Value: Integer): iEnderEmit<T>;
begin
  Result := Self;
  FcPais := Value;
end;

function TEnderEmit<T>.cPais: Integer;
begin
  Result := FcPais;
end;

constructor TEnderEmit<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TEnderEmit<T>.Destroy;
begin

  inherited;
end;

function TEnderEmit<T>.fone: String;
begin
  Result := Ffone;
end;

function TEnderEmit<T>.fone(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  Ffone := Value;
end;

class function TEnderEmit<T>.New(Parent : T) : iEnderEmit<T>;
begin
  Result := Self.Create(Parent);
end;

function TEnderEmit<T>.nro: String;
begin
  Result := Fnro;
end;

function TEnderEmit<T>.nro(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  Fnro := Value;
end;

function TEnderEmit<T>.UF: String;
begin
  Result := FUF;
end;

function TEnderEmit<T>.UF(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  FUF := Value;
end;

function TEnderEmit<T>.xBairro(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  FxBairro := Value;
end;

function TEnderEmit<T>.xBairro: String;
begin
  Result := FxBairro;
end;

function TEnderEmit<T>.xCpl: String;
begin
  Result := FxCpl;
end;

function TEnderEmit<T>.xCpl(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  FxCpl := Value;
end;

function TEnderEmit<T>.xLgr: String;
begin
  Result := FxLgr;
end;

function TEnderEmit<T>.xLgr(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  FxLgr := Value;
end;

function TEnderEmit<T>.xMun: String;
begin
  Result := FxMun;
end;

function TEnderEmit<T>.xMun(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  FxMun := Value;
end;

function TEnderEmit<T>.xPais: String;
begin
  Result := FxPais;
end;

function TEnderEmit<T>.xPais(Value: String): iEnderEmit<T>;
begin
  Result := Self;
  FxPais := Value;
end;

end.
