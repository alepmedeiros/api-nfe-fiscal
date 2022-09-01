unit Workshop.Model.Fiscal.Nfe.Invoker;

interface

uses System.Generics.Collections, Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelNotaFiscalInvoker = class(TInterfacedObject, iInvoker)
    private
      FLista : TList<iCommand>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iInvoker;
      function Add(Value : iCommand) : iInvoker;
      function Execute : iInvoker;
  end;

implementation

uses
  System.SysUtils;

{ TModelNotaFiscalInvoker }

function TModelNotaFiscalInvoker.Add(Value: iCommand): iInvoker;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TModelNotaFiscalInvoker.Create;
begin
  FLista := TList<iCommand>.Create;
end;

destructor TModelNotaFiscalInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelNotaFiscalInvoker.Execute: iInvoker;
var
  I: Integer;
begin
  Result := Self;
  for I := 0 to Pred(FLista.Count) do
    FLista[I].Execute;
end;

class function TModelNotaFiscalInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
