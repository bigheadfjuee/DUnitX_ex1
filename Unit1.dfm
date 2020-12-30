object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAdd: TLabel
    Left = 147
    Top = 29
    Width = 18
    Height = 13
    Caption = 'add'
  end
  object LabelResult: TLabel
    Left = 8
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object ButtonExcute: TButton
    Left = 336
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Excute'
    TabOrder = 0
    OnClick = ButtonExcuteClick
  end
  object EditNum1: TEdit
    Left = 8
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '5'
  end
  object EditNum2: TEdit
    Left = 184
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '3'
  end
  object EditResult: TEdit
    Left = 72
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Result'
  end
end
