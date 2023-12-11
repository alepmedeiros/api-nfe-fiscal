unit nfefiscal.test;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TNFeTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TNFeTest.Setup;
begin
end;

procedure TNFeTest.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TNFeTest);

end.
