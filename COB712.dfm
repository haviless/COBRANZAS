object FToolRelDepApo: TFToolRelDepApo
  Left = 177
  Top = 48
  Width = 696
  Height = 129
  Caption = 'Dep'#243'sitos de Bancos de Aportes'
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
    Left = 3
    Top = 2
    Width = 679
    Height = 91
    Color = 13165023
    TabOrder = 0
    object gbPeriodo: TGroupBox
      Left = 20
      Top = 16
      Width = 216
      Height = 65
      Caption = 'Fecha de Registro '
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
        Left = 9
        Top = 40
        Width = 82
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
        Left = 113
        Top = 40
        Width = 82
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
      Left = 519
      Top = 48
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
      Top = 16
      Width = 225
      Height = 66
      ItemIndex = 0
      Items.Strings = (
        'Reporte por Fecha de Registro'
        'Reporte por USE y Fecha de Registro')
      TabOrder = 2
    end
  end
  object ppDBPApo: TppDBPipeline
    DataSource = DM1.dsAportes
    UserName = 'DBPApo'
    Left = 557
    Top = 40
    object ppField68: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppField69: TppField
      FieldAlias = 'TRANSID'
      FieldName = 'TRANSID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppField70: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppField71: TppField
      FieldAlias = 'USEABR'
      FieldName = 'USEABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField72: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object ppField73: TppField
      FieldAlias = 'UPAGOABR'
      FieldName = 'UPAGOABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField74: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppField75: TppField
      FieldAlias = 'UPROABR'
      FieldName = 'UPROABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object ppField76: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField77: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppField78: TppField
      FieldAlias = 'CCBCOID'
      FieldName = 'CCBCOID'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object ppField79: TppField
      FieldAlias = 'TRANSNOPE'
      FieldName = 'TRANSNOPE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField80: TppField
      FieldAlias = 'TRANSFOPE'
      FieldName = 'TRANSFOPE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField81: TppField
      FieldAlias = 'TRANSFFCIND'
      FieldName = 'TRANSFFCIND'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppField82: TppField
      FieldAlias = 'TRANSANO'
      FieldName = 'TRANSANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 14
    end
    object ppField83: TppField
      FieldAlias = 'TRANSMES'
      FieldName = 'TRANSMES'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSMTO'
      FieldName = 'TRANSMTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSMTODEV'
      FieldName = 'TRANSMTODEV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOANT'
      FieldName = 'SALDOANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTERESMTO'
      FieldName = 'INTERESMTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOBONUS'
      FieldName = 'SALDOBONUS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'BONUSMTO'
      FieldName = 'BONUSMTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTERESPORC'
      FieldName = 'INTERESPORC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'BONUSPORC'
      FieldName = 'BONUSPORC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppField93: TppField
      FieldAlias = 'TRANSINTID'
      FieldName = 'TRANSINTID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 25
    end
    object ppField94: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppField95: TppField
      FieldAlias = 'APOFRECL'
      FieldName = 'APOFRECL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField96: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 28
    end
    object ppField97: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 29
    end
    object ppField98: TppField
      FieldAlias = 'FORPAGOID'
      FieldName = 'FORPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 30
    end
    object ppField99: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 31
    end
    object ppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPRV'
      FieldName = 'TRANSPRV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppField101: TppField
      FieldAlias = 'APOFNP'
      FieldName = 'APOFNP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object ppField102: TppField
      FieldAlias = 'FECCTAIND'
      FieldName = 'FECCTAIND'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 34
    end
    object ppField103: TppField
      FieldAlias = 'APOFDEV'
      FieldName = 'APOFDEV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 35
    end
    object ppField104: TppField
      FieldAlias = 'DEVANO'
      FieldName = 'DEVANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 36
    end
    object ppField105: TppField
      FieldAlias = 'DEVMES'
      FieldName = 'DEVMES'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object ppField106: TppField
      FieldAlias = 'FORPAGOABR'
      FieldName = 'FORPAGOABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 38
    end
    object ppField107: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 39
    end
    object ppField108: TppField
      FieldAlias = 'DPTOABR'
      FieldName = 'DPTOABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 40
    end
    object ppField109: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 41
    end
    object ppField110: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 42
    end
    object ppField111: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 43
    end
    object ppField112: TppField
      FieldAlias = 'TRANSAAMM'
      FieldName = 'TRANSAAMM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 44
    end
    object ppField113: TppField
      FieldAlias = 'TRANSAATRI'
      FieldName = 'TRANSAATRI'
      FieldLength = 5
      DisplayWidth = 5
      Position = 45
    end
    object ppField114: TppField
      FieldAlias = 'TRANSTRIM'
      FieldName = 'TRANSTRIM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 46
    end
    object ppField115: TppField
      FieldAlias = 'TRANSSEM'
      FieldName = 'TRANSSEM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 47
    end
    object ppField116: TppField
      FieldAlias = 'TRANSAASEM'
      FieldName = 'TRANSAASEM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 48
    end
    object ppField117: TppField
      FieldAlias = 'APOFCNT'
      FieldName = 'APOFCNT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 49
    end
    object ppField118: TppField
      FieldAlias = 'APOSEC'
      FieldName = 'APOSEC'
      FieldLength = 6
      DisplayWidth = 6
      Position = 50
    end
    object ppField119: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 51
    end
    object ppField120: TppField
      FieldAlias = 'TIPDESEID'
      FieldName = 'TIPDESEID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 52
    end
    object ppField121: TppField
      FieldAlias = 'TIPDESEABR'
      FieldName = 'TIPDESEABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 53
    end
    object ppField122: TppField
      FieldAlias = 'BCOGIRO'
      FieldName = 'BCOGIRO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField123: TppField
      FieldAlias = 'DPTOGIRO'
      FieldName = 'DPTOGIRO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 55
    end
    object ppField124: TppField
      FieldAlias = 'AGENBANCOID'
      FieldName = 'AGENBANCOID'
      FieldLength = 8
      DisplayWidth = 8
      Position = 56
    end
    object ppField125: TppField
      FieldAlias = 'NRONABO'
      FieldName = 'NRONABO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppField126: TppField
      FieldAlias = 'NROFICIO'
      FieldName = 'NROFICIO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 58
    end
    object ppField127: TppField
      FieldAlias = 'DETRCOBID'
      FieldName = 'DETRCOBID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 59
    end
    object ppField128: TppField
      FieldAlias = 'USERCOBID'
      FieldName = 'USERCOBID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 60
    end
    object ppField129: TppField
      FieldAlias = 'RCOBID'
      FieldName = 'RCOBID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 61
    end
    object ppField130: TppField
      FieldAlias = 'BANCOIDG'
      FieldName = 'BANCOIDG'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField131: TppField
      FieldAlias = 'AGENCIDG'
      FieldName = 'AGENCIDG'
      FieldLength = 8
      DisplayWidth = 8
      Position = 63
    end
    object ppField132: TppField
      FieldAlias = 'FILLER'
      FieldName = 'FILLER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppField133: TppField
      FieldAlias = 'FCIERRE'
      FieldName = 'FCIERRE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppField134: TppField
      FieldAlias = 'CNTCONTA'
      FieldName = 'CNTCONTA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 66
    end
  end
  object ppRepApo: TppReport
    AutoStop = False
    DataPipeline = ppDBPApo
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RelDepApo.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepApoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 557
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPApo'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'RELACI'#211'N DE BOLETAS DE DEP'#211'SITO DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 26988
        mmTop = 23813
        mmWidth = 76465
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 174361
        mmTop = 794
        mmWidth = 16404
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
        mmLeft = 174361
        mmTop = 5556
        mmWidth = 12700
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
        mmLeft = 174361
        mmTop = 10319
        mmWidth = 1852
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
        mmLeft = 157692
        mmTop = 794
        mmWidth = 8996
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
        mmLeft = 157692
        mmTop = 5556
        mmWidth = 7144
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
        mmLeft = 157692
        mmTop = 10319
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 41275
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 29369
        mmTop = 41275
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 94456
        mmTop = 41275
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'N'#176' de Operac.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 119327
        mmTop = 41275
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'N'#176'  Cta Ahorro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 139965
        mmTop = 41275
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Importe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 41275
        mmWidth = 11642
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
        mmLeft = 182298
        mmTop = 41275
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
        mmLeft = 171450
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
        mmLeft = 187855
        mmTop = 45244
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL OF. PRINCIPAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 3969
        mmWidth = 58738
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 38100
        mmWidth = 203200
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 51594
        mmWidth = 203200
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 170657
        mmTop = 45244
        mmWidth = 30427
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 7408
        mmTop = 794
        mmWidth = 58473
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CCBCOID'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 135467
        mmTop = 794
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'TRANSMTO'
        DataPipeline = ppDBPApo
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 162719
        mmTop = 794
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'FREG'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 188648
        mmTop = 794
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'TRANSFOPE'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 794
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'BANCONOM'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 78052
        mmTop = 794
        mmWidth = 18256
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'TRANSNOPE'
        DataPipeline = ppDBPApo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 117740
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 124619
        mmTop = 2117
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TRANSMTO'
        DataPipeline = ppDBPApo
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPApo'
        mmHeight = 3969
        mmLeft = 151871
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 794
        mmWidth = 203200
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7144
        mmWidth = 203200
        BandType = 7
      end
    end
  end
  object ppDBPApoUse: TppDBPipeline
    DataSource = DM1.dsAportes
    UserName = 'DBPApoUse'
    Left = 597
    Top = 40
    object ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'TRANSID'
      FieldName = 'TRANSID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'USEABR'
      FieldName = 'USEABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'UPAGOABR'
      FieldName = 'UPAGOABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'UPROABR'
      FieldName = 'UPROABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'CCBCOID'
      FieldName = 'CCBCOID'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'TRANSNOPE'
      FieldName = 'TRANSNOPE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'TRANSFOPE'
      FieldName = 'TRANSFOPE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'TRANSFFCIND'
      FieldName = 'TRANSFFCIND'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'TRANSANO'
      FieldName = 'TRANSANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'TRANSMES'
      FieldName = 'TRANSMES'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSMTO'
      FieldName = 'TRANSMTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSMTODEV'
      FieldName = 'TRANSMTODEV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOANT'
      FieldName = 'SALDOANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTERESMTO'
      FieldName = 'INTERESMTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDOBONUS'
      FieldName = 'SALDOBONUS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'BONUSMTO'
      FieldName = 'BONUSMTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTERESPORC'
      FieldName = 'INTERESPORC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'BONUSPORC'
      FieldName = 'BONUSPORC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'TRANSINTID'
      FieldName = 'TRANSINTID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 25
    end
    object ppField27: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'APOFRECL'
      FieldName = 'APOFRECL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 28
    end
    object ppField30: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 29
    end
    object ppField31: TppField
      FieldAlias = 'FORPAGOID'
      FieldName = 'FORPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 30
    end
    object ppField32: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 31
    end
    object ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPRV'
      FieldName = 'TRANSPRV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppField34: TppField
      FieldAlias = 'APOFNP'
      FieldName = 'APOFNP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'FECCTAIND'
      FieldName = 'FECCTAIND'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 34
    end
    object ppField36: TppField
      FieldAlias = 'APOFDEV'
      FieldName = 'APOFDEV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 35
    end
    object ppField37: TppField
      FieldAlias = 'DEVANO'
      FieldName = 'DEVANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 36
    end
    object ppField38: TppField
      FieldAlias = 'DEVMES'
      FieldName = 'DEVMES'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object ppField39: TppField
      FieldAlias = 'FORPAGOABR'
      FieldName = 'FORPAGOABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 38
    end
    object ppField40: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 39
    end
    object ppField41: TppField
      FieldAlias = 'DPTOABR'
      FieldName = 'DPTOABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 40
    end
    object ppField42: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 41
    end
    object ppField43: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 42
    end
    object ppField44: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 43
    end
    object ppField45: TppField
      FieldAlias = 'TRANSAAMM'
      FieldName = 'TRANSAAMM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 44
    end
    object ppField46: TppField
      FieldAlias = 'TRANSAATRI'
      FieldName = 'TRANSAATRI'
      FieldLength = 5
      DisplayWidth = 5
      Position = 45
    end
    object ppField47: TppField
      FieldAlias = 'TRANSTRIM'
      FieldName = 'TRANSTRIM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 46
    end
    object ppField48: TppField
      FieldAlias = 'TRANSSEM'
      FieldName = 'TRANSSEM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 47
    end
    object ppField49: TppField
      FieldAlias = 'TRANSAASEM'
      FieldName = 'TRANSAASEM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 48
    end
    object ppField50: TppField
      FieldAlias = 'APOFCNT'
      FieldName = 'APOFCNT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 49
    end
    object ppField51: TppField
      FieldAlias = 'APOSEC'
      FieldName = 'APOSEC'
      FieldLength = 6
      DisplayWidth = 6
      Position = 50
    end
    object ppField52: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 51
    end
    object ppField53: TppField
      FieldAlias = 'TIPDESEID'
      FieldName = 'TIPDESEID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 52
    end
    object ppField54: TppField
      FieldAlias = 'TIPDESEABR'
      FieldName = 'TIPDESEABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 53
    end
    object ppField55: TppField
      FieldAlias = 'BCOGIRO'
      FieldName = 'BCOGIRO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppField56: TppField
      FieldAlias = 'DPTOGIRO'
      FieldName = 'DPTOGIRO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 55
    end
    object ppField57: TppField
      FieldAlias = 'AGENBANCOID'
      FieldName = 'AGENBANCOID'
      FieldLength = 8
      DisplayWidth = 8
      Position = 56
    end
    object ppField58: TppField
      FieldAlias = 'NRONABO'
      FieldName = 'NRONABO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppField59: TppField
      FieldAlias = 'NROFICIO'
      FieldName = 'NROFICIO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 58
    end
    object ppField60: TppField
      FieldAlias = 'DETRCOBID'
      FieldName = 'DETRCOBID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 59
    end
    object ppField61: TppField
      FieldAlias = 'USERCOBID'
      FieldName = 'USERCOBID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 60
    end
    object ppField62: TppField
      FieldAlias = 'RCOBID'
      FieldName = 'RCOBID'
      FieldLength = 7
      DisplayWidth = 7
      Position = 61
    end
    object ppField63: TppField
      FieldAlias = 'BANCOIDG'
      FieldName = 'BANCOIDG'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppField64: TppField
      FieldAlias = 'AGENCIDG'
      FieldName = 'AGENCIDG'
      FieldLength = 8
      DisplayWidth = 8
      Position = 63
    end
    object ppField65: TppField
      FieldAlias = 'FILLER'
      FieldName = 'FILLER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppField66: TppField
      FieldAlias = 'FCIERRE'
      FieldName = 'FCIERRE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppField67: TppField
      FieldAlias = 'CNTCONTA'
      FieldName = 'CNTCONTA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 66
    end
  end
  object ppRepApoUse: TppReport
    AutoStop = False
    DataPipeline = ppDBPApoUse
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RelDepApoUse.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepApoUsePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 597
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPApoUse'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object pplblTitulo1: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'RELACI'#211'N DE BOLETAS DE DEP'#211'SITO DE APORTES POR USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 28840
        mmWidth = 90752
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
        mmLeft = 176477
        mmTop = 5292
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
        mmLeft = 176477
        mmTop = 10054
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
        mmLeft = 176477
        mmTop = 15081
        mmWidth = 1852
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
        mmLeft = 159809
        mmTop = 5292
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
        mmLeft = 159809
        mmTop = 10054
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
        mmLeft = 159809
        mmTop = 15081
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CIADES'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 5821
        mmWidth = 74348
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 8731
        mmTop = 0
        mmWidth = 58473
        BandType = 4
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        ResetGroup = ppGroup2
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'BANCONOM'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 79375
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'TRANSNOPE'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 114829
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'CCBCOID'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'TRANSMTO'
        DataPipeline = ppDBPApoUse
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 157692
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'TRANSFOPE'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 166159
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'FREG'
        DataPipeline = ppDBPApoUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 183886
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine7: TppLine
        UserName = 'Line101'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 200555
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7408
        mmWidth = 200555
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'TOTAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 119063
        mmTop = 1588
        mmWidth = 11642
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'TRANSMTO'
        DataPipeline = ppDBPApoUse
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPApoUse'
        mmHeight = 3969
        mmLeft = 135996
        mmTop = 1588
        mmWidth = 28046
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DPTOID'
      DataPipeline = ppDBPApoUse
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPApoUse'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 34925
        mmPrintPosition = 0
        object ppLabel35: TppLabel
          UserName = 'Label35'
          Caption = 'DEPARTAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 1852
          mmTop = 794
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'USEID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 1852
          mmTop = 6350
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 43127
          mmTop = 6350
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          AutoSize = True
          DataField = 'DPTODES'
          DataPipeline = ppDBPApoUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPApoUse'
          mmHeight = 3969
          mmLeft = 43127
          mmTop = 794
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          AutoSize = True
          DataField = 'USENOM'
          DataPipeline = ppDBPApoUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPApoUse'
          mmHeight = 3969
          mmLeft = 42863
          mmTop = 12435
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'USEID'
          DataPipeline = ppDBPApoUse
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPApoUse'
          mmHeight = 3969
          mmLeft = 1852
          mmTop = 12171
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          AutoSize = False
          Caption = 'N'#176
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 3440
          mmTop = 21696
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 31485
          mmTop = 21696
          mmWidth = 30692
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 92604
          mmTop = 21696
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          AutoSize = False
          Caption = 'N'#176' de Operaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 117211
          mmTop = 21696
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label101'
          AutoSize = False
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 151342
          mmTop = 21696
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 178859
          mmTop = 21696
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          AutoSize = False
          Caption = 'Dep'#243'sito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 168540
          mmTop = 26723
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          AutoSize = False
          Caption = 'Registro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 186532
          mmTop = 26723
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          AutoSize = False
          Caption = 'N'#176' Cta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 138377
          mmTop = 21696
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 19315
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 33338
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 168540
          mmTop = 26723
          mmWidth = 30427
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 127794
          mmTop = 2646
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'TRANSMTO'
          DataPipeline = ppDBPApoUse
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPApoUse'
          mmHeight = 3969
          mmLeft = 135996
          mmTop = 2646
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 794
          mmWidth = 200555
          BandType = 5
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 8202
          mmWidth = 200555
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
