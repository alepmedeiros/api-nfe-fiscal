unit ACBrNFe.entity.impl.compra;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TCompra = class(TInterfacedObject, iCompra)
    private
      FxNEmp: String;
      FxPed: String;
      FxCont: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCompra;
      function xNEmp(Value: String): iCompra; overload;
      function xNEmp: String; overload;
      function xPed(Value: String): iCompra; overload;
      function xPed: String; overload;
      function xCont(Value: String): iCompra; overload;
      function xCont: String; overload;
      function Build: iCompra;
  end;

implementation

function TCompra.Build: iCompra;
begin
  Result := Self;
end;

constructor TCompra.Create;
begin

end;

destructor TCompra.Destroy;
begin

  inherited;
end;

class function TCompra.New : iCompra;
begin
  Result := Self.Create;
end;

function TCompra.xCont: String;
begin
  Result := FxCont;
end;

function TCompra.xCont(Value: String): iCompra;
begin
  Result := Self;
  FxCont := Value;
end;

function TCompra.xNEmp(Value: String): iCompra;
begin
  Result := Self;
  FxNEmp := Value;
end;

function TCompra.xNEmp: String;
begin
  Result := FxNEmp;
end;

function TCompra.xPed(Value: String): iCompra;
begin
  Result := Self;
  FxPed := Value;
end;

function TCompra.xPed: String;
begin
  Result := FxPed;
end;

end.
