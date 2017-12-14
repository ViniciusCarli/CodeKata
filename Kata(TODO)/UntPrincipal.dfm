object ListaForm: TListaForm
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 318
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
  object GridLista: TDBGrid
    Left = 9
    Top = 48
    Width = 561
    Height = 217
    DataSource = dsLista
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 271
    Width = 560
    Height = 25
    DataSource = dsLista
    TabOrder = 1
  end
  object dsLista: TDataSource
    Left = 592
    Top = 248
  end
end
