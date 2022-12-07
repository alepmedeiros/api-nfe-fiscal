unit passaporteacbrapinfe.adapter.interfaces;

interface

type
  iCalculosFiscais = interface
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

  iElementos = interface
    function ValorProduto(Value: Double): iElementos; overload;
    function ValorProduto: Double; overload;
    function ValorFrete(Value: Double): iElementos; overload;
    function ValorFrete: Double; overload;
    function ValorSeguro(Value: Double): iElementos; overload;
    function ValorSeguro: Double; overload;
    function ValorDespesas(Value: Double): iElementos; overload;
    function ValorDespesas: Double; overload;
    function ValorDesconto(Value: Double): iElementos; overload;
    function ValorDesconto: Double; overload;
    function ValorIPI(Value: Double): iElementos; overload;
    function ValorIPI: Double; overload;
    function AliquotaIPI(Value: Double): iElementos; overload;
    function AliquotaIPI: Double; overload;
    function QuantidadeIPITributada(Value: Double): iElementos; overload;
    function QuantidadeIPITributada: Double; overload;
    function AliquotaICMS(Value: Double): iElementos; overload;
    function AliquotaICMS: Double; overload;
    function PercentualReducao(Value: Double): iElementos; overload;
    function PercentualReducao: Double; overload;
    function AliquotaST(Value: Double): iElementos; overload;
    function AliquotaST: Double; overload;
    function PercentualReducaoBaseST(Value: Double): iElementos; overload;
    function PercentualReducaoBaseST: Double; overload;
    function PercentualMVA(Value: Double): iElementos; overload;
    function PercentualMVA: Double; overload;
    function PercentualCreditoSN(Value: Double): iElementos; overload;
    function PercentualCreditoSN: Double; overload;
    function AliquotaPIS(Value: Double): iElementos; overload;
    function AliquotaPIS: Double; overload;
    function ValorPIS(Value: Double): iElementos; overload;
    function ValorPIS: Double; overload;
    function QuantidadePISTributada(Value: Double): iElementos; overload;
    function QuantidadePISTributada: Double; overload;
    function AliquotaCOFINS(Value: Double): iElementos; overload;
    function AliquotaCOFINS: Double; overload;
    function ValorCOFINS(Value: Double): iElementos; overload;
    function ValorCOFINS: Double; overload;
    function QuantidadeCOFINSTributada(Value: Double): iElementos; overload;
    function QuantidadeCOFINSTributada: Double; overload;
  end;

  iFactoryCalculos = interface
    function Execute(Value: String): iCalculosFiscais;
  end;

implementation

end.
