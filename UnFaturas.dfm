object FrmFaturas: TFrmFaturas
  Left = 217
  Top = 135
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Faturas - Carn'#234
  ClientHeight = 296
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 18
    Width = 58
    Height = 16
    Caption = 'Contrato:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 49
    Width = 53
    Height = 16
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText: TLabel
    Left = 64
    Top = 48
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 18
    Width = 49
    Height = 16
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_Parcelas: TDBGrid
    Left = 8
    Top = 75
    Width = 777
    Height = 177
    BorderStyle = bsNone
    DataSource = Ds_Faturas
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_ParcelasCellClick
    OnKeyDown = DBGrid_ParcelasKeyDown
    OnKeyPress = DBGrid_ParcelasKeyPress
    OnKeyUp = DBGrid_ParcelasKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 70
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SITUACAO_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Title.Alignment = taCenter
        Title.Caption = 'Contrato'
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero do Documento'
        Width = 138
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pagamento'
        Width = 70
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor Pago'
        Width = 75
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'VALOR_PENDENTE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Restante'
        Width = 75
        Visible = True
      end>
  end
  object BtnFechar: TBitBtn
    Left = 408
    Top = 264
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BtnFecharClick
  end
  object Btn_ImprimeCarta: TBitBtn
    Left = 264
    Top = 264
    Width = 131
    Height = 25
    Cursor = crHandPoint
    Caption = 'Imprimir Carta'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_ImprimeCartaClick
  end
  object CBox_Contrato: TComboBox
    Left = 288
    Top = 15
    Width = 135
    Height = 23
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 15
    MaxLength = 16
    ParentFont = False
    TabOrder = 1
    OnKeyPress = CBox_ContratoKeyPress
  end
  object CBox_Codigo: TComboBox
    Left = 64
    Top = 15
    Width = 135
    Height = 23
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 15
    MaxLength = 16
    ParentFont = False
    TabOrder = 0
    OnKeyPress = CBox_CodigoKeyPress
  end
  object IBQuery_Faturas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE')
    Left = 144
    Top = 136
    object IBQuery_FaturasCOD_CARN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_FaturasNUMERO_DOC: TIBStringField
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_FaturasNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CARNE"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_FaturasNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_FaturasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 14
    end
    object IBQuery_FaturasDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_FaturasQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CARNE"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBQuery_FaturasNUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_FaturasSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_FaturasDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_FaturasVALOR_PARCELA: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'ACRESCIMO'
      Origin = '"CARNE"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'DESCONTO'
      Origin = '"CARNE"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasVALOR_APAGAR: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARNE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasVALOR_PAGO: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasVALOR_PENDENTE: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasTOTAL_PAGO: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_Faturas: TDataSource
    DataSet = IBQuery_Faturas
    Left = 176
    Top = 136
  end
  object IBQuery_Vendas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select CODIGO, NUMERO_CONTRATO, NOME_CLIENTE from VENDAS')
    Left = 64
    Top = 136
    object IBQuery_VendasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_VendasNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_VendasNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
  end
  object Ds_Vendas: TDataSource
    DataSet = IBQuery_Vendas
    Left = 64
    Top = 168
  end
end
