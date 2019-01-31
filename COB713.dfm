object FToolRelDepPrest: TFToolRelDepPrest
  Left = 200
  Top = 198
  Width = 673
  Height = 135
  Caption = 'FToolRelDepPrest'
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
    Top = 0
    Width = 665
    Height = 97
    Color = 13165023
    TabOrder = 0
    object gbPeriodo: TGroupBox
      Left = 20
      Top = 11
      Width = 216
      Height = 72
      Caption = 'Fecha De Registro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 9
        Top = 19
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label4: TLabel
        Left = 113
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object dbdtpDesde: TwwDBDateTimePicker
        Left = 8
        Top = 40
        Width = 94
        Height = 19
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
      end
      object dbdtpHasta: TwwDBDateTimePicker
        Left = 112
        Top = 40
        Width = 93
        Height = 19
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
      end
    end
    object bbtnRep: TfcShapeBtn
      Left = 527
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
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnRepClick
    end
    object rgReporte: TRadioGroup
      Left = 256
      Top = 11
      Width = 231
      Height = 72
      ItemIndex = 0
      Items.Strings = (
        'Reporte por Fecha de Registro'
        'Reporte por USE y Fecha de Registro')
      TabOrder = 2
    end
  end
  object ppdbPPrest: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbPPrest'
    Left = 576
    Top = 40
    object ppField65: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppField66: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppField67: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField68: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppField69: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppField70: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppField71: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppField72: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppField73: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppField74: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppField75: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppField76: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField77: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField78: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField79: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppField80: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField81: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField82: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField83: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppField84: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppField85: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppField86: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppField87: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppField88: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppField89: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppField90: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppField91: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppField92: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppField93: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppField94: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppField95: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppField96: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppField97: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppField98: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppField99: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppField100: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppField101: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppField102: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppField103: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppField104: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 39
    end
    object ppField105: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppField106: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppField107: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppField108: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppField109: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppField110: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppField111: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppField112: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppField113: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object ppField114: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppField115: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppField116: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppField117: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppField118: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppField119: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField120: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppField121: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppField122: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppField123: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppField124: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppField125: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppField126: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppField127: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField128: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppField132: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
  end
  object ppRepPrest: TppReport
    AutoStop = False
    DataPipeline = ppdbPPrest
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter Fanfold 8.5 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RelDepPrest.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepPrestPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 576
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbPPrest'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 52388
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 7144
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 162190
        mmTop = 7144
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 41540
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Apellidos y Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 41540
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 85990
        mmTop = 41540
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'N'#176' Operac.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 114036
        mmTop = 41540
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Import.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 41540
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 41540
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Dep'#243'sito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 45244
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Registro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 189442
        mmTop = 45244
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CIADES'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 72496
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 12700
        mmWidth = 18256
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 18521
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 162190
        mmTop = 12700
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 162190
        mmTop = 18521
        mmWidth = 10319
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'RELACI'#211'N DE BOLETAS DE DEP'#211'SITO DE PRESTAMOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 28840
        mmWidth = 81227
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'N'#176' Cuenta de Ahorro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 132557
        mmTop = 41540
        mmWidth = 14817
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 37835
        mmWidth = 200555
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 51065
        mmWidth = 200555
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 171186
        mmTop = 45244
        mmWidth = 30427
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 8731
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'BANCONOM'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 72761
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'NROOPE'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CCBCOID'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 130704
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppdbPPrest
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'CREFPAG'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'FREG'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 188119
        mmTop = 265
        mmWidth = 8731
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppdbPPrest
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 265
        mmWidth = 6615
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppdbPPrest
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrest'
        mmHeight = 3969
        mmLeft = 132821
        mmTop = 1588
        mmWidth = 30427
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'TOTAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 125942
        mmTop = 1588
        mmWidth = 11642
        BandType = 7
      end
    end
  end
  object ppdbPPrestUse: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbPPrestUse'
    Left = 616
    Top = 40
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
    object ppField129: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
  end
  object ppRepPrestUse: TppReport
    AutoStop = False
    DataPipeline = ppdbPPrestUse
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Pre\Dema\RelDepPrestUse.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepPrestUsePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 616
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbPPrestUse'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 47890
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'RELACION DE BOLETAS DE DEPOSITO DE PRESTAMOS POR USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 42598
        mmTop = 20638
        mmWidth = 95515
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CIADES'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 5821
        mmTop = 3440
        mmWidth = 75406
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 2117
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 6350
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 11113
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 173038
        mmTop = 2117
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 173038
        mmTop = 6615
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 173038
        mmTop = 11113
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Nombres y Apelllidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 20902
        mmTop = 37042
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 79640
        mmTop = 37042
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'N'#176' de Operac'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 109802
        mmTop = 37042
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'N'#176' Cuenta de Ahorro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 128059
        mmTop = 37042
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Import.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 149490
        mmTop = 37042
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Deposito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 169069
        mmTop = 41010
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Regsitro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 188648
        mmTop = 41010
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 180975
        mmTop = 37042
        mmWidth = 8996
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 35454
        mmWidth = 202142
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 46567
        mmWidth = 202142
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 169863
        mmTop = 41010
        mmWidth = 30427
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        DataField = 'BANCONOM'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 63236
        mmTop = 794
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'NROOPE'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 108215
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'CCBCOID'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 128323
        mmTop = 794
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdbPPrestUse
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'CREFPAG'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 167746
        mmTop = 794
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        AutoSize = True
        DataField = 'FREG'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 192352
        mmTop = 794
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbPPrestUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPPrestUse'
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText10'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 50800
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'DPTOID'
          DataPipeline = ppdbPPrestUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbPPrestUse'
          mmHeight = 3969
          mmLeft = 3969
          mmTop = 5027
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'DPTODES'
          DataPipeline = ppdbPPrestUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbPPrestUse'
          mmHeight = 3969
          mmLeft = 35454
          mmTop = 5556
          mmWidth = 66675
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'DEPARTAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 3969
          mmTop = 529
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          Caption = 'DESCRIPCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 35454
          mmTop = 794
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'TOTAL POR DEPARTAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 80698
          mmTop = 1058
          mmWidth = 43392
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppdbPPrestUse
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbPPrestUse'
          mmHeight = 3969
          mmLeft = 132027
          mmTop = 1058
          mmWidth = 30427
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 6085
          mmWidth = 202142
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText11'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText11'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11642
        mmPrintPosition = 0
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'USEID'
          DataPipeline = ppdbPPrestUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbPPrestUse'
          mmHeight = 3969
          mmLeft = 4233
          mmTop = 5292
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'USENOM'
          DataPipeline = ppdbPPrestUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbPPrestUse'
          mmHeight = 3969
          mmLeft = 17727
          mmTop = 5556
          mmWidth = 84931
          BandType = 3
          GroupNo = 2
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'DESCRIPCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 17727
          mmTop = 1058
          mmWidth = 20638
          BandType = 3
          GroupNo = 2
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 4233
          mmTop = 794
          mmWidth = 6085
          BandType = 3
          GroupNo = 2
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 10848
          mmWidth = 202142
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'TOTAL POR USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 80698
          mmTop = 2117
          mmWidth = 24342
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CREMTOCOB'
          DataPipeline = ppdbPPrestUse
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbPPrestUse'
          mmHeight = 3969
          mmLeft = 132027
          mmTop = 2117
          mmWidth = 30427
          BandType = 5
          GroupNo = 2
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 1058
          mmWidth = 202142
          BandType = 5
          GroupNo = 2
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 7144
          mmWidth = 202142
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
end
