object DmCliente1: TDmCliente1
  OldCreateOrder = False
  Height = 135
  Width = 120
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
