unit Workshop.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Workshop.Controller.Nfe.Observer.Interfaces,
  Workshop.Controller.Nfe.Interfaces;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FController : iControllerNFe;
    procedure NotifyNFe(Value : String);
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Workshop.Controller.Nfe, Workshop.View.Nfe2;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  FController
    .Nfe
    .PrepararNota
      .RegimeTributario(ComboBox1.ItemIndex)
    .Gerar;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Nfe2.Controller(FController);
  NFe2.Show;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  FController := TControllerNFe
                  .New
                  .NotifyNFe(NotifyNFe);
end;

procedure TForm6.NotifyNFe(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

end.
