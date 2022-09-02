unit ACBrNFe.entity.impl.VeicProd;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TVeicProd<T : IInterface> = class(TInterfacedObject, iVeicProd<T>)
    private
      [weak]
      FParent : T;

      FtpOP: String;
      Fchassi: String;
      FcCor: String;
      FxCor: String;
      Fpot: String;
      FCilin: String;
      FpesoL: String;
      FpesoB: String;
      FnSerie: String;
      FtpComb: String;
      FnMotor: String;
      FCMT: String;
      Fdist: String;
      FanoMod: Integer;
      FanoFab: Integer;
      FtpPint: String;
      FtpVeic: Integer;
      FespVeic: Integer;
      FVIN: String;
      FcondVeic: String;
      FcMod: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iVeicProd<T>;
      function tpOP(Value: String): iVeicProd<T>; overload;
      function tpOP: String; overload;
      function chassi(Value: String): iVeicProd<T>; overload;
      function chassi: String; overload;
      function cCor(Value: String): iVeicProd<T>; overload;
      function cCor: String; overload;
      function xCor(Value: String): iVeicProd<T>; overload;
      function xCor: String; overload;
      function pot(Value: String): iVeicProd<T>; overload;
      function pot: String; overload;
      function Cilin(Value: String): iVeicProd<T>; overload;
      function Cilin: String; overload;
      function pesoL(Value: String): iVeicProd<T>; overload;
      function pesoL: String; overload;
      function pesoB(Value: String): iVeicProd<T>; overload;
      function pesoB: String; overload;
      function nSerie(Value: String): iVeicProd<T>; overload;
      function nSerie: String; overload;
      function tpComb(Value: String): iVeicProd<T>; overload;
      function tpComb: String; overload;
      function nMotor(Value: String): iVeicProd<T>; overload;
      function nMotor: String; overload;
      function CMT(Value: String): iVeicProd<T>; overload;
      function CMT: String; overload;
      function dist(Value: String): iVeicProd<T>; overload;
      function dist: String; overload;
      function anoMod(Value: Integer): iVeicProd<T>; overload;
      function anoMod: Integer; overload;
      function anoFab(Value: Integer): iVeicProd<T>; overload;
      function anoFab: Integer; overload;
      function tpPint(Value: String): iVeicProd<T>; overload;
      function tpPint: String; overload;
      function tpVeic(Value: Integer): iVeicProd<T>; overload;
      function tpVeic: Integer; overload;
      function espVeic(Value: Integer): iVeicProd<T>; overload;
      function espVeic: Integer; overload;
      function VIN(Value: String): iVeicProd<T>; overload;
      function VIN: String; overload;
      function condVeic(Value: String): iVeicProd<T>; overload;
      function condVeic: String; overload;
      function cMod(Value: String): iVeicProd<T>; overload;
      function cMod: String; overload;
      function Build: T;
  end;

implementation

function TVeicProd<T>.anoFab(Value: Integer): iVeicProd<T>;
begin
  Result := Self;
  FanoFab := Value;
end;

function TVeicProd<T>.anoFab: Integer;
begin
  Result := FanoFab;
end;

function TVeicProd<T>.anoMod(Value: Integer): iVeicProd<T>;
begin
  Result := Self;
  FanoMod := Value;
end;

function TVeicProd<T>.anoMod: Integer;
begin
  Result := FanoMod;
end;

function TVeicProd<T>.Build: T;
begin
  Result := FParent;
end;

function TVeicProd<T>.cCor(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FcCor := Value;
end;

function TVeicProd<T>.cCor: String;
begin
  Result := FcCor;
end;

function TVeicProd<T>.chassi(Value: String): iVeicProd<T>;
begin
  Result := Self;
  Fchassi := Value;
end;

function TVeicProd<T>.chassi: String;
begin
  Result := Fchassi;
end;

function TVeicProd<T>.Cilin: String;
begin
  Result := FCilin;
end;

function TVeicProd<T>.Cilin(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FCilin := Value;
end;

function TVeicProd<T>.cMod: String;
begin
  Result := FcMod;
end;

function TVeicProd<T>.cMod(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FcMod := Value;
end;

function TVeicProd<T>.CMT: String;
begin
  Result := FCMT;
end;

function TVeicProd<T>.CMT(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FCMT := Value;
end;

function TVeicProd<T>.condVeic: String;
begin
  Result := FcondVeic;
end;

function TVeicProd<T>.condVeic(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FcondVeic := Value;
end;

constructor TVeicProd<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

destructor TVeicProd<T>.Destroy;
begin

  inherited;
end;

function TVeicProd<T>.dist(Value: String): iVeicProd<T>;
begin
  Result := Self;
  Fdist := Value;
end;

function TVeicProd<T>.dist: String;
begin
  Result := Fdist;
end;

function TVeicProd<T>.espVeic: Integer;
begin
  Result := FespVeic;
end;

function TVeicProd<T>.espVeic(Value: Integer): iVeicProd<T>;
begin
  Result := Self;
  FespVeic := Value;
end;

class function TVeicProd<T>.New(Parent : T) : iVeicProd<T>;
begin
  Result := Self.Create(Parent);
end;

function TVeicProd<T>.nMotor: String;
begin
  Result := FnMotor;
end;

function TVeicProd<T>.nMotor(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FnMotor := Value;
end;

function TVeicProd<T>.nSerie: String;
begin
  Result := FnSerie;
end;

function TVeicProd<T>.nSerie(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FnSerie := Value;
end;

function TVeicProd<T>.pesoB(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FpesoB := Value;
end;

function TVeicProd<T>.pesoB: String;
begin
  Result := FpesoB;
end;

function TVeicProd<T>.pesoL(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FpesoL := Value;
end;

function TVeicProd<T>.pesoL: String;
begin
  Result := FpesoL;
end;

function TVeicProd<T>.pot(Value: String): iVeicProd<T>;
begin
  Result := Self;
  Fpot := Value;
end;

function TVeicProd<T>.pot: String;
begin
  Result := Fpot;
end;

function TVeicProd<T>.tpComb(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FtpComb := Value;
end;

function TVeicProd<T>.tpComb: String;
begin
  Result := FtpComb;
end;

function TVeicProd<T>.tpOP(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FtpOP := Value;
end;

function TVeicProd<T>.tpOP: String;
begin
  Result := FtpOP;
end;

function TVeicProd<T>.tpPint: String;
begin
  Result := FtpPint;
end;

function TVeicProd<T>.tpPint(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FtpPint := Value;
end;

function TVeicProd<T>.tpVeic: Integer;
begin
  Result := FtpVeic;
end;

function TVeicProd<T>.tpVeic(Value: Integer): iVeicProd<T>;
begin
  Result := Self;
  FtpVeic := Value;
end;

function TVeicProd<T>.VIN(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FVIN := Value;
end;

function TVeicProd<T>.VIN: String;
begin
  Result := FVIN;
end;

function TVeicProd<T>.xCor(Value: String): iVeicProd<T>;
begin
  Result := Self;
  FxCor := Value;
end;

function TVeicProd<T>.xCor: String;
begin
  Result := FxCor;
end;

end.
