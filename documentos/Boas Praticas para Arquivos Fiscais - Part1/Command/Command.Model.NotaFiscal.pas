unit Command.Model.NotaFiscal;

interface

uses
  Command.Model.Interfaces,
  Command.Model.NotaFiscal.Criar,
  Command.Model.NotaFiscal.Email,
  Command.Model.NotaFiscal.Enviar,
  Command.Model.NotaFiscal.Gravar,
  Command.Model.NotaFiscal.Invoker,
  Command.Model.NotaFiscal.Validar;

Type
  TModelNotaFiscal = class(TInterfacedObject, iNotaFiscal)
  private
    FDisplay: TEvDisplay;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iNotaFiscal;
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function Display(Value: TEvDisplay): iNotaFiscal;
    function EnviarNotaFiscal : iNotaFiscal;
  end;

implementation

{ TModelNotaFiscal }

constructor TModelNotaFiscal.Create;
begin

end;

function TModelNotaFiscal.Criar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Criar');
end;

destructor TModelNotaFiscal.Destroy;
begin

  inherited;
end;

function TModelNotaFiscal.Display(Value: TEvDisplay): iNotaFiscal;
begin
  Result := Self;
  FDisplay := Value;
end;

function TModelNotaFiscal.Email: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Email');
end;

function TModelNotaFiscal.Enviar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Enviar');
end;

function TModelNotaFiscal.EnviarNotaFiscal: iNotaFiscal;
begin
  TModelNotaFiscalInvoker.New
    .Add(TModelNotaFiscalCriar.New(Self))
    .Add(TModelNotaFiscalValidar.New(Self))
    .Add(TModelNotaFiscalEnviar.New(Self))
    .Add(TModelNotaFiscalGravar.New(Self))
    .Add(TModelNotaFiscalEmail.New(Self))
    .Execute;
end;

function TModelNotaFiscal.Gravar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Gravar');
end;

class function TModelNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TModelNotaFiscal.Validar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Validar');
end;

end.
