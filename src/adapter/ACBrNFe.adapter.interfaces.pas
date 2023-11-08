unit ACBrNFe.adapter.interfaces;

interface

type
  iElementos = interface
    function ValorProduto(Value: Double): iElementos; overload;
    function ValorProduto: Double; overload;
    function VAlorFrente(Value: Double): iElementos; overload;
    function VAlorFrente: Double; overload;
    function ValorSeguro(Value: Double): iElementos; overload;
    function ValorSeguro: Double; overload;
    function ValorDespesas(Value: Double): iElementos; overload;
    function ValorDespesas: Double; overload;
    function ValorDesconto(Value: Double): iElementos; overload;
    function ValorDesconto: Double; overload;
    function ValorIPI(Value: Double): iElementos; overload;
    function ValorIPI: Double; overload;
    function AliquotaICMS(Value: Double): iElementos; overload;
    function AliquotaICMS: Double; overload;
    function PercentualReducao(Value: Double): iElementos; overload;
    function PercentualReducao: Double; overload;
    function PercentualDeferimento(Value: Double): iElementos; overload;
    function PercentualDeferimento: Double; overload;
    function AliquotaST(Value: Double): iElementos; overload;
    function AliquotaST: Double; overload;
    function PercReducaoBaseST(Value: Double): iElementos; overload;
    function PercReducaoBaseST: Double; overload;
    function PercentualMVA(Value: Double): iElementos; overload;
    function PercentualMVA: Double; overload;
    function PercentualCreditoSN(Value: Double): iElementos; overload;
    function PercentualCreditoSN: Double; overload;
    function AliquotaIPI(Value: Double): iElementos; overload;
    function AliquotaIPI: Double; overload;
    function ValorIPIUN(Value: Double): iElementos; overload;
    function ValorIPIUN: Double; overload;
    function QuantidadeIPITributada(Value: Double): iElementos; overload;
    function QuantidadeIPITributada: Double; overload;
    function AliquotaPIS(Value: Double): iElementos; overload;
    function AliquotaPIS: Double; overload;
    function ValorPISUN(Value: Double): iElementos; overload;
    function ValorPISUN: Double; overload;
    function QuantidadePISTributada(Value: Double): iElementos; overload;
    function QuantidadePISTributada: Double; overload;
    function AliquotaCOFINS(Value: Double): iElementos; overload;
    function AliquotaCOFINS: Double; overload;
    function ValorCOFINSUN(Value: Double): iElementos; overload;
    function ValorCOFINSUN: Double; overload;
    function QuantidadeCOFINSTrib(Value: Double): iElementos; overload;
    function QuantidadeCOFINSTrib: Double; overload;
  end;

  iAdapterCalculos = interface
    function BaseICMSProprio: Double;
    function ValorICMSProprio: Double;
    function BaseICMSDesonerado: Double;
    function ValorICMSOP: Double;
    function ValorICMSDeferido: Double;
    function BaseICMSST: Double;
    function ValorICMSST: Double;
    function ValorICMSSTDesonerado: Double;
    function PercCreditoSN: Double;
    function ValorCreditoSN: Double;
    function BaseCalculo: Double;
    function ValorIPI: Double;
    function ValorIPIUNTrib: Double;
    function ValorPIS: Double;
    function ValorPISUNTrib: Double;
    function ValorCOFINS: Double;
    function ValorCOFINSUNTrib: Double;
  end;

implementation

end.
