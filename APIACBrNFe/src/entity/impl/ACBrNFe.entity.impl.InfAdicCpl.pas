unit ACBrNFe.entity.impl.InfAdicCpl;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TInfAdicCpl = class(TInterfacedObject, iInfAdicCpl)
    private
      FxCampo: String;
      FxTexto: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfAdicCpl;
      function xCampo(Value: String): iInfAdicCpl; overload;
      function xCampo: String; overload;
      function xTexto(Value: String): iInfAdicCpl; overload;
      function xTexto: String; overload;
      function Build: iInfAdicCpl;
  end;

implementation

function TInfAdicCpl.Build: iInfAdicCpl;
begin
  Result := Self;
end;

constructor TInfAdicCpl.Create;
begin

end;

destructor TInfAdicCpl.Destroy;
begin

  inherited;
end;

class function TInfAdicCpl.New : iInfAdicCpl;
begin
  Result := Self.Create;
end;

function TInfAdicCpl.xCampo(Value: String): iInfAdicCpl;
begin
  Result := Self;
  FxCampo := Value;
end;

function TInfAdicCpl.xCampo: String;
begin
  Result := FxCampo;
end;

function TInfAdicCpl.xTexto(Value: String): iInfAdicCpl;
begin
  Result := Self;
  FxTexto := Value;
end;

function TInfAdicCpl.xTexto: String;
begin
  Result := FxTexto;
end;

end.
