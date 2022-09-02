unit ACBrNFe.entity.impl.Total;

interface

uses
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.impl.RetTrib, ACBrNFe.entity.impl.ICMSTot;

type
  TTotal = class(TInterfacedObject, iTotal)
  private
    FICMSTot: iICMSTot<iTotal>;
    FretTrib: iRetTrib<iTotal>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iTotal;
    function ICMSTot: iICMSTot<iTotal>;
    function RetTrib: iRetTrib<iTotal>;
    function Build: iTotal;
  end;

implementation

function TTotal.Build: iTotal;
begin
  Result := Self;
end;

constructor TTotal.Create;
begin

end;

destructor TTotal.Destroy;
begin

  inherited;
end;

function TTotal.ICMSTot: iICMSTot<iTotal>;
begin
  if not Assigned(FICMSTot) then
    FICMSTot := TICMSTot<iTotal>.New(Self);
  Result := FICMSTot;
end;

class function TTotal.New: iTotal;
begin
  Result := Self.Create;
end;

function TTotal.RetTrib: iRetTrib<iTotal>;
begin
  if not Assigned(FretTrib) then
    FretTrib := TRetTrib<iTotal>.New(Self);
  Result := FretTrib;
end;

end.
