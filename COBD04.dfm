object FSimulaCronograma: TFSimulaCronograma
  Left = 111
  Top = 169
  BorderStyle = bsDialog
  Caption = 'FSimulaCronograma'
  ClientHeight = 585
  ClientWidth = 688
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 58
    Height = 13
    Caption = 'N'#186' Cuotas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 264
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Inter'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 392
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Flat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 63
    Width = 673
    Height = 479
    DisableThemesInTitle = False
    Selected.Strings = (
      'CRECUOTA'#9'4'#9'Cuota'#9#9
      'PERIODO'#9'8'#9'Periodo'#9#9
      'CRECAPCRON'#9'12'#9'Disminuci'#243'n~Capital'#9#9
      'CREAMORT'#9'13'#9'Amortizaci'#243'n'#9'F'#9'DISTRIBUCI'#211'N'
      'CREINTERES'#9'11'#9'Interes'#9'F'#9'DISTRIBUCI'#211'N'
      'CREFLAT'#9'8'#9'Flat'#9'F'#9'DISTRIBUCI'#211'N'
      'CREMTO'#9'13'#9'Monto~Cuota'#9#9
      'CRESUMA'#9'11'#9'Suma~Distribuci'#243'n'#9#9
      'CREANO'#9'7'#9'A'#241'o'#9#9
      'CREMES'#9'7'#9'Mes'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsQry1
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object Button4: TButton
    Left = 523
    Top = 27
    Width = 150
    Height = 25
    Caption = 'Genera Cronograma'
    TabOrder = 1
    OnClick = Button4Click
  end
  object BitBtn1: TBitBtn
    Left = 525
    Top = 551
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 605
    Top = 551
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    Kind = bkCancel
  end
  object edtSaldoCre: TwwDBEdit
    Left = 8
    Top = 32
    Width = 96
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = edtSaldoCreExit
    OnKeyPress = edtCuotaKeyPress
  end
  object edtCuota: TwwDBEdit
    Tag = 1
    Left = 136
    Top = 32
    Width = 96
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = edtSaldoCreExit
    OnKeyPress = edtCuotaKeyPress
  end
  object edtInteres: TwwDBEdit
    Left = 264
    Top = 32
    Width = 96
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = edtSaldoCreExit
    OnKeyPress = edtCuotaKeyPress
  end
  object edtFlat: TwwDBEdit
    Left = 392
    Top = 32
    Width = 96
    Height = 19
    BorderStyle = bsNone
    Color = 13165023
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = edtSaldoCreExit
    OnKeyPress = edtCuotaKeyPress
  end
  object BitBtn3: TBitBtn
    Left = 21
    Top = 551
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = BitBtn3Click
    NumGlyphs = 2
  end
  object cdsQry1: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRECUOTA'
        DataType = ftInteger
      end
      item
        Name = 'PERIODO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CRECAPCRON'
        DataType = ftFloat
      end
      item
        Name = 'CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTO'
        DataType = ftFloat
      end
      item
        Name = 'CREANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CREMES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CRESUMA'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 576
    Top = 183
    Data = {
      E30000009619E0BD01000000180000000A000000000003000000E30008435245
      43554F5441040001000000000007504552494F444F0100490000000100055749
      445448020002000A000A43524543415043524F4E080004000000000008435245
      414D4F525408000400000000000A435245494E54455245530800040000000000
      07435245464C41540800040000000000064352454D544F080004000000000006
      435245414E4F0100490000000100055749445448020002000400064352454D45
      5301004900000001000557494454480200020002000743524553554D41080004
      00000000000000}
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 624
    Top = 183
  end
  object cdsCreditoOri: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 336
    Top = 208
  end
  object ppDBCronograma: TppDBPipeline
    UserName = 'DBCronograma'
    Left = 534
    Top = 9
  end
  object ppRepCronograma: TppReport
    AutoStop = False
    DataPipeline = ppDBCronograma
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\CronogramaPagosPrevio.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 569
    Top = 9
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCronograma'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CRECUOTA'
        DataPipeline = ppDBCronograma
        DisplayFormat = '0#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'PERIODO'
        DataPipeline = ppDBCronograma
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREAMORT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREINTERES'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREFLAT'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREMTO'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 66675
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECAPCRON'
        DataPipeline = ppDBCronograma
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCronograma'
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 46567
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Cronograma de Pagos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 10cpi'
          Font.Size = 13
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6085
          mmLeft = 68527
          mmTop = 5292
          mmWidth = 48154
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 794
          mmWidth = 8890
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Hora :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 6350
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169598
          mmTop = 529
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          VarType = vtTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169863
          mmTop = 6085
          mmWidth = 16510
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Monto   :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 14552
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Inter'#233's :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 72496
          mmTop = 14288
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Comisi'#243'n FLAT :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 133879
          mmTop = 14552
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Tiempo  :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 21960
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'meses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 44450
          mmTop = 21960
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 32808
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 33338
          mmTop = 32808
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Cuota a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 8467
          mmLeft = 66411
          mmTop = 32808
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Capital'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 32808
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Amort.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 86519
          mmTop = 32808
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Inter'#233's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 115888
          mmTop = 32808
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          AutoSize = False
          Caption = 'Comisi'#243'n FLAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 8467
          mmLeft = 138907
          mmTop = 32808
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 4763
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 20108
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 58208
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 85196
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 109538
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 133879
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 160602
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 187325
          mmTop = 29633
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Label3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 24342
          mmTop = 14552
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Label4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 90488
          mmTop = 14288
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Label5'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 165894
          mmTop = 14552
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Label6'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 32808
          mmTop = 21960
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 29633
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 44715
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTO'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 62442
          mmTop = 3440
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREAMORT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 90752
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel124: TppLabel
          UserName = 'Label124'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 32808
          mmTop = 3440
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 4763
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine31: TppLine
          UserName = 'Line301'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 20108
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 58208
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 85196
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine34: TppLine
          UserName = 'Line34'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 109538
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 133879
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 160602
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine37: TppLine
          UserName = 'Line37'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 187325
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREINTERES'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 114829
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CREFLAT'
          DataPipeline = ppDBCronograma
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCronograma'
          mmHeight = 4233
          mmLeft = 135732
          mmTop = 3440
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 8996
          mmWidth = 183092
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 0
          mmWidth = 183092
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
