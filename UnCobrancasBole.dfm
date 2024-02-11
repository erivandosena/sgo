object FrmCobrancasBole: TFrmCobrancasBole
  Left = 219
  Top = 119
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cobran'#231'as - Boleto Banc'#225'rio'
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
  object Label_Men: TLabel
    Left = 352
    Top = 394
    Width = 125
    Height = 16
    Caption = 'Mensalidade(s): 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label_Tot: TLabel
    Left = 512
    Top = 394
    Width = 177
    Height = 16
    Caption = 'Total Acumulado: R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
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
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
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
        FieldName = 'CodSacado'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeFanSac'
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
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
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
        FieldName = 'SeuNum'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NossoNumero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtVecto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorTitulo'
        Width = 90
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
  object Ds_Clientes: TDataSource
    DataSet = IBQuery_Clientes
    Left = 216
    Top = 184
  end
  object Ds_Parcelas: TDataSource
    DataSet = IBQuery_Parcelas
    Left = 400
    Top = 184
  end
  object IBQuery_Clientes: TADOQuery
    Connection = Dm.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select CodSacado, NomeFanSac, CidadeSac from tbSacado'
      'where NomeFanSac = '#39'0'#39)
    Left = 216
    Top = 144
    object IBQuery_ClientesCodSacado: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CodSacado'
      Size = 15
    end
    object IBQuery_ClientesNomeFanSac: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NomeFanSac'
      Size = 40
    end
    object IBQuery_ClientesCidadeSac: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CidadeSac'
      Size = 15
    end
  end
  object IBQuery_Parcelas: TADOQuery
    Connection = Dm.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CodSac, DtVecto, ValorTitulo, VrPago, TipDtOcorrencia, Se' +
        'uNum, NossoNumero, DtEmissao,  '
      '(select count (SeuNum) from tbTitulos),'
      '(select sum (ValorTitulo) from tbTitulos)'
      'from tbTitulos'
      'where CodSac = '#39'0'#39
      'order by DtVecto')
    Left = 400
    Top = 144
    object IBQuery_ParcelasCodSac: TStringField
      FieldName = 'CodSac'
      Size = 15
    end
    object IBQuery_ParcelasSeuNum: TStringField
      DisplayLabel = 'Seu N'#250'mero'
      FieldName = 'SeuNum'
      Size = 15
    end
    object IBQuery_ParcelasDtVecto: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'DtVecto'
    end
    object IBQuery_ParcelasNossoNumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NossoNumero'
      Size = 16
    end
    object IBQuery_ParcelasValorTitulo: TBCDField
      DisplayLabel = 'Valor do T'#237'tulo'
      FieldName = 'ValorTitulo'
      currency = True
      Precision = 19
    end
    object IBQuery_ParcelasVrPago: TBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VrPago'
      currency = True
      Precision = 19
    end
    object IBQuery_ParcelasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object IBQuery_ParcelasTipDtOcorrencia: TDateTimeField
      DisplayLabel = 'Data Ocorr'#234'ncia'
      FieldName = 'TipDtOcorrencia'
    end
  end
end
