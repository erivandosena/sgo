object FrmRelRecibo: TFrmRelRecibo
  Left = 284
  Top = 78
  Width = 802
  Height = 525
  HorzScrollBar.Position = 1
  Caption = 'FrmRelRecibo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object QuickRep1: TQuickRep
    Left = 7
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 163
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        431.270833333333300000
        1899.708333333333000000)
      BandType = rbTitle
      object QRDBText1: TQRDBText
        Left = 8
        Top = 5
        Width = 702
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666670000
          21.166666666666670000
          13.229166666666670000
          1857.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'TITULO_CONTRATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText11: TQRDBText
        Left = 668
        Top = 132
        Width = 48
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1767.416666666667000000
          349.250000000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'TURMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 624
        Top = 132
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          349.250000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turma:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 571
        Top = 132
        Width = 44
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1510.770833333333000000
          349.250000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'TURNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 528
        Top = 132
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1397.000000000000000000
          349.250000000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turno:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 552
        Top = 112
        Width = 51
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1460.500000000000000000
          296.333333333333300000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Telefone:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 610
        Top = 112
        Width = 152
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1613.958333333333000000
          296.333333333333300000
          402.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'TEL_RESID_RESP_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 552
        Top = 92
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1460.500000000000000000
          243.416666666666700000
          68.791666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 584
        Top = 92
        Width = 110
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1545.166666666667000000
          243.416666666666700000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'CPF_RESP_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 552
        Top = 72
        Width = 63
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1460.500000000000000000
          190.500000000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parentesco:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 621
        Top = 72
        Width = 184
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1643.062500000000000000
          190.500000000000000000
          486.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'GRAU_PAREN_RESP_ALUNO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 410
        Top = 132
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1084.791666666667000000
          349.250000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 369
        Top = 132
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          976.312500000000000000
          349.250000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Curso:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 242
        Top = 134
        Width = 122
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          640.291666666666700000
          354.541666666666700000
          322.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'NUMERO_MATRICULA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 168
        Top = 132
        Width = 71
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          444.500000000000000000
          349.250000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186' Matr'#237'cula:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 168
        Top = 112
        Width = 52
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          444.500000000000000000
          296.333333333333300000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aluno(a):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 227
        Top = 112
        Width = 89
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          600.604166666666700000
          296.333333333333300000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'NOME_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 168
        Top = 92
        Width = 54
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          444.500000000000000000
          243.416666666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 228
        Top = 92
        Width = 155
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          603.250000000000000000
          243.416666666666700000
          410.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'END_RESID_RESP_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 247
        Top = 72
        Width = 125
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          653.520833333333300000
          190.500000000000000000
          330.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'NOME_RESP_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 168
        Top = 72
        Width = 73
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          444.500000000000000000
          190.500000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 168
        Top = 40
        Width = 149
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          444.500000000000000000
          105.833333333333300000
          394.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'NOME_ESCOLA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRImage3: TQRImage
        Left = 8
        Top = 37
        Width = 157
        Height = 116
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          306.916666666666700000
          21.166666666666670000
          97.895833333333330000
          415.395833333333300000)
        Center = True
        Picture.Data = {
          0A544A504547496D616765993A0000FFD8FFE000104A46494600010101006900
          690000FFDB004300010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101FFDB00430101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          01010101010101010101010101FFC00011080074009D03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FEAF
          FF00651FD943F67AF895FB3EFC36F1C78D7E18E8DAD78A35FD3353B8D5B53FB6
          6B7A77DAE6B7F106AF630BFD8B4AD52C74F8365ADAC116DB6B5855B66F75691D
          DDBE86FF008617FD947FE88EE8DFF839F15FFF002FAA87EC37791AFECA9F07D4
          EF0468FAC8E071FF00235EBDFED57D61F6E8BD64FCBFFB2AF21E6D848B716B58
          B717AC775A337746AB6DA4ECF6D5EC7CBDFF000C2FFB28FF00D11DD1BFF073E2
          BFFE5F51FF000C2FFB28FF00D11DD1BFF073E2BFFE5F57D43F6E8BD64FCBFF00
          B2A3EDD17AC9F97FF654BFB6307DBFF490F635BCFEF67CBDFF000C2FFB28FF00
          D11DD1BFF073E2BFFE5F51FF000C2FFB28FF00D11DD1BFF073E2BFFE5F57D43F
          6E8BD64FCBFF00B2A3EDD17AC9F97FF6547F6C60FB7FE921EC6B79FDECF97BFE
          185FF651FF00A23BA37FE0E7C57FFCBEA3FE185FF651FF00A23BA37FE0E7C57F
          FCBEAFA87EDD17AC9F97FF00655F915FF056DFDBCFC47FB23FC1EB0D1BE18C91
          41F14FE24CF75A1681AADE47E743E19B06B2BAFED4F13C368F13DB6A57FA3A79
          2BA6D9DCCE96716B57BA3DE6AB63AE68906A9A1EA3E766DC5794E4B96E3334C6
          B92C360A8BAB5391465527AA8C29D38E8A552AD49469D34DA4E728A94A2AED7D
          9787DE1F712F899C6590F03F0C50A75B3AE21C6C70785788AB2A385C3C2309D7
          C4E3317554672A784C1616956C562270854A8A95292A54EA5470A72F40F8D9E1
          5FF82627ECF5A7CF7DF15ACFE1CF86E48BED2B1E972F8C35C9358BDB8B37892F
          2C74FD38789D67BDD4AD04C92DC6996C24D41213E60B560573F9F1ACFEDD7FF0
          46FB1D43ECBA5F80E7D6ACFCCD87514D2FE30D8C7B3E5CC9F67B9B033E065B85
          5763B72010C2BF97D9EEFC75F183C7D6FF006EBED5BC65E3DF1EF896DAC6096F
          2792F352D67C43E23D5160B6B78CB93FBCBCD4AF8470C112A448F308E18D170A
          3EB3F08FC1EF85F2097C3307C3EF157C56D434F925B2D73E2068DF10BFE118D0
          F56BE85DC5D4FF000FB4C1E0CD4CD9F87EDA4DD65A5EAFE271AFDE789AD6DA3F
          12CBA2F854EAE3C2BA27E2B96F89DC7FC678BC64784724C970582C128CAA55CD
          2752B4AF36D52A73AFED685375AB25297B3A7424A1187BD562AD29FF00A23C63
          F453FA327D1FF25C8EB78E3E20F1D6759EE7F52AD2C260F852861B054E4A8420
          F198AA597AC16618A8E070539D2A7F5BC56614A55EA564A9E12A4B9E9E1FFA50
          F849F1BFFE08F7F18F518B48F0D47E0DB1D4E7F2E2B7B2F126B1E35F0B5E5F5F
          4B3C16F1E9DA4E9FE28D5744D5B58BC91EE11A38F4DD3AE5648D667562209767
          E82691FB1AFEC75AF5AC779A47C2EF0DEA16D282639AD7C41E27991C03B49568
          FC42CAC0365495270C0A9C10457F05DF1C7E10CDF09F5ED25AC66BFBDF0978B3
          4C3AC7862F7538628754B5304C6CF5BF0CEB8B6DFE8BFDBDE18D4D5ECEE67816
          DE3D634A9B45F1441A7E9965E21B4D3EDBF54FFE095BFF000504F8A5E07F893A
          6FC0DF1DF8A351F13782FC4B6DA84DE17BFD76F67BDD47C33AB687A65DEB0FA6
          AEA53BCD7775A46ADA569F756165613ADE496DABC3A159E9D269DA74D7C6BBB8
          6BC64C73CF970D71964F87C063A58B58158AC139C2953C5CA7C94E9D7A156A57
          FDD569384696229579C1F3C26D7B293A91F03C58FA0E70E2F0CE5E2EF80DC679
          8F14F0ED3C8E7C4CF27CF7D855C663722A543EB38AC4E5998E130B8152C6E0E8
          C311531396E372FC3D5BE1EB61E35238BA6B0F53FA94FF008617FD947FE88EE8
          DFF839F15FFF002FA8FF008617FD947FE88EE8DFF839F15FFF002FABDB7C09E3
          9B0F1768167AADBCA6432C685B69072590367A8ED9F5E9D6BB4FB745EB27E5FF
          00D957EDAF37C22766BF189FE6DFB1ADE7F7B3E5EFF8617FD947FE88EE8DFF00
          839F15FF00F2FA8FF8617FD947FE88EE8DFF00839F15FF00F2FABEA1FB745EB2
          7E5FFD951F6E8BD64FCBFF00B2A3FB6307DBFF00490F635BCFEF67CBDFF0C2FF
          00B28FFD11DD1BFF00073E2BFF00E5F51FF0C2FF00B28FFD11DD1BFF00073E2B
          FF00E5F57D43F6E8BD64FCBFFB2A3EDD17AC9F97FF006547F6C60FB7FE921EC6
          B79FDECF97BFE185FF00651FFA23BA37FE0E7C57FF00CBEAFCC9FDB892F7F663
          F1E7843C11FB3F788BC65F093C25AD7849BC55AAE81E0AF1BF8BF48D3EFF00C4
          575AC5FE9371ABDD4516B64CB792E9BA3E9966D23311E45942A00C127F75FEDD
          17AC9F97FF00655F84BFF0552B8497E327C3E237607C3484720679F147887DCD
          5D3CCF0D5A71A70D24EF6774B64DBDBCBFAEAAE14AA46579A6E367BEBE9B9FA0
          DFB11DD32FECB5F091476D275A1DFF00E86BD7BFDAAFAABED6FF00E73FFC557C
          67FB155C95FD983E13AF984634BD6863CC231FF1556BDC633C57D4BF6B3FF3D4
          FF00DFD3FE35F856373E71C662E3ED1AE5C4D78DADB72D592EFE47D243090708
          B70BB714EF66F75DEEBF23A7FB5BFF009CFF00F1547DADFF00CE7FF8AAE63ED6
          7FE7A9FF00BFA7FC68FB59FF009EA7FEFE9FF1AE6FEDF7FF003F1FDCFF00CCAF
          A9D3FE4FC25FE674FF006B7FF39FFE2A8FB5BFF9CFFF00155CC7DACFFCF53FF7
          F4FF008D1F6B3FF3D4FF00DFD3FE347F6FBFF9F8FEE7FE61F53A7FC9F84BFCCE
          9FED6FFE73FF00C557E0C7FC157FF66FB0FDA3F58F06EA3AD78BBC4DE158BE1C
          49E2CFB32787FC1D67E2E7D561F11A78783A3437FE32F09C5672593E819470D7
          7E78BC601ADC44C27FDC0FB59FF9EA7FEFE9FF001AF34F17FC39D07C66663AAB
          06F3B76EC85933BB3D7730C9E7FCE05618ACCB039961AB60334A5F5BC0E25535
          5E84A75A9A9AA55615E9FBF42A53AB1E5AB4E12F7271BF2F2BBC5B4FEB381F8B
          7897C37E27CBB8CB8331F1CA388F2958C8E5F984B0784C77D5D63F0588CBB156
          C2E61431784A8EAE0B1788A1FBDA13E4555CA0A3514271FE34FC05FB2FFC37F0
          C7C43F09EB66FF00E2A78EBFE118F15E93AD3F837C51F073C15A6F85BC643C3F
          A9C3A8C9E18D7F516F8BBE26363A17888593693A95E378675FFB3D85E4D31D0F
          54DA6C27FDB4FD8D7F66FF0001780BC2336BBF132E34CD234BD2745BED4B50D4
          352920B2B5B5B4D3B4DB8BFBCB999EE24DA90DADADBCF7533B38090432CADF24
          6C47E84DD7ECBDF0AF4082E75D9F11AE9F1DC5EC8EB68AE46C592462A91C8D23
          B632422233B1F9541622BF917FDBD3F6B9F15FC74F89DE27F03787F596D33E0B
          F8235ED4741F0DE81A1DCDE41A5F8B67D1EF9AD64F1A7884BCAADAE4F7D73686
          6F0D41756F6D61E1DD15A01A769567AE6A7E29D575EF3ABF1170FF0004655887
          9265F3C37D76BC52C353C46266F1388853F8A5571757112A54E953F8E508CACE
          705ECE4EA26BFA8381785FC5FF00A6F71C616871C716D29E59C17964BFB4388E
          79165586965980CC315CD4F0183C165184CAE963F30C7D7A339D18E2AAC61468
          E1EBD59568C611A55AAFFC140BE36FC34F8ABF13B4DF0FFC1E964BEF017811BC
          4023D64C29159EB3E24F105E5926B377A3303E6DCE8F169BA1787ECA1BC91228
          AEAFEDB529B4F5BAD29AC755D4BCFF00F637F0DDDB7C5087E23DC47245A07C3D
          B6BD75B800A9D43C69E24D1B59D1FC0FE1FB2665F2E7BD9B5379FC477F6ACF1B
          7FC229E17F135D44CF3DAC304FE7DF08FE16E97E26D3F52F1AF8D22D724F0869
          B7F0E83A368BE1EBAB4D2F5CF1F78C2616B733787749D6B50D3B5AB5D0EC341D
          16E4EBFE27F113787FC429A5ACBE1DD0A4D323BCF196957F6BFB5FFB25FECBDE
          29F1B6A1E1AD67C43A6E9DA1F86F436B81E13F07683611693E1DF0F5ADF3DB0B
          8922B745375ABEB77D6FA7E976BAD78BFC4575ABF8C7C4B0691A57FC249AFEAA
          FA6D9343F23C3D9263B88B378F1BF1055A585C24B190C6D1A314FDAE3AA611C6
          3429D1839374F094A74214E552A49CEAC69384232E77563FD65E3DF8E3C0BF47
          8F0D2A7D1CFC37862736E26C2F0B4F86EA56AB353C3F0D60B39A15258CC76698
          A8C29C7179EE3A863B118CA583C24214F0F5F174F13889D18D38616AFEE87EC6
          9A9EB12FC3ED346A265C85876EFDFCAFD8E7C924EDFE25001EA70335F6AFDADF
          FCE7FF008AAF1AF877E17B4F06787ACB4CB72A8628D7215C28042B2F418EA18F
          E75DF7DACFFCF53FF7F4FF008D7E975B88B9EA4E519B49B76B5F6FBCFF002016
          0E1D6377E8FF00E07EA74FF6B7FF0039FF00E2A8FB5BFF009CFF00F155CC7DAC
          FF00CF53FF007F4FF8D1F6B3FF003D4FFDFD3FE3597F6FBFF9F8FEE7FE63FA9D
          3FE4FC25FE674FF6B7FF0039FF00E2A8FB5BFF009CFF00F155CC7DACFF00CF53
          FF007F4FF8D1F6B3FF003D4FFDFD3FE347F6FBFF009F8FEE7FE61F53A7FC9F84
          BFCCE9FED6FF00E73FFC557E1BFF00C15127693E3178089EDF0DA0EB9FFA19FC
          45EE6BF687ED67FE7A9FFBFA7FC6BF11FF00E0A6F2993E2FF814EF2D8F86F6E3
          EF96C7FC54DE22F7E2BDCE1CCE5E2336A149CDB5285776FF000D19C977EABA18
          6270D0A74A5251B59C7A3EAD2EADA3EF2FD8C6ED17F666F858A770234ED701C6
          31FF00235EBDD32D5F507DB63F57FCD7FF008BAF90FF006369987ECD5F0BC617
          8D3F5C1C839FF91AF5DF423F957D37E7BFA2FE47FC6BF08CDF3C71CD7338F37C
          3986363BB5F0E26A2D969D0FAAA384BD1A2D2D1D2A6FE2EF04743F6D8FD5FF00
          35FF00E2E8FB6C7EAFF9AFFF00175CF79EFE8BF91FF1A3CF7F45FC8FF8D79FFD
          BAFF009BF191AFD4FCBFF263A1FB6C7EAFF9AFFF001747DB63F57FCD7FF8BAE7
          BCF7F45FC8FF008D1E7BFA2FE47FC68FEDD7FCDF8C83EA7E5FF931D0FDB63F57
          FCD7FF008BA3EDB1FABFE6BFFC5D73DE7BFA2FE47FC68F3DFD17F23FE347F6EB
          FE6FC641F53F2FFC98C3F891AB7D9BC34C223279975A969B663183917374B1B0
          C063D5491D0FD3BD7F9E649A7EA264726CAF492EC4936D392492492494C924F2
          49EB5FE83DE3BB6BAD47C3F3436B2C96D7514F0DD5ADD5B4B241716B716FBE48
          2E6DE7899648678650B2432C6CB24722ABA32BA861F85BF1EDADE0F18C9A349F
          B58D9F81B54B6BE9A0BBD0EF3F689D33C197B6722C521D97FA5EA3E37D26E6C2
          238FDDCF7B6F6F6F2C8BE5C5234A021EEA787C1713D0C3E1F138FAF829E0AB62
          EAF3D3C1AC64670C5430704A57C561E54DC6586B2BF373BA892E569737F587D1
          7FC72CE7C139F1A61325F0DF31F10B13C510C8B13528E5999623055B2DA390AC
          E233A93A587C8F399D6A75DE6F1F7DAA11A52A2A3FBC9568F27C47FB0F7C30D2
          3C49E07F86777AADBEA26797E24FC4F596D6EAFB53934F511699F0C238EE6D34
          7BABA6D2F4FBA9E3C437D7D61676D77AAC56BA7C3A9CF771695A725AFF00569F
          0E3C1DE1CF08F87347834FB258A41616AC59428C16855B23E60727764E7F1E45
          7E5B7ECE9F06F553A9699AD7893C49AF78BB59B6B6B4B54D57C4FAB6A5AEEA4B
          671C925CC5025F6A9737773F6512DCDC5C4512CBE487B99A5450D2BB37EB6DAB
          BC36B6D16D51E55BC31E3078D91AAE3AF6C5776699C53CBF0F81CA70F88A9568
          E5F878E15CA74FD8BA92A49465395153A9ECE52973370E79F2B76726D1F83789
          9C513F11FC43E2FE3AAB94CB24ABC4B9BD4CC27954F16F193C049D2A54258696
          2DE1B06EB4A0E8EB2785A0D36E2E09A3A8FB6C7EAFF9AFFF001747DB63F57FCD
          7FF8BAE7BCF7F45FC8FF008D1E7BFA2FE47FC6BC3FEDD7FCDF8C8F88FA9F97FE
          4C743F6D8FD5FF0035FF00E2E8FB6C7EAFF9AFFF00175CF79EFE8BF91FF1A3CF
          7F45FC8FF8D1FDBAFF009BF1907D4FCBFF00263A1FB6C7EAFF009AFF00F1747D
          B63F57FCD7FF008BAE7BCF7F45FC8FF8D1E7BFA2FE47FC68FEDD7FCDF8C83EA7
          E5FF00931D0FDB63F57FCD7FF8BAFC59FF008294DC093E2F78276E4E3E1CDAE7
          77BF897C47E8C6BF617CF7F45FC8FF008D7E33FF00C147A566F8B9E0CE9FF24E
          AD3B1FFA193C47EF5F67C019BBC47146069735F9A9631EEDFC384ACFAF6B5F4D
          4F3F34C32860AAC9AD9D3FB57DEA451F6EFEC7B391FB387C3202523163AE8C6F
          C74F156BA3A66BE96F3CFF00CF63FF007F0FF8D7CA3FB215CC49FB39FC355279
          5B2D741E1BAFFC255AEFA29FE75F49FDAE1F5FD1BFF89AFC3F3ECD5473DCEA3C
          CFDDCDB318FC2FA632B2EE7D8E170D7C2E19DB7A145EDDE9C7FBA6DF9E7FE7B1
          FF00BF87FC68F3CFFCF63FF7F0FF008D627DAE1F5FD1BFF89ACCD57C43A6E916
          93DDDDDC451AC31B49B5D8A93B46718DB9F7ED9F5AF2966BCCD24DB6DD92507A
          B7F337FAB5BA7E1FFDA9D779E7FE7B1FFBF87FC68F3CFF00CF63FF007F0FF8D7
          E587C49FF8299FC22F867E348FC1FE22D7345D32EA4BBB4B506FAE96158DB509
          2EE3B06BA9597CAB34BE6D3F515B292E9E28EEDB4ED4040F27D86E8C5F67783B
          E3DF813C53A7595DFF006CD9413DE223470F9A097DE01C0181CE4E381E9EB5EC
          6330B9CE030F85C5E2F018BA187C641D4C2D69E1EA2A75E117694A9CB69C62F4
          938B693D1B4CE6A72C355A93A54EA425529B4A704E2E506F54A492BA6FA2763E
          81F3CFFCF63FF7F0FF008D1E79FF009EC7FEFE1FF1AE7E0D4AD2E6249A095648
          9C655D771041FF0080FF009FA539AFED93EFCA8BFEF12BFCD47A8FCEBC6FED6D
          6DCCEFB5B9257BF6DCE9FAAF97E1FF00DA99FE38D663D27C3B7979717660B556
          892EA712CA0C16B236D9E606126653145B9C3441A4046514B601FE0ABE24DDF8
          D6F7E20F8D26F88F73AA5D78F97C4FAD5BF8C25D6AEA4BDD517C4567A84F69AA
          C17B732CD70F24D6B7704B6B8F3A444585638D8C6895FDDEF8C20B3D7FC3DA8E
          99E6C4FF00688586DDC0E7E5618C63BEEFE95F883FB417ECF9AC4BE209B53D27
          C25F0D758D5048163D73C51F0CBC13E2AD68451910C1F6DBFD6F43BE935E4B4B
          7586C6C21F128D660D3B4FB7B4D3EC63B7B1B3B6B78FE9F25C460F36C3FF0067
          E231CB01529E265888D4A94A72A55633A70A6E359464A4E54541CA84926A3EDA
          BC5A4AA7347FA73E8D5E3D64FE03661C595F3BE19C6E7986E24C165B4E962B2B
          961A198606BE55531B3861E2B13ECE12C1E3FEBCDE29C6AC650AB84C24D52AA9
          371D2FF8270FC5CF17681F0B3E15F84FC5DA95FB6A12C1ABCDA05ADEC8CD790F
          C3D6D5843E107BB66C5D08E49E3D7A0D0A3BE2D2A784ACFC3BFD9E17C3C74303
          F7B6DEEDA582097CE3FBC86393FD61FE3456F5F7AFC5EFD94FF67FD7347D6878
          9BC577D77AAEBB7735B4B7DA8DE926522DA286D6D6DE18D12382CEC74FB3B7B7
          B0D374FB58ADEC34CD3ADAD74EB0B7B7B2B5B7823FD82B7BDB48E186113464C7
          1471E0364FC8817A60FA51C5199E0696328D1C16225888E1F0D430F3AEE3AD67
          428D2A3ED64937CAE6E1CDCAE526B9ACE526AEFF0007E35E22FF005EB8CF8AF8
          C2394D0C92971267B9866F4B2BC3A4E9E0E9E32BCAAC694A51846352B34FDA62
          6AC6108D6C44EAD55082928AE93CF3FF003D8FFDFC3FE3479E7FE7B1FF00BF87
          FC6B13ED70FAFE8DFF00C4D1F6B87D7F46FF00E26BE63FB5D7F33FFC05FF0099
          F37F55F2FC3FFB536FCF3FF3D8FF00DFC3FE3479E7FE7B1FFBF87FC6B13ED70F
          AFE8DFFC4D1F6B87D7F46FFE268FED75FCCFFF00017FE61F55F2FC3FFB536FCF
          3FF3D8FF00DFC3FE3479E7FE7B1FFBF87FC6B13ED70FAFE8DFFC4D1F6B87D7F4
          6FFE268FED75FCCFFF00017FE61F55F2FC3FFB536FCF3FF3D8FF00DFC3FE35F8
          EBFF00051294B7C5AF07E642D8F87967C96CFF00CCC9E23E339FF3C57EB7FDAE
          1F5FD1BFF89AFC80FF0082854AB2FC58F08953903E1ED983C1EA7C47E23F502B
          F44F0AF3255B8D72DA6E4FDEA198FD96B6C0621EEDD96DFA1E467B87E5CB6B3B
          5BDFA3D3FE9EC7C91F67FEC9175B7F679F872BB338B5D7B9DD8FF99AF5DCFF00
          09AFA3BED7FF004CFF00F1FF00FEC6BE4EFD93EF367ECFFF000F537B8DB6FAF8
          E3A7FC8D7AEFBFE7EF5F44FDBFFDB93FCFE35F80F13E78A1C49C430F6AD72E79
          9B46D75A72E3F10ADBF91F7380CBDCB0383959FBD85C3BEBD6941DFA6FBEC6ED
          EEB36BA75BC97578C90411825E47930001CFF77D2BF0B3FE0A4BFB55FC4CF86F
          A35F5F7C356B0BD81AF2C6CDE6B86D4AFA1B682F2F61B579C69BA3466FF50903
          4CB1ADB432DA85129BB9AE560B696393F5B7E2B69BA9F89BC1DA9697A4DD4F6F
          79344E239233B59495E082181CE463823AF5AFC04D5BE0BF831BE3EC3E01FDA7
          8F89FC4FE07F88696BE1BF085E47E3BF19783F4AD17C6F25DDC4761A1EAC9E17
          D7344FB7DA78EC5E2E8FA75D5CDF0B9B6F12DAE8BA14106A23C5317F63FEA1E0
          761329E26E2EC061B30C760799578B8E0330551D3C7283537429CA9BF76B5549
          C28F3B509CED06A6E4A9CFE7F8B5E232ECB6B54A542BC9283BD6A2E3CD4AEADC
          ED49EB18E8E565751BBBA49B5F967F0F7E24FC26D67F68AF88F1FED83A3FC4AF
          8B36977F0E6DEC9F4EF849E16F8869059EBF2EAF61A8E9DA6D9587836FDADB59
          F0DF8DBC25ADBC9FDA7E20D7E7BFD3B54F05DFD99B8B2B6D663D2EDFBFF08FC6
          AF8C5A37C57F1BEADF03FC39F1B342F845A55CEAB77F06FE1DFC51F86DA2783B
          C13A069BA95BA1B0F096A363A3EBB3F8F2CB4CF0C6A3737363E12D46C7C40DA3
          69D69168179AE787FF00E11AD2F53F0E4DFAD1FB3FFC2BF03F82BE3478E3E05F
          89F45B58ADFC17AE25D781AE9E28E3175F0DBC4CADABF828DB7984DC5C5AE836
          AD77E04B8BD9486BCD6BC1BAC4AA0C7B4B7E9A78AFF66CF874FE19D40E89A3C0
          B7D2D94812410C7921E3CE548CAF5EB803B74AFDBF8FFC6CCBB84F30A9C0D9BF
          07E0272CB254F0D1AB5E146A61A4A1054E8E330F41E1E14E952AF86946A52A6F
          9E50A15BD9CA753DE6FE5726E14AD99D059C61732AC962632A9CB0738C95E579
          5394949B94E134D4A5A2728B76BE8B88FD877F6B5D23E38FC2FD1F5E125C4575
          3E9D9BDD37505FB3EA5A36A969BADB53D1754B626436DAA691A84371A75FDB96
          711DDDB4C8923A6C77F01FDAEBF6D87F84F7178F0EA42D60B669A49A53749145
          0430ABBC924AEEC8B1C512297791CAA2202CCC00AFCCED3F5AD7FF00626FDA4F
          5246325AFC32F8B9AB0B6D62386DD85BF877C77247F67B1F1048D0C812DEC3C4
          D6705B691AAC8D68238B56B5D2AFA7BA4FB75E48DCF7ED31F0BEDBF69FF89DF0
          6BE1C6B3AB4B65E0BF8B7F1CBE08F803C73A8C17A2DE4D3FC03E32F8B3E0CD0F
          C77A87DA3ED36FF664B3F07DEEB77125C79F6E218E3690DD5B2A99E3FCFF002D
          E11CA717C6795D6A3513E1AE25FABE232BAF392A90A3F58ACA957C2569DD47DB
          E5F59BA352EA0EA5354B12A2A957A4DFB35F1F88A596E214E0FEBD80E7862231
          BA94F923CF0AB14F570AD04A51B3766E54DB72833DDBE12FFC159BC27E39F195
          8786B4FF00893E17D5751D412E4D9E99A7F8B346BEBFBC36B697179702D6CAD6
          FE6B9B8682D2DE7BA98431398ADA19A77DB1C4ECB89F12BFE0A95E12F0A78AA6
          D3BC4DE2DF0E68E6599DAD975ED774BD2DEE2DE39CC6F3411EA1756ED2448D80
          D2229446E090462BE81FDA17E2EFECF5F02FC51F1FFE06785FFE0DF197E09E93
          E054F8ABF05BE1BFEDC83F666D0345F07858B4CF10F813C2DF183C3BF1674FF8
          037522A6BD62D6FE24D1356BAF88E9A86A9F6D86DAFF00C4B1EA5757170BF2FF
          00EC59F05FE11FC05FD8F66FDBABE277FC12F7C79FF0556F8C5FB53FED0BF15F
          E1EF83BC0FE1FF0083569F1C743F839F053E0778935AF8710EA575A25EF833E2
          5E9FE12D4B5BF1C7833C4529D68F84ED353D7A3BD834D5D46C2D34A9E7F11FEF
          30F06F865E7D5B0B4EAE2961A8E571C4D6E6C0E22155557899D18AA119528AC4
          424A29F3D0556D28CA2FE289F20F89B1BF528559421ED2788F6705EDA9C935C8
          A6F99AA8F9251D749B8E8EE8F5EF83DFF0536F0BF8AFC49A9F87347F18F876EF
          5587428B5E8B49D3BC41A5DD6A2FA4DC5A585E5B6AA9636F772DC9D3AE2DF51B
          1B882F847F669A0BDB496395A2B9859FBCF821FF000521B0F1DFC5BBFF008751
          F8AF4DBCF1169FFE9379E1C8B5BB29B5BB4B0DF649F6DB9D252E1AFE0B406FEC
          47DA25B748B37969F37FA4C5BFD03E0AFC31FD9EBE357ECBFF00F050DF8B17FF
          00B01780BF63FF008FFE30F8F977E09F827F0CF56F82FE12F0A7C63F8356BF0D
          7FE09BDFB317C76B2F855A4EA47C03E05F1578274BF14E8FF0F3C69E2A6F0A68
          DA4E91A49D4FC6BA9349697B6DAB6A5AE5E711FF0004DAF80DF01348FF00825F
          F8FBE396A1F0C3C0775FB527C4DF14E91F1E24F89FAAF82BC337BF13FC3BF063
          E28FED41A8FC1FF85BA0689F1127B093C57A7F84FC41E1BFD9F753D747876C75
          3834493FB66E6FDAD8DDEAFA8C1178F9F783B9360B039FE3A94E73C3E1385AB6
          7542B4E94A9BFAC6169622B54A13854E5A90E7A5439D29C23383A91538A71925
          D183E25C4D5AB83A52828D4AB98D3C1CE0A6A5EED6942319A945B524A53B3B37
          1766D3D55BF78FC27AE1D5BC3FA66A0C858DC5B472125B93B94373F2F5E79C93
          CD745F6BFF00A67FF8FF00FF00635E3DF0DEFB1E0BD046F938B28BDFF817DEBB
          9FB7FF00B727F9FC6BF827119E4215EB46355A8C6ACE295D68949A5B33F60A79
          7C9D38369DDC53EA751F6BFF00A67FF8FF00FF006347DAFF00E99FFE3FFF00D8
          D72FF6FF00F6E4FF003F8D1F6FFF006E4FF3F8D63FDBCBFE7F3FBD17FD9CFB3F
          C4EA3ED7FF004CFF00F1FF00FEC68FB5FF00D33FFC7FFF00B1AE5FEDFF00EDC9
          FE7F1A3EDFFEDC9FE7F1A3FB797FCFE7F7A0FECE7D9FE2751F6BFF00A67FF8FF
          00FF00635F923FB7ECFBFE2B7850EDC63E1F588FBD9FF998BC49EC2BF51BEDFF
          00EDC9FE7F1AFC9FFDBCAE7CCF8A9E173B9CE3C016239FFB187C49EF5FAB782B
          9BAC478879452551CB9B0F9A3B7F872DC4BFD3E7B753E7B8A302E9E4D889D9E9
          530FDFAD7823EB2FD95EF553E02F8054B3710EBFD36E3FE46AD70F76CFD7DEBE
          83FB7AFF0079FF00F1DFFE2ABE54FD97EEC2FC0BF02AEF3C47AF8EFF00F434EB
          9FEC9AF7DFB68FEF9FD7FF0089AFE4FE33E29A54F8BF8AE9BA8D3A7C499E42DC
          CBECE678A8F6F2F99FA565797B79665CECF5C0E11F5EB87A6FF53AE37E84104B
          907820ECC11E87E6AF827F6C7F837E1DF88BE10D4DA4110B86B69B044DE44B1B
          EC621E29A191668665621A29A2749639155E27474561F62C97DB6391839CAA3B
          0EA3A293D76F1D2BF133F6E6FDA96EFE1645AEDD5EDCCD6FA2E970DEDF6A53AA
          DC4C20D3EC2196E6EE7305B4534F3795043249E54114B348176C513C8E8A7DEF
          0CF35CDF37E29C0D2E1EAF56198D2AD4AA5174A6D5494D4D72469F2352F69CD6
          E451F79CADCBAD8E3CFB0F84C3602ABC6C14A8CE328CF992715169DF9AE9AB6E
          DDF4B26DE879CBFC5FBEBB97E1DFC48F14EA2D17C54F81FABE99F07FE325FB8B
          7B49BC6FF0E3C617B1C1F0C7E2B4C6D9562BA9EDFC7312F85B54D3AC62B1874C
          F13F8DBC5BA98D2F4CF0F5EF867ED7FA1FE24FF82867C29F05787226D4FC47A3
          C06D6D628EE66BFD46D2DE2198C83BA59E544CF0782D9EDC57F373F1F3E215DF
          8A7C07A57C4BF06EB29A65AF8EBC0F796D26AF3C17D6F16A1E09F19E976F737E
          9750FDA745D4ADE39ACC58EB5A7493DC5A4FA0F8934AD03C46B12EA7A0D9797F
          227C10F8C5E01F1578EECB413F114C5E23B894595ADD6908DE11BFD4C721B4F9
          BC55A3E9DA26A5E2B86543362CF57D7B5E330770A245200FEFDE25E11E1FF16F
          0396F19F1354CE7059B645974F2FE26C0E4D944B1957155F2EA938471D56B4AA
          E1E860DCE94650AD1AD27ECA545C553508C652FC6B2FCC719C3556BE57808E16
          AE17175D57CBEAE2B13ECA34A15E29FB28C6309CEAA53D69F2AF794D3E6BBD3F
          647F6C6FDA5FE127C71D2359F0FCFE1BD4350D4B5AD3659F47492CEDF468F5CB
          6652CB71E1CBFF001549A3691AEDC42CA97102E8D797F72922C534316E1193F2
          87C26F851FB407C7E97E1BFC3ED33E2B0F84FA9DFF008E3E17F87E6F8E7A8E87
          A8369FE08F0F6B3E22F094BE21F1C5DE81E297D22E2E358F03F86F50D59352B4
          D4353D274ED43C4BA1DDB5AF8B34FD2EE20F11DAF8AF8E7E36FC14F807AD2E9B
          A94DA5E8AD7B2C9751C363A6DCDDDE5D4BB99A7BD9AD746B1BDBA292CC640F7D
          728B1CB3874F39E60E2BDB3C35FF000521F843E1BF869FF096695E21B582D06B
          171A19B8B8D2B56B4BA9754B4B2B4BEB9B5B4D3AEF4D8754BE30DADFD94B2CB6
          565710289C29977A488B5868E3787F21CA70BC11C099DE6997BCD3098CC06373
          FA95330A756BC52854A3469E1B03470B4A96329D274713878CB12EAC6952726E
          7422E2E6E96371989A99B66D85A15BEAF56955A58282A2E307F0CA729D69CE72
          A4DF3424D4395CA492519BBFF577F04BC1BFB4DFC1CD727F11FED3DFF05A8F87
          3FB707C0DD2BC09E2DD0FC4BFB385B7ECAFF00B3878035CF88A9A9F85EFB45D2
          2D878F3C05E3AF11F8EE5BCB7BEB8B6BAB946B5D406B6AB3C3ADDC25B5C5D5EC
          5F38FECA30FC5C3FB1DE8FFB2F7C1DFDBD61FF00827C7C4FF84BF17BC7BE23D1
          FC6DAFFC17F839F183C23E39F869F10F5BD63C6FA968777A47C5DB7D3AC5757B
          7F1EF88FC43A85A5FE95E2FD2352D3E0905B5D58EBBA75ED845A27E12681FF00
          052CF0EF887E1AEB7E30D0B5BB7BCB3F0F41737DAC5D416D74B75A75AD9DA3DE
          DC35CE9CD6A9A9C4CB6D14D2A426CBCE9D50882391885AEB9FFE0A23E1AD5BE0
          741F15349D5E2BAD1221A94979AABE9FA8DBCB1C7A4493C57DBAC2EB4F8753F3
          2292DDD52216665B9F91AD52759A12FE9E37C60F1729E7B97E61FEA2E0B0B87C
          255AFC3D5F2E72CC651AF8CCC3D96269D3C462651855A15D47074A783C3A8F3A
          4B10D46A46B4D4796970B70D4B095E83CDEB549D454F1D0AEA1878F252A0A707
          285257A7383F6D25564DD9B70578B826FF00703C3FA2FC41F84D259DD7C52FDA
          8BE1B7ED4BF116EBFE0AC3F04BE27F8DBE3159E8BE08F015B78FBE0AEB5FF04F
          DF849FB32FC53F176ADF0CBC1336ADE17D0345D3F461E37F07DCC3A2CBAAF87A
          E64D3A05D4753B6D5AF752B4B18BC35F0FBC2DE006FDB4BE167813C63E15D43E
          137817F66EFF00825FFECBFF00B3B18F5EB0935BF18E83FB32F8AFE2A6BFE3BD
          62CED6291ADB5853AB7C46BBD5351D4748BDD5649EEE7D4F52D50DB79F15C5DF
          E37E9FFB7CF87B54FD9E3FE170596A292786CDB6AF7C358934DD46D98DBE8575
          7B63AA48BA7DCE9F0EA6CF6F73A75E42912D9B4D72F106B549D6584C997E13FD
          BFAC758F815AC7C58B0D4849A0D9D8EA7AA4BABC7677B1CB1E9FA2B5C2EA731B
          27B24D4CB5A359DDA1856D0DC48D09586290940FE1E73E2EF8A79AE579F65B53
          83F0984C363B1D9870A621CAA63A7570D8CCC32BC7650B032AB5A3CF2C550955
          A58BF6355BC4D5C46064AA2B55ACD75E178638770D88C1D78E675AA54A54A866
          30B428C61529D0C4D1C52AAA10B254E6A12A5CD0F7230AD78AF7629FF4C7E07D
          6F4DD3FC33A4D84DA8422782DA38DD7CD8F3B822E47DFE4D758DE27D250ED7D4
          6156F432C79FFD0ABF8F6F00FF00C15D7C19AF78B744D213C7332C9A85EDBDAC
          22EF4EF1169D0CB34F3470C30FDAB51D2AD6D51E591D52357994BB9014135E81
          F1BFFE0A7FA4FC3BF10470EB3E2B6D3D2F21F32D2DD1750BFBA9635D88D32D9E
          996B7974B00909413BC290B3A3AABB18E4DBFCC189F037C42FED7A797D6CBB31
          A78CC6D2AD8AA542581C446A55519FBEA9529535526A376DB8C65649DCFD0A9F
          16E4BF5675A35A93A749C69CA4AAC1C536B4E66A5CB1BF9BDFCF43FACA3E26D2
          82073A84210F46F363C1FF00C7EAC41AE595CFFC7BDD24B9E9B1E36FFD9EBF95
          8D63FE0A5DA3C3F00348F8B71F89EE8785EF6E25822D55AC75C4966921D666F0
          FC889A63E9CBABB15D5E192D4FFA095DA8F7409B4FDF8FD18FD887F6A193E2BE
          97A1EB2DA91BAB0D66C6CF50B0B877957ED1677F0C773693AC73224C82682549
          0248892A6EC3A2B6547C77117877C53C35936373ACC6862A8E1B039862B2CACE
          AD09D251C6E0DA588C349CE2B971146F1F6B41DAA53E65CF18DCF4F039DE5D8F
          C552C2D09A954AB469D7872CD4AF4AAFC15125BC25F665B4ACECF43F663EDEBF
          DE7FFC77FF008AA3EDEBFDE7FF00C77FF8AAE3D2FD5D15D5C90EA1863278233D
          76D3BEDA3FBE7F5FFE26BF17FF005B28ADEA3FFC097F91F53FD9CDF47F89D77D
          BD7FBCFF00F8EFFF00155F965FB71DC897E29786CE5881E02D3C738FFA183C48
          7B123D2BF47FEDA3FBE7F5FF00E26BF317F6D4B8DFF13FC3E771E3C09A70E413
          FF0031FF00127A8AFDC3E8E9C474B17E2C643414DC9CF099DBB7327F0E4F8D97
          6F23E4B8E304E970E632767A55C26FE78AA4BAFA9F4A7ECD17EA9F04BC148586
          557C400FCADFF434EB7FEC9FE75EEDFDA2BFDE1FF7CB7FF135F2DFECE57BB3E0
          D783D7CC6183E2118DBFF534EB7ED5EDFF006FFF00A68DFF007CFF00F5ABFCF3
          F11B8FEA51F10B8EE8AAE92A5C65C4F492E6869ECF3BC742DF0F4B1FAEE49962
          964D94C9C65EF659807B3EB85A4FF97A9D84FA8AF9337CC3FD549FC2DFDC6FF6
          6BF99CFF0082AE5CF9BE10F89BCE777853C5A3A763A26A47D07AF3E9FA57F462
          F7BBD197CC6F99597EEFA823D3DEBF30FF006B9FD9B6CFE29699ADDBDD5A3DD4
          7AA5ADE5B4E8AAE0BC1771490CCA0A60A178DD86E0432920821871FA47D1D7C6
          6CA3867C44CB331CF719ECF074B11859C9A953BB54EBC6724B99457C29EF25AD
          AF65A9E1F1A70EE231F9357A185A6E55254EA2574ED771715B46FBB5B1E3FF00
          F059DF87D07C76FF0082914FFB3F45A80B21F18FE377EC8DF06B579A292589F4
          FD27E2DDAFC08F036A97523DB4534F02C5A4788EEE769D2198C518327932AA98
          DBEF9F1AFEDFFF0004FE1BFED1DE07FF00826B695FB23FECF771FB1F6A5FB42F
          847F6441F0E6CFC3D258EB5A5788FC41F1234BF82DA7F8DEC6E619CF87A1B9D1
          FC537C9E28761E191E2B7B5B292587C616BAF95D7E3C7F8C5FB3DFEC41FB44FC
          56B6FF0082826B1F1B7F6A5F87FF00B6B681E0DF0778C2D3E10E97A8DE43F053
          5DF8F9F087C03A5691E01D5B52D161F859E20B482CA4F12785FC3534777E1FF1
          F783E2DDA6D9EB8D07873566BDB81D0DA7ECC3FF0004B2F167ED63A77FC14775
          28FF006996F8F9A5F8D93E34D97ECBFA9788750B8F839A5FC76B75FED81E3FD3
          E0FF00844DC43A8FFC26A5BC5B1C90FC4E83C3D26B8CD7F378223B091FC3F5FE
          D9603C59F09F2AC6632AE1FC7AF0F301966338A333F1173451CF326A92CCF20C
          DAB622ACB8671719E2275E8661856AF572D71A79862162A0E960EACE854847F9
          62B70FF106268D0854E11CEEB56A39750C930EBEA98A8AA18EC3C29C163E9B50
          8C2546A24F93109CA8D374DF3D48F3A6FE1EFD99FC3DE2DFF827C47FB757ED23
          F01FE017827F69AFDAEA5FF82947843FE097FF00B3369BE3CBA4B66D1A1B4F0F
          E9BAAEA97561E20BD7F0FF00FC23DA6F8D6FBC6E96DE22D562F12786F4C9E2D2
          2CEF3C4F79A3687A36A33DD7DE63C4BFB73F89E7F16FEDDFFF00056FFD81FF00
          674F862DFB107C399744FD927C21A6F8BBC27F12AC35DF8A1FB4A7C44F877E17
          F19FC41D6FFB13E297C5AB0B093E1D5BF80BC076DA0B5D59F85B55821F187891
          B46D4B54BCB84BFF0007792FC2BF087C21F891E1DFDA3FE0AFED63E32F8E7F09
          B4DF8B9FB4668BFB5FF80FE3B7C03F12788BC35F107E157ED03A487B7D4FC61E
          16D6743D2BC4DAA695E25D534A8B4ED22CF53B8F0D789AC1ACA3B992E61D3358
          B3D1B5BB7FB2BC6BAE7ECB27F677F00FEC5FE30F8DDFB55FED63FB3C7893C03F
          197C13F16BE2CFC56F1678E75AFDA36D7C43E26F88FE0CF89DF0B7E20EB3E3CD
          5FC2BE089FC4DAB7C38D5ECB5BD2BC173E9DA25D4FE1BD0B4AF0F585C586AD63
          6773A6EBDEA70E7D21FC19CC3C3FA59A613C58E10E1CAB89CB70D92E4D82C6E7
          F80C3E6D92E3F131A393E1F158BE1CC462E35717470D8FAB4F37A98D782AB4A9
          603DBD6AF5A386C25474B9F1DC1DC4F4B39950A9C3B9963542BCF158AAF47075
          E787C4D0A7CD89A94E8E3A14F929CEA518CB0CA97B48CA759C6308BA9523CDF9
          13FB757ED25E13FF0082907EC1DFB7CFC4CF177C25F865E13F8F7FB14F87BE0C
          EB8FF15BE1F595DE9B3F8DFE1C7ED03A87C44F87561E03D5A1D467D6F579CF87
          753F0CCDAFB7F68F88AF2C82DCD849A35AE8AEBAAC5AF7DADFF05A2F84BA5FED
          5FFB5C7EC4BF0DB47D17FB42CB57FDAF7C09FB22FC63564FB423786F4DF0CFC1
          AFDABF5B711C70A3189FE0FF008F7C7CD3DB4AE611FD99BDAF21FB7B7D8BE6EF
          8D7FB1E7EC89F02FF621F8EDFB207EC2BE28F8D9E3ED5BF6ADF13786B55F8EDF
          1F3E364F7BAD78A757D13C1169A8CBE07F0CC96BFF0008D7C32B3D42CFC33AF6
          A6FAB69F6F0785B4B243EA6351D67539EE74C9F49FD0AF19FC56F85FA8FC68FD
          BC3E245A788754D565F121F87BF14BF643BA87C27E2EB44B1F8ED07EC73E3DFD
          953C65E259D6F34986E34C90786BC6B1E91FF138B3D0E3B8B4D3A69ADF52B88C
          DA2B7361BC77F0470B1C464F9B78B1C1F9F6639554E1A79AE770CE72C8D2CDB3
          7C9B2FCEB3D78DC26269D7FA9E3A12A79461327AD5F095AB4218DC560B2FA93A
          78ECC30346BDCF8578A64E18AC2F0F66783A15E3982C3612585C473E1F0D8AAB
          83C1FB2AB4E50F6945A9E26AE2A10A918B74A9D5AF18BA346ACA1F09FF00C155
          23D1BFE0A05FB6AFFC12F3E14784EC64BEF05FEDADF0B3F667F1CEA9A75AC82F
          2ED3E065F78AFE23FC66F8917D15C5AC216E12CFE16E89ACACB74B1ADB38984B
          2882D5A59E0F1BFF0082CBFC6BF84FFB657ECBD6FF00B6F7C10D4AD757F07EBB
          6BFB507ECB5E29B8B082F23821D53E0BF897C5F77F0D352BC7B982DD64D47C79
          F0FF005797C628BE531B6D1EEB48B58EF2F62836D87DC7F03B49F85DF09FE32F
          EC95FB405EF8F17C5FE2DFD8E3FE0913F0CBF64AF861E09BCF873E34B3B6D5BF
          695D3ED6EF47F12EB375AA881ADF4ED32D3C3D669E1FBF68EF134F974EF165EC
          9A378A75492DAE2D85DFDAFF00E317893FE0A01FB17FED2BFB3CFED0D1781FE1
          E7C40923F09EBBFB3EEABE07F0378EAE6C6F35FD9ADE91E2B1ACA5DEBBE29852
          F60F0D6AD7B63A6B5CEA9E17B29CEB5224D7CEB0CBB7CECEFC74FA3F4E866592
          47C4DE16AD98F10E679971BD1C461F31C2D5C051A9916330B8AA343178DBDB05
          98E2F03954B0D97E0ABF255C7D4C54B0F42156BD7C2F3F460F85B8C23530D8AF
          EC2CC2387C0E1E865338CE8D48D5947194EAD39CE145C6F568D3A9888D4AD561
          78D154B9E72518D4B7DEBF1CBE2A7FC1576FBF6D61F05BC37FB0C7ECDDE3BFF8
          26C6A5E30F85FA678E3F680F899E3EF05BEB73FC22D53C2DE12D53E346AD75F0
          FAFBE2D45AB4FA9F8575CB9F19691E1DB1D43E16DDD8EAADA269925CD9DC6977
          C75E1F8BBFB17DF7C02FD90EEBFE0A0DFB7D782BC05F0FFC757F75FB784FFB1D
          7ECBFE25F1742DAF597C3CF853E1BF00C1F19EDF53D0255686EBEC7E2AD27C4F
          65693DDE83E20B2BAD4E7D1B499A6B88ED74EB98759FD08F885FB4178C752FDB
          EAC3E27687F1CBC777FF00B226AFAEE83A3F8CBE1EEB9078EB59F85FAF7C3ED4
          BE11587843C67A64FF0009B58B464B62FE296BDD64CD6DE1437B73AA5BCF7422
          BAB4D56EA4B9F90BE1EFC07FD93BC63F0FBF6A4FD8D7F684D63E2B7817F678F8
          93F1DE2F8EFF0006BE2AFC16BBF11E87E23F0178B3C3D15E784ADB56D1E13E19
          D7B51B5B8F137C398344F0D2C7E21F026B965268A2F6D759D234BD5A0D2B51B0
          BCC3E92FE137126618ACAB27F12B86B86B1F3CCB8EF83B09C478ECFB2CC553CB
          B1F85A9964F05C4382C556C456C252E1CCDE861F131CBB318CFF00B3E3887415
          3AB171527187E08E21C051857C56458EC6D1587C9F33AB81A183C45396228CD5
          755B055A9C631A92C761A53A6EBD1B7B670734E0D3B1F3EDE7ED2D2FEDF9FF00
          0552FD987E27FC69B3F09681F0BFF635F873E36FDAE3E2DEADE09D335CB5D33C
          3BF0DBF656B4F12F8FBC27E27D5EDF52D67C4570ED1FC5CF1A785BED32ADDDB5
          9CB6BA75BC30DBC57EA8350F7AF8DFF16FC29F11BE31FC01FDB37E1CC90C5E03
          FDB6FE04780BE2C3436715D259E8DF117C39690F813E24784613756F6E67BBF0
          B5EE8BA3DA6AF726DED9EE3599EFE692062E2F6F7D97F657F829FB257FC1343C
          45F1D3E287EC81F197E297ED15F127C75F087E14FC34F00C3FB49E85E24D735C
          D1E6D3BE2778FF00C53F1364D53C55A4FC3EF8496973E18D4745D5BC0D369BA4
          016FA9C5AA7842284EA97F657705BE89BDFB497C60D4FF006C9F829E05BDF8A5
          0F867C25FB46FC25F8D5AAC9E19D1BC17E14F1959E83AD7C23F11F8774FB7D5E
          586FF54BCF13D9DAEAD27882C74A9EF21BCF1259F9B6DE1F5FB3E96ED730C83F
          37F14FC51F07711E1567DE1DE2FC58E16E27E32C3E4B8DE319E7184CE32BC6E5
          B9BE614733C4E1EA5359AE1AAD4C2BCEEB65B0AF1C365509FD66BD1961DC29D4
          788C37B4F7720C8B8929F1160B3BA5C3B986032B96229E571C354C357A35F0D4
          658785452786A90553EAB1AF287B4C4CA3C909C669B8A854B7D35E13F10A6A7A
          0E9F77BC1324099E189FBA3A90BC9CE7FF00AC38AE8FFB457FBC3FEF96FF00E2
          6BC2BE1A25DE95E15B0B3BD9A469E28D158B29C921467A8FF3F957A07DBFFE9A
          37FDF3FF00D6AFF0AF32E3F54730C652A18B8CE8D3C4D68D392942D2829BE56B
          DD5A5B6F23FAD28659CD4694A709464E116D59E8F955FA77D0ED7FB457FBC3FE
          F96FFE26BF363F6C6B9F3BE26684CA7EEF81B4D078C7FCC7BC487B815F797DBF
          FE9A37FDF3FF00D6AFCEFF00DACEEBCCF895A41DE4E3C11A58E57D75DF137B57
          F47FD0FF008D679978F3C2B847594954C0712CAD78BFE1F0F6633BE91BE9CA7C
          4789397AA5C23984D27A56C0AD5596B8CA2B5D3CFEF3E7FF00873F1CBE29689E
          164D1F4AF149B4D374DD7BC6367656C345F0ECE20B683C61AEC7147E75D6933D
          C49B540F9E696472792C6BBAFF008686F8C5FF00438B7FE083C2DFFCA4A28AFF
          004871BE00F82998E33179863FC2FE0BC5E3B1F89AF8DC662ABE45839D6C4E2F
          155675F1188AD374EF3AB5AB549D4A937ACA726DEACFC3E971871450A54E8D2C
          FB33A74A8D3852A54E38AA8A30A74E2A108455F48C629452E89241FF000D0DF1
          8BFE8716FF00C10785BFF949504DF1F7E2D5C0C4DE2C59474F9FC3DE153FCF43
          A28AE75F476F02E2EF1F0A381D3EEB21C127F7AA65BE34E2B7BF1066AFD71751
          FEA551F1BFE278E4788E007A71E1BF0A0FFDC1D393E397C518CEE8FC4B0A37AA
          F873C280FF00E98E8A2B47F47CF045DD3F0B782DA7BA792611DFD7DCD49FF5C7
          8A7FE87D99FF00E14CFF00CC46F8E1F141D8B3F8920663D49F0DF8509FFD31D1
          FF000BC3E286DD9FF09241B739DBFF0008E785719F5C7F61D1451FF12F9E08E8
          BFE216F05D96A97F6261347DD7B9A07FAE3C53FF0043ECCFFF000A67FE61FF00
          0BC3E286DD9FF09241B739DBFF0008E785719F5C7F61D27FC2EFF89DFF00431D
          BFFE137E14FF00E51D1451FF0012F9E08EBFF1AB782F5DFF00E11309AFAFB81F
          EB8F157FD0FF0033FF00C2A9FF00980F8DFF0013C104788E0047423C37E14C8F
          A7FC48E95BE387C507259BC490331EA4F86FC284FF00E98E8A28FF00897CF047
          FE8D6F05ED6FF9126136EDF06C1FEB8F157FD0FF0033FF00C2A9FF0098A7E38F
          C512A10F892128390BFF0008E785703F0FEC3A69F8DFF13CF27C47013D39F0DF
          850FFEE0E8A285F47CF0456DE16F05AF4C9308BFF6C0FF005C78A7FE87D99FFE
          14CFFCC55F8E1F1410865F1240AC3A11E1BF0A03FF00A63A51F1CBE28ABEF1E2
          5843E73B87873C2B9CFD7FB0E8A28FF897CF043FE8D6F05ED6FF009126136EDF
          06DE41FEB8F157FD0FF33FFC2A9FF99757F684F8C0802A78C0AA8E817C3FE160
          3F21A1D3BFE1A1BE317FD0E2DFF820F0B7FF002928A2B27F475F029EAFC28E06
          6FBBC8305FFCACAFF5D38B3FE8A1CD7FF0AEA7F987FC3437C62FFA1C5BFF0004
          1E16FF00E5257DC5FB0EFECD3E1AFDB9F58F8B7AE7C6EF1AF8F92F7E1F69BF0E
          34AD03FE10E9BC19A0C26D75DBAF885777DF6E8EE3C17AA1B897CDD3EDFC9747
          8446BE62957DC0A9457E93E11F81DE10643C7F92663927873C259563E9C334A7
          4F1980CA30D85C4C215728C742AC215A94635231A906E134A4B9A2DC5DD369F8
          5C49C57C498BC9B1747159DE6388A4DE1E4E956C44EA41B8E26938B7193716D3
          D55D68F55AA3FFD9}
      end
      object QRImage2: TQRImage
        Left = 8
        Top = 37
        Width = 157
        Height = 116
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          306.916666666666700000
          21.166666666666670000
          97.895833333333330000
          415.395833333333300000)
        Center = True
        Stretch = True
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 433
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 328
        Top = 8
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          867.833333333333300000
          21.166666666666670000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'gina:'
        Transparent = False
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 201
      Width = 718
      Height = 232
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        613.833333333333300000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBRichText1: TQRDBRichText
        Left = 0
        Top = 8
        Width = 713
        Height = 209
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          552.979166666666700000
          0.000000000000000000
          21.166666666666670000
          1886.479166666667000000)
        Alignment = taLeftJustify
        AutoStretch = True
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        DataField = 'CONTRATO'
      end
    end
  end
  object DataSource2: TDataSource
    OnDataChange = DataSource2DataChange
    Left = 120
    Top = 124
  end
end
