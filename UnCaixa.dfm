object FrmCaixa: TFrmCaixa
  Left = 366
  Top = 139
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Caixa - Valores em Real (R$)'
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
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 236
    Top = 112
    Width = 553
    Height = 28
  end
  object Label1: TLabel
    Left = 12
    Top = 11
    Width = 71
    Height = 13
    Caption = 'Contrato N'#186':'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 592
    Top = 11
    Width = 86
    Height = 13
    Caption = 'Data da Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 688
    Top = 86
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'CPF'
    DataSource = Dm.Ds_VENDAS
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label57: TLabel
    Left = 688
    Top = 70
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
  object DBText2: TDBText
    Left = 592
    Top = 86
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'CODIGO'
    DataSource = Dm.Ds_VENDAS
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label56: TLabel
    Left = 592
    Top = 70
    Width = 44
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label54: TLabel
    Left = 12
    Top = 58
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 240
    Top = 283
    Width = 85
    Height = 16
    Caption = 'Quantidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 592
    Top = 27
    Width = 80
    Height = 22
    AutoSize = True
    Color = clWhite
    DataField = 'DATA_VENDA'
    DataSource = Dm.Ds_VENDAS
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label9: TLabel
    Left = 12
    Top = 119
    Width = 47
    Height = 16
    Caption = 'Grupo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 248
    Top = 119
    Width = 94
    Height = 16
    Caption = 'Busca Direta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel
    Left = 228
    Top = 11
    Width = 59
    Height = 13
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label67: TLabel
    Left = 12
    Top = 283
    Width = 126
    Height = 16
    Caption = 'Valor do Iten: (R$)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 12
    Top = 322
    Width = 777
    Height = 129
    DataSource = DataSourceItemVenda
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PROD'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Contrato'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo/Produto'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o do Produto'
        Width = 276
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Unit'#225'rio'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Total'
        Width = 86
        Visible = True
      end>
  end
  object Panel_Fracao: TPanel
    Left = 16
    Top = 412
    Width = 761
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Visible = False
  end
  object ME_Cliente: TMaskEdit
    Left = 12
    Top = 72
    Width = 569
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentFont = False
    TabOrder = 2
    OnKeyPress = ME_ClienteKeyPress
  end
  object CBox_Confirma: TComboBox
    Left = 611
    Top = 272
    Width = 179
    Height = 40
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 32
    ParentFont = False
    TabOrder = 10
    OnChange = CBox_ConfirmaChange
    OnKeyPress = CBox_ConfirmaKeyPress
    Items.Strings = (
      'ADICIONAR'
      'REMOVER'
      'ENCERRAR')
  end
  object MaskEdit_VI: TMaskEdit
    Left = 136
    Top = 278
    Width = 101
    Height = 28
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnKeyPress = MaskEdit_VIKeyPress
  end
  object ComboBoxGrupo: TComboBox
    Left = 56
    Top = 116
    Width = 157
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
    ParentFont = False
    TabOrder = 3
    Text = '<<<<<< TODOS >>>>>>'
    OnExit = ComboBoxGrupoExit
    OnKeyPress = ComboBoxGrupoKeyPress
    Items.Strings = (
      '1-ARMA'#199#195'O'
      '2-LENTE'
      '3-JOIA'
      '4-REL'#211'GIO'
      '5-'#211'CULOS SPORT'
      '6-REL'#211'GIO DE PADERE'
      '7-DIVERSO')
  end
  object DBEdit1: TDBEdit
    Left = 12
    Top = 25
    Width = 205
    Height = 26
    AutoSize = False
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'NUMERO_CONTRATO'
    DataSource = Dm.Ds_VENDAS
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 149
    Width = 777
    Height = 113
    DataSource = DataSourceProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
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
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o do Produto'
        Width = 398
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Unit'#225'rio'
        Width = 89
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 12
    Top = 456
    Width = 777
    Height = 63
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 12
    object Label4: TLabel
      Left = 4
      Top = 7
      Width = 37
      Height = 16
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 110
      Top = 7
      Width = 49
      Height = 16
      Caption = 'Forma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 306
      Top = 7
      Width = 54
      Height = 16
      Caption = 'Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 365
      Top = 7
      Width = 51
      Height = 16
      Caption = 'Op'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SbSalvar: TBitBtn
      Left = 528
      Top = 8
      Width = 246
      Height = 47
      Cursor = crHandPoint
      Caption = 'Con&firmar Venda'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbSalvarClick
    end
    object ComboBoxTipo: TComboBox
      Left = 4
      Top = 26
      Width = 103
      Height = 28
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      OnChange = ComboBoxTipoChange
      OnExit = ComboBoxTipoExit
      OnKeyPress = ComboBoxTipoKeyPress
      Items.Strings = (
        #193' VISTA'
        'A PRAZO')
    end
    object ComboBoxForma: TComboBox
      Left = 110
      Top = 26
      Width = 193
      Height = 28
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 20
      ParentFont = False
      TabOrder = 1
      OnChange = ComboBoxFormaChange
      OnKeyPress = ComboBoxFormaKeyPress
    end
    object ComboBoxNP: TComboBox
      Left = 306
      Top = 26
      Width = 55
      Height = 28
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 20
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      OnChange = ComboBoxNPChange
      OnExit = ComboBoxNPExit
      OnKeyPress = ComboBoxNPKeyPress
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24')
    end
    object ComboBoxOpcaoVenda: TComboBox
      Left = 365
      Top = 26
      Width = 151
      Height = 28
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 20
      ParentFont = False
      TabOrder = 3
      OnChange = ComboBoxOpcaoVendaChange
      OnKeyPress = ComboBoxOpcaoVendaKeyPress
      Items.Strings = (
        'COM ENTRADA'
        'SEM ENTRADA')
    end
  end
  object CBox_Quantidade: TComboBox
    Left = 328
    Top = 278
    Width = 65
    Height = 28
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 20
    ParentFont = False
    TabOrder = 8
    OnKeyPress = CBox_QuantidadeKeyPress
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object BtnCI: TBitBtn
    Left = 402
    Top = 272
    Width = 201
    Height = 40
    Caption = 'Confirmar '#205'tem'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BtnCIClick
  end
  object Edit1: TMaskEdit
    Left = 450
    Top = 116
    Width = 135
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentFont = False
    TabOrder = 5
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object ComboBox4: TComboBox
    Left = 344
    Top = 116
    Width = 97
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    ItemHeight = 13
    TabOrder = 4
    Text = 'Por Refer'#234'ncia'
    OnChange = ComboBox4Change
    OnKeyPress = ComboBox4KeyPress
    Items.Strings = (
      'Por Refer'#234'ncia'
      'Por Descri'#231#227'o')
  end
  object DBCBox_Vendedor: TDBComboBox
    Left = 228
    Top = 25
    Width = 353
    Height = 26
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    CharCase = ecUpperCase
    DataField = 'NOME_VENDEDOR'
    DataSource = Dm.Ds_VENDAS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 18
    ParentFont = False
    TabOrder = 1
    OnKeyPress = DBCBox_VendedorKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 482
    Width = 792
    Height = 63
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = cl3DLight
    TabOrder = 15
    object ComboBoxOpcao: TComboBox
      Left = 327
      Top = 16
      Width = 138
      Height = 32
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 24
      ParentFont = False
      TabOrder = 0
      OnChange = ComboBoxOpcaoChange
      OnKeyPress = ComboBoxOpcaoKeyPress
      Items.Strings = (
        'VENDA'
        'ENTRADA'
        'SA'#205'DA'
        'OUTRAS E.')
    end
    object SbNovo: TBitBtn
      Left = 8
      Top = 16
      Width = 300
      Height = 33
      Cursor = crHandPoint
      Caption = 'No&vo Lan'#231'amento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbNovoClick
    end
    object SbFecha: TBitBtn
      Left = 485
      Top = 16
      Width = 300
      Height = 33
      Cursor = crHandPoint
      Caption = 'Fec&har'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbFechaClick
      NumGlyphs = 2
    end
  end
  object Panel_CaixaLivre1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 482
    Align = alClient
    BevelOuter = bvNone
    Caption = 'CAIXA LIVRE'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -96
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 14
    object Label74: TLabel
      Left = 255
      Top = -40
      Width = 269
      Height = 282
      Caption = '01'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -200
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 72
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = SbFechaClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Localizar1: TMenuItem
        Caption = 'Localizar'
        ShortCut = 120
        OnClick = Localizar1Click
      end
      object AdicionarProduto1: TMenuItem
        Caption = 'Adicionar Produto'
        ShortCut = 114
      end
      object RemoverProduto1: TMenuItem
        Caption = 'Remover Produto'
        ShortCut = 115
      end
    end
  end
  object IBQuery_Produtos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTI' +
        'DADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE'
      'order by COD_PROD')
    Left = 16
    Top = 184
    object IBQuery_ProdutosCOD_PROD: TIBStringField
      FieldName = 'COD_PROD'
      Origin = '"PRODUTOS"."COD_PROD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object IBQuery_ProdutosNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"PRODUTOS"."NOME_PRODUTO"'
      Size = 30
    end
    object IBQuery_ProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 45
    end
    object IBQuery_ProdutosVALOR_UNITARIO: TIBBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR_UNITARIO'
      Origin = '"PRODUTOS"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ProdutosQUANTIDADE_ESTOQUE: TIntegerField
      FieldName = 'QUANTIDADE_ESTOQUE'
      Origin = '"PRODUTOS"."QUANTIDADE_ESTOQUE"'
      Visible = False
    end
    object IBQuery_ProdutosESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MINIMO"'
      Visible = False
    end
  end
  object DataSourceProdutos: TDataSource
    DataSet = IBQuery_Produtos
    Left = 16
    Top = 216
  end
  object IBQuery_ItemVenda: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANT' +
        'IDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM')
    Left = 16
    Top = 344
    object IBQuery_ItemVendaCOD_PROD: TIBStringField
      DisplayWidth = 11
      FieldName = 'COD_PROD'
      Origin = '"ITEM"."COD_PROD"'
      Required = True
      Size = 13
    end
    object IBQuery_ItemVendaNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayWidth = 16
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"ITEM"."NUMERO_CONTRATO"'
      Required = True
      Size = 10
    end
    object IBQuery_ItemVendaNOME_PRODUTO: TIBStringField
      DisplayWidth = 23
      FieldName = 'NOME_PRODUTO'
      Origin = '"ITEM"."NOME_PRODUTO"'
      Size = 30
    end
    object IBQuery_ItemVendaDESCRICAO: TIBStringField
      DisplayWidth = 45
      FieldName = 'DESCRICAO'
      Origin = '"ITEM"."DESCRICAO"'
      Size = 45
    end
    object IBQuery_ItemVendaQUANTIDADE: TIntegerField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'QUANTIDADE'
      Origin = '"ITEM"."QUANTIDADE"'
    end
    object IBQuery_ItemVendaVALOR_UNITARIO: TIBBCDField
      Alignment = taLeftJustify
      DisplayWidth = 19
      FieldName = 'VALOR_UNITARIO'
      Origin = '"ITEM"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ItemVendaVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"ITEM"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DataSourceItemVenda: TDataSource
    DataSet = IBQuery_ItemVenda
    Left = 16
    Top = 376
  end
  object IBQuery_VE: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select FORMA_VENDA, NOME_CLIENTE, CODIGO, NUMERO_CONTRATO, TIPO_' +
        'VENDA,  DESCONTO, SUB_TOTAL, VALOR_TOTAL, NOME_MEDICO, NOME_VEND' +
        'EDOR, ACRESCIMO from VENDAS')
    Left = 16
    Top = 408
    object IBQuery_VEFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_VENOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_VECODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_VENUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_VETIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_VEDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_VESUB_TOTAL: TIBBCDField
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBQuery_VEVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBQuery_VENOME_MEDICO: TIBStringField
      FieldName = 'NOME_MEDICO'
      Origin = '"VENDAS"."NOME_MEDICO"'
      Size = 25
    end
    object IBQuery_VENOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_VEACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
  end
  object IBQueryVenda: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select COD_PROD, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE'
      'order by COD_PROD'
      ''
      'select * from VENDAS'
      ''
      'select * from ITEM'
      ''
      'select sum (VALOR_TOTAL) from ITEM'
      ''
      'select CODIGO, NUMERO_CONTRATO from VENDAS'
      ''
      ''
      '')
    Left = 16
    Top = 280
  end
end
