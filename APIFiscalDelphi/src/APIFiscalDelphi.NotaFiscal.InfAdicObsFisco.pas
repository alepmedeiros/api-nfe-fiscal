unit APIFiscalDelphi.NotaFiscal.InfAdicObsFisco;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TInfAdicObsFisco = class(TInterfacedObject, iInfAdicObsFisco)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfAdicObsFisco;
      function xCampo(Value: String): iInfAdicObsFisco; overload;
      function xCampo: String; overload;
      function xTexto(Value: String): iInfAdicObsFisco; overload;
      function xTexto: String; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TInfAdicObsFisco.&End: iNotaFiscal;
begin

end;

constructor TInfAdicObsFisco.Create;
begin

end;

destructor TInfAdicObsFisco.Destroy;
begin

  inherited;
end;

class function TInfAdicObsFisco.New : iInfAdicObsFisco;
begin
  Result := Self.Create;
end;

function TInfAdicObsFisco.xCampo(Value: String): iInfAdicObsFisco;
begin

end;

function TInfAdicObsFisco.xCampo: String;
begin

end;

function TInfAdicObsFisco.xTexto(Value: String): iInfAdicObsFisco;
begin

end;

function TInfAdicObsFisco.xTexto: String;
begin

end;

end.
