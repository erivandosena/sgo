object FrmFluxo: TFrmFluxo
  Left = 220
  Top = 268
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Fluxo de Caixa'
  ClientHeight = 545
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 456
    Width = 784
    Height = 85
  end
  object Label24: TLabel
    Left = 12
    Top = 485
    Width = 63
    Height = 22
    Caption = 'Carn'#234':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel
    Left = 12
    Top = 511
    Width = 67
    Height = 22
    Caption = 'Boleto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label26: TLabel
    Left = 196
    Top = 485
    Width = 79
    Height = 22
    Caption = 'Cheque:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label27: TLabel
    Left = 196
    Top = 511
    Width = 69
    Height = 22
    Caption = 'Cart'#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label28: TLabel
    Left = 592
    Top = 503
    Width = 54
    Height = 22
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label29: TLabel
    Left = 396
    Top = 485
    Width = 86
    Height = 22
    Caption = 'Dinheiro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label30: TLabel
    Left = 360
    Top = 453
    Width = 90
    Height = 24
    Caption = 'Fluxo de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_RTotal: TLabel
    Left = 648
    Top = 507
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Dinheiro: TLabel
    Left = 484
    Top = 490
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Cartao: TLabel
    Left = 278
    Top = 516
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Cheque: TLabel
    Left = 278
    Top = 490
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Boleto: TLabel
    Left = 82
    Top = 516
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Carne: TLabel
    Left = 82
    Top = 490
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Outros: TLabel
    Left = 484
    Top = 516
    Width = 51
    Height = 18
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label32: TLabel
    Left = 396
    Top = 511
    Width = 71
    Height = 22
    Caption = 'Outros:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 784
    Height = 38
    Color = clMenu
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 90
      Height = 24
      Caption = 'Fluxo de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 229
      Top = 5
      Width = 12
      Height = 24
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Dia1: TDateTimePicker
      Left = 112
      Top = 2
      Width = 114
      Height = 32
      Cursor = crHandPoint
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 37751.739146018520000000
      Time = 37751.739146018520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Dia2: TDateTimePicker
      Left = 244
      Top = 2
      Width = 114
      Height = 32
      Cursor = crHandPoint
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 37751.739146018520000000
      Time = 37751.739146018520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BtnRefresh: TBitBtn
      Left = 368
      Top = 6
      Width = 129
      Height = 25
      Cursor = crHandPoint
      Caption = 'Fluxo do Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnRefreshClick
    end
    object BtnFechar: TBitBtn
      Left = 696
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnFecharClick
    end
    object BtnImprimir: TBitBtn
      Left = 504
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnImprimirClick
    end
  end
  object PageControl: TPageControl
    Left = 4
    Top = 44
    Width = 784
    Height = 81
    Cursor = crHandPoint
    ActivePage = TabSheet0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabOrder = 1
    OnChange = PageControlChange
    object TabSheet0: TTabSheet
      Caption = 'Fluxo do Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Label4: TLabel
        Left = 4
        Top = 3
        Width = 163
        Height = 24
        Caption = 'Saldo em Caixa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label_SaldoCaixa: TLabel
        Left = 172
        Top = 3
        Width = 75
        Height = 24
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Carn'#234
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label3: TLabel
        Left = 564
        Top = 3
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText1: TDBText
        Left = 622
        Top = 7
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_Carne
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Boleto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ImageIndex = 2
      ParentFont = False
      object Label5: TLabel
        Left = 564
        Top = 3
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText2: TDBText
        Left = 622
        Top = 7
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_Boleto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object Label6: TLabel
        Left = 308
        Top = 0
        Width = 71
        Height = 22
        Caption = #193' Vista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label14: TLabel
        Left = 476
        Top = 0
        Width = 79
        Height = 22
        Caption = 'A Prazo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label15: TLabel
        Left = 632
        Top = 0
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText3: TDBText
        Left = 308
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_Cheque
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 476
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_2'
        DataSource = DS_Cheque
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 632
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_3'
        DataSource = DS_Cheque
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      object Label7: TLabel
        Left = 308
        Top = 0
        Width = 71
        Height = 22
        Caption = #193' Vista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label16: TLabel
        Left = 476
        Top = 0
        Width = 79
        Height = 22
        Caption = 'A Prazo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label17: TLabel
        Left = 632
        Top = 0
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText6: TDBText
        Left = 632
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_3'
        DataSource = DS_Cartao
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 476
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_2'
        DataSource = DS_Cartao
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 308
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_Cartao
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Vendas a Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      object Label8: TLabel
        Left = 632
        Top = 0
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label10: TLabel
        Left = 4
        Top = 0
        Width = 63
        Height = 22
        Caption = 'Carn'#234':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label11: TLabel
        Left = 148
        Top = 0
        Width = 67
        Height = 22
        Caption = 'Boleto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label12: TLabel
        Left = 308
        Top = 0
        Width = 79
        Height = 22
        Caption = 'Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label13: TLabel
        Left = 476
        Top = 0
        Width = 69
        Height = 22
        Caption = 'Cart'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText9: TDBText
        Left = 632
        Top = 23
        Width = 66
        Height = 19
        AutoSize = True
        DataField = 'F_5'
        DataSource = DS_VendasPrazo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 476
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_4'
        DataSource = DS_VendasPrazo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 308
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_3'
        DataSource = DS_VendasPrazo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 4
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_VendasPrazo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 148
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_2'
        DataSource = DS_VendasPrazo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Vendas '#225' Vista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 6
      ParentFont = False
      object Label9: TLabel
        Left = 148
        Top = 0
        Width = 86
        Height = 22
        Caption = 'Dinheiro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label18: TLabel
        Left = 308
        Top = 0
        Width = 79
        Height = 22
        Caption = 'Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label19: TLabel
        Left = 476
        Top = 0
        Width = 69
        Height = 22
        Caption = 'Cart'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label20: TLabel
        Left = 632
        Top = 0
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText12: TDBText
        Left = 148
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_VendasVista
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 308
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_2'
        DataSource = DS_VendasVista
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 476
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_3'
        DataSource = DS_VendasVista
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 632
        Top = 23
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_4'
        DataSource = DS_VendasVista
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'T. Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 7
      ParentFont = False
      object Label21: TLabel
        Left = 572
        Top = 3
        Width = 54
        Height = 22
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label22: TLabel
        Left = 4
        Top = 3
        Width = 136
        Height = 22
        Caption = 'Por Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText18: TDBText
        Left = 630
        Top = 7
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_2'
        DataSource = DS_TotalVendas
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 335
        Top = 3
        Width = 114
        Height = 22
        Caption = 'Quantidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBText19: TDBText
        Left = 454
        Top = 7
        Width = 75
        Height = 19
        AutoSize = True
        DataField = 'F_1'
        DataSource = DS_TotalVendas
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBoxVendedor: TComboBox
        Left = 141
        Top = 3
        Width = 169
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
        ItemHeight = 0
        ParentFont = False
        TabOrder = 0
        OnKeyPress = ComboBoxVendedorKeyPress
      end
    end
  end
  object DBGrid_Fluxo: TDBGrid
    Left = 4
    Top = 129
    Width = 784
    Height = 320
    BorderStyle = bsNone
    DataSource = DmFluxo.DS
    FixedColor = 10930928
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgTabs]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawDataCell = DBGrid_FluxoDrawDataCell
    OnDrawColumnCell = DBGrid_FluxoDrawColumnCell
  end
  object Panel2: TPanel
    Left = 4
    Top = 456
    Width = 784
    Height = 19
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Recebimentos de:'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object IBQuery_Carne: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 152
    Top = 72
    object IBQuery_CarneCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_CarneNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_CarneNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_CarneDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_CarneVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneFORMA_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_CarneTIPO_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_CarneNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_CarneSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneF_1: TIBBCDField
      FieldName = 'F_1'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Carne: TDataSource
    DataSet = IBQuery_Carne
    Left = 152
    Top = 103
  end
  object IBQuery_Boleto: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 224
    Top = 72
    object IBQuery_BoletoCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_BoletoNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_BoletoNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_BoletoDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_BoletoVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_BoletoFORMA_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_BoletoTIPO_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_BoletoNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_BoletoSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_BoletoACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_BoletoDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_BoletoF_1: TIBBCDField
      FieldName = 'F_1'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Boleto: TDataSource
    DataSet = IBQuery_Boleto
    Left = 224
    Top = 103
  end
  object IBQuery_Cheque: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 296
    Top = 72
    object IBQuery_ChequeCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_ChequeNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_ChequeNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_ChequeDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_ChequeVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ChequeFORMA_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_ChequeTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_ChequeNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_ChequeSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ChequeACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ChequeDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ChequeF_1: TIBBCDField
      FieldName = 'F_1'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ChequeF_2: TIBBCDField
      FieldName = 'F_2'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ChequeF_3: TIBBCDField
      FieldName = 'F_3'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Cheque: TDataSource
    DataSet = IBQuery_Cheque
    Left = 296
    Top = 103
  end
  object IBQuery_Cartao: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 360
    Top = 72
    object IBQuery_CartaoCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_CartaoNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_CartaoNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_CartaoDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_CartaoVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CartaoFORMA_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_CartaoTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_CartaoNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_CartaoSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CartaoACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CartaoDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CartaoF_1: TIBBCDField
      FieldName = 'F_1'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CartaoF_2: TIBBCDField
      FieldName = 'F_2'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CartaoF_3: TIBBCDField
      FieldName = 'F_3'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_Cartao: TDataSource
    DataSet = IBQuery_Cartao
    Left = 360
    Top = 103
  end
  object IBQuery_VendasPrazo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 464
    Top = 72
    object IBQuery_VendasPrazoCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_VendasPrazoNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_VendasPrazoNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_VendasPrazoDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_VendasPrazoVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoFORMA_VENDA: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_VendasPrazoTIPO_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_VendasPrazoNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_VendasPrazoSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoF_1: TIBBCDField
      FieldName = 'F_1'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoF_2: TIBBCDField
      FieldName = 'F_2'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoF_3: TIBBCDField
      FieldName = 'F_3'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoF_4: TIBBCDField
      FieldName = 'F_4'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasPrazoF_5: TIBBCDField
      FieldName = 'F_5'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_VendasPrazo: TDataSource
    DataSet = IBQuery_VendasPrazo
    Left = 464
    Top = 103
  end
  object IBQuery_VendasVista: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 600
    Top = 72
    object IBQuery_VendasVistaCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_VendasVistaNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_VendasVistaNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_VendasVistaDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_VendasVistaVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaFORMA_VENDA: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_VendasVistaTIPO_VENDA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_VendasVistaNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_VendasVistaSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaF_1: TIBBCDField
      FieldName = 'F_1'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaF_2: TIBBCDField
      FieldName = 'F_2'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaF_3: TIBBCDField
      FieldName = 'F_3'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_VendasVistaF_4: TIBBCDField
      FieldName = 'F_4'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_VendasVista: TDataSource
    DataSet = IBQuery_VendasVista
    Left = 600
    Top = 104
  end
  object IBQuery_TotalVendas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOM' +
        'E_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA' +
        ', VALOR_TOTAL,'
      ''
      '(select count (NUMERO_CONTRATO) from VENDAS),'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS)'
      ''
      'from VENDAS'
      'order by DATA_VENDA')
    Left = 712
    Top = 72
    object IBQuery_TotalVendasCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_TotalVendasNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_TotalVendasNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_TotalVendasDATA_VENDA: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_TotalVendasVALOR_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_TotalVendasFORMA_VENDA: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBQuery_TotalVendasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBQuery_TotalVendasNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBQuery_TotalVendasSUB_TOTAL: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Sub Total'
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_TotalVendasACRESCIMO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_TotalVendasDESCONTO: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_TotalVendasF_1: TIntegerField
      FieldName = 'F_1'
      Visible = False
    end
    object IBQuery_TotalVendasF_2: TIBBCDField
      FieldName = 'F_2'
      Visible = False
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_TotalVendas: TDataSource
    DataSet = IBQuery_TotalVendas
    Left = 712
    Top = 104
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 176
    Top = 192
  end
  object Ds_RCarne: TDataSource
    DataSet = IBQuery_RCarne
    Left = 24
    Top = 447
  end
  object IBQuery_RCarne: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select DATA_PAGAMENTO, TOTAL_PAGO,'
      ''
      '(select sum (TOTAL_PAGO) from CARNE'
      'where  DATA_PAGAMENTO between :Inicio and :Final)'
      ''
      'from CARNE'
      'where  DATA_PAGAMENTO between :Inicio and :Final'
      'order by DATA_PAGAMENTO')
    Left = 24
    Top = 416
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end>
    object IBQuery_RCarneDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_RCarneTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_RCarneF_1: TIBBCDField
      FieldName = 'F_1'
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_RBoleto: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select DATA_PAGAMENTO, TOTAL_PAGO,'
      ''
      '(select sum (TOTAL_PAGO) from BOLETO'
      'where  DATA_PAGAMENTO between :Inicio and :Final)'
      ''
      'from BOLETO'
      'where  DATA_PAGAMENTO between :Inicio and :Final'
      'order by DATA_PAGAMENTO')
    Left = 152
    Top = 416
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end>
    object IBQuery_RBoletoDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"BOLETO"."DATA_PAGAMENTO"'
    end
    object IBQuery_RBoletoTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"BOLETO"."TOTAL_PAGO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_RBoletoF_1: TIBBCDField
      FieldName = 'F_1'
      Precision = 18
      Size = 2
    end
  end
  object Ds_RBoleto: TDataSource
    DataSet = IBQuery_RBoleto
    Left = 152
    Top = 447
  end
  object IBQuery_RCheque: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select DATA_PAGAMENTO, TOTAL_PAGO,'
      ''
      '(select sum (TOTAL_PAGO) from CHEQUE'
      'where  DATA_PAGAMENTO between :Inicio and :Final)'
      ''
      'from CHEQUE'
      'where  DATA_PAGAMENTO between :Inicio and :Final'
      'order by DATA_PAGAMENTO')
    Left = 280
    Top = 416
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end>
    object IBQuery_RChequeDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CHEQUE"."DATA_PAGAMENTO"'
    end
    object IBQuery_RChequeTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CHEQUE"."TOTAL_PAGO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_RChequeF_1: TIBBCDField
      FieldName = 'F_1'
      Precision = 18
      Size = 2
    end
  end
  object Ds_RCheque: TDataSource
    DataSet = IBQuery_RCheque
    Left = 280
    Top = 447
  end
  object IBQuery_RCartao: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select DATA_PAGAMENTO, TOTAL_PAGO,'
      ''
      '(select sum (TOTAL_PAGO) from CARTAO'
      'where  DATA_PAGAMENTO between :Inicio and :Final)'
      ''
      'from CARTAO'
      'where  DATA_PAGAMENTO between :Inicio and :Final'
      'order by DATA_PAGAMENTO')
    Left = 408
    Top = 416
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end>
    object IBQuery_RCartaoDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARTAO"."DATA_PAGAMENTO"'
    end
    object IBQuery_RCartaoTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARTAO"."TOTAL_PAGO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_RCartaoF_1: TIBBCDField
      FieldName = 'F_1'
      Precision = 18
      Size = 2
    end
  end
  object Ds_RCartao: TDataSource
    DataSet = IBQuery_RCartao
    Left = 408
    Top = 447
  end
  object IBQuery_RDinheiro: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select VALOR_TOTAL, DATA_VENDA,'
      ''
      '(select sum (VALOR_TOTAL) from VENDAS'
      'where  DATA_VENDA between :Inicio and :Final)'
      ''
      'from VENDAS'
      'where  DATA_VENDA between :Inicio and :Final'
      'order by DATA_VENDA')
    Left = 536
    Top = 416
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end>
    object IBQuery_RDinheiroVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object IBQuery_RDinheiroDATA_VENDA: TDateTimeField
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
    end
    object IBQuery_RDinheiroF_1: TIBBCDField
      FieldName = 'F_1'
      Precision = 18
      Size = 2
    end
  end
  object Ds_RDinheiro: TDataSource
    DataSet = IBQuery_RDinheiro
    Left = 536
    Top = 447
  end
  object IBQuery_ROutros: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select DATA, VALOR,'
      ''
      '(select sum (VALOR) from AENTRADA'
      'where  DATA between :Inicio and :Final)'
      ''
      'from AENTRADA'
      'where  DATA between :Inicio and :Final'
      'order by DATA')
    Left = 600
    Top = 416
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'Final'
        ParamType = ptUnknown
      end>
    object IBQuery_ROutrosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"AENTRADA"."DATA"'
      Required = True
    end
    object IBQuery_ROutrosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"AENTRADA"."VALOR"'
      Required = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ROutrosF_1: TIBBCDField
      FieldName = 'F_1'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_ROutros: TDataSource
    DataSet = IBQuery_ROutros
    Left = 600
    Top = 447
  end
end
