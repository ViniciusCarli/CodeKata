object ListaForm: TListaForm
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 407
  ClientWidth = 772
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
  object Panel1: TPanel
    Left = 32
    Top = 8
    Width = 689
    Height = 281
    Caption = 'Panel1'
    TabOrder = 0
    object GridLista: TDBGrid
      Left = 16
      Top = 41
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
    object btnSalvar: TButton
      Left = 583
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnAdicionar: TButton
      Left = 583
      Top = 91
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
    object btnAtualizar: TButton
      Left = 583
      Top = 65
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 3
      OnClick = btnAtualizarClick
    end
    object GroupBox1: TGroupBox
      Left = 583
      Top = 148
      Width = 98
      Height = 124
      Caption = 'Status'
      TabOrder = 4
      object checkBoxAgendadas: TCheckBox
        Left = 0
        Top = 16
        Width = 78
        Height = 17
        Caption = 'Agendadas'
        TabOrder = 0
      end
      object checkBoxFinalizadas: TCheckBox
        Left = 0
        Top = 39
        Width = 92
        Height = 17
        Caption = 'Finalizadas'
        TabOrder = 1
      end
      object checkBoxAdiadas: TCheckBox
        Left = 0
        Top = 62
        Width = 97
        Height = 17
        Caption = 'Adiadas'
        TabOrder = 2
      end
      object Button1: TButton
        Left = 0
        Top = 85
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  object dsLista: TDataSource
    Left = 32
    Top = 296
  end
end
