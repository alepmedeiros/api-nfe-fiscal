object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'NFe - Live'
  ClientHeight = 457
  ClientWidth = 909
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
    Left = 40
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 40
    Top = 103
    Width = 601
    Height = 233
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 121
    Top = 76
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'SimplesNacional'
    Items.Strings = (
      'SimplesNacional'
      'SimplesExcessoReceita '
      'RegimeNormal')
  end
end
