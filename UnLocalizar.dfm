object FrmLocalizar: TFrmLocalizar
  Left = 195
  Top = 136
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Localizar'
  ClientHeight = 262
  ClientWidth = 692
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
  object DBGrid1: TDBGrid
    Left = 11
    Top = 95
    Width = 672
    Height = 154
    BorderStyle = bsNone
    Color = clWhite
    DataSource = DataSource1
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyDown
  end
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 684
    Height = 82
    TabOrder = 1
    object Label5: TLabel
      Left = 10
      Top = 32
      Width = 137
      Height = 13
      Caption = 'Informe o nome do(a) cliente:'
    end
    object Bevel2: TBevel
      Left = 566
      Top = 8
      Width = 2
      Height = 65
    end
    object Edit1: TMaskEdit
      Left = 10
      Top = 48
      Width = 540
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
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
      OnKeyUp = Edit1KeyUp
    end
    object RadioButton1: TRadioButton
      Left = 10
      Top = 9
      Width = 73
      Height = 17
      Caption = '&Nome'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
      OnKeyPress = RadioButton1KeyPress
    end
    object RadioButton2: TRadioButton
      Left = 352
      Top = 9
      Width = 49
      Height = 17
      Caption = '&CPF'
      TabOrder = 3
      OnClick = RadioButton2Click
      OnKeyPress = RadioButton2KeyPress
    end
    object RadioButton3: TRadioButton
      Left = 512
      Top = 9
      Width = 41
      Height = 17
      Caption = '&RG'
      TabOrder = 4
      OnClick = RadioButton3Click
      OnKeyPress = RadioButton3KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 589
      Top = 21
      Width = 70
      Height = 40
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
    object RadioButton5: TRadioButton
      Left = 169
      Top = 8
      Width = 56
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 2
      OnClick = RadioButton5Click
      OnKeyPress = RadioButton5KeyPress
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 267
    Width = 683
    Height = 85
    BevelOuter = bvNone
    Caption = 'CLIENTE COM CADASTRO NO S.P.C.'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -37
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object PanelSPC: TPanel
    Left = 5
    Top = 267
    Width = 683
    Height = 85
    BevelOuter = bvNone
    Caption = 'CLIENTE COM CADASTRO NO S.P.C.'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 192
    Top = 120
  end
  object IBQuery1: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select CODIGO, NOME, CPF, RG  from CLIENTES')
    Left = 224
    Top = 120
  end
  object MainMenu1: TMainMenu
    Left = 256
    Top = 120
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
  object DataSource2: TDataSource
    DataSet = Dm.IBDS_CLIENTES
    Left = 192
    Top = 152
  end
  object TimerSPC: TTimer
    Enabled = False
    Interval = 800
    OnTimer = TimerSPCTimer
    Left = 325
    Top = 219
  end
  object IBQuery_SPC: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select CODIGO, CPF, NOME, NUMERO_CONTRATO from SPC')
    Left = 244
    Top = 217
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
    Left = 276
    Top = 217
  end
end
