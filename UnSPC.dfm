object FrmSPC: TFrmSPC
  Left = 257
  Top = 91
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Atualiza'#231#227'o de Contrato Enviado ao S.P.C.'
  ClientHeight = 423
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label52: TLabel
    Left = 8
    Top = 160
    Width = 133
    Height = 13
    Caption = 'Cadastrados no S.P.C.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label55: TLabel
    Left = 8
    Top = 376
    Width = 183
    Height = 13
    Caption = 'Demostrativo da(s) Fatura(s) de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 104
    Width = 67
    Height = 13
    Caption = 'Contrato(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGridSPC: TDBGrid
    Left = 8
    Top = 176
    Width = 777
    Height = 193
    DataSource = DS_SPC
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGridSPCCellClick
    OnKeyDown = DBGridSPCKeyDown
    OnKeyPress = DBGridSPCKeyPress
    OnKeyUp = DBGridSPCKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 447
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 100
        Visible = True
      end>
  end
  object Btn_Incluir: TBitBtn
    Left = 208
    Top = 120
    Width = 425
    Height = 25
    Cursor = crHandPoint
    Caption = '<- Enviar Contrato para Inclus'#227'o ao S.P.C.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Btn_IncluirClick
  end
  object CBox_Contrato: TComboBox
    Left = 8
    Top = 120
    Width = 185
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    Style = csDropDownList
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 1
    OnKeyPress = CBox_ContratoKeyPress
  end
  object CBox_FaturaAtrasada: TComboBox
    Left = 8
    Top = 392
    Width = 777
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
    Text = 
      'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUA'#199#195'O PARCELA =-= PAG' +
      'AMENTO'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 777
    Height = 81
    Caption = 'Informe o Cliente:'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 28
      Height = 13
      Caption = 'CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 8
      Top = 60
      Width = 48
      Height = 15
      AutoSize = True
      DataField = 'CPF'
      DataSource = Ds_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 208
      Top = 58
      Width = 48
      Height = 15
      AutoSize = True
      DataField = 'CODIGO'
      DataSource = Ds_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 296
      Top = 58
      Width = 48
      Height = 15
      AutoSize = True
      DataField = 'NOME'
      DataSource = Ds_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ComboBox_NomeSPC: TComboBox
      Left = 208
      Top = 30
      Width = 561
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnKeyPress = ComboBox_NomeSPCKeyPress
      OnKeyUp = ComboBox_NomeSPCKeyUp
    end
    object MEdit_CPFSPC: TMaskEdit
      Left = 8
      Top = 30
      Width = 193
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkTile
      BorderStyle = bsNone
      EditMask = '999.999.999-99;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      TabOrder = 0
      Text = '   .   .   -  '
      OnKeyPress = MEdit_CPFSPCKeyPress
    end
  end
  object BitBtn2: TBitBtn
    Left = 694
    Top = 120
    Width = 90
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
    OnClick = BitBtn2Click
  end
  object Ds_Contratos: TDataSource
    DataSet = IBQuery_Contratos
    Left = 148
    Top = 97
  end
  object IBQuery_Contratos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      
        'select CODIGO, NOME_CLIENTE, CPF,  NUMERO_CONTRATO, FORMA_VENDA ' +
        'from VENDAS')
    Left = 116
    Top = 97
    object IBQuery_ContratosNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_ContratosNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_ContratosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_ContratosFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_ContratosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VENDAS"."CPF"'
      Size = 15
    end
  end
  object IBQuery_SPC: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select * from SPC')
    Left = 332
    Top = 241
    object IBQuery_SPCCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'CODIGO'
      Origin = '"SPC"."CODIGO"'
      Size = 14
    end
    object IBQuery_SPCNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"SPC"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_SPCNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SPC"."NOME"'
      Size = 51
    end
    object IBQuery_SPCCPF: TIBStringField
      Alignment = taCenter
      FieldName = 'CPF'
      Origin = '"SPC"."CPF"'
      Size = 15
    end
  end
  object DS_SPC: TDataSource
    DataSet = IBQuery_SPC
    Left = 364
    Top = 241
  end
  object IBQuery_Clientes: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select CODIGO, NOME, NUMERO_CONTRATO, CPF from CLIENTES')
    Left = 476
    Top = 41
    object IBQuery_ClientesCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 14
    end
    object IBQuery_ClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 51
    end
    object IBQuery_ClientesNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CLIENTES"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_ClientesCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 15
    end
  end
  object Ds_Clientes: TDataSource
    DataSet = IBQuery_Clientes
    Left = 508
    Top = 41
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_SPC
    Left = 248
    Top = 128
  end
  object IBQueryCodigo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select CODIGO, NUMERO_CONTRATO, NOME from SPC'
      'order by NUMERO_CONTRATO')
    Left = 288
    Top = 128
  end
  object IBQuery_FaturaAtrasada: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select * from CARNE')
    Left = 352
    Top = 152
    object IBQuery_FaturaAtrasadaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 14
    end
    object IBQuery_FaturaAtrasadaNUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_FaturaAtrasadaDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_FaturaAtrasadaVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturaAtrasadaSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_FaturaAtrasadaDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
  end
end
