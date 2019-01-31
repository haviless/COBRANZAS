object FToolCtaxCob: TFToolCtaxCob
  Left = 313
  Top = 193
  BorderStyle = bsSingle
  Caption = 'Reporte de Cuentas por Cobrar'
  ClientHeight = 63
  ClientWidth = 661
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBot: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 57
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 148
      Top = 2
      Width = 94
      Height = 15
      Caption = 'Unidad de Proceso'
    end
    object Label2: TLabel
      Left = 462
      Top = 1
      Width = 11
      Height = 15
      Caption = 'Al'
    end
    object bbtnRep: TfcShapeBtn
      Left = 591
      Top = 12
      Width = 34
      Height = 33
      Hint = 'Imprimir Cuentas'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnRepClick
    end
    object dblcUProId: TwwDBLookupCombo
      Left = 148
      Top = 27
      Width = 65
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'3'#9'Id UProceso'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Options = [loTitles]
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcUProIdExit
    end
    object dbeUPro: TwwDBEdit
      Left = 220
      Top = 27
      Width = 232
      Height = 19
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object seano: TSpinEdit
      Left = 459
      Top = 21
      Width = 57
      Height = 24
      AutoSelect = False
      AutoSize = False
      MaxLength = 4
      MaxValue = 2050
      MinValue = 2000
      TabOrder = 3
      Value = 2000
    end
    object semes: TSpinEdit
      Left = 520
      Top = 20
      Width = 35
      Height = 24
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 4
      Value = 1
      OnExit = semesExit
    end
    object rgEscoge: TRadioGroup
      Left = 3
      Top = 4
      Width = 141
      Height = 42
      Caption = 'Unidad de Proceso'
      Columns = 2
      Items.Strings = (
        'Todas'
        'Escoger')
      TabOrder = 5
      OnClick = rgEscogeClick
    end
  end
  object ppdbRepCtaxCob: TppDBPipeline
    UserName = 'dbRepCtaxCob'
    Left = 24
    Top = 56
  end
  object ppRepCtaxCob: TppReport
    AutoStop = False
    DataPipeline = ppdbRepCtaxCob
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
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\CtaxCob.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCtaxCobPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 176
    Top = 56
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepCtaxCob'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 58473
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 172244
        mmTop = 12435
        mmWidth = 18256
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 172244
        mmTop = 17198
        mmWidth = 1588
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 172244
        mmTop = 7938
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 7938
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 12435
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 17198
        mmWidth = 9525
        BandType = 0
      end
      object pplblTitulo1: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'CUENTAS POR COBRAR A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 73819
        mmTop = 25665
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'POR LUGAR DE PROCESOS SEG'#218'N TIPO DE PR'#201'STAMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 57415
        mmTop = 31750
        mmWidth = 75142
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'CIADES'
        DataPipeline = ppdbRepCtaxCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 529
        mmTop = 265
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UPROID'
        DataPipeline = ppdbRepCtaxCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 36513
        mmTop = 43127
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'UNIDAD DE PROCESO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 43127
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 49213
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Cuotas Devengadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 69850
        mmTop = 49213
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 64823
        mmTop = 53446
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90488
        mmTop = 53446
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cuotas Diferidas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 49213
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 53446
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 53446
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 166423
        mmTop = 49213
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 150813
        mmTop = 53446
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 53446
        mmWidth = 9260
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 58208
        mmWidth = 192882
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'USEID'
        DataPipeline = ppdbRepCtaxCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'USENOM'
        DataPipeline = ppdbRepCtaxCob
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 8731
        mmTop = 0
        mmWidth = 52123
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CUOTADE'
        DataPipeline = ppdbRepCtaxCob
        DisplayFormat = '###,###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 66146
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'DEVENGADO'
        DataPipeline = ppdbRepCtaxCob
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 82286
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CUOTADI'
        DataPipeline = ppdbRepCtaxCob
        DisplayFormat = '###,###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'DIFERIDO'
        DataPipeline = ppdbRepCtaxCob
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 125677
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'TOTACUO'
        DataPipeline = ppdbRepCtaxCob
        DisplayFormat = '###,###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 151607
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'TOTAMON'
        DataPipeline = ppdbRepCtaxCob
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCob'
        mmHeight = 3704
        mmLeft = 173302
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepCtaxCob
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 248
    Top = 64
  end
end
