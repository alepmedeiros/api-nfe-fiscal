unit Workshop.View.Nfe2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Workshop.Controller.Nfe.Observer.Interfaces,
  Workshop.Controller.Nfe.Interfaces, Vcl.StdCtrls;

type
  TNFe2 = class(TForm)
    Label1: TLabel;
  private
    { Private declarations }
    FController : iControllerNFe;
    function Update (Value : String) : iObserverNfe;
  public
    { Public declarations }
    procedure Controller(Value : iControllerNFe);
  end;

var
  NFe2: TNFe2;

implementation

{$R *.dfm}

{ TNFe2 }

procedure TNFe2.Controller(Value: iControllerNFe);
begin
  FController := Value;
  //FController.Observer.AddObserver(Self);
end;

function TNFe2.Update(Value: String): iObserverNfe;
begin
  ShowMessage(Value);
  Label1.Caption := Value;
end;

end.
