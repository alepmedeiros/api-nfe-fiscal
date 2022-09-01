unit Workshop.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Workshop.Model.Fiscal.NFe.Componentes.Factory, Workshop.Model.Fiscal.Nfe;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  TModelFiscalNFe.New.Gerar;
end;

end.
