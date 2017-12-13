object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 194
  Width = 217
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Devart PostgreSQL'
    DriverName = 'DevartPostgreSQL'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=localhost:5432'
      'DataBase=Lista'
      'SchemaName=public'
      'DriverName=DevartPostgreSQL'
      'User_Name=postgres'
      'Password=123'
      'FetchAll=True'
      'UseQuoteChar=False'
      'EnableBCD=True'
      'IPVersion=IPv4'
      'UseUnicode=True'
      'Charset=')
    Left = 32
    Top = 8
  end
  object SqlLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from lista')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 64
    object SqlListaTarefa: TWideStringField
      FieldName = 'Tarefa'
      Size = 22
    end
    object SqlListaData: TDateField
      FieldName = 'Data'
    end
    object SqlListaPessoa: TWideStringField
      FieldName = 'Pessoa'
      Size = 15
    end
    object SqlListaStatus: TWideStringField
      FieldName = 'Status'
      Size = 9
    end
  end
  object DspLista: TDataSetProvider
    DataSet = SqlLista
    Left = 32
    Top = 128
  end
end
