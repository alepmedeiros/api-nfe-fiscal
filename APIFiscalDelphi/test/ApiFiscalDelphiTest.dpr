program ApiFiscalDelphiTest;

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
  APIFiscalDephi.Test in 'APIFiscalDephi.Test.pas',
  APIFiscalDelphi.GerarNFe.Interfaces in '..\src\APIFiscalDelphi.GerarNFe.Interfaces.pas',
  APIFiscalDelphi.Interfaces in '..\src\APIFiscalDelphi.Interfaces.pas',
  APIFiscalDelphi.NotaFiscal in '..\src\APIFiscalDelphi.NotaFiscal.pas',
  APIFiscalDelphi.NotaFiscal.CobrDup in '..\src\APIFiscalDelphi.NotaFiscal.CobrDup.pas',
  APIFiscalDelphi.NotaFiscal.CobrFat in '..\src\APIFiscalDelphi.NotaFiscal.CobrFat.pas',
  APIFiscalDelphi.NotaFiscal.Compra in '..\src\APIFiscalDelphi.NotaFiscal.Compra.pas',
  APIFiscalDelphi.NotaFiscal.Dest in '..\src\APIFiscalDelphi.NotaFiscal.Dest.pas',
  APIFiscalDelphi.NotaFiscal.EnderDest in '..\src\APIFiscalDelphi.NotaFiscal.EnderDest.pas',
  APIFiscalDelphi.NotaFiscal.Emitente in '..\src\APIFiscalDelphi.NotaFiscal.Emitente.pas',
  APIFiscalDelphi.NotaFiscal.EnderEmit in '..\src\APIFiscalDelphi.NotaFiscal.EnderEmit.pas',
  APIFiscalDelphi.NotaFiscal.Exporta in '..\src\APIFiscalDelphi.NotaFiscal.Exporta.pas',
  APIFiscalDelphi.NotaFiscal.Geral in '..\src\APIFiscalDelphi.NotaFiscal.Geral.pas',
  APIFiscalDelphi.NotaFiscal.Ide in '..\src\APIFiscalDelphi.NotaFiscal.Ide.pas',
  APIFiscalDelphi.NotaFiscal.InfAdicObsComp in '..\src\APIFiscalDelphi.NotaFiscal.InfAdicObsComp.pas',
  APIFiscalDelphi.NotaFiscal.InfAdicObsFisco in '..\src\APIFiscalDelphi.NotaFiscal.InfAdicObsFisco.pas',
  APIFiscalDelphi.NotaFiscal.InfAdic in '..\src\APIFiscalDelphi.NotaFiscal.InfAdic.pas',
  APIFiscalDelphi.NotaFiscal.Pagamento in '..\src\APIFiscalDelphi.NotaFiscal.Pagamento.pas',
  APIFiscalDelphi.NotaFiscal.Prod in '..\src\APIFiscalDelphi.NotaFiscal.Prod.pas',
  APIFiscalDelphi.NotaFiscal.ProdImposto in '..\src\APIFiscalDelphi.NotaFiscal.ProdImposto.pas',
  APIFiscalDelphi.NotaFiscal.Total in '..\src\APIFiscalDelphi.NotaFiscal.Total.pas',
  APIFiscalDelphi.NotaFiscal.ICMSTot in '..\src\APIFiscalDelphi.NotaFiscal.ICMSTot.pas',
  APIFiscalDelphi.NotaFiscal.Transp in '..\src\APIFiscalDelphi.NotaFiscal.Transp.pas',
  APIFiscalDelphi.NotaFiscal.VeicTransp in '..\src\APIFiscalDelphi.NotaFiscal.VeicTransp.pas',
  APIFiscalDelphi.NotaFiscal.TranspVol in '..\src\APIFiscalDelphi.NotaFiscal.TranspVol.pas',
  APIFiscalDelphi.Componentes.Interfaces in '..\src\APIFiscalDelphi.Componentes.Interfaces.pas';

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
