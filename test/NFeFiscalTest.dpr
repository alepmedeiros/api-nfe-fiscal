program NFeFiscalTest;

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
  nfefiscal.test in 'nfefiscal.test.pas',
  nfefiscal.nfe.interfaces in '..\nfe\src\nfefiscal.nfe.interfaces.pas',
  nfefiscal.nfe_.interfaces in '..\nfe\src\nfefiscal.nfe_.interfaces.pas',
  nfefiscal.nfeDefault.interfaces in '..\nfe\src\nfefiscal.nfeDefault.interfaces.pas',
  nfefiscal.nfe.arquivos in '..\nfe\src\nfefiscal.nfe.arquivos.pas',
  nfefiscal.nfe.geral in '..\nfe\src\nfefiscal.nfe.geral.pas',
  nfefiscal.nfe.timezoneconf in '..\nfe\src\nfefiscal.nfe.timezoneconf.pas',
  nfefiscal.nfe.webservice in '..\nfe\src\nfefiscal.nfe.webservice.pas',
  nfefiscal.nfe.ssl in '..\nfe\src\nfefiscal.nfe.ssl.pas',
  nfefiscal.nfe.danfe in '..\nfe\src\nfefiscal.nfe.danfe.pas',
  nfefiscal.nfe.configuracao in '..\nfe\src\nfefiscal.nfe.configuracao.pas',
  nfefiscal.nfe.ide in '..\nfe\src\nfefiscal.nfe.ide.pas';

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
