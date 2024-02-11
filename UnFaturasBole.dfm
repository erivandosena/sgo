object FrmFaturasBole: TFrmFaturasBole
  Left = 247
  Top = 249
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Faturas - Boleto Banc'#225'rio'
  ClientHeight = 296
  ClientWidth = 792
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
    Left = 8
    Top = 18
    Width = 49
    Height = 16
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 49
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
    Left = 232
    Top = 18
    Width = 134
    Height = 16
    Caption = 'Seu N'#250'mero (Inicial):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 512
    Top = 18
    Width = 127
    Height = 16
    Caption = 'Seu N'#250'mero (Final):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText: TLabel
    Left = 64
    Top = 48
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object CBox_Codigo: TComboBox
    Left = 64
    Top = 15
    Width = 135
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
    MaxLength = 16
    ParentFont = False
    TabOrder = 0
    OnKeyPress = CBox_CodigoKeyPress
  end
  object BtnFechar: TBitBtn
    Left = 408
    Top = 264
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
    TabOrder = 5
    OnClick = BtnFecharClick
  end
  object Btn_ImprimeCarta: TBitBtn
    Left = 264
    Top = 264
    Width = 131
    Height = 25
    Cursor = crHandPoint
    Caption = 'Imprimir Carta'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_ImprimeCartaClick
  end
  object DBGrid_Parcelas: TDBGrid
    Left = 8
    Top = 75
    Width = 777
    Height = 177
    BorderStyle = bsNone
    DataSource = Ds_Faturas
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
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_ParcelasCellClick
    OnKeyDown = DBGrid_ParcelasKeyDown
    OnKeyPress = DBGrid_ParcelasKeyPress
    OnKeyUp = DBGrid_ParcelasKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodSac'
        Title.Caption = 'C'#243'digo'
        Width = 86
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SeuNum'
        Title.Caption = 'Seu N'#250'mero'
        Width = 97
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NossoNumero'
        Title.Caption = 'Nosso N'#250'mero'
        Width = 169
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtVecto'
        Title.Caption = 'Vencimento'
        Width = 105
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'ValorTitulo'
        Title.Caption = 'Valor do T'#237'tulo'
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TipDtOcorrencia'
        Title.Caption = 'Data Ocorr'#234'ncia'
        Width = 105
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'VrPago'
        Title.Caption = 'Valor Pago'
        Width = 95
        Visible = True
      end>
  end
  object CBox_SNIni: TMaskEdit
    Left = 370
    Top = 15
    Width = 135
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 16
    ParentFont = False
    TabOrder = 1
    OnKeyPress = CBox_SNIniKeyPress
  end
  object CBox_SNFin: TMaskEdit
    Left = 644
    Top = 15
    Width = 135
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 16
    ParentFont = False
    TabOrder = 2
    OnKeyPress = CBox_SNFinKeyPress
  end
  object Ds_Faturas: TDataSource
    DataSet = IBQuery_Faturas
    Left = 136
    Top = 136
  end
  object IBQuery_Faturas: TADOQuery
    Connection = Dm.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbTitulos')
    Left = 104
    Top = 136
    object IBQuery_FaturasCodCedente: TIntegerField
      FieldName = 'CodCedente'
    end
    object IBQuery_FaturasCodSac: TStringField
      FieldName = 'CodSac'
      Size = 15
    end
    object IBQuery_FaturasSeuNum: TStringField
      FieldName = 'SeuNum'
      Size = 15
    end
    object IBQuery_FaturasCodCarteira: TIntegerField
      FieldName = 'CodCarteira'
    end
    object IBQuery_FaturasAceite: TStringField
      FieldName = 'Aceite'
      Size = 1
    end
    object IBQuery_FaturasCodEspecie: TStringField
      FieldName = 'CodEspecie'
      Size = 2
    end
    object IBQuery_FaturasInstCobranca: TBooleanField
      FieldName = 'InstCobranca'
    end
    object IBQuery_FaturasPrazoProtDev: TIntegerField
      FieldName = 'PrazoProtDev'
    end
    object IBQuery_FaturasOpcVecto: TStringField
      FieldName = 'OpcVecto'
      Size = 1
    end
    object IBQuery_FaturasDtVecto: TDateTimeField
      FieldName = 'DtVecto'
    end
    object IBQuery_FaturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object IBQuery_FaturasCodMoeda: TStringField
      FieldName = 'CodMoeda'
      Size = 2
    end
    object IBQuery_FaturasValorTitulo: TBCDField
      Alignment = taLeftJustify
      FieldName = 'ValorTitulo'
      currency = True
      Precision = 19
    end
    object IBQuery_FaturasValorJuros: TBCDField
      FieldName = 'ValorJuros'
      Precision = 19
    end
    object IBQuery_FaturasDtDesconto: TDateTimeField
      FieldName = 'DtDesconto'
    end
    object IBQuery_FaturasValorDesconto: TBCDField
      FieldName = 'ValorDesconto'
      Precision = 19
    end
    object IBQuery_FaturasValorAbatimento: TBCDField
      FieldName = 'ValorAbatimento'
      Precision = 19
    end
    object IBQuery_FaturasDtMulta: TDateTimeField
      FieldName = 'DtMulta'
    end
    object IBQuery_FaturasValorMulta: TBCDField
      FieldName = 'ValorMulta'
      Precision = 19
    end
    object IBQuery_FaturasUsoCedente: TStringField
      FieldName = 'UsoCedente'
      Size = 30
    end
    object IBQuery_FaturasNossoNumero: TStringField
      FieldName = 'NossoNumero'
      Size = 16
    end
    object IBQuery_FaturasRemessa: TBooleanField
      FieldName = 'Remessa'
    end
    object IBQuery_FaturasRetorno: TBooleanField
      FieldName = 'Retorno'
    end
    object IBQuery_Faturasimpresso: TBooleanField
      FieldName = 'impresso'
    end
    object IBQuery_FaturasMovimentacao: TBooleanField
      FieldName = 'Movimentacao'
    end
    object IBQuery_FaturasTipoBloq: TBooleanField
      FieldName = 'TipoBloq'
    end
    object IBQuery_FaturasCompensavel: TBooleanField
      FieldName = 'Compensavel'
    end
    object IBQuery_FaturasCodOcorRemessa: TStringField
      FieldName = 'CodOcorRemessa'
      Size = 2
    end
    object IBQuery_FaturasCodOcorRetorno: TStringField
      FieldName = 'CodOcorRetorno'
      Size = 2
    end
    object IBQuery_FaturasParcela: TStringField
      FieldName = 'Parcela'
      Size = 3
    end
    object IBQuery_FaturasTotalParcelas: TStringField
      FieldName = 'TotalParcelas'
      Size = 3
    end
    object IBQuery_FaturasCodBarras: TStringField
      FieldName = 'CodBarras'
      Size = 50
    end
    object IBQuery_FaturasNumRemessa: TStringField
      FieldName = 'NumRemessa'
      Size = 8
    end
    object IBQuery_FaturasMensagem1: TStringField
      FieldName = 'Mensagem1'
      Size = 40
    end
    object IBQuery_FaturasMensagem2: TStringField
      FieldName = 'Mensagem2'
      Size = 40
    end
    object IBQuery_FaturasMensagem3: TStringField
      FieldName = 'Mensagem3'
      Size = 40
    end
    object IBQuery_Faturasmensagem4: TStringField
      FieldName = 'mensagem4'
      Size = 40
    end
    object IBQuery_FaturasMensagem5: TStringField
      FieldName = 'Mensagem5'
      Size = 40
    end
    object IBQuery_Faturasmensagem6: TStringField
      FieldName = 'mensagem6'
      Size = 40
    end
    object IBQuery_FaturasCampo1: TStringField
      FieldName = 'Campo1'
      Size = 50
    end
    object IBQuery_FaturasCampo2: TStringField
      FieldName = 'Campo2'
      Size = 50
    end
    object IBQuery_FaturasCampo3: TStringField
      FieldName = 'Campo3'
      Size = 50
    end
    object IBQuery_FaturasCampo4: TStringField
      FieldName = 'Campo4'
      Size = 50
    end
    object IBQuery_FaturasCampo5: TStringField
      FieldName = 'Campo5'
      Size = 50
    end
    object IBQuery_FaturasCODREJ1: TStringField
      FieldName = 'CODREJ1'
      Size = 2
    end
    object IBQuery_FaturasCODREJ2: TStringField
      FieldName = 'CODREJ2'
      Size = 2
    end
    object IBQuery_FaturasCODREJ3: TStringField
      FieldName = 'CODREJ3'
      Size = 2
    end
    object IBQuery_FaturasTipDtOcorrencia: TDateTimeField
      FieldName = 'TipDtOcorrencia'
    end
    object IBQuery_FaturasDtPgto: TDateTimeField
      FieldName = 'DtPgto'
    end
    object IBQuery_FaturasVrPago: TBCDField
      Alignment = taLeftJustify
      FieldName = 'VrPago'
      currency = True
      Precision = 19
    end
    object IBQuery_FaturasVrDesEf: TBCDField
      FieldName = 'VrDesEf'
      Precision = 19
    end
    object IBQuery_FaturasVrAcrEf: TBCDField
      FieldName = 'VrAcrEf'
      Precision = 19
    end
    object IBQuery_FaturasVrAbaEf: TBCDField
      FieldName = 'VrAbaEf'
      Precision = 19
    end
    object IBQuery_FaturasMovManual: TBooleanField
      FieldName = 'MovManual'
    end
    object IBQuery_FaturasAvalista: TStringField
      FieldName = 'Avalista'
      Size = 40
    end
    object IBQuery_FaturasCPfCGCAval: TStringField
      FieldName = 'CPfCGCAval'
    end
    object IBQuery_FaturasTipoPessoaAval: TBooleanField
      FieldName = 'TipoPessoaAval'
    end
    object IBQuery_FaturasNumRem: TFloatField
      FieldName = 'NumRem'
    end
    object IBQuery_FaturasLock: TBooleanField
      FieldName = 'Lock'
    end
    object IBQuery_FaturasCONFIRMA: TBooleanField
      FieldName = 'CONFIRMA'
    end
    object IBQuery_FaturasCARNE: TIntegerField
      FieldName = 'CARNE'
    end
    object IBQuery_FaturasVRJUREF: TBCDField
      FieldName = 'VRJUREF'
      Precision = 19
    end
    object IBQuery_FaturasVRMULEF: TBCDField
      FieldName = 'VRMULEF'
      Precision = 19
    end
    object IBQuery_FaturasVRCREDEF: TBCDField
      FieldName = 'VRCREDEF'
      Precision = 19
    end
    object IBQuery_FaturasVRTARIFA: TBCDField
      FieldName = 'VRTARIFA'
      Precision = 19
    end
    object IBQuery_FaturasDtCredef: TDateTimeField
      FieldName = 'DtCredef'
    end
    object IBQuery_FaturasDtTarief: TDateTimeField
      FieldName = 'DtTarief'
    end
    object IBQuery_FaturasCanalPgto: TStringField
      FieldName = 'CanalPgto'
      Size = 2
    end
    object IBQuery_FaturasFormaPgto: TStringField
      FieldName = 'FormaPgto'
      Size = 2
    end
    object IBQuery_FaturasFloatPgto: TStringField
      FieldName = 'FloatPgto'
      Size = 2
    end
  end
  object IBQuery_Clientes: TADOQuery
    Connection = Dm.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select CodSacado, NomeSac from tbSacado')
    Left = 32
    Top = 104
    object IBQuery_ClientesCodSacado: TStringField
      FieldName = 'CodSacado'
      Size = 15
    end
    object IBQuery_ClientesNomeSac: TStringField
      FieldName = 'NomeSac'
      Size = 40
    end
  end
  object Ds_Clientes: TDataSource
    DataSet = IBQuery_Clientes
    Left = 32
    Top = 138
  end
end
