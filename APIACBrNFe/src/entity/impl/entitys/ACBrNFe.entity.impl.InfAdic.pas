unit ACBrNFe.entity.impl.InfAdic;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TInfAdic = class(TInterfacedObject, iInfAdic)
    private
      FinfCpl: String;
      FinfAdFisco: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInfAdic;
      function infCpl(Value: String): iInfAdic; overload;
      function infCpl: String; overload;
      function infAdFisco(Value: String): iInfAdic; overload;
      function infAdFisco: String; overload;
      function Build: iInfAdic;
  end;

implementation

function TInfAdic.Build: iInfAdic;
begin
  Result := Self;
end;

constructor TInfAdic.Create;
begin

end;

destructor TInfAdic.Destroy;
begin

  inherited;
end;

function TInfAdic.infAdFisco(Value: String): iInfAdic;
begin
  Result := Self;
  FinfAdFisco := Value;
end;

function TInfAdic.infAdFisco: String;
begin
  Result := FinfAdFisco;
end;

function TInfAdic.infCpl(Value: String): iInfAdic;
begin
  Result := Self;
  FinfCpl := Value;
end;

function TInfAdic.infCpl: String;
begin
  Result := FinfCpl;
end;

class function TInfAdic.New : iInfAdic;
begin
  Result := Self.Create;
end;

end.
