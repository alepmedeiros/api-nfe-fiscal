program APINFe;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.GBSwagger,
  System.SysUtils,
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
  ACBrNFe.entity.RetTrasnportadora in 'src\entity\ACBrNFe.entity.RetTrasnportadora.pas',
  ACBrNFe.entity.Total in 'src\entity\ACBrNFe.entity.Total.pas',
  ACBrNFe.entity.TotalICMS in 'src\entity\ACBrNFe.entity.TotalICMS.pas',
  ACBrNFe.entity.TotalRetTrib in 'src\entity\ACBrNFe.entity.TotalRetTrib.pas',
  ACBrNFe.entity.Transportadora in 'src\entity\ACBrNFe.entity.Transportadora.pas',
  ACBrNFe.entity.Veiculo in 'src\entity\ACBrNFe.entity.Veiculo.pas',
  ACBrNFe.entity.VolumeTransportadora in 'src\entity\ACBrNFe.entity.VolumeTransportadora.pas',
  ACBrNFe.utils.acbrhelper in 'src\utils\ACBrNFe.utils.acbrhelper.pas',
  ACBrNFe.Component.interfaces in 'src\component\ACBrNFe.Component.interfaces.pas',
  ACBrNFe.Component.impl.FactoryNFe in 'src\component\impl\ACBrNFe.Component.impl.FactoryNFe.pas',
  ACBrNFe.Component.impl.NFe in 'src\component\impl\ACBrNFe.Component.impl.NFe.pas',
  ACBrNFe.usecase.interfaces in 'src\usecase\ACBrNFe.usecase.interfaces.pas',
  ACBrNFe.usecase.ActionNFe in 'src\usecase\impl\ACBrNFe.usecase.ActionNFe.pas',
  ACBrNFe.usecase.invoker in 'src\usecase\impl\ACBrNFe.usecase.invoker.pas',
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
  ACBrNFe.usecase.RepositoryVeicProd in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryVeicProd.pas',
  ACBrNFe.entity.ResponseNFe in 'src\entity\ACBrNFe.entity.ResponseNFe.pas',
  ACBrNFe.controller.notasfiscais in 'src\controller\ACBrNFe.controller.notasfiscais.pas',
  ACBrNFe.usecase.RepositoryGerarNFe in 'src\usecase\impl\repository\ACBrNFe.usecase.RepositoryGerarNFe.pas';

procedure IniciaHorse;
begin
  THorse
    .use(HorseSwagger);

  THorse.Listen(9000,
  procedure (Horse:THorse)
  begin
    System.Writeln(Format('Servidor Horse com ACBr rodando, porta %d',[Horse.Port]));
    System.Readln;
  end);
end;

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

begin
  IniciaHorse;
  InicializaSwagger;
end.
