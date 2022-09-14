unit ACBrNFe.entity.impl.InfAdicObsFisco;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TInfAdicObsFisco = class(TInterfacedObject, iInfAdicObsFisco)
    private
      FxCampo: String;
      FxTexto: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfAdicObsFisco;
      function xCampo(Value: String): iInfAdicObsFisco; overload;
      function xCampo: String; overload;
      function xTexto(Value: String): iInfAdicObsFisco; overload;
      function xTexto: String; overload;
      function Build: iInfAdicObsFisco;
  end;

implementation

function TInfAdicObsFisco.Build: iInfAdicObsFisco;
begin
  Result := Self;
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
  Result := Self;
  FxCampo := Value;
end;

function TInfAdicObsFisco.xCampo: String;
begin
  Result := FxCampo;
end;

function TInfAdicObsFisco.xTexto(Value: String): iInfAdicObsFisco;
begin
  Result := Self;
  FxTexto := Value;
end;

function TInfAdicObsFisco.xTexto: String;
begin
  Result := FxTexto;
end;

end.
