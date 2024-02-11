object FrmProdutos: TFrmProdutos
  Left = 233
  Top = 166
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 545
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 50
    Width = 52
    Height = 13
    Caption = 'Refer'#234'ncia'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 305
    Top = 50
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label3: TLabel
    Left = 481
    Top = 50
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label6: TLabel
    Left = 8
    Top = 90
    Width = 55
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 152
    Top = 90
    Width = 73
    Height = 13
    Caption = 'Valor de Venda'
    FocusControl = DBEdit7
  end
  object Label4: TLabel
    Left = 480
    Top = 90
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 152
    Top = 50
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object DBText1: TDBText
    Left = 305
    Top = 68
    Width = 161
    Height = 13
    DataField = 'NOME_PRODUTO'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 273
    Top = 90
    Width = 33
    Height = 13
    Caption = 'Est. M.'
    FocusControl = DBEdit6
  end
  object Label13: TLabel
    Left = 328
    Top = 90
    Width = 110
    Height = 13
    Caption = 'Valor Total em Estoque'
    FocusControl = DBEdit3
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE PRODUTOS'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Panel2: TPanel
    Left = 8
    Top = 133
    Width = 777
    Height = 45
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 8
    object SbExcluir: TBitBtn
      Left = 148
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbExcluirClick
    end
    object SbCancelar: TBitBtn
      Left = 218
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = SbCancelarClick
    end
    object SbNovo: TBitBtn
      Left = 8
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = 'No&vo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbNovoClick
    end
    object SbAnterior: TBitBtn
      Left = 308
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = 'An&terior'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbAnteriorClick
    end
    object SbProximo: TBitBtn
      Left = 378
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = 'P&r'#243'ximo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = SbProximoClick
      Layout = blGlyphRight
    end
    object SbAtualiza: TBitBtn
      Left = 469
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = 'Atualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = SbAtualizaClick
    end
    object SbSalvar: TBitBtn
      Left = 78
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbSalvarClick
    end
    object SbFecha: TBitBtn
      Left = 699
      Top = 8
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 8
      OnClick = SbFechaClick
    end
    object BtnOpcoes: TBitBtn
      Left = 539
      Top = 8
      Width = 119
      Height = 30
      Cursor = crHandPoint
      Caption = '&Op'#231#245'es >>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnOpcoesClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 64
    Width = 134
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'COD_PROD'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 104
    Width = 134
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'QUANTIDADE_ESTOQUE'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 152
    Top = 104
    Width = 111
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'VALOR_UNITARIO'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 480
    Top = 104
    Width = 304
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'NOME_FORNECEDOR'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object ComboBox1: TComboBox
    Left = 152
    Top = 64
    Width = 145
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    Text = 'SELECIONE>>>>>>>>>>'
    OnChange = ComboBox1Change
    OnExit = ComboBox1Exit
    OnKeyPress = ComboBox1KeyPress
    Items.Strings = (
      '1-ARMA'#199#195'O'
      '2-LENTE'
      '3-JOIA'
      '4-REL'#211'GIO'
      '5-'#211'CULOS SPORT'
      '6-REL'#211'GIO DE PADERE'
      '7-DIVERSO')
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 209
    Width = 777
    Height = 64
    Caption = 'Imprimir Etiqueta(s) por refer'#234'ncia'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 9
    object Label9: TLabel
      Left = 264
      Top = 26
      Width = 11
      Height = 20
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 26
      Width = 29
      Height = 20
      Caption = 'De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnImprimirEtiqueta: TBitBtn
      Left = 648
      Top = 22
      Width = 119
      Height = 30
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnImprimirEtiquetaClick
    end
    object ComboBox_Valor1: TComboBox
      Left = 50
      Top = 25
      Width = 207
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      MaxLength = 13
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ComboBox_Valor1KeyPress
    end
    object ComboBox_Valor2: TComboBox
      Left = 279
      Top = 25
      Width = 207
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      MaxLength = 13
      ParentFont = False
      TabOrder = 1
      OnKeyPress = ComboBox_Valor2KeyPress
    end
    object CheckBox_ValorUnitario: TCheckBox
      Left = 496
      Top = 29
      Width = 137
      Height = 17
      Caption = 'Imprimir Valor de venda'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 280
    Width = 777
    Height = 241
    Caption = 'Consulta de Produtos em Estoque'
    TabOrder = 10
    object Label11: TLabel
      Left = 200
      Top = 18
      Width = 94
      Height = 13
      Caption = 'Informe o grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_EstoqueTotal: TLabel
      Left = 8
      Top = 210
      Width = 73
      Height = 20
      Caption = 'Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 264
      Top = 210
      Width = 46
      Height = 20
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 18
      Width = 123
      Height = 13
      Caption = 'Localizar no estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelEst: TLabel
      Left = 83
      Top = 213
      Width = 7
      Height = 16
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelEstTotal: TLabel
      Left = 312
      Top = 213
      Width = 45
      Height = 16
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 64
      Width = 764
      Height = 137
      DataSource = Ds_Pesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      OnKeyUp = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PROD'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Grupo/Produto'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE_ESTOQUE'
          Title.Caption = 'Quant. Estoque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Width = 114
          Visible = True
        end>
    end
    object Btn_EstoqueTotal: TBitBtn
      Left = 352
      Top = 26
      Width = 119
      Height = 27
      Cursor = crHandPoint
      Caption = 'Informar Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_EstoqueTotalClick
    end
    object BitBtn1: TBitBtn
      Left = 648
      Top = 207
      Width = 119
      Height = 27
      Cursor = crHandPoint
      Caption = 'Imprimir Relat'#243'rio'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object Edit1: TComboBox
      Left = 200
      Top = 32
      Width = 145
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnExit = ComboBox1Exit
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'ARMA'#199#195'O'
        'LENTE'
        'JOIA'
        'REL'#211'GIO'
        #211'CULOS SPORT'
        'REL'#211'GIO DE PADERE'
        'DIVERSO')
    end
    object Edit2: TMaskEdit
      Left = 16
      Top = 32
      Width = 177
      Height = 21
      Hint = 'Informe um c'#243'digo e pressione "Enter"  no teclado.'
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = MaskEdit1KeyPress
      OnKeyUp = Edit2KeyUp
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 526
    Width = 792
    Height = 19
    Panels = <>
  end
  object DBEdit2: TDBEdit
    Left = 273
    Top = 104
    Width = 45
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ESTOQUE_MINIMO'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 480
    Top = 64
    Width = 304
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 328
    Top = 104
    Width = 143
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'VALOR_TOTAL'
    DataSource = Dm.Ds_ESTOQUE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_ESTOQUE
    OnStateChange = DataSource1StateChange
    Left = 404
    Top = 56
  end
  object IBQueryCodigo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select COD_PROD from ESTOQUE'
      'order by COD_PROD')
    Left = 440
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 376
    Top = 56
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Fechar1Click
      end
    end
  end
  object IBQuery_EtiquetaProdutos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select COD_PROD, DESCRICAO, VALOR_UNITARIO from ESTOQUE'
      'order by COD_PROD')
    Left = 560
    Top = 232
    object IBQuery_EtiquetaProdutosCOD_PROD: TIBStringField
      FieldName = 'COD_PROD'
      Origin = '"PRODUTOS"."COD_PROD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object IBQuery_EtiquetaProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 45
    end
    object IBQuery_EtiquetaProdutosVALOR_UNITARIO: TIBBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = '"PRODUTOS"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_Pesquisa: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select COD_PROD, DESCRICAO, ESTOQUE_MINIMO,  VALOR_TOTAL, NOME_F' +
        'ORNECEDOR, NOME_PRODUTO, QUANTIDADE_ESTOQUE, VALOR_UNITARIO, '
      
        '(select SUM(QUANTIDADE_ESTOQUE) from ESTOQUE where NOME_PRODUTO ' +
        '= '#39'ARMA'#199#195'O'#39'),'
      
        '(select sum(VALOR_TOTAL) from ESTOQUE where NOME_PRODUTO = '#39'ARMA' +
        #199#195'O'#39')'
      'from ESTOQUE where NOME_PRODUTO = '#39'ARMA'#199#195'O'#39
      'order by NOME_PRODUTO')
    Left = 400
    Top = 376
    object IBQuery_PesquisaCOD_PROD: TIBStringField
      FieldName = 'COD_PROD'
      Origin = '"ESTOQUE"."COD_PROD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object IBQuery_PesquisaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ESTOQUE"."DESCRICAO"'
      Size = 45
    end
    object IBQuery_PesquisaESTOQUE_MINIMO: TIntegerField
      DefaultExpression = '##'
      FieldName = 'ESTOQUE_MINIMO'
      Origin = '"ESTOQUE"."ESTOQUE_MINIMO"'
    end
    object IBQuery_PesquisaVALOR_TOTAL: TIBBCDField
      DefaultExpression = '##'
      DisplayLabel = 'Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"ESTOQUE"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PesquisaNOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"ESTOQUE"."NOME_FORNECEDOR"'
      Size = 51
    end
    object IBQuery_PesquisaNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"ESTOQUE"."NOME_PRODUTO"'
      Size = 30
    end
    object IBQuery_PesquisaQUANTIDADE_ESTOQUE: TIntegerField
      DefaultExpression = '##'
      FieldName = 'QUANTIDADE_ESTOQUE'
      Origin = '"ESTOQUE"."QUANTIDADE_ESTOQUE"'
    end
    object IBQuery_PesquisaVALOR_UNITARIO: TIBBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = '"ESTOQUE"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PesquisaF_1: TLargeintField
      DefaultExpression = '##'
      FieldName = 'F_1'
    end
    object IBQuery_PesquisaF_2: TIBBCDField
      FieldName = 'F_2'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_Pesquisa: TDataSource
    DataSet = IBQuery_Pesquisa
    Left = 400
    Top = 409
  end
end
