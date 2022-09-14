unit APIFiscalDelphi.NotaFiscal.InfAdicObsComp;

interface

uses
  APIFiscalDelphi.Interfaces;

type
  TInfAdicObsComp = class(TInterfacedObject, iInfAdicObsComp)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfAdicObsComp;
      function xCampo(Value: String): iInfAdicObsComp; overload;
      function xCampo: String; overload;
      function xTexto(Value: String): iInfAdicObsComp; overload;
      function xTexto: String; overload;
      function &End: iNotaFiscal;
  end;

implementation

function TInfAdicObsComp.&End: iNotaFiscal;
begin

end;

constructor TInfAdicObsComp.Create;
begin

end;

destructor TInfAdicObsComp.Destroy;
begin

  inherited;
end;

class function TInfAdicObsComp.New : iInfAdicObsComp;
begin
  Result := Self.Create;
end;

function TInfAdicObsComp.xCampo(Value: String): iInfAdicObsComp;
begin

end;

function TInfAdicObsComp.xCampo: String;
begin

end;

function TInfAdicObsComp.xTexto(Value: String): iInfAdicObsComp;
begin

end;

function TInfAdicObsComp.xTexto: String;
begin

end;

end.
