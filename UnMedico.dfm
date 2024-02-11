object FrmMedico: TFrmMedico
  Left = 282
  Top = 123
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Oftalmologistas'
  ClientHeight = 351
  ClientWidth = 434
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
  object Bevel2: TBevel
    Left = 12
    Top = 53
    Width = 411
    Height = 92
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 28
    Top = 59
    Width = 150
    Height = 13
    Caption = 'Nome do M'#233'dico Oftalmologista'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 262
    Top = 59
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 12
    Top = 152
    Width = 80
    Height = 13
    Caption = 'Oftalmologista(s):'
  end
  object Label4: TLabel
    Left = 28
    Top = 99
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit3
  end
  object Panel1: TPanel
    Left = 12
    Top = 240
    Width = 411
    Height = 101
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object SbExcluir: TBitBtn
      Left = 210
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbExcluirClick
    end
    object SbCancelar: TBitBtn
      Left = 310
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = SbCancelarClick
    end
    object SbNova: TBitBtn
      Left = 10
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = 'No&vo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbNovaClick
    end
    object SbSalvar: TBitBtn
      Left = 110
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbSalvarClick
    end
    object SbAtualizar: TBitBtn
      Left = 10
      Top = 52
      Width = 190
      Height = 40
      Cursor = crHandPoint
      Caption = 'Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbAtualizarClick
    end
    object SpeedButton1: TBitBtn
      Left = 210
      Top = 52
      Width = 190
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
      OnClick = SpeedButton1Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 28
    Top = 74
    Width = 225
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'NOME_MEDICO'
    DataSource = Dm.Ds_MEDICO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 262
    Top = 74
    Width = 145
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'TELEFONE_MEDICO'
    DataSource = Dm.Ds_MEDICO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 168
    Width = 411
    Height = 62
    DataSource = Dm.Ds_MEDICO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOME_MEDICO'
        ReadOnly = True
        Width = 388
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE M'#201'DICO OFTALMOLOGISTA'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 28
    Top = 114
    Width = 380
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecLowerCase
    DataField = 'EMAIL_MEDIGO'
    DataSource = Dm.Ds_MEDICO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_MEDICO
    OnStateChange = DataSource1StateChange
    Left = 200
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object N2: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = SpeedButton1Click
      end
    end
  end
  object IBQueryMedico: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select NOME_MEDICO from MEDICO'
      'order by NOME_MEDICO')
    Left = 136
    Top = 88
  end
end
