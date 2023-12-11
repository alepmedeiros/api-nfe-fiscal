program ApiNFEACBrPassaporte;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  horse.cors,
  Horse.jhonson,
  Horse.GBSwagger,
  System.SysUtils,
  passaporteacbrapinfe.controller.nfe in 'src\controller\passaporteacbrapinfe.controller.nfe.pas',
  passaporteacbrapinfe.component.interfaces in 'src\component\passaporteacbrapinfe.component.interfaces.pas',
  passaporteacbrapinfe.component.impl.ACBrNFe in 'src\component\impl\passaporteacbrapinfe.component.impl.ACBrNFe.pas',
  passaporteacbrapinfe.component.impl.ComponentFactory in 'src\component\impl\passaporteacbrapinfe.component.impl.ComponentFactory.pas',
  ACBrNFe.entity.CobrancaDuplicata in 'src\entity\ACBrNFe.entity.CobrancaDuplicata.pas',
  ACBrNFe.entity.CobrancaFat in 'src\entity\ACBrNFe.entity.CobrancaFat.pas',
  ACBrNFe.entity.CombCIDE in 'src\entity\ACBrNFe.entity.CombCIDE.pas',
  ACBrNFe.entity.CombICMS in 'src\entity\ACBrNFe.entity.CombICMS.pas',
  ACBrNFe.entity.CombICMSCons in 'src\entity\ACBrNFe.entity.CombICMSCons.pas',
  ACBrNFe.entity.CombICMSInter in 'src\entity\ACBrNFe.entity.CombICMSInter.pas',
  ACBrNFe.entity.Combustivel in 'src\entity\ACBrNFe.entity.Combustivel.pas',
  ACBrNFe.entity.Compra in 'src\entity\ACBrNFe.entity.Compra.pas',
  ACBrNFe.entity.Destinatario in 'src\entity\ACBrNFe.entity.Destinatario.pas',
  ACBrNFe.entity.EndDest in 'src\entity\ACBrNFe.entity.EndDest.pas',
  ACBrNFe.entity.exporta in 'src\entity\ACBrNFe.entity.exporta.pas',
  ACBrNFe.entity.ImpostoCOFINS in 'src\entity\ACBrNFe.entity.ImpostoCOFINS.pas',
  ACBrNFe.entity.ImpostoCOFINSST in 'src\entity\ACBrNFe.entity.ImpostoCOFINSST.pas',
  ACBrNFe.entity.ImpostoICMS in 'src\entity\ACBrNFe.entity.ImpostoICMS.pas',
  ACBrNFe.entity.ImpostoICMSUFDest in 'src\entity\ACBrNFe.entity.ImpostoICMSUFDest.pas',
  ACBrNFe.entity.ImpostoII in 'src\entity\ACBrNFe.entity.ImpostoII.pas',
  ACBrNFe.entity.ImpostoPIS in 'src\entity\ACBrNFe.entity.ImpostoPIS.pas',
  ACBrNFe.entity.ImpostoPISST in 'src\entity\ACBrNFe.entity.ImpostoPISST.pas',
  ACBrNFe.entity.InfAdicionais in 'src\entity\ACBrNFe.entity.InfAdicionais.pas',
  ACBrNFe.entity.InfIntermed in 'src\entity\ACBrNFe.entity.InfIntermed.pas',
  ACBrNFe.entity.ObsComplementar in 'src\entity\ACBrNFe.entity.ObsComplementar.pas',
  ACBrNFe.entity.ObsFisco in 'src\entity\ACBrNFe.entity.ObsFisco.pas',
  ACBrNFe.entity.pagamentos in 'src\entity\ACBrNFe.entity.pagamentos.pas',
  ACBrNFe.entity.pedidos in 'src\entity\ACBrNFe.entity.pedidos.pas',
  ACBrNFe.entity.ProdImposto in 'src\entity\ACBrNFe.entity.ProdImposto.pas',
  ACBrNFe.entity.Produto in 'src\entity\ACBrNFe.entity.Produto.pas',
  ACBrNFe.entity.ResponseNFe in 'src\entity\ACBrNFe.entity.ResponseNFe.pas',
  ACBrNFe.entity.RetTrasnportadora in 'src\entity\ACBrNFe.entity.RetTrasnportadora.pas',
  ACBrNFe.entity.Total in 'src\entity\ACBrNFe.entity.Total.pas',
  ACBrNFe.entity.TotalICMS in 'src\entity\ACBrNFe.entity.TotalICMS.pas',
  ACBrNFe.entity.TotalRetTrib in 'src\entity\ACBrNFe.entity.TotalRetTrib.pas',
  ACBrNFe.entity.Transportadora in 'src\entity\ACBrNFe.entity.Transportadora.pas',
  ACBrNFe.entity.Veiculo in 'src\entity\ACBrNFe.entity.Veiculo.pas',
  ACBrNFe.entity.VolumeTransportadora in 'src\entity\ACBrNFe.entity.VolumeTransportadora.pas',
  passaporteacbrapinfe.usecase.interfaces in 'src\usecase\passaporteacbrapinfe.usecase.interfaces.pas',
  passaporteacbrapinfe.usecase.impl.configuracao in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.configuracao.pas',
  passaporteacbrapinfe.usecase.impl.invoker in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.invoker.pas',
  passaporteacbrapinfe.usecase.impl.ide in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.ide.pas',
  passaporteacbrapinfe.usecase.impl.emitente in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.emitente.pas',
  passaporteacbrapinfe.usecase.impl.dest in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.dest.pas',
  passaporteacbrapinfe.usecase.impl.produto in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.produto.pas',
  passaporteacbrapinfe.usecase.impl.total in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.total.pas',
  passaporteacbrapinfe.usecase.impl.Fatura in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.Fatura.pas',
  passaporteacbrapinfe.usecase.impl.duplicata in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.duplicata.pas',
  passaporteacbrapinfe.usecase.impl.Pagamento in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.Pagamento.pas',
  passaporteacbrapinfe.usecase.impl.gerarnfe in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.gerarnfe.pas',
  passaporteacbrapinfe.adapter.interfaces in 'src\adpter\passaporteacbrapinfe.adapter.interfaces.pas',
  passaporteacbrapinfe.adapter.impl.elementos in 'src\adpter\impl\passaporteacbrapinfe.adapter.impl.elementos.pas',
  passaporteacbrapinfe.adapter.impl.CalculosICMS00 in 'src\adpter\impl\passaporteacbrapinfe.adapter.impl.CalculosICMS00.pas',
  passaporteacbrapinfe.adapter.impl.FactotyCalculos in 'src\adpter\impl\passaporteacbrapinfe.adapter.impl.FactotyCalculos.pas',
  passaporteacbrapinfe.adapter.impl.CalculosICMS20 in 'src\adpter\impl\passaporteacbrapinfe.adapter.impl.CalculosICMS20.pas',
  passaporteacbrapinfe.usecase.acoesnfe in 'src\usecase\passaporteacbrapinfe.usecase.acoesnfe.pas',
  passaporteacbrapinfe.usecase.impl.facotoryacoes in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.facotoryacoes.pas',
  ACBrNFe.entity.interfaces in 'src\entity\ACBrNFe.entity.interfaces.pas',
  ACBrNFe.entity.impl.entity in 'src\entity\impl\ACBrNFe.entity.impl.entity.pas',
  passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.regrasfiscais.helpers.pas',
  passaporteacbrapinfe.usecase.impl.regrasicmssimples in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.regrasicmssimples.pas',
  passaporteacbrapinfe.usecase.impl.regrasicmsnormal in 'src\usecase\impl\passaporteacbrapinfe.usecase.impl.regrasicmsnormal.pas';

procedure IniciarHorse;
begin
  THorse
    .use(cors)
    .use(Jhonson)
    .use(HorseSwagger);

  THorseGBSwaggerRegister.RegisterPath(TControllerNFe);

  THorse
    .Listen(8080,
    procedure (Horse:THorse)
    begin
      System.Writeln(Format('Servidor ACBRNFe rodando, porta %d', [Horse.Port]));
      System.Readln;
    end);
end;

procedure IniciarSwagger;
begin
    Swagger
    .Version('2.0')
    .AddProtocol(TGBSwaggerProtocol.gbHttp)
      .Config
        .Language('pt-BR')
      .&End
      .Info
        .Title('API ACBr com Horse')
        .Description('API Emissora de NF-e')
        .Contact
          .Name('Alessandro Medeiros')
          .Email('alemedeiros@bsd.com.br')
        .&End
      .&End
    .&End;
end;

begin
  IniciarHorse;
  IniciarSwagger;
end.
