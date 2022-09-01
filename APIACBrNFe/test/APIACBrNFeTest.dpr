program APIACBrNFeTest;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  {$ENDIF }
  DUnitX.TestFramework,
  APIACBrNFe.Test in 'APIACBrNFe.Test.pas',
  ACBrNFe.Component.interfaces in '..\src\component\ACBrNFe.Component.interfaces.pas',
  ACBrNFe.Component.impl.NFe in '..\src\component\impl\ACBrNFe.Component.impl.NFe.pas',
  ACBrNFe.Component.impl.FactoryNFe in '..\src\component\impl\ACBrNFe.Component.impl.FactoryNFe.pas',
  ACBrNFe.usecase.interfaces in '..\src\usecase\ACBrNFe.usecase.interfaces.pas',
  ACBrNFe.usecase.invoker in '..\src\usecase\impl\ACBrNFe.usecase.invoker.pas',
  ACBrNFe.entity.interfaces in '..\src\entity\ACBrNFe.entity.interfaces.pas',
  ACBrNFe.entity.impl.InfInterMed in '..\src\entity\impl\ACBrNFe.entity.impl.InfInterMed.pas',
  ACBrNFe.entity.impl.pagamentos in '..\src\entity\impl\ACBrNFe.entity.impl.pagamentos.pas',
  ACBrNFe.entity.impl.compra in '..\src\entity\impl\ACBrNFe.entity.impl.compra.pas',
  ACBrNFe.entity.impl.exporta in '..\src\entity\impl\ACBrNFe.entity.impl.exporta.pas',
  ACBrNFe.entity.impl.InfAdicObsFisco in '..\src\entity\impl\ACBrNFe.entity.impl.InfAdicObsFisco.pas',
  ACBrNFe.entity.impl.InfAdicCpl in '..\src\entity\impl\ACBrNFe.entity.impl.InfAdicCpl.pas',
  ACBrNFe.entity.impl.InfAdic in '..\src\entity\impl\ACBrNFe.entity.impl.InfAdic.pas',
  ACBrNFe.entity.impl.CobDup in '..\src\entity\impl\ACBrNFe.entity.impl.CobDup.pas',
  ACBrNFe.entity.impl.CobFat in '..\src\entity\impl\ACBrNFe.entity.impl.CobFat.pas',
  ACBrNFe.entity.impl.TranspVol in '..\src\entity\impl\ACBrNFe.entity.impl.TranspVol.pas',
  ACBrNFe.entity.impl.Transp in '..\src\entity\impl\ACBrNFe.entity.impl.Transp.pas',
  ACBrNFe.entity.impl.Total in '..\src\entity\impl\ACBrNFe.entity.impl.Total.pas',
  ACBrNFe.entity.impl.RetTrib in '..\src\entity\impl\ACBrNFe.entity.impl.RetTrib.pas',
  ACBrNFe.entity.impl.ICMSTot in '..\src\entity\impl\ACBrNFe.entity.impl.ICMSTot.pas',
  ACBrNFe.entity.impl.Prod in '..\src\entity\impl\ACBrNFe.entity.impl.Prod.pas',
  ACBrNFe.entity.impl.Imposto in '..\src\entity\impl\ACBrNFe.entity.impl.Imposto.pas',
  ACBrNFe.entity.impl.Comb in '..\src\entity\impl\ACBrNFe.entity.impl.Comb.pas',
  ACBrNFe.entity.impl.CIDE in '..\src\entity\impl\ACBrNFe.entity.impl.CIDE.pas',
  ACBrNFe.entity.impl.ICMS in '..\src\entity\impl\ACBrNFe.entity.impl.ICMS.pas',
  ACBrNFe.entity.impl.ICMSCons in '..\src\entity\impl\ACBrNFe.entity.impl.ICMSCons.pas',
  ACBrNFe.entity.impl.ICMSInter in '..\src\entity\impl\ACBrNFe.entity.impl.ICMSInter.pas',
  ACBrNFe.entity.impl.COFINS in '..\src\entity\impl\ACBrNFe.entity.impl.COFINS.pas',
  ACBrNFe.entity.impl.COFINSST in '..\src\entity\impl\ACBrNFe.entity.impl.COFINSST.pas',
  ACBrNFe.entity.impl.ICMSUFDest in '..\src\entity\impl\ACBrNFe.entity.impl.ICMSUFDest.pas',
  ACBrNFe.entity.impl.II in '..\src\entity\impl\ACBrNFe.entity.impl.II.pas',
  ACBrNFe.entity.impl.Pis in '..\src\entity\impl\ACBrNFe.entity.impl.Pis.pas',
  ACBrNFe.entity.impl.PISST in '..\src\entity\impl\ACBrNFe.entity.impl.PISST.pas',
  ACBrNFe.entity.impl.VeicProd in '..\src\entity\impl\ACBrNFe.entity.impl.VeicProd.pas',
  ACBrNFe.entity.impl.Dest in '..\src\entity\impl\ACBrNFe.entity.impl.Dest.pas',
  ACBrNFe.entity.impl.EnderDest in '..\src\entity\impl\ACBrNFe.entity.impl.EnderDest.pas',
  ACBrNFe.entity.impl.Emitente in '..\src\entity\impl\ACBrNFe.entity.impl.Emitente.pas',
  ACBrNFe.entity.impl.EnderEmit in '..\src\entity\impl\ACBrNFe.entity.impl.EnderEmit.pas',
  ACBrNFe.entity.impl.Ide in '..\src\entity\impl\ACBrNFe.entity.impl.Ide.pas',
  ACBrNFe.entity.impl.Configuracao in '..\src\entity\impl\ACBrNFe.entity.impl.Configuracao.pas',
  ACBrNFe.entity.impl.WebService in '..\src\entity\impl\ACBrNFe.entity.impl.WebService.pas',
  ACBrNFe.entity.impl.Geral in '..\src\entity\impl\ACBrNFe.entity.impl.Geral.pas',
  ACBrNFe.usecase.ActionNFe in '..\src\usecase\impl\ACBrNFe.usecase.ActionNFe.pas',
  ACBrNFe.usecase.RepositoryConf in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryConf.pas',
  ACBrNFe.entity.impl.FactoryEntity in '..\src\entity\impl\ACBrNFe.entity.impl.FactoryEntity.pas',
  ACBrNFe.utils.acbrhelper in '..\src\utils\ACBrNFe.utils.acbrhelper.pas',
  ACBrNFe.usecase.RepositoryIde in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryIde.pas',
  ACBrNFe.usecase.RepositoryEmitente in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryEmitente.pas',
  ACBrNFe.usecase.RepositoryDest in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryDest.pas',
  ACBrNFe.usecase.RepositoryProd in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProd.pas',
  ACBrNFe.usecase.RepositoryProdImposto in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImposto.pas',
  ACBrNFe.usecase.RepositoryVeicProd in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryVeicProd.pas',
  ACBrNFe.usecase.RepositoryProdCombustivel in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdCombustivel.pas',
  ACBrNFe.usecase.RepositoryProdImpostoICMS in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpostoICMS.pas',
  ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpostoICMSUFDest.pas',
  ACBrNFe.usecase.RepositoryProdImpostoII in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpostoII.pas',
  ACBrNFe.usecase.RepositoryProdImpPIS in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpPIS.pas',
  ACBrNFe.usecase.RepositoryProdImpPISST in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpPISST.pas',
  ACBrNFe.usecase.RepositoryProdImpCOFINS in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpCOFINS.pas',
  ACBrNFe.usecase.RepositoryProdImpCOFINSST in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryProdImpCOFINSST.pas',
  ACBrNFe.usecase.RepositoryTotal in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryTotal.pas',
  ACBrNFe.usecase.RepositoryTransp in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryTransp.pas',
  ACBrNFe.usecase.RepositoryTranspVol in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryTranspVol.pas',
  ACBrNFe.usecase.RepositoryCobFat in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryCobFat.pas',
  ACBrNFe.usecase.RepositoryDuplicata in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryDuplicata.pas',
  ACBrNFe.usecase.RepositoryInfAdic in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryInfAdic.pas',
  ACBrNFe.usecase.RepositoryInfAdicObsComp in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryInfAdicObsComp.pas',
  ACBrNFe.usecase.RepositoryObsFisco in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryObsFisco.pas',
  ACBrNFe.usecase.RepositoryExporta in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryExporta.pas',
  ACBrNFe.usecase.RepositoryCompra in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryCompra.pas',
  ACBrNFe.usecase.RepositoryPagamento in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryPagamento.pas',
  ACBrNFe.usecase.RepositoryInfIntermed in '..\src\usecase\impl\ACBrNFe.usecase.RepositoryInfIntermed.pas';

{$IFNDEF TESTINSIGHT}
var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger : ITestLogger;
{$ENDIF}
begin
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
{$ELSE}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //When true, Assertions must be made during tests;
    runner.FailsOnNoAsserts := False;

    //tell the runner how we will log things
    //Log to the console window if desired
    if TDUnitX.Options.ConsoleMode <> TDunitXConsoleMode.Off then
    begin
      logger := TDUnitXConsoleLogger.Create(TDUnitX.Options.ConsoleMode = TDunitXConsoleMode.Quiet);
      runner.AddLogger(logger);
    end;
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
{$ENDIF}
end.
