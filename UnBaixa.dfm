object FrmBaixa: TFrmBaixa
  Left = 486
  Top = 312
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Baixa'
  ClientHeight = 414
  ClientWidth = 537
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 107
    Height = 16
    Caption = 'Tipo da Fatura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 168
    Width = 158
    Height = 13
    Caption = 'Parcelas do Financiamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    DataSource = Ds_Contratos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 277
    Width = 91
    Height = 13
    Caption = 'Itens da Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_Contratos: TDBGrid
    Left = 8
    Top = 108
    Width = 521
    Height = 54
    BorderStyle = bsNone
    DataSource = Ds_Contratos
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyPress = DBGrid_ContratosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Title.Alignment = taCenter
        Title.Caption = 'Contrato N'#186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_VENDA'
        Title.Caption = 'Tipo Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end>
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
    Left = 408
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
    TabOrder = 6
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
    TabOrder = 5
    OnClick = Btn_BaixaClick
  end
  object PageControl1: TPageControl
    Left = 276
    Top = 185
    Width = 254
    Height = 185
    ActivePage = TabSheet1
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'LONGE'
      object Bevel6: TBevel
        Left = 0
        Top = 83
        Width = 241
        Height = 37
      end
      object Label45: TLabel
        Left = 3
        Top = 0
        Width = 54
        Height = 13
        Caption = 'O.D. ESF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 63
        Top = 0
        Width = 20
        Height = 13
        Caption = 'CIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 123
        Top = 0
        Width = 30
        Height = 13
        Caption = 'EIXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 183
        Top = 0
        Width = 27
        Height = 13
        Caption = 'DNP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label49: TLabel
        Left = 3
        Top = 31
        Width = 53
        Height = 13
        Caption = 'O.E. ESF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 63
        Top = 31
        Width = 20
        Height = 13
        Caption = 'CIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label51: TLabel
        Left = 123
        Top = 31
        Width = 30
        Height = 13
        Caption = 'EIXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label52: TLabel
        Left = 183
        Top = 31
        Width = 27
        Height = 13
        Caption = 'DNP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label53: TLabel
        Left = 3
        Top = 121
        Width = 40
        Height = 13
        Caption = 'Adi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 123
        Top = 121
        Width = 26
        Height = 13
        Caption = 'D.P.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label58: TLabel
        Left = 123
        Top = 85
        Width = 26
        Height = 13
        Caption = 'O.E.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label59: TLabel
        Left = 3
        Top = 85
        Width = 27
        Height = 13
        Caption = 'O.D.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label60: TLabel
        Left = 63
        Top = 85
        Width = 39
        Height = 13
        Caption = 'Lentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label61: TLabel
        Left = 183
        Top = 85
        Width = 39
        Height = 13
        Caption = 'Lentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label62: TLabel
        Left = 95
        Top = 69
        Width = 50
        Height = 13
        Caption = 'ALTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object MaskEdit1: TDBEdit
        Left = 2
        Top = 13
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OD_ESF'
        DataSource = Ds_Contratos
        TabOrder = 0
      end
      object MaskEdit2: TDBEdit
        Left = 63
        Top = 13
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OD_CIL'
        DataSource = Ds_Contratos
        TabOrder = 1
      end
      object MaskEdit3: TDBEdit
        Left = 122
        Top = 13
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OD_EIXO'
        DataSource = Ds_Contratos
        TabOrder = 2
      end
      object MaskEdit4: TDBEdit
        Left = 183
        Top = 13
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OD_DNP'
        DataSource = Ds_Contratos
        TabOrder = 3
      end
      object MaskEdit15: TDBEdit
        Left = 3
        Top = 45
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OE_ESF'
        DataSource = Ds_Contratos
        TabOrder = 4
      end
      object MaskEdit16: TDBEdit
        Left = 63
        Top = 45
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OE_CIL'
        DataSource = Ds_Contratos
        TabOrder = 5
      end
      object MaskEdit17: TDBEdit
        Left = 123
        Top = 45
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OE_EIXO'
        DataSource = Ds_Contratos
        TabOrder = 6
      end
      object MaskEdit18: TDBEdit
        Left = 183
        Top = 45
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_OE_DNP'
        DataSource = Ds_Contratos
        TabOrder = 7
      end
      object MaskEdit19: TDBEdit
        Left = 3
        Top = 135
        Width = 115
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_ADICAO'
        DataSource = Ds_Contratos
        TabOrder = 12
      end
      object MaskEdit20: TDBEdit
        Left = 123
        Top = 135
        Width = 115
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_DP'
        DataSource = Ds_Contratos
        TabOrder = 13
      end
      object MaskEdit21: TDBEdit
        Left = 123
        Top = 99
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_ALTURA_OE'
        DataSource = Ds_Contratos
        TabOrder = 10
      end
      object MaskEdit22: TDBEdit
        Left = 3
        Top = 99
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_ALTURA_OD'
        DataSource = Ds_Contratos
        TabOrder = 8
      end
      object MaskEdit23: TDBEdit
        Left = 63
        Top = 99
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_ALTURA_OD_LENTES'
        DataSource = Ds_Contratos
        TabOrder = 9
      end
      object MaskEdit24: TDBEdit
        Left = 183
        Top = 99
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'LONGE_ALTURA_OE_LENTES'
        DataSource = Ds_Contratos
        TabOrder = 11
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'PERTO'
      ImageIndex = 1
      object Label33: TLabel
        Left = 3
        Top = 8
        Width = 54
        Height = 13
        Caption = 'O.D. ESF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 63
        Top = 8
        Width = 20
        Height = 13
        Caption = 'CIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 183
        Top = 8
        Width = 27
        Height = 13
        Caption = 'DNP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 123
        Top = 8
        Width = 30
        Height = 13
        Caption = 'EIXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 3
        Top = 40
        Width = 53
        Height = 13
        Caption = 'O.E. ESF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 63
        Top = 40
        Width = 20
        Height = 13
        Caption = 'CIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 123
        Top = 40
        Width = 30
        Height = 13
        Caption = 'EIXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 183
        Top = 40
        Width = 27
        Height = 13
        Caption = 'DNP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 3
        Top = 72
        Width = 26
        Height = 13
        Caption = 'D.P.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 123
        Top = 72
        Width = 39
        Height = 13
        Caption = 'Lentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label63: TLabel
        Left = 3
        Top = 112
        Width = 42
        Height = 13
        Caption = 'M'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MaskEdit8: TDBEdit
        Left = 3
        Top = 22
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OD_ESF'
        DataSource = Ds_Contratos
        TabOrder = 0
      end
      object MaskEdit5: TDBEdit
        Left = 63
        Top = 22
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OD_CIL'
        DataSource = Ds_Contratos
        TabOrder = 1
      end
      object MaskEdit6: TDBEdit
        Left = 183
        Top = 22
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OD_EIXO'
        DataSource = Ds_Contratos
        TabOrder = 3
      end
      object MaskEdit7: TDBEdit
        Left = 123
        Top = 22
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OD_EIXO'
        DataSource = Ds_Contratos
        TabOrder = 2
      end
      object MaskEdit9: TDBEdit
        Left = 3
        Top = 54
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OE_ESF'
        DataSource = Ds_Contratos
        TabOrder = 4
      end
      object MaskEdit10: TDBEdit
        Left = 63
        Top = 54
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OE_CIL'
        DataSource = Ds_Contratos
        TabOrder = 5
      end
      object MaskEdit11: TDBEdit
        Left = 123
        Top = 54
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OE_EIXO'
        DataSource = Ds_Contratos
        TabOrder = 6
      end
      object MaskEdit12: TDBEdit
        Left = 183
        Top = 54
        Width = 55
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_OE_DNP'
        DataSource = Ds_Contratos
        TabOrder = 7
      end
      object MaskEdit13: TDBEdit
        Left = 3
        Top = 86
        Width = 115
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_DP'
        DataSource = Ds_Contratos
        TabOrder = 8
      end
      object MaskEdit14: TDBEdit
        Left = 123
        Top = 86
        Width = 115
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'PERTO_LENTES'
        DataSource = Ds_Contratos
        TabOrder = 9
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 127
        Width = 235
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        BorderStyle = bsNone
        DataField = 'NOME_MEDICO'
        DataSource = Ds_Contratos
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'OBSERVA'#199#213'ES'
      ImageIndex = 2
      object Memo1: TDBMemo
        Left = 3
        Top = 0
        Width = 241
        Height = 155
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'OBS'
        DataSource = Ds_Contratos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
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
      'DINHEIRO'
      'CARN'#202
      'BOLETO'
      'CHEQUE'
      'CART'#195'O')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 183
    Width = 265
    Height = 88
    BorderStyle = bsNone
    DataSource = DS_TipoFatura
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Caption = 'Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Title.Caption = 'Valor Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTRATO'
        Title.Caption = 'Contrato N'#186
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Caption = 'Cliente'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'QUANT_PARCELAS'
        Title.Caption = 'Quantidade de Parcelas'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 292
    Width = 265
    Height = 77
    BorderStyle = bsNone
    DataSource = DS_Itens
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PROD'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Total'
        Visible = True
      end>
  end
  object IBQuery_Contratos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from VENDAS'
      'where NUMERO_CONTRATO = '#39#39)
    Left = 136
    Top = 256
    object IBQuery_ContratosCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"VENDAS"."COD_VEND"'
    end
    object IBQuery_ContratosNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_ContratosDATA_VENDA: TDateTimeField
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_ContratosNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_ContratosNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_ContratosNOME_MEDICO: TIBStringField
      FieldName = 'NOME_MEDICO'
      Origin = '"VENDAS"."NOME_MEDICO"'
      Size = 25
    end
    object IBQuery_ContratosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_ContratosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VENDAS"."CPF"'
      Size = 15
    end
    object IBQuery_ContratosTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_ContratosFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_ContratosSUB_TOTAL: TIBBCDField
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ContratosACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ContratosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ContratosVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ContratosARMACAO_COD: TIBStringField
      FieldName = 'ARMACAO_COD'
      Origin = '"VENDAS"."ARMACAO_COD"'
      Size = 14
    end
    object IBQuery_ContratosARMACAO_TAMANHO: TIBStringField
      FieldName = 'ARMACAO_TAMANHO'
      Origin = '"VENDAS"."ARMACAO_TAMANHO"'
      Size = 14
    end
    object IBQuery_ContratosARMACAO_COR: TIBStringField
      FieldName = 'ARMACAO_COR'
      Origin = '"VENDAS"."ARMACAO_COR"'
      Size = 14
    end
    object IBQuery_ContratosLONGE_OD_ESF: TIBStringField
      FieldName = 'LONGE_OD_ESF'
      Origin = '"VENDAS"."LONGE_OD_ESF"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OD_CIL: TIBStringField
      FieldName = 'LONGE_OD_CIL'
      Origin = '"VENDAS"."LONGE_OD_CIL"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OD_EIXO: TIBStringField
      FieldName = 'LONGE_OD_EIXO'
      Origin = '"VENDAS"."LONGE_OD_EIXO"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OD_DNP: TIBStringField
      FieldName = 'LONGE_OD_DNP'
      Origin = '"VENDAS"."LONGE_OD_DNP"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OE_ESF: TIBStringField
      FieldName = 'LONGE_OE_ESF'
      Origin = '"VENDAS"."LONGE_OE_ESF"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OE_CIL: TIBStringField
      FieldName = 'LONGE_OE_CIL'
      Origin = '"VENDAS"."LONGE_OE_CIL"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OE_EIXO: TIBStringField
      FieldName = 'LONGE_OE_EIXO'
      Origin = '"VENDAS"."LONGE_OE_EIXO"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_OE_DNP: TIBStringField
      FieldName = 'LONGE_OE_DNP'
      Origin = '"VENDAS"."LONGE_OE_DNP"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_ALTURA_OD: TIBStringField
      FieldName = 'LONGE_ALTURA_OD'
      Origin = '"VENDAS"."LONGE_ALTURA_OD"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_ALTURA_OD_LENTES: TIBStringField
      FieldName = 'LONGE_ALTURA_OD_LENTES'
      Origin = '"VENDAS"."LONGE_ALTURA_OD_LENTES"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_ALTURA_OE: TIBStringField
      FieldName = 'LONGE_ALTURA_OE'
      Origin = '"VENDAS"."LONGE_ALTURA_OE"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_ALTURA_OE_LENTES: TIBStringField
      FieldName = 'LONGE_ALTURA_OE_LENTES'
      Origin = '"VENDAS"."LONGE_ALTURA_OE_LENTES"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_ADICAO: TIBStringField
      FieldName = 'LONGE_ADICAO'
      Origin = '"VENDAS"."LONGE_ADICAO"'
      Size = 10
    end
    object IBQuery_ContratosLONGE_DP: TIBStringField
      FieldName = 'LONGE_DP'
      Origin = '"VENDAS"."LONGE_DP"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OD_ESF: TIBStringField
      FieldName = 'PERTO_OD_ESF'
      Origin = '"VENDAS"."PERTO_OD_ESF"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OD_CIL: TIBStringField
      FieldName = 'PERTO_OD_CIL'
      Origin = '"VENDAS"."PERTO_OD_CIL"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OD_EIXO: TIBStringField
      FieldName = 'PERTO_OD_EIXO'
      Origin = '"VENDAS"."PERTO_OD_EIXO"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OD_DNP: TIBStringField
      FieldName = 'PERTO_OD_DNP'
      Origin = '"VENDAS"."PERTO_OD_DNP"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OE_ESF: TIBStringField
      FieldName = 'PERTO_OE_ESF'
      Origin = '"VENDAS"."PERTO_OE_ESF"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OE_CIL: TIBStringField
      FieldName = 'PERTO_OE_CIL'
      Origin = '"VENDAS"."PERTO_OE_CIL"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OE_EIXO: TIBStringField
      FieldName = 'PERTO_OE_EIXO'
      Origin = '"VENDAS"."PERTO_OE_EIXO"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_OE_DNP: TIBStringField
      FieldName = 'PERTO_OE_DNP'
      Origin = '"VENDAS"."PERTO_OE_DNP"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_DP: TIBStringField
      FieldName = 'PERTO_DP'
      Origin = '"VENDAS"."PERTO_DP"'
      Size = 10
    end
    object IBQuery_ContratosPERTO_LENTES: TIBStringField
      FieldName = 'PERTO_LENTES'
      Origin = '"VENDAS"."PERTO_LENTES"'
      Size = 10
    end
    object IBQuery_ContratosOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"VENDAS"."OBS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery_ContratosOPCAO_VENDA: TIBStringField
      FieldName = 'OPCAO_VENDA'
      Origin = '"VENDAS"."OPCAO_VENDA"'
      Size = 11
    end
  end
  object Ds_Contratos: TDataSource
    DataSet = IBQuery_Contratos
    Left = 104
    Top = 256
  end
  object IBQuery_Vendas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from VENDAS'
      'where NUMERO_CONTRATO = '#39#39)
    Left = 160
    Top = 72
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
  object IBQuery_TipoFatura: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select NUMERO_PARCELA, VALOR_PARCELA, DATA_VENCIMENTO, NUMERO_CO' +
        'NTRATO, NOME_CLIENTE, QUANT_PARCELAS from CARNE'
      'where NUMERO_CONTRATO = '#39#39)
    Left = 176
    Top = 256
    object IBQuery_TipoFaturaNUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_TipoFaturaVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_TipoFaturaDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_TipoFaturaNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CARNE"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_TipoFaturaNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_TipoFaturaQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CARNE"."QUANT_PARCELAS"'
      Size = 5
    end
  end
  object DS_TipoFatura: TDataSource
    DataSet = IBQuery_TipoFatura
    Left = 212
    Top = 257
  end
  object IBQuery_Itens: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from ITEM '
      'where NUMERO_CONTRATO = '#39#39)
    Left = 176
    Top = 312
    object IBQuery_ItensCOD_PROD: TIBStringField
      FieldName = 'COD_PROD'
      Origin = '"ITEM"."COD_PROD"'
      Required = True
      Size = 14
    end
    object IBQuery_ItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ITEM"."DESCRICAO"'
      Size = 45
    end
    object IBQuery_ItensNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"ITEM"."NUMERO_CONTRATO"'
      Required = True
      Size = 10
    end
    object IBQuery_ItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"ITEM"."QUANTIDADE"'
    end
    object IBQuery_ItensVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"ITEM"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ItensVALOR_UNITARIO: TIBBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = '"ITEM"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Itens: TDataSource
    DataSet = IBQuery_Itens
    Left = 212
    Top = 313
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
