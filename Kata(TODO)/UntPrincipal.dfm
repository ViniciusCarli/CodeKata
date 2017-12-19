object ListaForm: TListaForm
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 400
  ClientWidth = 705
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
    Left = 8
    Top = 8
    Width = 689
    Height = 313
    Caption = 'Panel1'
    TabOrder = 0
    object GridLista: TDBGrid
      Left = 16
      Top = 41
      Width = 561
      Height = 217
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btnSalvar: TButton
      Left = 583
      Top = 41
      Width = 82
      Height = 25
      Caption = 'Salvar '#55358#56658
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnAdicionar: TButton
      Left = 583
      Top = 99
      Width = 82
      Height = 25
      Caption = 'Adicionar '#55358#56658
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
    object btnAtualizar: TButton
      Left = 583
      Top = 70
      Width = 82
      Height = 25
      Caption = 'Atualizar '#55358#56658
      TabOrder = 3
      OnClick = btnAtualizarClick
    end
    object GroupBox1: TGroupBox
      Left = 583
      Top = 157
      Width = 82
      Height = 101
      Caption = 'Status'
      TabOrder = 4
      object checkBoxAgendadas: TCheckBox
        Left = 5
        Top = 16
        Width = 75
        Height = 17
        Caption = 'Agendadas'
        TabOrder = 0
      end
      object checkBoxFinalizadas: TCheckBox
        Left = 5
        Top = 34
        Width = 69
        Height = 17
        Caption = 'Finalizadas'
        TabOrder = 1
      end
      object checkBoxAdiadas: TCheckBox
        Left = 5
        Top = 53
        Width = 61
        Height = 17
        Caption = 'Adiadas'
        TabOrder = 2
      end
      object Button1: TButton
        Left = 4
        Top = 71
        Width = 75
        Height = 25
        Caption = 'Pesquisar '#55358#56658
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object Button2: TButton
      Left = 512
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Button2 '#55358#56658
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object dsLista: TDataSource
    Left = 24
    Top = 272
  end
end
