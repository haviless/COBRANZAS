object fResGnCob: TfResGnCob
  Left = 511
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Resumen General de Cobranza'
  ClientHeight = 244
  ClientWidth = 430
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 0
    Width = 421
    Height = 242
    TabOrder = 0
    object BitPrint: TBitBtn
      Left = 192
      Top = 209
      Width = 90
      Height = 27
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BitPrintClick
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
    object BitSalir: TBitBtn
      Left = 298
      Top = 209
      Width = 91
      Height = 27
      Caption = '&Salir'
      TabOrder = 1
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object GroupBox2: TGroupBox
      Left = 7
      Top = 12
      Width = 407
      Height = 51
      Caption = 'Forma De Pago'
      TabOrder = 2
      object chkGeneral: TCheckBox
        Left = 16
        Top = 24
        Width = 61
        Height = 17
        Caption = 'General'
        TabOrder = 0
        OnClick = chkGeneralClick
      end
      object DBLCTipCob: TwwDBLookupCombo
        Left = 93
        Top = 17
        Width = 46
        Height = 24
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FORPAGOID'#9'2'#9'Codigo'#9'F'
          'FORPAGODES'#9'35'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsFormaPago
        LookupField = 'FORPAGOID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DBLCTipCobChange
      end
      object Panel1: TPanel
        Left = 142
        Top = 15
        Width = 264
        Height = 28
        Color = 10207162
        Enabled = False
        TabOrder = 2
        object EdtForPago: TEdit
          Left = 3
          Top = 2
          Width = 258
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = 12975869
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 5
      Top = 65
      Width = 409
      Height = 61
      Caption = 'Fecha de Pago'
      TabOrder = 3
      object Label2: TLabel
        Left = 125
        Top = 16
        Width = 73
        Height = 13
        Caption = 'Fecha de Inicio'
      end
      object Label1: TLabel
        Left = 263
        Top = 16
        Width = 55
        Height = 13
        Caption = 'Fecha Final'
      end
      object DtpFecIni: TDateTimePicker
        Left = 125
        Top = 30
        Width = 110
        Height = 24
        CalColors.TextColor = clBtnText
        Date = 37814.561222696760000000
        Time = 37814.561222696760000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DtpFecFin: TDateTimePicker
        Left = 261
        Top = 30
        Width = 110
        Height = 24
        CalColors.TextColor = clBtnText
        Date = 37814.561222696760000000
        Time = 37814.561222696760000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 6
      Top = 132
      Width = 409
      Height = 61
      Caption = 'Periodo de Vencimiento'
      TabOrder = 4
      object Label3: TLabel
        Left = 129
        Top = 12
        Width = 25
        Height = 13
        Caption = 'Inicio'
      end
      object Label4: TLabel
        Left = 272
        Top = 11
        Width = 14
        Height = 13
        Caption = 'Fin'
      end
      object chkFiltrar: TCheckBox
        Left = 19
        Top = 28
        Width = 53
        Height = 17
        Caption = 'Filtrar'
        TabOrder = 0
        OnClick = chkFiltrarClick
      end
      object dbsAnoIni: TwwDBSpinEdit
        Left = 126
        Top = 29
        Width = 59
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 1997.000000000000000000
        Value = 2003.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object dbsMesIni: TwwDBSpinEdit
        Left = 192
        Top = 29
        Width = 35
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        UsePictureMask = False
      end
      object dbsAnoFin: TwwDBSpinEdit
        Left = 269
        Top = 28
        Width = 59
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 1997.000000000000000000
        Value = 2003.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object dbsMesFin: TwwDBSpinEdit
        Left = 331
        Top = 28
        Width = 35
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        UsePictureMask = False
      end
    end
  end
  object ppDBRefPago: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DBRefPago'
    Left = 84
    Top = 208
  end
  object ppRepResCob: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'F:\SOLREPO\COB\RepResCob.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 46
    Top = 200
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Style = psDot
        mmHeight = 7144
        mmLeft = 5821
        mmTop = 37042
        mmWidth = 185473
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'RESUMEN DE COBRANZA EFECTUADA DEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 22754
        mmWidth = 195527
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 65617
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 0
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 153988
        mmTop = 0
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 153988
        mmTop = 4498
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 4763
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 4498
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 0
        mmWidth = 4233
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 0
        mmWidth = 21167
        BandType = 0
      end
      object ppLblTitu2: TppLabel
        UserName = 'LblTitu2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 29104
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'OFICINA DESCONCENTRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 38894
        mmWidth = 52652
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'IMPORTE (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 38894
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'COB427'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 26723
        mmTop = 9260
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'OFDESID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'OFDESNOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 0
        mmWidth = 82550
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'IMPORTE'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 128323
        mmTop = 0
        mmWidth = 51858
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Style = psDot
        mmHeight = 6879
        mmLeft = 6615
        mmTop = 794
        mmWidth = 185738
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'TOTAL GENERAL :    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 48419
        mmTop = 2117
        mmWidth = 35814
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'IMPORTE'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 1852
        mmWidth = 51329
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText4'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          AutoSize = True
          DataField = 'TIPO'
          DataPipeline = ppDBRefPago
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 3969
          mmLeft = 5556
          mmTop = 265
          mmWidth = 80169
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15081
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Pen.Style = psDot
          mmHeight = 6879
          mmLeft = 6615
          mmTop = 794
          mmWidth = 185738
          BandType = 5
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'TOTAL :    '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 48683
          mmTop = 2117
          mmWidth = 17780
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'IMPORTE'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 128852
          mmTop = 1852
          mmWidth = 51329
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
