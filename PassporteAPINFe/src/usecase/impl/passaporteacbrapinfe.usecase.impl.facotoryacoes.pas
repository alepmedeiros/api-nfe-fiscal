unit passaporteacbrapinfe.usecase.impl.facotoryacoes;

interface

uses
  passaporteacbrapinfe.usecase.interfaces,
  passaporteacbrapinfe.usecase.impl.configuracao;

type
  TFactoryUsecase = class(TInterfacedObject, iFactoryUsecase)
    private
      FAcoes: iAcoesNfe;
    public
      constructor Create(Acoes: iAcoesNfe);
      destructor Destroy; override;
      class function New(Acoes: iAcoesNfe) : iFactoryUsecase;
      function Configuracao: iCommand;
      function Ide: iCommand;
      function Emitente: iCommand;
      function Dest: iCommand;
      function Produto: iCommand;
      function Total: iCommand;
      function Fatura: iCommand;
      function Duplicata: iCommand;
      function Pagamento: iCommand;
      function GerarNFe: iCommand;
  end;

implementation

uses
  passaporteacbrapinfe.usecase.impl.ide,
  passaporteacbrapinfe.usecase.impl.emitente,
  passaporteacbrapinfe.usecase.impl.produto,
  passaporteacbrapinfe.usecase.impl.total,
  passaporteacbrapinfe.usecase.impl.Fatura,
  passaporteacbrapinfe.usecase.impl.duplicata,
  passaporteacbrapinfe.usecase.impl.dest,
  passaporteacbrapinfe.usecase.impl.Pagamento,
  passaporteacbrapinfe.usecase.impl.gerarnfe;

function TFactoryUsecase.Configuracao: iCommand;
begin
  Result := TConfiguracao.New(FAcoes);
end;

constructor TFactoryUsecase.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

function TFactoryUsecase.Dest: iCommand;
begin
  Result := TDest.New(FAcoes);
end;

destructor TFactoryUsecase.Destroy;
begin

  inherited;
end;

function TFactoryUsecase.Duplicata: iCommand;
begin
  Result := TDuplicata.New(FAcoes);
end;

function TFactoryUsecase.Emitente: iCommand;
begin
  Result := TEmitente.New(FAcoes);
end;

function TFactoryUsecase.Fatura: iCommand;
begin
  Result := TFatura.New(FAcoes);
end;

function TFactoryUsecase.GerarNFe: iCommand;
begin
  Result := TGerarNFe.New(FAcoes);
end;

function TFactoryUsecase.Ide: iCommand;
begin
  Result := TIde.New(FAcoes);
end;

class function TFactoryUsecase.New (Acoes: iAcoesNfe) : iFactoryUsecase;
begin
  Result := Self.Create(Acoes);
end;

function TFactoryUsecase.Pagamento: iCommand;
begin
  Result := TPagamento.New(FAcoes);
end;

function TFactoryUsecase.Produto: iCommand;
begin
  Result := TProdutoNota.New(FAcoes);
end;

function TFactoryUsecase.Total: iCommand;
begin
  Result := TTotal.New(FAcoes);
end;

end.
