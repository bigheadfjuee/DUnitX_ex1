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
  object LabelAnd: TLabel
    Left = 147
    Top = 29
    Width = 18
    Height = 13
    Caption = 'and'
  end
  object LabelResult: TLabel
    Left = 8
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object ButtonMyAdd: TButton
    Left = 336
    Top = 24
    Width = 75
    Height = 25
    Caption = 'MyAdd'
    TabOrder = 0
    OnClick = ButtonMyAddClick
  end
  object EditValue1: TEdit
    Left = 8
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '5'
  end
  object EditValue2: TEdit
    Left = 184
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '3'
  end
  object EditResult: TEdit
    Left = 72
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Result'
  end
  object ButtonMySub: TButton
    Left = 336
    Top = 55
    Width = 75
    Height = 25
    Caption = 'MySub'
    TabOrder = 4
    OnClick = ButtonMySubClick
  end
end
