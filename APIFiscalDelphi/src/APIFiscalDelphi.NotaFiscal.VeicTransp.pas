unit APIFiscalDelphi.NotaFiscal.VeicTransp;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TVeicTransp = class(TInterfacedObject, iVeicTransp)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVeicTransp;
      function Placa(Value: String): iVeicTransp; overload;
      function Placa: String; overload;
      function UG(Value: String): iVeicTransp; overload;
      function UG: String; overload;
      function RNTC(Value: String): iVeicTransp; overload;
      function RNTC: String; overload;
      function &End: iTransp;
  end;

implementation

function TVeicTransp.&End: iTransp;
begin

end;

constructor TVeicTransp.Create;
begin

end;

destructor TVeicTransp.Destroy;
begin

  inherited;
end;

class function TVeicTransp.New : iVeicTransp;
begin
  Result := Self.Create;
end;

function TVeicTransp.Placa(Value: String): iVeicTransp;
begin

end;

function TVeicTransp.Placa: String;
begin

end;

function TVeicTransp.RNTC(Value: String): iVeicTransp;
begin

end;

function TVeicTransp.RNTC: String;
begin

end;

function TVeicTransp.UG: String;
begin

end;

function TVeicTransp.UG(Value: String): iVeicTransp;
begin

end;

end.
