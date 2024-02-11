object FrmCaixaOutrasEntradasB: TFrmCaixaOutrasEntradasB
  Left = 318
  Top = 115
  Align = alTop
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Entrada (Outros)'
  ClientHeight = 513
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label66: TLabel
    Left = 16
    Top = 81
    Width = 288
    Height = 33
    Caption = 'Descri'#231#227'o da Entrada:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label65: TLabel
    Left = 510
    Top = 4
    Width = 197
    Height = 33
    Caption = 'Documento N'#186':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label64: TLabel
    Left = 16
    Top = 4
    Width = 178
    Height = 33
    Caption = 'Data Entrada:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 16
    Top = 219
    Width = 299
    Height = 20
    Caption = 'Extrato dos Lan'#231'amentos de Cr'#233'dito:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 247
    Top = 4
    Width = 207
    Height = 33
    Caption = 'Valor Recebido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Bevel7: TBevel
    Left = 16
    Top = 160
    Width = 761
    Height = 49
  end
  object MaskEdit_ValorRecebido: TMaskEdit
    Left = 247
    Top = 39
    Width = 209
    Height = 38
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = MaskEdit_ValorRecebidoKeyPress
  end
  object MaskEdit_DtaEntrada: TMaskEdit
    Left = 16
    Top = 39
    Width = 177
    Height = 38
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
    OnKeyPress = MaskEdit_DtaEntradaKeyPress
  end
  object MaskEdit_DocNum: TMaskEdit
    Left = 510
    Top = 39
    Width = 265
    Height = 38
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 16
    ParentFont = False
    TabOrder = 2
    OnKeyPress = MaskEdit_DocNumKeyPress
  end
  object MaskEdit_DescCredito: TMaskEdit
    Left = 16
    Top = 116
    Width = 761
    Height = 37
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 35
    ParentFont = False
    TabOrder = 3
    OnKeyPress = MaskEdit_DescCreditoKeyPress
  end
  object ListBox_ExtEnt: TListBox
    Left = 16
    Top = 240
    Width = 761
    Height = 246
    Columns = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Fixedsys'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    TabOrder = 9
  end
  object Btn_Estorno: TBitBtn
    Left = 472
    Top = 168
    Width = 130
    Height = 33
    Cursor = crHandPoint
    Caption = '&Estornar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Btn_EstornoClick
  end
  object Btn_Cancelar: TBitBtn
    Left = 200
    Top = 168
    Width = 130
    Height = 33
    Cursor = crHandPoint
    Caption = '&Cancelar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Btn_CancelarClick
  end
  object BitBtn_Proximo: TBitBtn
    Left = 24
    Top = 168
    Width = 130
    Height = 33
    Cursor = crHandPoint
    Caption = '&Pr'#243'ximo'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn_ProximoClick
  end
  object BitBtn_Finalizar: TBitBtn
    Left = 336
    Top = 168
    Width = 130
    Height = 33
    Cursor = crHandPoint
    Caption = '&Finalizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn_FinalizarClick
  end
  object BitBtn_Confirmar: TBitBtn
    Left = 640
    Top = 168
    Width = 130
    Height = 33
    Cursor = crHandPoint
    Caption = 'Con&firmar Cr'#233'dito'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn_ConfirmarClick
  end
  object Panel_EstornoEnt: TPanel
    Left = 16
    Top = 221
    Width = 761
    Height = 273
    TabOrder = 10
    Visible = False
    object Label70: TLabel
      Left = 12
      Top = 8
      Width = 107
      Height = 16
      Caption = 'Lan'#231'amento(s):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Btn_ExeEstEnt: TBitBtn
      Left = 208
      Top = 232
      Width = 161
      Height = 33
      Cursor = crHandPoint
      Caption = 'E&xecutar Estorno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_ExeEstEntClick
    end
    object Btn_SairEstEnt: TBitBtn
      Left = 384
      Top = 232
      Width = 161
      Height = 33
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_SairEstEntClick
    end
    object DBGrid_LancEnt: TDBGrid
      Left = 12
      Top = 25
      Width = 737
      Height = 200
      DataSource = DS_EstornoE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid_LancEntKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 493
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end>
    end
  end
  object DS_EstornoE: TDataSource
    DataSet = IBQuery_EstornoE
    Left = 184
    Top = 457
  end
  object IBQuery_EstornoE: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from AENTRADA'
      'where DATA = DATA'
      'order by DATA')
    Left = 152
    Top = 457
    object IBQuery_EstornoEID: TIntegerField
      FieldName = 'ID'
      Origin = '"AENTRADA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_EstornoEDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"AENTRADA"."DATA"'
      Required = True
    end
    object IBQuery_EstornoEHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"AENTRADA"."HISTORICO"'
      Size = 50
    end
    object IBQuery_EstornoENUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"AENTRADA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBQuery_EstornoENUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"AENTRADA"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_EstornoEND_SEU_NUMERO: TIBStringField
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"AENTRADA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object IBQuery_EstornoENOSSO_NUMERO: TIBStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"AENTRADA"."NOSSO_NUMERO"'
      Size = 17
    end
    object IBQuery_EstornoEVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"AENTRADA"."VALOR"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
