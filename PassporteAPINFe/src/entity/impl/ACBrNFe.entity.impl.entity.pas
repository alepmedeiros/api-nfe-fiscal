unit ACBrNFe.entity.impl.entity;

interface

uses
  ACBrNFe.entity.interfaces,
  ACBrNFe.entity.pedidos,
  ACBrNFe.entity.ResponseNFe;

type
  TEntity = class(TInterfacedObject, iEntity)
  private
    FNfe: TNfe;
    FResp: TResponseNFe;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iEntity;
    function Nfe: TNfe; overload;
    function Nfe(Value: TNfe):iEntity; overload;
    function ResponseNFe: TResponseNFe; overload;
    function ResponseNFe(VAlue: TResponseNFe):iEntity; overload;
  end;

implementation

constructor TEntity.Create;
begin

end;

destructor TEntity.Destroy;
begin

  inherited;
end;

class function TEntity.New: iEntity;
begin
  Result := Self.Create;
end;

function TEntity.Nfe(Value: TNfe): iEntity;
begin
  Result := Self;
  FNfe := Value;
end;

function TEntity.Nfe: TNfe;
begin
  if not Assigned(FNfe) then
    FNfe := TNfe.Create;
  Result := FNfe;
end;

function TEntity.ResponseNFe: TResponseNFe;
begin
  if not Assigned(FResp) then
    FResp := TResponseNFe.Create;
  Result := FResp;
end;

function TEntity.ResponseNFe(VAlue: TResponseNFe): iEntity;
begin
  Result := Self;
  FResp := Value;
end;

end.
