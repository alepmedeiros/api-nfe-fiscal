unit Workshop.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Workshop.Model.Fiscal.Nfe.Interfaces;

type
  TForm6 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FNfe : iModelFiscalNfe;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Workshop.Model.Fiscal.Nfe.Componentes.ACBr,
  Workshop.Model.Fiscal.Nfe.Componentes.Interfaces,
  Workshop.Model.Fiscal.Nfe;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  FNfe.Gerar;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  FNfe := TModelFiscalNFe.New;
end;

end.
