object FToolCtaxCobxMes: TFToolCtaxCobxMes
  Left = 118
  Top = 131
  Width = 825
  Height = 123
  Caption = 'ToolCtaxCobxMes'
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
  object pnlBot: TPanel
    Left = 0
    Top = 2
    Width = 817
    Height = 91
    Color = 13165023
    TabOrder = 0
    OnClick = pnlBotClick
    object gbPeriodo: TGroupBox
      Left = 344
      Top = 16
      Width = 290
      Height = 65
      Caption = 'Cuotas Venciadas al  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 13
        Top = 16
        Width = 20
        Height = 13
        Caption = 'Mes'
      end
      object Label2: TLabel
        Left = 211
        Top = 16
        Width = 19
        Height = 13
        Caption = 'A'#241'o'
      end
      object speMes: TwwDBSpinEdit
        Left = 13
        Top = 32
        Width = 37
        Height = 19
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        OnExit = speMesExit
      end
      object dbeMes: TwwDBEdit
        Left = 57
        Top = 32
        Width = 144
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
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
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object speAno: TwwDBSpinEdit
        Left = 211
        Top = 32
        Width = 51
        Height = 19
        Increment = 1.000000000000000000
        MaxValue = 2020.000000000000000000
        MinValue = 1900.000000000000000000
        Value = 1900.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 16
      Width = 305
      Height = 65
      Caption = 'Unidad de Proceso '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object dblcUProId: TwwDBLookupCombo
        Left = 8
        Top = 24
        Width = 57
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
        Frame.Enabled = True
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcUProIdExit
      end
      object dbeUPro: TwwDBEdit
        Left = 72
        Top = 25
        Width = 223
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
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object bbtnRep: TfcShapeBtn
      Left = 704
      Top = 39
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
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnRepClick
    end
  end
  object ppdbRepCtaxCobxMes: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbRepCtaxCobxMes'
    Left = 672
    Top = 8
    object ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppField23: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppField27: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppField30: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppField31: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppField32: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppField33: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppField34: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppField36: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppField37: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppField38: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppField39: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppField40: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 39
    end
    object ppField41: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppField42: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppField43: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppField44: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppField45: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppField46: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppField47: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppField48: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppField49: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object ppField50: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppField51: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppField52: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppField53: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppField54: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppField55: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField56: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppField57: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppField58: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppField59: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppField60: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppField61: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppField62: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppField63: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppField65: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
  end
  object ppRepCtaxCobxMes: TppReport
    AutoStop = False
    DataPipeline = ppdbRepCtaxCobxMes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta: 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\CtaxCobxMes.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCtaxCobxMesPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 712
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepCtaxCobxMes'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 47890
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
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
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 172244
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
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
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 154252
        mmTop = 7938
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 154252
        mmTop = 12435
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 154252
        mmTop = 17198
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'CUENTAS POR COBRAR AL  MES DE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 41275
        mmTop = 25665
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'POR LUGAR DE PROCESOS SEG'#218'N TIPO DE PR'#201'STAMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 47096
        mmTop = 31750
        mmWidth = 82286
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CIADES'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 6085
        mmWidth = 93927
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UPROID'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 43127
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'UNIDAD DE PROCESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 43127
        mmWidth = 33867
        BandType = 0
      end
      object pplblUPro: TppLabel
        UserName = 'lblUPro'
        Caption = 'lblUPro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 62177
        mmTop = 43127
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMDEV'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 81756
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'MTODEV'
        DataPipeline = ppdbRepCtaxCobxMes
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 97631
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NUMDIF'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 121444
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'MTODIF'
        DataPipeline = ppdbRepCtaxCobxMes
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NUM'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MTO'
        DataPipeline = ppdbRepCtaxCobxMes
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 182034
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'ASOID'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 43392
        mmTop = 265
        mmWidth = 33073
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 57415
        mmTop = 3704
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'MTO'
        DataPipeline = ppdbRepCtaxCobxMes
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 3704
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'NUM'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'MTODIF'
        DataPipeline = ppdbRepCtaxCobxMes
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 133615
        mmTop = 3704
        mmWidth = 22225
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'MTODEV'
        DataPipeline = ppdbRepCtaxCobxMes
        DisplayFormat = '#,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 91017
        mmTop = 3704
        mmWidth = 23813
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'NUMDEV'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 76994
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'NUMDIF'
        DataPipeline = ppdbRepCtaxCobxMes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaxCobxMes'
        mmHeight = 3969
        mmLeft = 117475
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 1588
        mmWidth = 201613
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 8996
        mmWidth = 201613
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText3'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17727
        mmPrintPosition = 0
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Cuotas Devengadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 87577
          mmTop = 4233
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Cuotas Diferidas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 127529
          mmTop = 4233
          mmWidth = 23548
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 176477
          mmTop = 4233
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 82815
          mmTop = 9790
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 105304
          mmTop = 9790
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 123296
          mmTop = 9790
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 146315
          mmTop = 9790
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 163777
          mmTop = 9790
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 186267
          mmTop = 9790
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 794
          mmWidth = 201613
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 16404
          mmWidth = 201613
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText13'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 25400
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'TIPO DE CREDITO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 32808
          mmTop = 1323
          mmWidth = 28046
          BandType = 3
          GroupNo = 1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          AutoSize = True
          DataField = 'TIPCREDES'
          DataPipeline = ppdbRepCtaxCobxMes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 32808
          mmTop = 7938
          mmWidth = 16933
          BandType = 3
          GroupNo = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'TIPCREID'
          DataPipeline = ppdbRepCtaxCobxMes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3440
          mmLeft = 9260
          mmTop = 7938
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'TOTAL POR TIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 41010
          mmTop = 3440
          mmWidth = 25400
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'NUMDEV'
          DataPipeline = ppdbRepCtaxCobxMes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 77523
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          AutoSize = True
          DataField = 'MTODEV'
          DataPipeline = ppdbRepCtaxCobxMes
          DisplayFormat = '#,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 91017
          mmTop = 3440
          mmWidth = 23813
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'NUMDIF'
          DataPipeline = ppdbRepCtaxCobxMes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 118004
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          AutoSize = True
          DataField = 'MTODIF'
          DataPipeline = ppdbRepCtaxCobxMes
          DisplayFormat = '#,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 133615
          mmTop = 3440
          mmWidth = 22225
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'NUM'
          DataPipeline = ppdbRepCtaxCobxMes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 161396
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          AutoSize = True
          DataField = 'MTO'
          DataPipeline = ppdbRepCtaxCobxMes
          DisplayFormat = '#,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepCtaxCobxMes'
          mmHeight = 3969
          mmLeft = 181505
          mmTop = 3440
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 1058
          mmWidth = 201613
          BandType = 5
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 9525
          mmWidth = 201613
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
end
