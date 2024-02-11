object FrmClientes: TFrmClientes
  Left = 207
  Top = 119
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Clientes - Pessoa F'#237'sica'
  ClientHeight = 481
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
  object PageControl1: TPageControl
    Left = 8
    Top = 46
    Width = 777
    Height = 367
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'DADOS DO CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 112
          Top = 8
          Width = 68
          Height = 13
          Caption = 'Data Cadastro'
        end
        object Label2: TLabel
          Left = 189
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 610
          Top = 8
          Width = 35
          Height = 13
          Caption = 'Apelido'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 8
          Top = 48
          Width = 60
          Height = 13
          Caption = 'Naturalidade'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 256
          Top = 48
          Width = 16
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 154
          Top = 48
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 83
          Height = 13
          Caption = 'C'#243'digo do Cliente'
        end
        object Label8: TLabel
          Left = 355
          Top = 48
          Width = 82
          Height = 13
          Caption = 'Data Nascimento'
          FocusControl = DBEdit7
        end
        object Label9: TLabel
          Left = 445
          Top = 48
          Width = 61
          Height = 13
          Caption = 'Nome do Pai'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 8
          Top = 88
          Width = 68
          Height = 13
          Caption = 'Apelido do Pai'
          FocusControl = DBEdit9
        end
        object Label11: TLabel
          Left = 165
          Top = 88
          Width = 67
          Height = 13
          Caption = 'Nome da M'#226'e'
          FocusControl = DBEdit10
        end
        object Label12: TLabel
          Left = 610
          Top = 88
          Width = 74
          Height = 13
          Caption = 'Apelido da M'#227'e'
          FocusControl = DBEdit11
        end
        object Label13: TLabel
          Left = 8
          Top = 128
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit12
        end
        object Label14: TLabel
          Left = 355
          Top = 128
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit13
        end
        object Label15: TLabel
          Left = 456
          Top = 128
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label16: TLabel
          Left = 610
          Top = 128
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit15
        end
        object Label18: TLabel
          Left = 89
          Top = 168
          Width = 58
          Height = 13
          Caption = 'Estado / UF'
        end
        object Label17: TLabel
          Left = 8
          Top = 168
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit16
        end
        object Label19: TLabel
          Left = 270
          Top = 168
          Width = 24
          Height = 13
          Caption = 'Casa'
        end
        object Label20: TLabel
          Left = 374
          Top = 168
          Width = 74
          Height = 13
          Caption = 'Tempo Moradia'
        end
        object Label21: TLabel
          Left = 456
          Top = 168
          Width = 98
          Height = 13
          Caption = 'Ponto de Refer'#234'ncia'
          FocusControl = DBEdit20
        end
        object Label22: TLabel
          Left = 610
          Top = 168
          Width = 39
          Height = 13
          Caption = 'Vizinhos'
          FocusControl = DBEdit21
        end
        object Label23: TLabel
          Left = 8
          Top = 208
          Width = 86
          Height = 13
          Caption = 'Local de Trabalho'
          FocusControl = DBEdit22
        end
        object Label24: TLabel
          Left = 240
          Top = 208
          Width = 75
          Height = 13
          Caption = 'Fun'#231#227'o / Cargo'
          FocusControl = DBEdit23
        end
        object Label25: TLabel
          Left = 426
          Top = 208
          Width = 32
          Height = 13
          Caption = 'Sal'#225'rio'
          FocusControl = DBEdit24
        end
        object Label26: TLabel
          Left = 514
          Top = 208
          Width = 87
          Height = 13
          Caption = 'Tempo de Servi'#231'o'
        end
        object Label27: TLabel
          Left = 658
          Top = 208
          Width = 63
          Height = 13
          Caption = 'Tel. Trabalho'
          FocusControl = DBEdit26
        end
        object Label28: TLabel
          Left = 8
          Top = 248
          Width = 106
          Height = 13
          Caption = 'Endere'#231'o do Trabalho'
          FocusControl = DBEdit27
        end
        object Label29: TLabel
          Left = 355
          Top = 248
          Width = 81
          Height = 13
          Caption = 'Emprego Anterior'
          FocusControl = DBEdit28
        end
        object Label30: TLabel
          Left = 514
          Top = 248
          Width = 145
          Height = 13
          Caption = 'Endere'#231'o do Emprego Anterior'
          FocusControl = DBEdit29
        end
        object Label31: TLabel
          Left = 8
          Top = 288
          Width = 84
          Height = 13
          Caption = 'Tel. Emp. Anterior'
          FocusControl = DBEdit30
        end
        object Label32: TLabel
          Left = 117
          Top = 288
          Width = 57
          Height = 13
          Caption = 'Aposentado'
        end
        object Label33: TLabel
          Left = 187
          Top = 288
          Width = 106
          Height = 13
          Caption = 'Banco do Aposentado'
        end
        object Label34: TLabel
          Left = 413
          Top = 288
          Width = 57
          Height = 13
          Caption = 'Recebe Dia'
        end
        object Label35: TLabel
          Left = 481
          Top = 288
          Width = 81
          Height = 13
          Caption = 'Valor Pagamento'
          FocusControl = DBEdit34
        end
        object Label36: TLabel
          Left = 601
          Top = 288
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object DBEdit2: TDBEdit
          Left = 189
          Top = 21
          Width = 412
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 610
          Top = 21
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'APELIDO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 61
          Width = 137
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NATURALIDADE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 256
          Top = 61
          Width = 90
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 154
          Top = 61
          Width = 92
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 355
          Top = 61
          Width = 82
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_NASCIMENTO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 7
          OnEnter = DBEdit7Enter
        end
        object DBEdit8: TDBEdit
          Left = 445
          Top = 61
          Width = 313
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PAI'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 101
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'APELIDO_PAI'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 165
          Top = 101
          Width = 436
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'MAE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit11: TDBEdit
          Left = 610
          Top = 101
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'APELIDO_MAE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 141
          Width = 338
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit13: TDBEdit
          Left = 355
          Top = 141
          Width = 94
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TELEFONE_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit15: TDBEdit
          Left = 610
          Top = 141
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 181
          Width = 75
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnEnter = DBEdit16Enter
        end
        object DBEdit20: TDBEdit
          Left = 456
          Top = 181
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PONTO_REFERENCIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object DBEdit21: TDBEdit
          Left = 610
          Top = 181
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'VIZINHOS'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit22: TDBEdit
          Left = 8
          Top = 221
          Width = 222
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LOCAL_TRABALHO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object DBEdit23: TDBEdit
          Left = 240
          Top = 221
          Width = 177
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'FUNCAO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
        object DBEdit24: TDBEdit
          Left = 426
          Top = 221
          Width = 79
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SALARIO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
        end
        object DBEdit26: TDBEdit
          Left = 658
          Top = 221
          Width = 100
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TELEFONE_TRABALHO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
        end
        object DBEdit27: TDBEdit
          Left = 8
          Top = 261
          Width = 338
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_TRABALHO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object DBEdit28: TDBEdit
          Left = 355
          Top = 261
          Width = 150
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'EMPREGO_ANTERIOR'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
        object DBEdit29: TDBEdit
          Left = 514
          Top = 261
          Width = 243
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_EMPREG_ANT'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit30: TDBEdit
          Left = 8
          Top = 301
          Width = 100
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TELEFONE_EMPREG_ANT'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
        end
        object DBEdit34: TDBEdit
          Left = 481
          Top = 301
          Width = 109
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'VALOR_PAGAMENTO_APOS'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 34
        end
        object DBComboBox16: TDBComboBox
          Left = 89
          Top = 181
          Width = 175
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'ESTADO_UF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'ACRE - AC'
            'ALAGOAS - AL'
            'AMAZONAS - AM'
            'AMAP'#193' - AP'
            'BAHIA - BA'
            'CEAR'#193' - CE'
            'DISTRITO FEDERAL - DF'
            'ESP'#205'RITO SANTO - ES'
            'GOI'#193'S - GO'
            'MARANH'#195'O - MA'
            'MINAS GERAIS - MG'
            'MATO GROSSO DO SUL - MS'
            'MATO GROSSO - MT'
            'PAR'#193' - PA'
            'PARA'#205'BA - PB'
            'PERNAMBUCO - PE'
            'PIAU'#205' - PI'
            'PARAN'#193' - PR'
            'RIO DE JANEIRO - RJ'
            'RIO GRANDE DO NORTE - RN'
            'RONDONIA - RO'
            'RORAIMA - RR'
            'RIO GRANDE DO SUL - RS'
            'SANTA CATARINA - SC'
            'SERGIPE - SE'
            'S'#195'O PAULO - SP'
            'TOCANTINS - TO')
          ParentFont = False
          TabOrder = 17
        end
        object DBComboBox2: TDBComboBox
          Left = 601
          Top = 301
          Width = 155
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'ESTADO_CIVIL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'CASADO(A)'
            'DESQUITADO(A)'
            'DIVORCIADO(A)'
            'SOLTEIRO(A)'
            'VI'#218'VO(A)'
            'OUTRO')
          ParentFont = False
          TabOrder = 35
          OnExit = DBComboBox2Exit
        end
        object DBComboBox1: TDBComboBox
          Left = 117
          Top = 301
          Width = 60
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'APOSENTADO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O INFORMADO'
            'SIM'
            'N'#195'O')
          ParentFont = False
          TabOrder = 31
        end
        object DBComboBox3: TDBComboBox
          Left = 374
          Top = 181
          Width = 74
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'TEMPO_MORADIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O INFORMADO'
            '1 M'#202'S'
            '2 MESES'
            '3 MESES'
            '4 MESES'
            '5 MESES'
            '6 MESES'
            '7 MESES'
            '8 MESES'
            '9 MESES'
            '10 MESES'
            '11 MESES'
            '1 ANO'
            '2 ANOS'
            '3 ANOS'
            '4 ANOS'
            '5 ANOS'
            '6 ANOS'
            '7 ANOS'
            '8 ANOS'
            '9 ANOS'
            '10 ANOS'
            '20 ANOS'
            '30 ANOS'
            '40 ANOS'
            '50 ANOS'
            '60 ANOS'
            '70 ANOS'
            '80 ANOS')
          ParentFont = False
          TabOrder = 19
        end
        object DBComboBox4: TDBComboBox
          Left = 514
          Top = 221
          Width = 134
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'TEMPO_SERVICO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O INFORMADO'
            '1 M'#202'S'
            '2 MESES'
            '3 MESES'
            '4 MESES'
            '5 MESES'
            '6 MESES'
            '7 MESES'
            '8 MESES'
            '9 MESES'
            '10 MESES'
            '11 MESES'
            '1 ANO'
            '2 ANOS'
            '3 ANOS'
            '4 ANOS'
            '5 ANOS'
            '6 ANOS'
            '7 ANOS'
            '8 ANOS'
            '9 ANOS'
            '10 ANOS'
            '20 ANOS'
            '30 ANOS')
          ParentFont = False
          TabOrder = 25
        end
        object DBComboBox6: TDBComboBox
          Left = 187
          Top = 301
          Width = 215
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'BANCO_APOSENTADO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O INFORMADO'
            'BANCO DO BRASIL'
            'BANCO DO NORDESTE DO BRASIL SA'
            'BRADESCO SA'
            'BANCO REAL SA'
            'ABN AMRO SA'
            'BANCO MERCANTIL DO BRASIL SA'
            'BANCO SAFRA SA'
            'BANCO RURAL SA'
            'BANCO PANAMERICANO SA'
            'CAIXA ECONOMICA FEDERAL SA'
            'ITAU SA'
            'HSBC BANK BRASIL SA'
            'UNIBANCO SA')
          ParentFont = False
          TabOrder = 32
        end
        object DBEdit1: TDBEdit
          Left = 112
          Top = 21
          Width = 68
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_CADASTRO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBComboBox7: TDBComboBox
          Left = 270
          Top = 181
          Width = 95
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'CASA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'PR'#211'PRIA'
            'ALUGADA'
            'OUTRO')
          ParentFont = False
          TabOrder = 18
        end
        object DBEdit17: TDBEdit
          Left = 8
          Top = 21
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
        end
        object DBComboBox10: TDBComboBox
          Left = 413
          Top = 301
          Width = 58
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'RECEBE_DIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O INFORMADO'
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
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
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31')
          ParentFont = False
          TabOrder = 33
        end
        object DBComboBox8: TDBComboBox
          Left = 456
          Top = 141
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 14
        end
        object DBDateEdit_Cli: TDBDateEdit
          Left = 355
          Top = 61
          Width = 87
          Height = 21
          DataField = 'DATA_NASCIMENTO'
          DataSource = Dm.Ds_CLIENTES
          ClickKey = 32776
          DialogTitle = 'Selecione a Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 36
          YearDigits = dyFour
          Visible = False
          OnExit = DBDateEdit_CliExit
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DADOS DO CONJUGE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label37: TLabel
          Left = 104
          Top = 80
          Width = 85
          Height = 13
          Caption = 'Nome do Conjuge'
          FocusControl = DBEdit36
        end
        object Label38: TLabel
          Left = 515
          Top = 80
          Width = 35
          Height = 13
          Caption = 'Apelido'
          FocusControl = DBEdit37
        end
        object Label39: TLabel
          Left = 339
          Top = 120
          Width = 16
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit38
        end
        object Label40: TLabel
          Left = 104
          Top = 120
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit39
        end
        object Label41: TLabel
          Left = 565
          Top = 120
          Width = 97
          Height = 13
          Caption = 'Data de Nascimento'
          FocusControl = DBEdit40
        end
        object Label42: TLabel
          Left = 515
          Top = 160
          Width = 68
          Height = 13
          Caption = 'Apelido do Pai'
          FocusControl = DBEdit41
        end
        object Label43: TLabel
          Left = 104
          Top = 160
          Width = 61
          Height = 13
          Caption = 'Nome do Pai'
          FocusControl = DBEdit42
        end
        object Label44: TLabel
          Left = 104
          Top = 200
          Width = 67
          Height = 13
          Caption = 'Nome da M'#227'e'
          FocusControl = DBEdit43
        end
        object Label45: TLabel
          Left = 515
          Top = 200
          Width = 74
          Height = 13
          Caption = 'Apelido da M'#227'e'
          FocusControl = DBEdit44
        end
        object Label46: TLabel
          Left = 104
          Top = 240
          Width = 149
          Height = 13
          Caption = 'Loacal de Trabalho do Conjuge'
          FocusControl = DBEdit45
        end
        object Label47: TLabel
          Left = 350
          Top = 240
          Width = 75
          Height = 13
          Caption = 'Fun'#231#227'o / Cargo'
          FocusControl = DBEdit46
        end
        object Label48: TLabel
          Left = 529
          Top = 240
          Width = 87
          Height = 13
          Caption = 'Tempo de Servi'#231'o'
        end
        object Label49: TLabel
          Left = 104
          Top = 280
          Width = 32
          Height = 13
          Caption = 'Sal'#225'rio'
          FocusControl = DBEdit48
        end
        object Label50: TLabel
          Left = 192
          Top = 280
          Width = 106
          Height = 13
          Caption = 'Endere'#231'o do Trabalho'
          FocusControl = DBEdit49
        end
        object Label51: TLabel
          Left = 562
          Top = 280
          Width = 102
          Height = 13
          Caption = 'Telefone do Trabalho'
          FocusControl = DBEdit50
        end
        object Bevel3: TBevel
          Left = 8
          Top = 8
          Width = 753
          Height = 49
        end
        object DBText4: TDBText
          Left = 16
          Top = 32
          Width = 70
          Height = 20
          AutoSize = True
          DataField = 'NOME'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label59: TLabel
          Left = 16
          Top = 16
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
        object DBText5: TDBText
          Left = 536
          Top = 32
          Width = 60
          Height = 16
          AutoSize = True
          DataField = 'CODIGO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label60: TLabel
          Left = 536
          Top = 16
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
        object DBText6: TDBText
          Left = 648
          Top = 32
          Width = 60
          Height = 16
          AutoSize = True
          DataField = 'CPF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 648
          Top = 16
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
        object DBEdit36: TDBEdit
          Left = 104
          Top = 93
          Width = 401
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit37: TDBEdit
          Left = 515
          Top = 93
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'APELIDO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit38: TDBEdit
          Left = 339
          Top = 133
          Width = 93
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RG_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit39: TDBEdit
          Left = 104
          Top = 133
          Width = 92
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CPF_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit40: TDBEdit
          Left = 565
          Top = 133
          Width = 98
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_NASCIMENTO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 4
          OnEnter = DBEdit40Enter
        end
        object DBEdit41: TDBEdit
          Left = 515
          Top = 173
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'APELIDO_PAI_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit42: TDBEdit
          Left = 104
          Top = 173
          Width = 401
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PAI_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit43: TDBEdit
          Left = 104
          Top = 213
          Width = 401
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'MAE_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit44: TDBEdit
          Left = 515
          Top = 213
          Width = 148
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'APELIDO_MAE_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit45: TDBEdit
          Left = 104
          Top = 253
          Width = 236
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LOCAL_TRABALHO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit46: TDBEdit
          Left = 350
          Top = 253
          Width = 169
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'FUNCAO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit48: TDBEdit
          Left = 104
          Top = 293
          Width = 79
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SALARIO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit49: TDBEdit
          Left = 192
          Top = 293
          Width = 361
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_TRABALHO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit50: TDBEdit
          Left = 562
          Top = 293
          Width = 100
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TELEFONE_TRABALHO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnExit = DBEdit50Exit
        end
        object DBComboBox5: TDBComboBox
          Left = 529
          Top = 253
          Width = 134
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'TEMPO_SERVICO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O INFORMADO'
            '1 M'#202'S'
            '2 MESES'
            '3 MESES'
            '4 MESES'
            '5 MESES'
            '6 MESES'
            '7 MESES'
            '8 MESES'
            '9 MESES'
            '10 MESES'
            '11 MESES'
            '1 ANO'
            '2 ANOS'
            '3 ANOS'
            '4 ANOS'
            '5 ANOS'
            '6 ANOS'
            '7 ANOS'
            '8 ANOS'
            '9 ANOS'
            '10 ANOS'
            '20 ANOS'
            '30 ANOS')
          ParentFont = False
          TabOrder = 11
        end
        object DBDateEdit_Con: TDBDateEdit
          Left = 565
          Top = 133
          Width = 98
          Height = 21
          DataField = 'DATA_NASCIMENTO_CONJUGE'
          DataSource = Dm.Ds_CLIENTES
          ClickKey = 32776
          DialogTitle = 'Selecione a Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 15
          YearDigits = dyFour
          Visible = False
          OnExit = DBDateEdit_ConExit
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'DADOS FINANCEIROS'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Bevel2: TBevel
          Left = 8
          Top = 8
          Width = 753
          Height = 49
        end
        object Bevel1: TBevel
          Left = 16
          Top = 216
          Width = 737
          Height = 105
          Style = bsRaised
        end
        object Label52: TLabel
          Left = 160
          Top = 64
          Width = 92
          Height = 13
          Caption = 'N'#186' do(s) Contrato(s)'
        end
        object Label53: TLabel
          Left = 16
          Top = 64
          Width = 126
          Height = 13
          Caption = 'N'#186' Cadastro de Cobran'#231'as'
          FocusControl = DBEdit19
        end
        object DBText1: TDBText
          Left = 16
          Top = 32
          Width = 70
          Height = 20
          AutoSize = True
          DataField = 'NOME'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 536
          Top = 32
          Width = 60
          Height = 16
          AutoSize = True
          DataField = 'CODIGO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 648
          Top = 32
          Width = 60
          Height = 16
          AutoSize = True
          DataField = 'CPF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 16
          Top = 16
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
        object Label56: TLabel
          Left = 536
          Top = 16
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
        object Label57: TLabel
          Left = 648
          Top = 16
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
        object Label62: TLabel
          Left = 24
          Top = 223
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
          FocusControl = DBMemo1
        end
        object Label55: TLabel
          Left = 264
          Top = 64
          Width = 59
          Height = 13
          Caption = 'Fatura(s) do:'
        end
        object DBText_Fatura: TDBText
          Left = 328
          Top = 63
          Width = 104
          Height = 16
          AutoSize = True
          DataField = 'FORMA_VENDA'
          DataSource = Ds_Contratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit19: TDBEdit
          Left = 16
          Top = 80
          Width = 134
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'NUMERO_SIS_COB'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit19Exit
        end
        object DBMemo1: TDBMemo
          Left = 24
          Top = 238
          Width = 721
          Height = 75
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'OBS_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 3
          OnKeyPress = DBMemo1KeyPress
        end
        object CBox_Contrato: TComboBox
          Left = 160
          Top = 80
          Width = 93
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkTile
          BevelOuter = bvRaised
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
          OnKeyPress = CBox_ContratoKeyPress
        end
        object CBox_FaturaAtrasada: TComboBox
          Left = 262
          Top = 80
          Width = 491
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkTile
          BevelOuter = bvRaised
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
          Text = '      N'#195'O EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO'
          OnChange = CBox_FaturaAtrasadaChange
          OnKeyPress = CBox_FaturaAtrasadaKeyPress
        end
        object GroupBoxSPC: TGroupBox
          Left = 16
          Top = 106
          Width = 737
          Height = 100
          Caption = 'Inclus'#227'o Enviada ao S.P.C - Servi'#231'o de Prote'#231#227'o ao Cr'#233'dito'
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          object DBGridSPC: TDBGrid
            Left = 8
            Top = 16
            Width = 720
            Height = 75
            DataSource = DS_SPC
            FixedColor = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMERO_CONTRATO'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Width = 496
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPF'
                Width = 100
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 418
    Width = 777
    Height = 55
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object SbExcluir: TBitBtn
      Left = 148
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbExcluirClick
    end
    object SbCancelar: TBitBtn
      Left = 218
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = SbCancelarClick
    end
    object SbNovo: TBitBtn
      Left = 8
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'No&vo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbNovoClick
    end
    object SbAnterior: TBitBtn
      Left = 308
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'An&terior'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = SbAnteriorClick
    end
    object SbProximo: TBitBtn
      Left = 378
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'P&r'#243'ximo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = SbProximoClick
      Layout = blGlyphRight
    end
    object SbAtualiza: TBitBtn
      Left = 469
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'Atuali&zar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbAtualizaClick
    end
    object SbSalvar: TBitBtn
      Left = 78
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbSalvarClick
    end
    object SbFecha: TBitBtn
      Left = 699
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 9
      OnClick = SbFechaClick
    end
    object BitBtn2: TBitBtn
      Left = 609
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Op'#231#245'es'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object SbLocalizar: TBitBtn
      Left = 539
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = SbLocalizarClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE CLIENTES'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 280
    Top = 384
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Fechar1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object NovoCadastro1: TMenuItem
        Caption = 'Novo Cadastro'
        ShortCut = 112
        OnClick = SbNovoClick
      end
      object DadosdoCliente1: TMenuItem
        Caption = 'Dados do Cliente'
        ShortCut = 113
        OnClick = DadosdoCliente1Click
      end
      object DadosdoConjuge1: TMenuItem
        Caption = 'Dados do Conjuge'
        ShortCut = 114
        OnClick = DadosdoConjuge1Click
      end
      object DadosFinanceiros1: TMenuItem
        Caption = 'Dados Financeiros'
        ShortCut = 115
        OnClick = DadosFinanceiros1Click
      end
      object Localizar1: TMenuItem
        Caption = 'Localizar'
        ShortCut = 120
        OnClick = SbLocalizarClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_CLIENTES
    OnStateChange = DataSource1StateChange
    Left = 316
    Top = 384
  end
  object IBQueryCodigo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select CODIGO from CLIENTES'
      'order by CODIGO')
    Left = 352
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Left = 396
    Top = 89
    object Limparcampo1: TMenuItem
      Caption = 'Limpar campo'
      ShortCut = 46
      OnClick = Limparcampo1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 572
    Top = 201
    object MenuItem1: TMenuItem
      Caption = 'Limpar campo'
      ShortCut = 46
      OnClick = MenuItem1Click
    end
  end
  object IBQuery_Cidades: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select * from CIDADES')
    Left = 316
    Top = 153
    object IBQuery_CidadesNOME_CID: TIBStringField
      FieldName = 'NOME_CID'
      Origin = '"CIDADES"."NOME_CID"'
      Size = 25
    end
    object IBQuery_CidadesCEP_CID: TIBStringField
      FieldName = 'CEP_CID'
      Origin = '"CIDADES"."CEP_CID"'
      Size = 10
    end
    object IBQuery_CidadesESTADO_UF: TIBStringField
      FieldName = 'ESTADO_UF'
      Origin = '"CIDADES"."ESTADO_UF"'
      Size = 24
    end
  end
  object IBQuery_Contratos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      
        'select CODIGO, NOME_CLIENTE, NUMERO_CONTRATO, FORMA_VENDA from V' +
        'ENDAS')
    Left = 188
    Top = 153
    object IBQuery_ContratosNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBQuery_ContratosNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBQuery_ContratosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBQuery_ContratosFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
  end
  object IBQuery_FaturaAtrasada: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select * from CARNE')
    Left = 352
    Top = 152
    object IBQuery_FaturaAtrasadaNUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_FaturaAtrasadaDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_FaturaAtrasadaVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      Precision = 18
      Size = 2
    end
    object IBQuery_FaturaAtrasadaSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_FaturaAtrasadaDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
  end
  object Ds_Contratos: TDataSource
    DataSet = IBQuery_Contratos
    Left = 276
    Top = 153
  end
  object IBQuery_SPC: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select CPF, NOME, NUMERO_CONTRATO from SPC')
    Left = 172
    Top = 225
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
    Left = 204
    Top = 225
  end
end
