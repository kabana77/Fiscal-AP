object SisdurFrm: TSisdurFrm
  Left = 216
  Top = 61
  BorderStyle = bsDialog
  Caption = 'Sistem dan Prosedure'
  ClientHeight = 575
  ClientWidth = 688
  Color = 8454143
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -160
    Top = 74
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMFrm.QSisdur
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
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      154.000000000000000000
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
    object PageHeaderBand1: TQRBand
      Left = 58
      Top = 48
      Width = 698
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
        1846.791666666667000000)
      BandType = rbPageHeader
    end
    object DetailBand1: TQRBand
      Left = 58
      Top = 88
      Width = 698
      Height = 953
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
        2521.479166666667000000
        1846.791666666667000000)
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 424
        Top = 0
        Width = 274
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333400000
          1121.833333333333000000
          0.000000000000000000
          724.958333333333400000)
        Brush.Color = 14671839
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 425
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          0.000000000000000000
          1124.479166666667000000)
        Brush.Color = 14671839
        Shape = qrsRectangle
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 48
        Width = 185
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          127.000000000000000000
          489.479166666666600000)
        Brush.Color = 14671839
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 96
        Width = 185
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          254.000000000000000000
          489.479166666666600000)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 184
        Top = 96
        Width = 514
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          486.833333333333400000
          254.000000000000000000
          1359.958333333333000000)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 16
        Top = 16
        Width = 401
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          42.333333333333340000
          1060.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'NAMA_TRANSAKSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRShape6: TQRShape
        Left = 184
        Top = 48
        Width = 241
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          486.833333333333400000
          127.000000000000000000
          637.645833333333400000)
        Brush.Color = 14671839
        Shape = qrsRectangle
      end
      object QRDBText2: TQRDBText
        Left = 192
        Top = 64
        Width = 225
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          508.000000000000000000
          169.333333333333300000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'FORMAT_NOMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 192
        Top = 112
        Width = 489
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          508.000000000000000000
          296.333333333333400000
          1293.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'TUJUAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 16
        Top = 64
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          169.333333333333300000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1. Format Nomer'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 112
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          296.333333333333400000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2. Tujuan'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 144
        Width = 185
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333400000
          0.000000000000000000
          381.000000000000000000
          489.479166666666600000)
        Shape = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 16
        Top = 160
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          423.333333333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3. Referensi'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 184
        Top = 144
        Width = 514
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333400000
          486.833333333333400000
          381.000000000000000000
          1359.958333333333000000)
        Shape = qrsRectangle
      end
      object QRDBText4: TQRDBText
        Left = 192
        Top = 160
        Width = 489
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333300000
          508.000000000000000000
          423.333333333333300000
          1293.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'REFERENSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 240
        Width = 185
        Height = 473
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1251.479166666667000000
          0.000000000000000000
          635.000000000000000000
          489.479166666666600000)
        Shape = qrsRectangle
      end
      object QRLabel4: TQRLabel
        Left = 16
        Top = 256
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          677.333333333333400000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4. Diskripsi'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 184
        Top = 240
        Width = 514
        Height = 473
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1251.479166666667000000
          486.833333333333400000
          635.000000000000000000
          1359.958333333333000000)
        Shape = qrsRectangle
      end
      object QRDBText5: TQRDBText
        Left = 192
        Top = 256
        Width = 489
        Height = 449
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1187.979166666667000000
          508.000000000000000000
          677.333333333333400000
          1293.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'DISKRIPSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 432
        Top = 19
        Width = 257
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1143.000000000000000000
          50.270833333333330000
          679.979166666666800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'KODE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 24
      end
      object QRDBText7: TQRDBText
        Left = 432
        Top = 65
        Width = 257
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1143.000000000000000000
          171.979166666666700000
          679.979166666666800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'BAG1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRShape11: TQRShape
        Left = 0
        Top = 712
        Width = 185
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          1883.833333333333000000
          489.479166666666600000)
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 184
        Top = 712
        Width = 514
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          486.833333333333400000
          1883.833333333333000000
          1359.958333333333000000)
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 8
        Top = 728
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1926.166666666667000000
          275.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5. Distribusi Bukti'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 192
        Top = 728
        Width = 489
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          508.000000000000000000
          1926.166666666667000000
          1293.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'DISTRIBUSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 0
        Top = 760
        Width = 185
        Height = 145
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          383.645833333333400000
          0.000000000000000000
          2010.833333333333000000
          489.479166666666600000)
        Shape = qrsRectangle
      end
      object QRLabel7: TQRLabel
        Left = 8
        Top = 776
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2053.166666666667000000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '6. Otorisasi'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 184
        Top = 760
        Width = 514
        Height = 145
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          383.645833333333400000
          486.833333333333400000
          2010.833333333333000000
          1359.958333333333000000)
        Shape = qrsRectangle
      end
      object QRDBText9: TQRDBText
        Left = 312
        Top = 800
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          2116.666666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'BAG1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 192
        Top = 800
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          2116.666666666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1. Dibuat'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 312
        Top = 776
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          2053.166666666667000000
          240.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DEPARTEMEN'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 496
        Top = 776
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          2053.166666666667000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'JABATAN'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 496
        Top = 800
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          2116.666666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'JAB1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 192
        Top = 824
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          2180.166666666667000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2. Mengetahui'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 312
        Top = 824
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          2180.166666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'BAG2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 496
        Top = 824
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          2180.166666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'JAB2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 192
        Top = 848
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          2243.666666666667000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3. Disetujui 1'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 312
        Top = 848
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          2243.666666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'BAG3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 496
        Top = 848
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          2243.666666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'JAB3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 192
        Top = 872
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          2307.166666666667000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4. Disetujui 2'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 312
        Top = 872
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          2307.166666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'BAG4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 496
        Top = 872
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          2307.166666666667000000
          447.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'JAB4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape15: TQRShape
        Left = 0
        Top = 904
        Width = 185
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          2391.833333333333000000
          489.479166666666600000)
        Shape = qrsRectangle
      end
      object QRLabel14: TQRLabel
        Left = 8
        Top = 920
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2434.166666666667000000
          280.458333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '7. Tanggal Update'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape16: TQRShape
        Left = 184
        Top = 904
        Width = 514
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          486.833333333333400000
          2391.833333333333000000
          1359.958333333333000000)
        Shape = qrsRectangle
      end
      object QRDBText17: TQRDBText
        Left = 192
        Top = 920
        Width = 84
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          508.000000000000000000
          2434.166666666667000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QSisdur
        DataField = 'TGL_UPDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = 'dd mmmm yyyy hh:mm'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 58
      Top = 1041
      Width = 698
      Height = 24
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
        63.500000000000000000
        1846.791666666667000000)
      BandType = rbPageFooter
      object QRDBText18: TQRDBText
        Left = 0
        Top = 0
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          0.000000000000000000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFrm.QDateTime
        DataField = 'VUSER_CETAK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = 'dd mmmm yyyy hh:mm'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 646
        Top = 0
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1709.208333333333000000
          0.000000000000000000
          103.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Hal : '
        Transparent = False
        FontSize = 10
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 105
      Height = 19
      Caption = '1. Nama Bukti'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 168
      Top = 46
      Width = 79
      Height = 22
      AutoSize = True
      DataField = 'FORMAT_NOMER'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = DBText1Click
    end
    object DBText4: TDBText
      Left = 168
      Top = 16
      Width = 79
      Height = 22
      AutoSize = True
      DataField = 'NAMA_TRANSAKSI'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 33
      Top = 48
      Width = 109
      Height = 19
      Caption = 'Format Nomer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 624
      Top = 46
      Width = 49
      Height = 22
      Cursor = crHandPoint
      DataField = 'KODE'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = DBText1Click
    end
    object Label8: TLabel
      Left = 570
      Top = 48
      Width = 41
      Height = 19
      Cursor = crHandPoint
      Caption = 'Kode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label8Click
    end
    object Label9: TLabel
      Left = 450
      Top = 48
      Width = 101
      Height = 19
      Cursor = crHandPoint
      Caption = 'Pembebanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label9Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 688
    Height = 70
    Align = alTop
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 69
      Height = 19
      Caption = '2. Tujuan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 168
      Top = 16
      Width = 497
      Height = 41
      DataField = 'TUJUAN'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 143
    Width = 688
    Height = 103
    Align = alTop
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 90
      Height = 19
      Caption = '3. Referensi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 168
      Top = 16
      Width = 497
      Height = 81
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Color = 12713983
      DataField = 'REFERENSI'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 2000
      Top = 14
      Width = 497
      Height = 81
      BevelInner = bvNone
      BevelOuter = bvRaised
      Color = 12713983
      DataField = 'REFERENSI'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 246
    Width = 688
    Height = 200
    Align = alTop
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 3
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 84
      Height = 19
      Caption = '4. Diskripsi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo3: TDBMemo
      Left = 168
      Top = 16
      Width = 497
      Height = 177
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Color = 12713983
      DataField = 'DISKRIPSI'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBMemo4: TDBMemo
      Left = 2000
      Top = 7
      Width = 497
      Height = 177
      BevelInner = bvNone
      BevelOuter = bvRaised
      Color = 12713983
      DataField = 'DISKRIPSI'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 446
    Width = 688
    Height = 48
    Align = alTop
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 4
    object Label5: TLabel
      Left = 16
      Top = 16
      Width = 90
      Height = 19
      Caption = '5. Distribusi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 168
      Top = 16
      Width = 65
      Height = 19
      AutoSize = True
      DataField = 'DISTRIBUSI'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 494
    Width = 688
    Height = 81
    Align = alClient
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 5
    object Label6: TLabel
      Left = 16
      Top = 16
      Width = 115
      Height = 19
      Caption = '6. Tips dan Trik'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo5: TDBMemo
      Left = 168
      Top = 16
      Width = 497
      Height = 169
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Color = clYellow
      DataField = 'TIPS'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object BitBtn5: TBitBtn
      Left = 17
      Top = 160
      Width = 75
      Height = 25
      Caption = '&Print'
      TabOrder = 1
      OnClick = BitBtn5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object DBMemo6: TDBMemo
      Left = 2000
      Top = 0
      Width = 497
      Height = 177
      BevelInner = bvNone
      BevelOuter = bvRaised
      Color = clYellow
      DataField = 'TIPS'
      DataSource = DMFrm.dsQSisdur
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
      Visible = False
    end
  end
  object rvdSisdur: TwwRecordViewDialog
    ControlType.Strings = (
      'REFERENSI;CustomEdit;DBMemo2;F'
      'DISKRIPSI;CustomEdit;DBMemo4;F'
      'TIPS;CustomEdit;DBMemo6;F')
    EditFrame.Enabled = True
    DataSource = DMFrm.dsQSisdur
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 800
    FormPosition.Height = 0
    NavigatorButtons = [nbsPrior, nbsNext, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsSearchDialog]
    Style = rvsHorizontal
    ControlOptions = [rvcFlatButtons]
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clRed
    LabelFont.Height = -13
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = [fsBold]
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Caption = 'Record View'
    Selected.Strings = (
      'KODE'#9'3'#9'KODE'#9'T'
      'FORMAT_NOMER'#9'14'#9'FORMAT_NOMER'#9'T'
      'NAMA_TRANSAKSI'#9'50'#9'NAMA_TRANSAKSI'#9'T'
      'TUJUAN'#9'255'#9'TUJUAN'#9#9
      'REFERENSI'#9'255'#9'REFERENSI'#9#9
      'DISKRIPSI'#9'2000'#9'DISKRIPSI'#9#9
      'TIPS'#9'2000'#9'TIPS'#9#9
      'TGL_UPDATE'#9'18'#9'TGL_UPDATE'#9'T')
    NavigatorFlat = True
    Left = 480
    Top = 56
  end
  object rvdTransaksi: TwwRecordViewDialog
    EditFrame.Enabled = True
    DataSource = DMFrm.dsQTransaksi
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsPrior, nbsNext, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsSearchDialog]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clRed
    LabelFont.Height = -13
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Caption = 'Record View'
    Selected.Strings = (
      'KD_TRANSAKSI'#9'3'#9'KODE'#9'F'
      'NAMA_TRANSAKSI'#9'50'#9'NAMA_TRANSAKSI'#9#9
      'TTD1'#9'50'#9'TTD1'#9#9
      'TTD2'#9'50'#9'TTD2'#9#9
      'TTD3'#9'50'#9'TTD3'#9#9
      'TTD4'#9'50'#9'TTD4'#9#9
      'BAG1'#9'50'#9'BAG1'#9#9
      'BAG2'#9'50'#9'BAG2'#9#9
      'BAG3'#9'50'#9'BAG3'#9#9
      'BAG4'#9'50'#9'BAG4'#9#9
      'JAB1'#9'50'#9'JAB1'#9#9
      'JAB2'#9'50'#9'JAB2'#9#9
      'JAB3'#9'50'#9'JAB3'#9#9
      'JAB4'#9'50'#9'JAB4'#9#9
      'DISTRIBUSI'#9'50'#9'DISTRIBUSI'#9'F'
      'DISKRIPSI'#9'50'#9'FUNGSI/ TUJUAN'#9'F'
      'DOC_ISO'#9'10'#9'Document ISO'#9'F')
    NavigatorFlat = True
    Left = 472
    Top = 137
  end
end
