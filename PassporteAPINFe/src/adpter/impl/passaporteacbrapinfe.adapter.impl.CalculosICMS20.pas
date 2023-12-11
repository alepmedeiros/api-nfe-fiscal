unit passaporteacbrapinfe.adapter.impl.CalculosICMS20;

interface

uses
  Delphiscal.Icms20.Intf,
  Delphiscal.Icms20,
  passaporteacbrapinfe.adapter.interfaces;

type
  TCalculosICMS20 = class(TInterfacedObject, iCalculosFiscais)
    private
      FElementos : iElementos;
      FICMS: iICMS20;
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

constructor TCalculosICMS20.Create(Elementos: iElementos);
begin
  FElementos := Elementos;

  FICMS := TIcms20
      .New(FElementos.ValorProduto,
           FElementos.ValorFrete,
           FElementos.ValorSeguro,
           FElementos.ValorDespesas,
           FElementos.ValorDesconto,
           FElementos.AliquotaICMS,
           FElementos.ValorIPI);
end;

destructor TCalculosICMS20.Destroy;
begin

  inherited;
end;

class function TCalculosICMS20.New (Elementos: iElementos) : iCalculosFiscais;
begin
  Result := Self.Create(Elementos);
end;

function TCalculosICMS20.PercentualCreditoSN: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorBaseCalculo: Double;
begin
  Result := FICMS.BaseReduzidaIcmsProprio;
end;

function TCalculosICMS20.ValorBaseCalculoST: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorCOFINS: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorCretoSN: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorICMS: Double;
begin
  Result := FICMS.ValorIcmsProprio;
end;

function TCalculosICMS20.ValorICMSDeson: Double;
begin
  Result := FICMS.ValorIcmsDesonerado;
end;

function TCalculosICMS20.ValorICMSDif: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorICMSOp: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorICMSST: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorICMSSTDesen: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorIPI: Double;
begin
  Result := 0;
end;

function TCalculosICMS20.ValorPIS: Double;
begin
  Result := 0;
end;

end.
