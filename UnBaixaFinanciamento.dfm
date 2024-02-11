object FrmBaixaFinanciamento: TFrmBaixaFinanciamento
  Left = 282
  Top = 235
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Baixas'
  ClientHeight = 414
  ClientWidth = 536
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
    Left = 8
    Top = 8
    Width = 49
    Height = 16
    Caption = 'Fatura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 186
    Top = 8
    Width = 63
    Height = 16
    Caption = 'Contrato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 56
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
  object CBox_Cliente: TDBText
    Left = 8
    Top = 72
    Width = 521
    Height = 30
    Color = clBtnFace
    DataField = 'NOME_CLIENTE'
    DataSource = Ds_Faturas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 8
    Top = 101
    Width = 87
    Height = 13
    Caption = 'Financiamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_Parcelas: TDBGrid
    Left = 8
    Top = 117
    Width = 521
    Height = 255
    BorderStyle = bsNone
    DataSource = Ds_Faturas
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyPress = DBGrid_ParcelasKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data de Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor da Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o Atual'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Contrato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero do Documento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Pagamento'
        Visible = False
      end>
  end
  object CBox_Fatura: TComboBox
    Left = 8
    Top = 24
    Width = 162
    Height = 30
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 22
    ParentFont = False
    TabOrder = 0
    OnKeyPress = CBox_FaturaKeyPress
    Items.Strings = (
      'CARN'#202)
  end
  object CBox_Contrato: TComboBox
    Left = 186
    Top = 24
    Width = 162
    Height = 30
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 22
    ParentFont = False
    TabOrder = 1
    OnKeyPress = CBox_ContratoKeyPress
  end
  object BtnFechar: TBitBtn
    Left = 416
    Top = 384
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
    TabOrder = 3
    OnClick = BtnFecharClick
  end
  object Btn_Baixa: TBitBtn
    Left = 40
    Top = 384
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Caption = 'Executar Baixa'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_BaixaClick
  end
  object IBQuery_Faturas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE'
      'where NUMERO_CONTRATO = '#39#39)
    Left = 184
    Top = 136
    object IBQuery_FaturasCOD_CARN: TIntegerField
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
    object IBQuery_FaturasACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CARNE"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CARNE"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturasVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
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
  end
  object Ds_Faturas: TDataSource
    DataSet = IBQuery_Faturas
    Left = 152
    Top = 136
  end
  object IBQuery_Vendas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from VENDAS')
    Left = 64
    Top = 136
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
  object IBQueryBaixa: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from VENDAS')
    Left = 192
    Top = 384
  end
end
