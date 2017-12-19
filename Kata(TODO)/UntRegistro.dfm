object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Tarefa'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Pessoa'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Status'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 290
    Height = 21
    DataField = 'Tarefa'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 134
    Height = 21
    DataField = 'Data'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 199
    Height = 21
    DataField = 'Pessoa'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 199
    Height = 21
    DataField = 'Status'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    Left = 584
    Top = 112
  end
end
