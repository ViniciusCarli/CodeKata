object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
    Left = 104
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Tarefa'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 104
    Top = 64
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 104
    Top = 104
    Width = 34
    Height = 13
    Caption = 'Pessoa'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 104
    Top = 144
    Width = 31
    Height = 13
    Caption = 'Status'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 40
    Width = 290
    Height = 21
    DataField = 'Tarefa'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 80
    Width = 134
    Height = 21
    DataField = 'Data'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 120
    Width = 199
    Height = 21
    DataField = 'Pessoa'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 104
    Top = 160
    Width = 199
    Height = 21
    DataField = 'Status'
    DataSource = DataSource1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 512
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 528
    Top = 136
  end
  object CdsLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLista'
    Left = 24
    Top = 40
    object CdsListaTarefa: TWideStringField
      FieldName = 'Tarefa'
      Size = 22
    end
    object CdsListaData: TDateField
      FieldName = 'Data'
    end
    object CdsListaPessoa: TWideStringField
      FieldName = 'Pessoa'
      Size = 15
    end
    object CdsListaStatus: TWideStringField
      DisplayWidth = 15
      FieldName = 'Status'
      Required = True
      Size = 15
    end
  end
end
