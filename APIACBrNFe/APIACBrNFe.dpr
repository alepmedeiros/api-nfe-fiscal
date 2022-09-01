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
  ACBrNFe.entity.impl.CIDE in 'src\entity\impl\ACBrNFe.entity.impl.CIDE.pas',
  ACBrNFe.entity.impl.CobDup in 'src\entity\impl\ACBrNFe.entity.impl.CobDup.pas',
  ACBrNFe.entity.impl.CobFat in 'src\entity\impl\ACBrNFe.entity.impl.CobFat.pas',
  ACBrNFe.entity.impl.COFINS in 'src\entity\impl\ACBrNFe.entity.impl.COFINS.pas',
  ACBrNFe.entity.impl.COFINSST in 'src\entity\impl\ACBrNFe.entity.impl.COFINSST.pas',
  ACBrNFe.entity.impl.Comb in 'src\entity\impl\ACBrNFe.entity.impl.Comb.pas',
  ACBrNFe.entity.impl.compra in 'src\entity\impl\ACBrNFe.entity.impl.compra.pas',
  ACBrNFe.entity.impl.Configuracao in 'src\entity\impl\ACBrNFe.entity.impl.Configuracao.pas',
  ACBrNFe.entity.impl.Dest in 'src\entity\impl\ACBrNFe.entity.impl.Dest.pas',
  ACBrNFe.entity.impl.Emitente in 'src\entity\impl\ACBrNFe.entity.impl.Emitente.pas',
  ACBrNFe.entity.impl.EnderDest in 'src\entity\impl\ACBrNFe.entity.impl.EnderDest.pas',
  ACBrNFe.entity.impl.EnderEmit in 'src\entity\impl\ACBrNFe.entity.impl.EnderEmit.pas',
  ACBrNFe.entity.impl.exporta in 'src\entity\impl\ACBrNFe.entity.impl.exporta.pas',
  ACBrNFe.entity.impl.FactoryEntity in 'src\entity\impl\ACBrNFe.entity.impl.FactoryEntity.pas',
  ACBrNFe.entity.impl.Geral in 'src\entity\impl\ACBrNFe.entity.impl.Geral.pas',
  ACBrNFe.entity.impl.ICMS in 'src\entity\impl\ACBrNFe.entity.impl.ICMS.pas',
  ACBrNFe.entity.impl.ICMSCons in 'src\entity\impl\ACBrNFe.entity.impl.ICMSCons.pas',
  ACBrNFe.entity.impl.ICMSInter in 'src\entity\impl\ACBrNFe.entity.impl.ICMSInter.pas',
  ACBrNFe.entity.impl.ICMSTot in 'src\entity\impl\ACBrNFe.entity.impl.ICMSTot.pas',
  ACBrNFe.entity.impl.ICMSUFDest in 'src\entity\impl\ACBrNFe.entity.impl.ICMSUFDest.pas',
  ACBrNFe.entity.impl.Ide in 'src\entity\impl\ACBrNFe.entity.impl.Ide.pas',
  ACBrNFe.entity.impl.II in 'src\entity\impl\ACBrNFe.entity.impl.II.pas',
  ACBrNFe.entity.impl.Imposto in 'src\entity\impl\ACBrNFe.entity.impl.Imposto.pas',
  ACBrNFe.entity.impl.InfAdic in 'src\entity\impl\ACBrNFe.entity.impl.InfAdic.pas',
  ACBrNFe.entity.impl.InfAdicCpl in 'src\entity\impl\ACBrNFe.entity.impl.InfAdicCpl.pas',
  ACBrNFe.entity.impl.InfAdicObsFisco in 'src\entity\impl\ACBrNFe.entity.impl.InfAdicObsFisco.pas',
  ACBrNFe.entity.impl.InfInterMed in 'src\entity\impl\ACBrNFe.entity.impl.InfInterMed.pas',
  ACBrNFe.entity.impl.pagamentos in 'src\entity\impl\ACBrNFe.entity.impl.pagamentos.pas',
  ACBrNFe.entity.impl.Pis in 'src\entity\impl\ACBrNFe.entity.impl.Pis.pas',
  ACBrNFe.entity.impl.PISST in 'src\entity\impl\ACBrNFe.entity.impl.PISST.pas',
  ACBrNFe.entity.impl.Prod in 'src\entity\impl\ACBrNFe.entity.impl.Prod.pas',
  ACBrNFe.entity.impl.RetTrib in 'src\entity\impl\ACBrNFe.entity.impl.RetTrib.pas',
  ACBrNFe.entity.impl.Total in 'src\entity\impl\ACBrNFe.entity.impl.Total.pas',
  ACBrNFe.entity.impl.Transp in 'src\entity\impl\ACBrNFe.entity.impl.Transp.pas',
  ACBrNFe.entity.impl.TranspVol in 'src\entity\impl\ACBrNFe.entity.impl.TranspVol.pas',
  ACBrNFe.entity.impl.VeicProd in 'src\entity\impl\ACBrNFe.entity.impl.VeicProd.pas',
  ACBrNFe.entity.impl.WebService in 'src\entity\impl\ACBrNFe.entity.impl.WebService.pas',
  ACBrNFe.usecase.interfaces in 'src\usecase\ACBrNFe.usecase.interfaces.pas',
  ACBrNFe.usecase.ActionNFe in 'src\usecase\impl\ACBrNFe.usecase.ActionNFe.pas',
  ACBrNFe.usecase.command in 'src\usecase\impl\ACBrNFe.usecase.command.pas',
  ACBrNFe.usecase.invoker in 'src\usecase\impl\ACBrNFe.usecase.invoker.pas',
  ACBrNFe.usecase.RepositoryCobFat in 'src\usecase\impl\ACBrNFe.usecase.RepositoryCobFat.pas',
  ACBrNFe.usecase.RepositoryCompra in 'src\usecase\impl\ACBrNFe.usecase.RepositoryCompra.pas',
  ACBrNFe.usecase.RepositoryConf in 'src\usecase\impl\ACBrNFe.usecase.RepositoryConf.pas',
  ACBrNFe.usecase.RepositoryDest in 'src\usecase\impl\ACBrNFe.usecase.RepositoryDest.pas',
  ACBrNFe.usecase.RepositoryDuplicata in 'src\usecase\impl\ACBrNFe.usecase.RepositoryDuplicata.pas',
  ACBrNFe.usecase.RepositoryEmitente in 'src\usecase\impl\ACBrNFe.usecase.RepositoryEmitente.pas',
  ACBrNFe.usecase.RepositoryExporta in 'src\usecase\impl\ACBrNFe.usecase.RepositoryExporta.pas',
  ACBrNFe.usecase.RepositoryIde in 'src\usecase\impl\ACBrNFe.usecase.RepositoryIde.pas',
  ACBrNFe.usecase.RepositoryInfAdic in 'src\usecase\impl\ACBrNFe.usecase.RepositoryInfAdic.pas',
  ACBrNFe.usecase.RepositoryInfAdicObsComp in 'src\usecase\impl\ACBrNFe.usecase.RepositoryInfAdicObsComp.pas',
  ACBrNFe.usecase.RepositoryInfIntermed in 'src\usecase\impl\ACBrNFe.usecase.RepositoryInfIntermed.pas',
  ACBrNFe.usecase.RepositoryObsFisco in 'src\usecase\impl\ACBrNFe.usecase.RepositoryObsFisco.pas',
  ACBrNFe.usecase.RepositoryPagamento in 'src\usecase\impl\ACBrNFe.usecase.RepositoryPagamento.pas',
  ACBrNFe.usecase.RepositoryProd in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProd.pas',
  ACBrNFe.usecase.RepositoryProdCombustivel in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdCombustivel.pas',
  ACBrNFe.usecase.RepositoryProdImpCOFINS in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpCOFINS.pas',
  ACBrNFe.usecase.RepositoryProdImpCOFINSST in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpCOFINSST.pas',
  ACBrNFe.usecase.RepositoryProdImposto in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImposto.pas',
  ACBrNFe.usecase.RepositoryProdImpostoICMS in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpostoICMS.pas',
  ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest.pas',
  ACBrNFe.usecase.RepositoryProdImpostoII in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpostoII.pas',
  ACBrNFe.usecase.RepositoryProdImpPIS in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpPIS.pas',
  ACBrNFe.usecase.RepositoryProdImpPISST in 'src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpPISST.pas',
  ACBrNFe.usecase.RepositoryTotal in 'src\usecase\impl\ACBrNFe.usecase.RepositoryTotal.pas',
  ACBrNFe.usecase.RepositoryTransp in 'src\usecase\impl\ACBrNFe.usecase.RepositoryTransp.pas',
  ACBrNFe.usecase.RepositoryTranspVol in 'src\usecase\impl\ACBrNFe.usecase.RepositoryTranspVol.pas',
  ACBrNFe.usecase.RepositoryVeicProd in 'src\usecase\impl\ACBrNFe.usecase.RepositoryVeicProd.pas',
  ACBrNFe.utils.acbrhelper in 'src\utils\ACBrNFe.utils.acbrhelper.pas',
  ACBrNFe.controller.notasfiscais in 'src\controller\ACBrNFe.controller.notasfiscais.pas',
  ACBrNFe.adapter.pedidos in 'src\adapter\ACBrNFe.adapter.pedidos.pas';

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
