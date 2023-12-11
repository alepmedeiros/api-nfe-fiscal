unit passaporteacbrapinfe.adapter.impl.CalculosICMS00;

interface

uses
  Delphiscal.Icms00.Intf,
  Delphiscal.Icms00,
  passaporteacbrapinfe.adapter.interfaces;

type
  TCalculosICMS00 = class(TInterfacedObject, iCalculosFiscais)
    private
      FElementos : iElementos;
      FICMS: iICMS00;
    public
      constructor Create(Elementos: iElementos);
      destructor Destroy; override;
      class function New(Elementos: iElementos) : iCalculosFiscais;
      function ValorBaseCalculo: Double;
      function ValorBaseCalculoST: Double;
      function ValorICMS: Double;
      function ValorICMSST: Double;
      function ValorICMSDeson: Double;
      function ValorICMSSTDesen: Double;
      function ValorICMSOp: Double;
      function ValorICMSDif: Double;
      function PercentualCreditoSN: Double;
      function ValorCretoSN: Double;
      function ValorIPI: Double;
      function ValorPIS: Double;
      function ValorCOFINS: Double;
  end;

implementation

constructor TCalculosICMS00.Create(Elementos: iElementos);
begin
  FElementos := Elementos;

  FICMS := TIcms00
      .New(FElementos.ValorProduto,
           FElementos.ValorFrete,
           FElementos.ValorSeguro,
           FElementos.ValorDespesas,
           FElementos.ValorDesconto,
           FElementos.AliquotaICMS,
           FElementos.ValorIPI);
end;

destructor TCalculosICMS00.Destroy;
begin

  inherited;
end;

class function TCalculosICMS00.New (Elementos: iElementos) : iCalculosFiscais;
begin
  Result := Self.Create(Elementos);
end;

function TCalculosICMS00.PercentualCreditoSN: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorBaseCalculo: Double;
begin
  Result := FICMS.BaseIcmsProprio;
end;

function TCalculosICMS00.ValorBaseCalculoST: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorCOFINS: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorCretoSN: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorICMS: Double;
begin
  Result := FICMS.ValorIcmsProprio;
end;

function TCalculosICMS00.ValorICMSDeson: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorICMSDif: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorICMSOp: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorICMSST: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorICMSSTDesen: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorIPI: Double;
begin
  Result := 0;
end;

function TCalculosICMS00.ValorPIS: Double;
begin
  Result := 0;
end;

end.
