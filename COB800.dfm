object FToolResCtasPagadas: TFToolResCtasPagadas
  Left = 186
  Top = 234
  Width = 699
  Height = 80
  Caption = 'Resumen de Cuotas Pagadas'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCtasPag: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 50
    Align = alTop
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 1
      Width = 50
      Height = 15
      Caption = 'Uni. Proc.'
    end
    object Label3: TLabel
      Left = 257
      Top = 1
      Width = 31
      Height = 15
      Caption = 'Desde'
    end
    object Label4: TLabel
      Left = 351
      Top = 1
      Width = 29
      Height = 15
      Caption = 'Hasta'
    end
    object Label2: TLabel
      Left = 473
      Top = 1
      Width = 55
      Height = 15
      Caption = 'Forma Pag.'
    end
    object bbtnRep: TfcShapeBtn
      Left = 650
      Top = 11
      Width = 34
      Height = 33
      Hint = 'Imprimir Cuotas Pagadas'
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
      Left = 27
      Top = 25
      Width = 52
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'5'#9'Id'#9'F'
        'UPRONOM'#9'35'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Options = [loColLines, loRowLines, loTitles]
      Color = 13165023
      DropDownCount = 15
      Frame.Enabled = True
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcUProIdExit
    end
    object chkUProc: TCheckBox
      Left = 93
      Top = 1
      Width = 57
      Height = 17
      Caption = 'Todos'
      TabOrder = 2
      OnClick = chkUProcClick
    end
    object dbeUPro: TwwDBEdit
      Left = 85
      Top = 25
      Width = 145
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdtpDesde: TwwDBDateTimePicker
      Left = 256
      Top = 25
      Width = 87
      Height = 21
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      Date = 36892.000000000000000000
      Epoch = 1950
      Frame.Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 4
    end
    object dbdtpHasta: TwwDBDateTimePicker
      Left = 350
      Top = 25
      Width = 93
      Height = 21
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      Date = 36943.000000000000000000
      Epoch = 1950
      Frame.Enabled = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 5
    end
    object dblcdFPagoId: TwwDBLookupCombo
      Left = 473
      Top = 25
      Width = 49
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'3'#9'Id'#9'F'
        'FORPAGODES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines, loTitles]
      Color = 13165023
      DropDownCount = 15
      Frame.Enabled = True
      ParentFont = False
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcdFPagoIdExit
    end
    object dbeFormaPago: TwwDBEdit
      Left = 529
      Top = 25
      Width = 97
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object ppRepResCtasPag: TppReport
    AutoStop = False
    DataPipeline = ppdbResCtasPag
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\ResCtasPagadas.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepResCtasPagPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 882
    Top = 2
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbResCtasPag'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 67469
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5821
        mmTop = 2910
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'g :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165894
        mmTop = 2910
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177271
        mmTop = 2910
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165894
        mmTop = 8731
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179123
        mmTop = 8467
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165894
        mmTop = 14288
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178330
        mmTop = 14288
        mmWidth = 12700
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'RESUMEN DE CUOTAS PAGADAS DEL '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 42863
        mmTop = 25135
        mmWidth = 58208
        BandType = 0
      end
      object pplblFPago: TppLabel
        UserName = 'lblFPago'
        Caption = 'FORMA DE PAGO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 61119
        mmTop = 30956
        mmWidth = 27252
        BandType = 0
      end
      object pplblUProceso: TppLabel
        UserName = 'lblUProceso'
        Caption = 'LUGAR DE PROCESO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 58738
        mmTop = 36777
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 60325
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'C'#243'digo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 7938
        mmTop = 56356
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'N'#250'mero Pr'#233'stamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 24077
        mmTop = 56356
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 39158
        mmTop = 60325
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'Docum. De Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 79375
        mmTop = 56356
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha De  Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 108215
        mmTop = 56356
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label12'
        Caption = 'Importe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 123031
        mmTop = 60325
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label14'
        Caption = 'Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 60325
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label15'
        Caption = 'Amortizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 150548
        mmTop = 60325
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label16'
        Caption = 'Inter'#233's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 171980
        mmTop = 60325
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label17'
        Caption = 'Gas./Flt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 183621
        mmTop = 60325
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label18'
        Caption = 'Excesos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 196057
        mmTop = 60325
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fecha de Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 48948
        mmWidth = 23548
        BandType = 0
      end
      object ppdbFecPago: TppDBText
        UserName = 'dbFecPago'
        DataField = 'CREFPAG'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 30692
        mmTop = 49213
        mmWidth = 17198
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 65881
        mmWidth = 202936
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 55033
        mmWidth = 202936
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 529
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CREDID'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 23019
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 39158
        mmTop = 529
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREDOCPAG'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'FOPERAC'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 105040
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 116946
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CREMTO'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 131234
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CRECAPITAL'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 151871
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CREMTOINT'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 163248
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CREMTOFLAT'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 189707
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppdbUSE: TppDBText
        UserName = 'dbUSE'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = ppdbResCtasPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'TOTAL POR FECHA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 2117
        mmWidth = 30427
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 7408
        mmWidth = 200555
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 2117
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'CREMTO'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 131234
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'CRECAPITAL'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 151871
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'CREMTOINT'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 163248
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'CREMTOFLAT'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 189707
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'TOTAL GENERAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 10054
        mmWidth = 27252
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 9525
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'CREMTO'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 131234
        mmTop = 9525
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
        DataField = 'CRECAPITAL'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 151871
        mmTop = 9525
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'CREMTOINT'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 163248
        mmTop = 9525
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'CREMTOFLAT'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 9525
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 189707
        mmTop = 9525
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'NUMERO DE MOVIMIENTOS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 43127
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbResCtasPag
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbResCtasPag'
        mmHeight = 3969
        mmLeft = 189707
        mmTop = 16140
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppdbFecPago'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'ppdbTipCred'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand5: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand5BeforePrint
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppdbTipCred: TppDBText
          UserName = 'dbTipCred'
          DataField = 'TIPCREID'
          DataPipeline = ppdbResCtasPag
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 18256
          mmTop = 0
          mmWidth = 8731
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'TIPO ....:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
        object pplblTipoCred: TppLabel
          UserName = 'lblTipoCred'
          Caption = 'CONVENIO CESANTES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 29104
          mmTop = 0
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLabel24: TppLabel
          UserName = 'Label23'
          Caption = 'TOTAL POR TIPO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 36513
          mmTop = 2381
          mmWidth = 26988
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'CREMTOCOB'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 116946
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'CREMTO'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 131234
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'CRECAPITAL'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 151871
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'CREMTOINT'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 163248
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'CREMTOFLAT'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 176742
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 6879
          mmWidth = 200555
          BandType = 5
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 529
          mmWidth = 200555
          BandType = 5
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 1323
          mmWidth = 200555
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'CREMTOEXC'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 189707
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'ppdbUSE'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand6: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand6BeforePrint
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText24: TppDBText
          UserName = 'DBText24'
          AutoSize = True
          DataField = 'USEID'
          DataPipeline = ppdbResCtasPag
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 0
          mmTop = 265
          mmWidth = 8996
          BandType = 3
          GroupNo = 2
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = '--> USE ........:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 12700
          mmTop = 265
          mmWidth = 18785
          BandType = 3
          GroupNo = 2
        end
        object pplblUSE: TppLabel
          UserName = 'Label24'
          Caption = 'Label24'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 35454
          mmTop = 265
          mmWidth = 11906
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLabel23: TppLabel
          UserName = 'Label19'
          Caption = 'TOTAL POR USE :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 36513
          mmTop = 2117
          mmWidth = 26458
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTOCOB'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 116946
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CREMTO'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 131234
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CRECAPITAL'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 151871
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREMTOINT'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 163248
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CREMTOFLAT'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 176742
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          DataField = 'CREMTOEXC'
          DataPipeline = ppdbResCtasPag
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbResCtasPag'
          mmHeight = 3969
          mmLeft = 189707
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 7144
          mmWidth = 200555
          BandType = 5
          GroupNo = 2
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 200555
          BandType = 5
          GroupNo = 2
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 794
          mmWidth = 200555
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
  object ppdbResCtasPag: TppDBPipeline
    DataSource = DM1.dsPadre
    UserName = 'dbResCtasPag'
    Left = 480
    Top = 9
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
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 522
    Top = 10
  end
end
