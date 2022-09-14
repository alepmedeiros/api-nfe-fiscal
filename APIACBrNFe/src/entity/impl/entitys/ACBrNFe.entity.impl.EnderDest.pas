unit ACBrNFe.entity.impl.EnderDest;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TEnderDest<T : IInterface> = class(TInterfacedObject, iEnderDest<T>)
    private
      [weak]
      FParent : T;

      Ffone: String;
      FCEP: Integer;
      FxLgr: String;
      Fnro: String;
      FxCpl: String;
      FxBairro: String;
      FcMun: Integer;
      FxMun: String;
      FUF: String;
      FcPais: Integer;
      FxPais: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEnderDest<T>;
      function fone(Value: String): iEnderDest<T>; overload;
      function fone: String; overload;
      function CEP(Value: Integer): iEnderDest<T>; overload;
      function CEP: Integer; overload;
      function xLgr(Value: String): iEnderDest<T>; overload;
      function xLgr: String; overload;
      function nro(Value: String): iEnderDest<T>; overload;
      function nro: String; overload;
      function xCpl(Value: String): iEnderDest<T>; overload;
      function xCpl: String; overload;
      function xBairro(Value: String): iEnderDest<T>; overload;
      function xBairro: String; overload;
      function cMun(Value: Integer): iEnderDest<T>; overload;
      function cMun: Integer; overload;
      function xMun(Value: String): iEnderDest<T>; overload;
      function xMun: String; overload;
      function UF(Value: String): iEnderDest<T>; overload;
      function UF: String; overload;
      function cPais(Value: Integer): iEnderDest<T>; overload;
      function cPais: Integer; overload;
      function xPais(Value: String): iEnderDest<T>; overload;
      function xPais: String; overload;
      function Build: T;
  end;

implementation

function TEnderDest<T>.Build: T;
begin
  Result := FParent;
end;

function TEnderDest<T>.CEP: Integer;
begin
  Result := FCEP;
end;

function TEnderDest<T>.CEP(Value: Integer): iEnderDest<T>;
begin
  Result := Self;
  FCEP := Value;
end;

function TEnderDest<T>.cMun(Value: Integer): iEnderDest<T>;
begin
  Result := Self;
  FcMun := Value;
end;

function TEnderDest<T>.cMun: Integer;
begin
  Result := FcMun;
end;

function TEnderDest<T>.cPais(Value: Integer): iEnderDest<T>;
begin
  Result := Self;
  FcPais := Value;
end;

function TEnderDest<T>.cPais: Integer;
begin
  Result := FcPais;
end;

constructor TEnderDest<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TEnderDest<T>.Destroy;
begin

  inherited;
end;

function TEnderDest<T>.fone(Value: String): iEnderDest<T>;
begin
  Result := Self;
  Ffone := Value;
end;

function TEnderDest<T>.fone: String;
begin
  Result := Ffone;
end;

class function TEnderDest<T>.New(Parent : T) : iEnderDest<T>;
begin
  Result := Self.Create(Parent);
end;

function TEnderDest<T>.nro(Value: String): iEnderDest<T>;
begin
  Result := Self;
  Fnro := Value;
end;

function TEnderDest<T>.nro: String;
begin
  Result := Fnro;
end;

function TEnderDest<T>.UF: String;
begin
  Result := FUF;
end;

function TEnderDest<T>.UF(Value: String): iEnderDest<T>;
begin
  Result := Self;
  FUF := Value;
end;

function TEnderDest<T>.xBairro(Value: String): iEnderDest<T>;
begin
  Result := Self;
  FxBairro := Value;
end;

function TEnderDest<T>.xBairro: String;
begin
  Result := FxBairro;
end;

function TEnderDest<T>.xCpl: String;
begin
  Result := FxCpl;
end;

function TEnderDest<T>.xCpl(Value: String): iEnderDest<T>;
begin
  Result := Self;
  FxCpl := Value;
end;

function TEnderDest<T>.xLgr: String;
begin
  Result := FxLgr;
end;

function TEnderDest<T>.xLgr(Value: String): iEnderDest<T>;
begin
  Result := Self;
  FxLgr := Value;
end;

function TEnderDest<T>.xMun: String;
begin
  Result := FxMun;
end;

function TEnderDest<T>.xMun(Value: String): iEnderDest<T>;
begin
  Result := Self;
  FxMun := Value;
end;

function TEnderDest<T>.xPais: String;
begin
  Result := FxPais;
end;

function TEnderDest<T>.xPais(Value: String): iEnderDest<T>;
begin
  Result := Self;
  FxPais := Value;
end;

end.
