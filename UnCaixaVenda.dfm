object FrmCaixaVenda: TFrmCaixaVenda
  Left = 420
  Top = 319
  Align = alTop
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Venda'
  ClientHeight = 527
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label_ValorVenda: TLabel
    Left = 200
    Top = 8
    Width = 125
    Height = 27
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label73: TLabel
    Left = 355
    Top = 4
    Width = 128
    Height = 29
    Caption = 'Acr'#233'scimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_VAcrescimo: TLabel
    Left = 620
    Top = 4
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_VDesconto: TLabel
    Left = 620
    Top = 36
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label76: TLabel
    Left = 355
    Top = 36
    Width = 116
    Height = 29
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label79: TLabel
    Left = 355
    Top = 68
    Width = 132
    Height = 29
    Caption = 'Valor Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_ValorTotal: TLabel
    Left = 620
    Top = 68
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 355
    Top = 100
    Width = 96
    Height = 29
    Caption = 'Entrada:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label_VEntrada: TLabel
    Left = 620
    Top = 100
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label16: TLabel
    Left = 355
    Top = 133
    Width = 135
    Height = 29
    Caption = 'Financiado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label_VFinanciado: TLabel
    Left = 620
    Top = 133
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label77: TLabel
    Left = 355
    Top = 164
    Width = 155
    Height = 29
    Alignment = taCenter
    Caption = 'Parcela(s) de:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label_VParcela: TLabel
    Left = 620
    Top = 164
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label69: TLabel
    Left = 355
    Top = 197
    Width = 173
    Height = 29
    Caption = 'Tipo de Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_VTipoVenda: TLabel
    Left = 620
    Top = 197
    Width = 165
    Height = 32
    AutoSize = False
    Caption = #193' VISTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label81: TLabel
    Left = 355
    Top = 229
    Width = 195
    Height = 29
    Caption = 'Forma de Fatura:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_VFormaFatura: TLabel
    Left = 620
    Top = 229
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'DINHEIRO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label83: TLabel
    Left = 355
    Top = 261
    Width = 252
    Height = 29
    Caption = 'Op'#231#227'o de Pagamento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label_VOpcaoPagamento: TLabel
    Left = 620
    Top = 261
    Width = 165
    Height = 32
    AutoSize = False
    Caption = 'C. / E.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label12: TLabel
    Left = 8
    Top = 4
    Width = 181
    Height = 29
    Caption = 'Valor da Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 40
    Width = 128
    Height = 29
    Caption = 'Acr'#233'scimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 8
    Top = 73
    Width = 116
    Height = 29
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 8
    Top = 111
    Width = 163
    Height = 29
    Caption = 'Valor Entrada:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label75: TLabel
    Left = 8
    Top = 147
    Width = 85
    Height = 29
    Caption = 'Fra'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label68: TLabel
    Left = 8
    Top = 183
    Width = 178
    Height = 29
    Caption = 'Data 1'#170' Parcela:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel8: TBevel
    Left = 336
    Top = 8
    Width = 9
    Height = 281
  end
  object Panel_Movimentacao: TPanel
    Left = 8
    Top = 307
    Width = 503
    Height = 138
    BevelOuter = bvNone
    Caption = 'MOVIMENTA'#199#195'O EFETUADA'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object Label_VA: TMaskEdit
    Left = 200
    Top = 40
    Width = 125
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnExit = Label_VAExit
    OnKeyPress = Label_VAKeyPress
  end
  object Label_VD: TMaskEdit
    Left = 200
    Top = 76
    Width = 125
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnExit = Label_VDExit
    OnKeyPress = Label_VDKeyPress
  end
  object MaskEdit_Entrada: TMaskEdit
    Left = 200
    Top = 112
    Width = 125
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnExit = MaskEdit_EntradaExit
    OnKeyPress = MaskEdit_EntradaKeyPress
  end
  object ComboBox_Fracao: TComboBox
    Left = 200
    Top = 148
    Width = 125
    Height = 30
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 22
    MaxLength = 3
    ParentFont = False
    TabOrder = 3
    OnChange = ComboBox_FracaoChange
    OnExit = ComboBox_FracaoExit
    OnKeyPress = ComboBox_FracaoKeyPress
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
  object MaskEdit_Vencimento: TMaskEdit
    Left = 200
    Top = 183
    Width = 125
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Enabled = False
    EditMask = '99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 4
    Text = '  /  /    '
    OnExit = MaskEdit_VencimentoExit
    OnKeyPress = MaskEdit_VencimentoKeyPress
  end
  object BtnCalculo: TBitBtn
    Left = 8
    Top = 222
    Width = 318
    Height = 30
    Caption = 'Calcular'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnCalculoClick
  end
  object BtnGera: TBitBtn
    Left = 8
    Top = 257
    Width = 318
    Height = 30
    Caption = 'Gerar Venda'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BtnGeraClick
  end
  object DBGrid_Itens: TDBGrid
    Left = 8
    Top = 307
    Width = 505
    Height = 138
    BorderStyle = bsNone
    DataSource = FrmCaixa.DataSourceItemVenda
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid_ItensDrawColumnCell
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
        Visible = True
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
        Width = 15
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
  object PageControl1: TPageControl
    Left = 520
    Top = 304
    Width = 265
    Height = 185
    ActivePage = TabSheet1
    Enabled = False
    TabOrder = 15
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataField = 'PERTO_OD_DNP'
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
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
        DataSource = Dm.Ds_VENDAS
        TabOrder = 9
      end
      object MaskEdit25: TDBLookupComboBox
        Left = 3
        Top = 126
        Width = 235
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BevelWidth = 0
        DataField = 'NOME_MEDICO'
        DataSource = Dm.Ds_VENDAS
        KeyField = 'NOME_MEDICO'
        ListField = 'NOME_MEDICO'
        ListSource = Dm.Ds_MEDICO
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'OBSERVA'#199#213'ES'
      ImageIndex = 2
      object Memo1: TDBMemo
        Left = 0
        Top = 0
        Width = 256
        Height = 155
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'OBS'
        DataSource = Dm.Ds_VENDAS
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
  object BtnImprimir: TBitBtn
    Left = 8
    Top = 450
    Width = 152
    Height = 33
    Cursor = crHandPoint
    Caption = 'Imprimir Venda'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BtnImprimirClick
  end
  object BtnReciboVenda: TBitBtn
    Left = 8
    Top = 488
    Width = 152
    Height = 33
    Cursor = crHandPoint
    Caption = 'Imprimir &Recibo'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BtnReciboVendaClick
  end
  object BtnImprimirContrato: TBitBtn
    Left = 179
    Top = 450
    Width = 157
    Height = 33
    Cursor = crHandPoint
    Caption = 'Comprovante'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BtnImprimirContratoClick
  end
  object BtnFinalizar: TBitBtn
    Left = 355
    Top = 450
    Width = 157
    Height = 33
    Cursor = crHandPoint
    Caption = 'Finali&zar Venda'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BtnFinalizarClick
  end
  object DBGrid_Parcelas: TDBGrid
    Left = 8
    Top = 307
    Width = 505
    Height = 138
    BorderStyle = bsNone
    DataSource = Ds_ParcGeradas
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
    OnDrawColumnCell = DBGrid_ParcelasDrawColumnCell
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
        Visible = True
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
      end>
  end
  object BtnCancelar: TBitBtn
    Left = 355
    Top = 488
    Width = 157
    Height = 33
    Cursor = crHandPoint
    Caption = 'Cancelar Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BtnCancelarClick
  end
  object Ds_ParcGeradas: TDataSource
    DataSet = IBQuery_ParcGeradas
    Left = 16
    Top = 368
  end
  object IBQuery_ParcGeradas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE, CHEQUE, CARTAO, BOLETO')
    Left = 16
    Top = 336
  end
  object IBQuery_ImprimeCarne: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE')
    Left = 16
    Top = 400
    object IBQuery_ImprimeCarneCOD_CARN: TIntegerField
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_ImprimeCarneNUMERO_DOC: TIBStringField
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_ImprimeCarneNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CARNE"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_ImprimeCarneNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_ImprimeCarneCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 14
    end
    object IBQuery_ImprimeCarneACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CARNE"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ImprimeCarneDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CARNE"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBQuery_ImprimeCarneVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ImprimeCarneVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ImprimeCarneVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_ImprimeCarneDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_ImprimeCarneQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CARNE"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBQuery_ImprimeCarneNUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_ImprimeCarneSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
  end
end
