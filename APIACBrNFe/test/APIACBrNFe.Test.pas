unit APIACBrNFe.Test;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TAPIACBrNFeTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TAPIACBrNFeTest.Setup;
begin
end;

procedure TAPIACBrNFeTest.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TAPIACBrNFeTest);

end.
