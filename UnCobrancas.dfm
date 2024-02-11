object FrmCobrancas: TFrmCobrancas
  Left = 414
  Top = 328
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cobran'#231'as - Carn'#234
  ClientHeight = 422
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 392
    Width = 777
    Height = 22
  end
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 83
    Height = 16
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 101
    Top = 4
    Width = 76
    Height = 16
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 58
    Height = 13
    Caption = 'Cliente(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 352
    Top = 56
    Width = 149
    Height = 13
    Caption = 'Mensalidade(s) em atraso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 394
    Width = 113
    Height = 16
    Caption = 'Mensalidade(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 469
    Top = 395
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'F_1'
    DataSource = Ds_Parcelas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 589
    Top = 395
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'F_2'
    DataSource = Ds_Parcelas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 544
    Top = 394
    Width = 41
    Height = 16
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 194
    Top = 4
    Width = 55
    Height = 16
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_Venc: TLabel
    Left = 16
    Top = 395
    Width = 153
    Height = 16
    Caption = 'Total de Vencimentos: 0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Btn_Exibir: TBitBtn
    Left = 424
    Top = 17
    Width = 193
    Height = 25
    Cursor = crHandPoint
    Caption = 'Exibir o &Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_ExibirClick
    NumGlyphs = 4
  end
  object Btn_Imprimir: TBitBtn
    Left = 630
    Top = 17
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_ImprimirClick
    NumGlyphs = 4
  end
  object Btn_Fechar: TBitBtn
    Left = 709
    Top = 17
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object DBGrid_Clientes: TDBGrid
    Left = 8
    Top = 72
    Width = 337
    Height = 313
    DataSource = Ds_Clientes
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_ClientesCellClick
    OnKeyDown = DBGrid_ClientesKeyDown
    OnKeyUp = DBGrid_ClientesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 318
        Visible = True
      end>
  end
  object DBGrid_Parcelas: TDBGrid
    Left = 352
    Top = 72
    Width = 433
    Height = 313
    DataSource = Ds_Parcelas
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_PARCELA'
        Width = 80
        Visible = True
      end>
  end
  object MEdit_Cidade: TComboBox
    Left = 194
    Top = 20
    Width = 213
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    OnKeyPress = MEdit_CidadeKeyPress
  end
  object Data1: TDateTimePicker
    Left = 8
    Top = 20
    Width = 85
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BevelWidth = 0
    Date = 38188.732800115740000000
    Time = 38188.732800115740000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Data1Change
  end
  object Data2: TDateTimePicker
    Left = 101
    Top = 20
    Width = 85
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BevelWidth = 0
    Date = 38188.732803240740000000
    Time = 38188.732803240740000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = Data2Change
  end
  object IBQuery_Clientes: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select distinct CODIGO, NOME from CLIENTES C'
      
        'where not exists ( select CODIGO, NOME_CLIENTE from CARNE where ' +
        'CODIGO <> C.CODIGO)'
      'order by CODIGO,NOME')
    Left = 296
    Top = 144
    object IBQuery_ClientesCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 14
    end
    object IBQuery_ClientesNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 51
    end
  end
  object Ds_Clientes: TDataSource
    DataSet = IBQuery_Clientes
    Left = 296
    Top = 184
  end
  object IBQuery_Parcelas: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, N' +
        'UMERO_DOC, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VAL' +
        'OR_PARCELA, VALOR_PENDENTE,'
      '(select count (NUMERO_CONTRATO) from CARNE'
      
        'where DATA_VENCIMENTO >= '#39'11/11/11'#39' and DATA_VENCIMENTO <= '#39'11/1' +
        '1/11'#39'),'
      '(select sum (VALOR_PARCELA) from CARNE'
      
        'where DATA_VENCIMENTO >= '#39'11/11/11'#39' and DATA_VENCIMENTO <= '#39'11/1' +
        '1/11'#39')'
      'from CARNE'
      
        'where DATA_VENCIMENTO >= '#39'11/11/11'#39' and DATA_VENCIMENTO <= '#39'11/1' +
        '1/11'#39)
    Left = 368
    Top = 144
    object IBQuery_ParcelasCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 14
    end
    object IBQuery_ParcelasDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_ParcelasNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_ParcelasNUMERO_CONTRATO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CARNE"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_ParcelasNUMERO_DOC: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_ParcelasNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_ParcelasQUANT_PARCELAS: TIBStringField
      DisplayLabel = 'Quant. Parc.'
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CARNE"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBQuery_ParcelasSITUACAO_PARCELA: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_ParcelasVALOR_PARCELA: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ParcelasVALOR_PENDENTE: TIBBCDField
      DisplayLabel = 'Valor Pendente'
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ParcelasF_1: TIntegerField
      DefaultExpression = '##'
      FieldName = 'F_1'
    end
    object IBQuery_ParcelasF_2: TIBBCDField
      FieldName = 'F_2'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_Parcelas: TDataSource
    DataSet = IBQuery_Parcelas
    Left = 368
    Top = 184
  end
end
