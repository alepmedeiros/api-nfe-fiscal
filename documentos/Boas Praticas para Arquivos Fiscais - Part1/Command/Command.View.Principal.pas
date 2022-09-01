unit Command.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Command.Model.Interfaces,
  Command.Model.NotaFiscal;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FNota : iNotaFiscal;
  public
    { Public declarations }
    procedure Exibir(Value : String);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FNota.EnviarNotaFiscal;
end;

procedure TForm2.Exibir(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FNota := TModelNotaFiscal.New.Display(Exibir);
end;

end.
