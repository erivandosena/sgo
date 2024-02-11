object DmFluxo: TDmFluxo
  OldCreateOrder = False
  Left = 144
  Top = 259
  Height = 329
  Width = 642
  object IBTransaction: TIBTransaction
    DefaultDatabase = Dm.IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version')
    Left = 128
    Top = 8
  end
  object QueryApagar: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from ASAIDA'
      'order by data')
    Left = 40
    Top = 56
    object QueryApagarID: TIntegerField
      FieldName = 'ID'
      Origin = '"APAGAR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryApagarDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"APAGAR"."DATA"'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object QueryApagarHISTORICO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o do D'#233'bito'
      FieldName = 'HISTORICO'
      Origin = '"APAGAR"."HISTORICO"'
      Size = 50
    end
    object QueryApagarVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"APAGAR"."VALOR"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object QueryFluxo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from CAIXA (:dia1,:dia2)'
      'order by data,tipo')
    Left = 128
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dia2'
        ParamType = ptUnknown
      end>
    object QueryFluxoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CAIXA"."DATA"'
    end
    object QueryFluxoHISTORICO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o (Hist'#243'rico)'
      FieldName = 'HISTORICO'
      Origin = '"CAIXA"."HISTORICO"'
      Size = 50
    end
    object QueryFluxoNUMERO_CONTRATO: TIBStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CAIXA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object QueryFluxoNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CAIXA"."NUMERO_PARCELA"'
      Size = 5
    end
    object QueryFluxoND_SEU_NUMERO: TIBStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"CAIXA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object QueryFluxoNOSSO_NUMERO: TIBStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Origin = '"CAIXA"."NOSSO_NUMERO"'
      Size = 17
    end
    object QueryFluxoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CAIXA"."VALOR"'
      Precision = 18
      Size = 2
    end
    object QueryFluxoTIPO: TIBStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'TIPO'
      Origin = '"CAIXA"."TIPO"'
      Size = 7
    end
  end
  object Provider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 132
    Top = 117
  end
  object QueryAreceber: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from AENTRADA'
      'order by data')
    Left = 208
    Top = 56
    object QueryAreceberID: TIntegerField
      FieldName = 'ID'
      Origin = '"AENTRADA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryAreceberDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"AENTRADA"."DATA"'
      Required = True
    end
    object QueryAreceberHISTORICO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o do Cr'#233'dito'
      FieldName = 'HISTORICO'
      Origin = '"AENTRADA"."HISTORICO"'
      Size = 50
    end
    object QueryAreceberNUMERO_CONTRATO: TIBStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"AENTRADA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object QueryAreceberNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"AENTRADA"."NUMERO_PARCELA"'
      Size = 5
    end
    object QueryAreceberND_SEU_NUMERO: TIBStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"AENTRADA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object QueryAreceberNOSSO_NUMERO: TIBStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Origin = '"AENTRADA"."NOSSO_NUMERO"'
      Size = 17
    end
    object QueryAreceberVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"AENTRADA"."VALOR"'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object cdsAreceber: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'Provider'
    AfterInsert = cdsAreceberAfterInsert
    Left = 212
    Top = 169
    object cdsAreceberID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsAreceberDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object cdsAreceberHISTORICO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Cr'#233'dito'
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cdsAreceberVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsAreceberNUMERO_CONTRATO: TStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Size = 10
    end
    object cdsAreceberNUMERO_PARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Size = 5
    end
    object cdsAreceberND_SEU_NUMERO: TStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Size = 17
    end
    object cdsAreceberNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 17
    end
  end
  object cdsFluxo: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'Provider'
    ReadOnly = True
    Left = 128
    Top = 169
    object cdsFluxoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cdsFluxoHISTORICO: TStringField
      DisplayLabel = 'Descri'#231#227'o (Hist'#243'rico)'
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cdsFluxoVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsFluxoTIPO: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'TIPO'
      Size = 7
    end
    object cdsFluxoNUMERO_CONTRATO: TStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Size = 10
    end
    object cdsFluxoNUMERO_PARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Size = 5
    end
    object cdsFluxoND_SEU_NUMERO: TStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Size = 17
    end
    object cdsFluxoNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 17
    end
  end
  object cdsAPagar: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'Provider'
    AfterInsert = cdsAPagarAfterInsert
    Left = 36
    Top = 169
    object cdsAPagarID: TIntegerField
      FieldName = 'ID'
      Origin = '"APAGAR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object cdsAPagarDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 13
      FieldName = 'DATA'
      Origin = '"APAGAR"."DATA"'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsAPagarHISTORICO: TStringField
      DisplayLabel = 'Descri'#231#227'o do D'#233'bito'
      DisplayWidth = 82
      FieldName = 'HISTORICO'
      Origin = '"APAGAR"."HISTORICO"'
      FixedChar = True
      Size = 50
    end
    object cdsAPagarVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"APAGAR"."VALOR"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_IDAPagar: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (ID) from ASAIDA')
    Left = 40
    Top = 240
  end
  object DS: TDataSource
    Left = 132
    Top = 245
  end
  object IBQuery_IDAReceber: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (ID) from AENTRADA')
    Left = 216
    Top = 240
  end
  object DS_EstornoSaida: TDataSource
    DataSet = QueryApagar
    Left = 40
    Top = 112
  end
  object Query_BApagar: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from BSAIDA'
      'order by data')
    Left = 368
    Top = 56
    object Query_BApagarID: TIntegerField
      FieldName = 'ID'
      Origin = '"BSAIDA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_BApagarDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"BSAIDA"."DATA"'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object Query_BApagarHISTORICO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o do D'#233'bito'
      FieldName = 'HISTORICO'
      Origin = '"BSAIDA"."HISTORICO"'
      Size = 50
    end
    object Query_BApagarVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"BSAIDA"."VALOR"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Query_BFluxo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from BCAIXA (:dia1,:dia2)'
      'order by data,tipo')
    Left = 456
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dia2'
        ParamType = ptUnknown
      end>
    object Query_BFluxoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"BCAIXA"."DATA"'
    end
    object Query_BFluxoHISTORICO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o (Hist'#243'rico)'
      FieldName = 'HISTORICO'
      Origin = '"BCAIXA"."HISTORICO"'
      Size = 50
    end
    object Query_BFluxoNUMERO_CONTRATO: TIBStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"BCAIXA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object Query_BFluxoNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"BCAIXA"."NUMERO_PARCELA"'
      Size = 5
    end
    object Query_BFluxoND_SEU_NUMERO: TIBStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"BCAIXA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object Query_BFluxoNOSSO_NUMERO: TIBStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BCAIXA"."NOSSO_NUMERO"'
      Size = 17
    end
    object Query_BFluxoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"BCAIXA"."VALOR"'
      Precision = 18
      Size = 2
    end
    object Query_BFluxoTIPO: TIBStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'TIPO'
      Origin = '"BCAIXA"."TIPO"'
      Size = 7
    end
  end
  object BProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 460
    Top = 117
  end
  object Query_BAreceber: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from BENTRADA'
      'order by data')
    Left = 536
    Top = 56
    object Query_BAreceberID: TIntegerField
      FieldName = 'ID'
      Origin = '"BENTRADA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_BAreceberDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"BENTRADA"."DATA"'
      Required = True
    end
    object Query_BAreceberHISTORICO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o do Cr'#233'dito'
      FieldName = 'HISTORICO'
      Origin = '"BENTRADA"."HISTORICO"'
      Size = 50
    end
    object Query_BAreceberNUMERO_CONTRATO: TIBStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"BENTRADA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object Query_BAreceberNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"BENTRADA"."NUMERO_PARCELA"'
      Size = 5
    end
    object Query_BAreceberND_SEU_NUMERO: TIBStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"BENTRADA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object Query_BAreceberNOSSO_NUMERO: TIBStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BENTRADA"."NOSSO_NUMERO"'
      Size = 17
    end
    object Query_BAreceberVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"BENTRADA"."VALOR"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object cds_BAreceber: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'BProvider'
    AfterInsert = cds_BAreceberAfterInsert
    Left = 532
    Top = 169
    object cds_BAreceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds_BAreceberDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object cds_BAreceberHISTORICO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Cr'#233'dito'
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cds_BAreceberNUMERO_CONTRATO: TStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Size = 10
    end
    object cds_BAreceberNUMERO_PARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Size = 5
    end
    object cds_BAreceberND_SEU_NUMERO: TStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Size = 17
    end
    object cds_BAreceberNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 17
    end
    object cds_BAreceberVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object cds_BFluxo: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'BProvider'
    ReadOnly = True
    Left = 456
    Top = 169
    object cds_BFluxoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cds_BFluxoHISTORICO: TStringField
      DisplayLabel = 'Descri'#231#227'o (Hist'#243'rico)'
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cds_BFluxoVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cds_BFluxoTIPO: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'TIPO'
      Size = 7
    end
    object cds_BFluxoNUMERO_CONTRATO: TStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Size = 10
    end
    object cds_BFluxoNUMERO_PARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Size = 5
    end
    object cds_BFluxoND_SEU_NUMERO: TStringField
      DisplayLabel = 'N'#186' Doc/Seu N'#250'mero'
      FieldName = 'ND_SEU_NUMERO'
      Size = 17
    end
    object cds_BFluxoNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 17
    end
  end
  object cds_BAPagar: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'BProvider'
    AfterInsert = cds_BAPagarAfterInsert
    Left = 364
    Top = 169
    object cds_BAPagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds_BAPagarDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cds_BAPagarHISTORICO: TStringField
      DisplayLabel = 'Descri'#231#227'o do D'#233'bito'
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cds_BAPagarVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_IDAPagar_B: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (ID) from BSAIDA')
    Left = 368
    Top = 240
  end
  object DS_B: TDataSource
    Left = 460
    Top = 245
  end
  object IBQuery_IDAReceber_B: TIBQuery
    Database = Dm.IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (ID) from BENTRADA')
    Left = 544
    Top = 240
  end
  object DS_BEstornoSaida: TDataSource
    DataSet = Query_BApagar
    Left = 368
    Top = 112
  end
end
