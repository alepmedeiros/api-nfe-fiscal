program APIACBrNFe;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  horse.cors,
  Horse.jhonson,
  Horse.GBSwagger,
  System.SysUtils,
  ACBrNFe.Component.interfaces in 'src\component\ACBrNFe.Component.interfaces.pas',
  ACBrNFe.Component.impl.FactoryNFe in 'src\component\impl\ACBrNFe.Component.impl.FactoryNFe.pas',
  ACBrNFe.Component.impl.NFe in 'src\component\impl\ACBrNFe.Component.impl.NFe.pas',
  ACBrNFe.entity.interfaces in 'src\entity\ACBrNFe.entity.interfaces.pas',
  ACBrNFe.entity.impl.FactoryEntity in 'src\entity\impl\ACBrNFe.entity.impl.FactoryEntity.pas',
  ACBrNFe.usecase.interfaces in 'src\usecase\ACBrNFe.usecase.interfaces.pas',
  ACBrNFe.usecase.ActionNFe in 'src\usecase\impl\ACBrNFe.usecase.ActionNFe.pas',
  ACBrNFe.usecase.invoker in 'src\usecase\impl\ACBrNFe.usecase.invoker.pas',
  ACBrNFe.utils.acbrhelper in 'src\utils\ACBrNFe.utils.acbrhelper.pas',
  ACBrNFe.controller.notasfiscais in 'src\controller\ACBrNFe.controller.notasfiscais.pas',
  ACBrNFe.adapter.impl.adapternfe in 'src\adapter\impl\ACBrNFe.adapter.impl.adapternfe.pas',
  ACBrNFe.adapter.interfaces in 'src\adapter\ACBrNFe.adapter.interfaces.pas',
  ACBrNFe.adapter.CobrancaDuplicata in 'src\adapter\model\ACBrNFe.adapter.CobrancaDuplicata.pas',
  ACBrNFe.adapter.CobrancaFat in 'src\adapter\model\ACBrNFe.adapter.CobrancaFat.pas',
  ACBrNFe.adapter.CombCIDE in 'src\adapter\model\ACBrNFe.adapter.CombCIDE.pas',
  ACBrNFe.adapter.CombICMS in 'src\adapter\model\ACBrNFe.adapter.CombICMS.pas',
  ACBrNFe.adapter.CombICMSCons in 'src\adapter\model\ACBrNFe.adapter.CombICMSCons.pas',
  ACBrNFe.adapter.CombICMSInter in 'src\adapter\model\ACBrNFe.adapter.CombICMSInter.pas',
  ACBrNFe.adapter.Combustivel in 'src\adapter\model\ACBrNFe.adapter.Combustivel.pas',
  ACBrNFe.adapter.Compra in 'src\adapter\model\ACBrNFe.adapter.Compra.pas',
  ACBrNFe.adapter.Destinatario in 'src\adapter\model\ACBrNFe.adapter.Destinatario.pas',
  ACBrNFe.adapter.EndDest in 'src\adapter\model\ACBrNFe.adapter.EndDest.pas',
  ACBrNFe.adapter.exporta in 'src\adapter\model\ACBrNFe.adapter.exporta.pas',
  ACBrNFe.adapter.ImpostoCOFINS in 'src\adapter\model\ACBrNFe.adapter.ImpostoCOFINS.pas',
  ACBrNFe.adapter.ImpostoCOFINSST in 'src\adapter\model\ACBrNFe.adapter.ImpostoCOFINSST.pas',
  ACBrNFe.adapter.ImpostoICMS in 'src\adapter\model\ACBrNFe.adapter.ImpostoICMS.pas',
  ACBrNFe.adapter.ImpostoICMSUFDest in 'src\adapter\model\ACBrNFe.adapter.ImpostoICMSUFDest.pas',
  ACBrNFe.adapter.ImpostoII in 'src\adapter\model\ACBrNFe.adapter.ImpostoII.pas',
  ACBrNFe.adapter.ImpostoPIS in 'src\adapter\model\ACBrNFe.adapter.ImpostoPIS.pas',
  ACBrNFe.adapter.ImpostoPISST in 'src\adapter\model\ACBrNFe.adapter.ImpostoPISST.pas',
  ACBrNFe.adapter.InfAdicionais in 'src\adapter\model\ACBrNFe.adapter.InfAdicionais.pas',
  ACBrNFe.adapter.InfIntermed in 'src\adapter\model\ACBrNFe.adapter.InfIntermed.pas',
  ACBrNFe.adapter.ObsComplementar in 'src\adapter\model\ACBrNFe.adapter.ObsComplementar.pas',
  ACBrNFe.adapter.ObsFisco in 'src\adapter\model\ACBrNFe.adapter.ObsFisco.pas',
  ACBrNFe.adapter.pagamentos in 'src\adapter\model\ACBrNFe.adapter.pagamentos.pas',
  ACBrNFe.adapter.pedidos in 'src\adapter\model\ACBrNFe.adapter.pedidos.pas',
  ACBrNFe.adapter.ProdImposto in 'src\adapter\model\ACBrNFe.adapter.ProdImposto.pas',
  ACBrNFe.adapter.Produto in 'src\adapter\model\ACBrNFe.adapter.Produto.pas',
  ACBrNFe.adapter.RetTrasnportadora in 'src\adapter\model\ACBrNFe.adapter.RetTrasnportadora.pas',
  ACBrNFe.adapter.Total in 'src\adapter\model\ACBrNFe.adapter.Total.pas',
  ACBrNFe.adapter.TotalICMS in 'src\adapter\model\ACBrNFe.adapter.TotalICMS.pas',
  ACBrNFe.adapter.TotalRetTrib in 'src\adapter\model\ACBrNFe.adapter.TotalRetTrib.pas',
  ACBrNFe.adapter.Transportadora in 'src\adapter\model\ACBrNFe.adapter.Transportadora.pas',
  ACBrNFe.adapter.Veiculo in 'src\adapter\model\ACBrNFe.adapter.Veiculo.pas',
  ACBrNFe.adapter.VolumeTransportadora in 'src\adapter\model\ACBrNFe.adapter.VolumeTransportadora.pas',
  ACBrNFe.entity.impl.CIDE in 'src\entity\impl\entitys\ACBrNFe.entity.impl.CIDE.pas',
  ACBrNFe.entity.impl.CobDup in 'src\entity\impl\entitys\ACBrNFe.entity.impl.CobDup.pas',
  ACBrNFe.entity.impl.CobFat in 'src\entity\impl\entitys\ACBrNFe.entity.impl.CobFat.pas',
  ACBrNFe.entity.impl.COFINS in 'src\entity\impl\entitys\ACBrNFe.entity.impl.COFINS.pas',
  ACBrNFe.entity.impl.COFINSST in 'src\entity\impl\entitys\ACBrNFe.entity.impl.COFINSST.pas',
  ACBrNFe.entity.impl.Comb in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Comb.pas',
  ACBrNFe.entity.impl.compra in 'src\entity\impl\entitys\ACBrNFe.entity.impl.compra.pas',
  ACBrNFe.entity.impl.Configuracao in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Configuracao.pas',
  ACBrNFe.entity.impl.Dest in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Dest.pas',
  ACBrNFe.entity.impl.Emitente in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Emitente.pas',
  ACBrNFe.entity.impl.EnderDest in 'src\entity\impl\entitys\ACBrNFe.entity.impl.EnderDest.pas',
  ACBrNFe.entity.impl.EnderEmit in 'src\entity\impl\entitys\ACBrNFe.entity.impl.EnderEmit.pas',
  ACBrNFe.entity.impl.exporta in 'src\entity\impl\entitys\ACBrNFe.entity.impl.exporta.pas',
  ACBrNFe.entity.impl.Geral in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Geral.pas',
  ACBrNFe.entity.impl.ICMS in 'src\entity\impl\entitys\ACBrNFe.entity.impl.ICMS.pas',
  ACBrNFe.entity.impl.ICMSCons in 'src\entity\impl\entitys\ACBrNFe.entity.impl.ICMSCons.pas',
  ACBrNFe.entity.impl.ICMSInter in 'src\entity\impl\entitys\ACBrNFe.entity.impl.ICMSInter.pas',
  ACBrNFe.entity.impl.ICMSTot in 'src\entity\impl\entitys\ACBrNFe.entity.impl.ICMSTot.pas',
  ACBrNFe.entity.impl.ICMSUFDest in 'src\entity\impl\entitys\ACBrNFe.entity.impl.ICMSUFDest.pas',
  ACBrNFe.entity.impl.Ide in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Ide.pas',
  ACBrNFe.entity.impl.II in 'src\entity\impl\entitys\ACBrNFe.entity.impl.II.pas',
  ACBrNFe.entity.impl.Imposto in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Imposto.pas',
  ACBrNFe.entity.impl.InfAdic in 'src\entity\impl\entitys\ACBrNFe.entity.impl.InfAdic.pas',
  ACBrNFe.entity.impl.InfAdicCpl in 'src\entity\impl\entitys\ACBrNFe.entity.impl.InfAdicCpl.pas',
  ACBrNFe.entity.impl.InfAdicObsFisco in 'src\entity\impl\entitys\ACBrNFe.entity.impl.InfAdicObsFisco.pas',
  ACBrNFe.entity.impl.InfInterMed in 'src\entity\impl\entitys\ACBrNFe.entity.impl.InfInterMed.pas',
  ACBrNFe.entity.impl.pagamentos in 'src\entity\impl\entitys\ACBrNFe.entity.impl.pagamentos.pas',
  ACBrNFe.entity.impl.Pis in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Pis.pas',
  ACBrNFe.entity.impl.PISST in 'src\entity\impl\entitys\ACBrNFe.entity.impl.PISST.pas',
  ACBrNFe.entity.impl.Prod in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Prod.pas',
  ACBrNFe.entity.impl.RetTrib in 'src\entity\impl\entitys\ACBrNFe.entity.impl.RetTrib.pas',
  ACBrNFe.entity.impl.Total in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Total.pas',
  ACBrNFe.entity.impl.Transp in 'src\entity\impl\entitys\ACBrNFe.entity.impl.Transp.pas',
  ACBrNFe.entity.impl.TranspVol in 'src\entity\impl\entitys\ACBrNFe.entity.impl.TranspVol.pas',
  ACBrNFe.entity.impl.VeicProd in 'src\entity\impl\entitys\ACBrNFe.entity.impl.VeicProd.pas',
  ACBrNFe.entity.impl.WebService in 'src\entity\impl\entitys\ACBrNFe.entity.impl.WebService.pas',
  ACBrNFe.usecase.RepositoryCobFat in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryCobFat.pas',
  ACBrNFe.usecase.RepositoryCompra in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryCompra.pas',
  ACBrNFe.usecase.RepositoryConf in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryConf.pas',
  ACBrNFe.usecase.RepositoryDest in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryDest.pas',
  ACBrNFe.usecase.RepositoryDuplicata in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryDuplicata.pas',
  ACBrNFe.usecase.RepositoryEmitente in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryEmitente.pas',
  ACBrNFe.usecase.RepositoryExporta in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryExporta.pas',
  ACBrNFe.usecase.RepositoryIde in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryIde.pas',
  ACBrNFe.usecase.RepositoryInfAdic in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryInfAdic.pas',
  ACBrNFe.usecase.RepositoryInfAdicObsComp in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryInfAdicObsComp.pas',
  ACBrNFe.usecase.RepositoryInfIntermed in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryInfIntermed.pas',
  ACBrNFe.usecase.RepositoryObsFisco in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryObsFisco.pas',
  ACBrNFe.usecase.RepositoryPagamento in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryPagamento.pas',
  ACBrNFe.usecase.RepositoryProd in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProd.pas',
  ACBrNFe.usecase.RepositoryProdCombustivel in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdCombustivel.pas',
  ACBrNFe.usecase.RepositoryProdImpCOFINS in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpCOFINS.pas',
  ACBrNFe.usecase.RepositoryProdImpCOFINSST in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpCOFINSST.pas',
  ACBrNFe.usecase.RepositoryProdImposto in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImposto.pas',
  ACBrNFe.usecase.RepositoryProdImpostoICMS in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpostoICMS.pas',
  ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest.pas',
  ACBrNFe.usecase.RepositoryProdImpostoII in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpostoII.pas',
  ACBrNFe.usecase.RepositoryProdImpPIS in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpPIS.pas',
  ACBrNFe.usecase.RepositoryProdImpPISST in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryProdImpPISST.pas',
  ACBrNFe.usecase.RepositoryTotal in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryTotal.pas',
  ACBrNFe.usecase.RepositoryTransp in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryTransp.pas',
  ACBrNFe.usecase.RepositoryTranspVol in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryTranspVol.pas',
  ACBrNFe.usecase.RepositoryVeicProd in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryVeicProd.pas';

procedure InicializaSwagger;
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

procedure iniciarHorse;
begin
  THorse
    .use(cors)
    .use(jhonson)
    .use(HorseSwagger);

end;

begin
  InicializaSwagger;
  iniciarHorse;

  THorseGBSwaggerRegister.RegisterPath(TControllerNotaFiscal);

  THorse.Listen(9000,
  procedure (Horse:THorse)
  begin
    System.Writeln(Format('Servidor Horse com ACBr rodando, porta %d',[Horse.Port]));
    System.Readln;
  end);
end.
