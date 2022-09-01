object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 38
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edtNumNota: TLabeledEdit
    Left = 16
    Top = 40
    Width = 97
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Numero da Nota'
    TabOrder = 1
  end
  object edtNumLote: TLabeledEdit
    Left = 119
    Top = 40
    Width = 97
    Height = 21
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = 'Numero do Lote'
    TabOrder = 2
  end
end
