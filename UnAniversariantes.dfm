object FrmAniversariantes: TFrmAniversariantes
  Left = 181
  Top = 87
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aniversariantes'
  ClientHeight = 425
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 359
    Width = 156
    Height = 41
    Caption = '&M'#234's Atual:'
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 14
      Width = 148
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'M'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 257
    Top = 359
    Width = 257
    Height = 41
    Caption = 'Exibir &Lista por M'#234's:'
    TabOrder = 0
    object ComboBox1: TComboBox
      Left = 112
      Top = 14
      Width = 89
      Height = 21
      AutoComplete = False
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      Text = 'JANEIRO'
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object RadioButton1: TRadioButton
      Left = 208
      Top = 16
      Width = 42
      Height = 17
      Caption = '&Hoje'
      TabOrder = 2
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 10
      Top = 16
      Width = 102
      Height = 17
      Caption = '&Selecione o M'#234's:'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = ComboBox1Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 170
    Top = 359
    Width = 79
    Height = 41
    Caption = '&Idade:'
    TabOrder = 2
    object Label2: TLabel
      Left = 5
      Top = 14
      Width = 68
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Idade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 406
    Width = 792
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 522
    Top = 364
    Width = 267
    Height = 37
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object SpeedButton1: TBitBtn
      Left = 176
      Top = 6
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SpeedButton1Click
      NumGlyphs = 4
    end
    object BtnImprimirCarta: TBitBtn
      Left = 10
      Top = 6
      Width = 119
      Height = 25
      Cursor = crHandPoint
      Caption = 'Im&primir Carta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnImprimirCartaClick
      NumGlyphs = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 13
    Width = 772
    Height = 337
    BorderStyle = bsNone
    Color = clWhite
    DataSource = Ds_Aniv
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Cliente'
        Width = 251
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASCIMENTO'
        Title.Caption = 'Data Nascimento'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_CLIENTE'
        Title.Caption = 'Endere'#231'o'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Title.Caption = 'N'#186' CPF'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE1'
        Title.Caption = 'Cidade'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_CLIENTE'
        Title.Caption = 'Telefone'
        Width = 90
        Visible = True
      end>
  end
  object Ds_Aniv: TDataSource
    DataSet = IBQuery1
    Left = 160
    Top = 208
  end
  object IBQuery1: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      
        'select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E' +
        '.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDER' +
        'ECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from ' +
        'CLIENTES C,EMPRESA E')
    Filtered = True
    Left = 160
    Top = 160
    object IBQuery1BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"EMPRESA"."BAIRRO"'
      Size = 30
    end
    object IBQuery1CEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"EMPRESA"."CEP"'
      Size = 10
    end
    object IBQuery1CIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"EMPRESA"."CIDADE"'
      Size = 25
    end
    object IBQuery1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EMPRESA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 18
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"EMPRESA"."EMAIL"'
      Size = 50
    end
    object IBQuery1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"EMPRESA"."ENDERECO"'
      Size = 50
    end
    object IBQuery1ESTADO_UF: TIBStringField
      FieldName = 'ESTADO_UF'
      Origin = '"EMPRESA"."ESTADO_UF"'
      Size = 25
    end
    object IBQuery1IE: TIBStringField
      FieldName = 'IE'
      Origin = '"EMPRESA"."IE"'
      Size = 11
    end
    object IBQuery1TELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"EMPRESA"."TELEFONE"'
      Size = 30
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 51
    end
    object IBQuery1DATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"CLIENTES"."DATA_NASCIMENTO"'
    end
    object IBQuery1ENDERECO_CLIENTE: TIBStringField
      FieldName = 'ENDERECO_CLIENTE'
      Origin = '"CLIENTES"."ENDERECO_CLIENTE"'
      Size = 50
    end
    object IBQuery1CPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      Size = 15
    end
    object IBQuery1CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 14
    end
    object IBQuery1CIDADE1: TIBStringField
      FieldName = 'CIDADE1'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 25
    end
    object IBQuery1TELEFONE_CLIENTE: TIBStringField
      FieldName = 'TELEFONE_CLIENTE'
      Origin = '"CLIENTES"."TELEFONE_CLIENTE"'
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 128
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 119
        OnClick = Fechar1Click
      end
    end
  end
end
