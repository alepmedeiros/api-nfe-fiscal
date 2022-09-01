unit APIFiscalDelphi.NotaFiscal.Compra;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TCompra = class(TInterfacedObject, iCompra)
    private
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
      function &End: iNotaFiscal;
  end;

implementation

function TCompra.&End: iNotaFiscal;
begin

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

end;

function TCompra.xCont(Value: String): iCompra;
begin

end;

function TCompra.xNEmp: String;
begin

end;

function TCompra.xNEmp(Value: String): iCompra;
begin

end;

function TCompra.xPed(Value: String): iCompra;
begin

end;

function TCompra.xPed: String;
begin

end;

end.
