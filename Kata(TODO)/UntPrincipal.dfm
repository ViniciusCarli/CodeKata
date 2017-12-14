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
    Width = 705
    Height = 281
    Caption = 'Panel1'
    TabOrder = 0
    object GridLista: TDBGrid
      Left = 16
      Top = 39
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
    object btnEditar: TButton
      Left = 583
      Top = 101
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = btnEditarClick
    end
    object btnAtualizar: TButton
      Left = 583
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 3
      OnClick = btnAtualizarClick
    end
    object GroupBox1: TGroupBox
      Left = 583
      Top = 132
      Width = 98
      Height = 124
      Caption = 'Status'
      TabOrder = 4
      object checkBoxAgendadas: TCheckBox
        Left = 3
        Top = 40
        Width = 78
        Height = 17
        Caption = 'Agendadas'
        TabOrder = 0
        OnClick = checkBoxAgendadasClick
      end
      object checkBoxFinalizadas: TCheckBox
        Left = 3
        Top = 63
        Width = 92
        Height = 17
        Caption = 'Finalizadas'
        TabOrder = 1
        OnClick = checkBoxFinalizadasClick
      end
      object checkBoxTodas: TCheckBox
        Left = 3
        Top = 17
        Width = 97
        Height = 17
        Caption = 'Todas'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = checkBoxTodasClick
      end
      object checkBoxAdiadas: TCheckBox
        Left = 3
        Top = 86
        Width = 97
        Height = 17
        Caption = 'Adiadas'
        TabOrder = 3
        OnClick = checkBoxAdiadasClick
      end
    end
  end
  object dsLista: TDataSource
    Left = 8
    Top = 280
  end
end
