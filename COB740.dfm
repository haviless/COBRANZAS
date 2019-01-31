object FObservaciones: TFObservaciones
  Left = 287
  Top = 65
  Width = 607
  Height = 593
  BorderIcons = [biSystemMenu]
  Caption = 'Act. Situaci'#243'n Ctas Bancarias'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 2
    Width = 593
    Height = 560
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 7
      Top = 1
      Width = 315
      Height = 27
      Caption = 'Asociados Antes de Trasferencia '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object TLabel
      Left = 7
      Top = 275
      Width = 346
      Height = 27
      Caption = 'Asociados Despu'#233's de Transferencia '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object sbtnImprimirAntes: TfcShapeBtn
      Left = 494
      Top = 247
      Width = 34
      Height = 31
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnImprimirAntesClick
    end
    object sbtnCancelar: TfcShapeBtn
      Left = 540
      Top = 247
      Width = 34
      Height = 31
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnCancelarClick
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 26
      Width = 582
      Height = 212
      TabOrder = 2
      object wwDBGrid1: TwwDBGrid
        Left = 7
        Top = 11
        Width = 569
        Height = 195
        DisableThemesInTitle = False
        Selected.Strings = (
          'ASOID'#9'10'#9'ASOID'
          'ASOCODMOD'#9'10'#9'ASOCODMOD'
          'ASOCODAUX'#9'6'#9'ASOCODAUX'
          'ASOCODPAGO'#9'25'#9'ASOCODPAGO'
          'ASOAPEPAT'#9'30'#9'ASOAPEPAT'
          'ASOAPEMAT'#9'30'#9'ASOAPEMAT'
          'ASONOMBRES'#9'30'#9'ASONOMBRES'
          'ASOAPENOM'#9'90'#9'ASOAPENOM'
          'USEID'#9'3'#9'USEID'
          'UPROID'#9'3'#9'UPROID'
          'UPAGOID'#9'3'#9'UPAGOID'
          'ASORESNOM'#9'15'#9'ASORESNOM'
          'ASOFRESNOM'#9'18'#9'ASOFRESNOM'
          'RESID'#9'2'#9'RESID'
          'REGPENID'#9'2'#9'REGPENID'
          'ASOSITID'#9'2'#9'ASOSITID'
          'ASOFACT'#9'1'#9'ASOFACT'
          'ASOTIPID'#9'2'#9'ASOTIPID'
          'VIAID'#9'2'#9'VIAID'
          'VIANOMBRE'#9'60'#9'VIANOMBRE'
          'ASONUMDIR'#9'5'#9'ASONUMDIR'
          'ASOFDPTO'#9'1'#9'ASOFDPTO'
          'ASODPTO'#9'5'#9'ASODPTO'
          'ZONAID'#9'2'#9'ZONAID'
          'ZONANOMB'#9'60'#9'ZONANOMB'
          'UBIGEOID'#9'6'#9'UBIGEOID'
          'DPTOID'#9'3'#9'DPTOID'
          'PAISID'#9'2'#9'PAISID'
          'REFDOM'#9'80'#9'REFDOM'
          'ASOFECNAC'#9'18'#9'ASOFECNAC'
          'ASOTELF1'#9'20'#9'ASOTELF1'
          'ASOTELF2'#9'20'#9'ASOTELF2'
          'TIPDOCCOD'#9'2'#9'TIPDOCCOD'
          'ASODOCNUM'#9'15'#9'ASODOCNUM'
          'ASOLIBMIL'#9'15'#9'ASOLIBMIL'
          'ASORUC'#9'15'#9'ASORUC'
          'ESTCIVID'#9'2'#9'ESTCIVID'
          'ASOSEXO'#9'1'#9'ASOSEXO'
          'ASOEMAIL'#9'60'#9'ASOEMAIL'
          'BANCOID'#9'2'#9'BANCOID'
          'ASONCTA'#9'20'#9'ASONCTA'
          'SITCTA'#9'3'#9'SITCTA'
          'ASODNI'#9'10'#9'ASODNI'
          'GRAACID'#9'2'#9'GRAACID'
          'GRAINSID'#9'2'#9'GRAINSID'
          'PROFID'#9'3'#9'PROFID'
          'ASOFMOV'#9'1'#9'ASOFMOV'
          'ASOFLUGING'#9'1'#9'ASOFLUGING'
          'ASODIR'#9'60'#9'ASODIR'
          'USUARIO'#9'10'#9'USUARIO'
          'HREG'#9'18'#9'HREG'
          'FREG'#9'18'#9'FREG'
          'ASOLUGEST'#9'90'#9'ASOLUGEST'
          'FECTEREST'#9'18'#9'FECTEREST'
          'TIEMPOEST'#9'2'#9'TIEMPOEST'
          'ASOLNACID'#9'6'#9'ASOLNACID'
          'ASORESCESE'#9'15'#9'ASORESCESE'
          'ASOFRESCESE'#9'18'#9'ASOFRESCESE'
          'FGARANTE'#9'1'#9'FGARANTE'
          'ZIPID'#9'6'#9'ZIPID'
          'CIUDID'#9'4'#9'CIUDID'
          'ARCHIVOFTP'#9'12'#9'ARCHIVOFTP'
          'CIAID'#9'2'#9'CIAID'
          'FLAGVAR'#9'1'#9'FLAGVAR'
          'ASOAPNCRE'#9'90'#9'ASOAPNCRE')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clInfoBk
        DataSource = DM1.dsQry3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 304
      Width = 582
      Height = 212
      TabOrder = 3
      object wwDBGrid2: TwwDBGrid
        Left = 6
        Top = 11
        Width = 569
        Height = 195
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clInfoBk
        DataSource = DM1.dsQry4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 541
      Top = 524
      Width = 34
      Height = 31
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnCancelarClick
    end
    object sbtnImprimirDespues: TfcShapeBtn
      Left = 495
      Top = 524
      Width = 34
      Height = 31
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnImprimirDespuesClick
    end
  end
  object ppdbRepAntes: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'dbRepAntes'
    Left = 408
    Top = 248
  end
  object ppdbRepDespues: TppDBPipeline
    DataSource = DM1.dsQry4
    UserName = 'dbRepDespues'
    Left = 408
    Top = 524
  end
  object ppRepDespues: TppReport
    AutoStop = False
    DataPipeline = ppdbRepDespues
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepDespues'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepDespTransf.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepDespuesPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 440
    Top = 524
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepDespues'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 12965
        mmTop = 5556
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 1323
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173832
        mmTop = 1323
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 6085
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173832
        mmTop = 6085
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 10848
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173832
        mmTop = 10848
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'SITUACION DEL ASOCIADO DESPUES DE LA TRANSFERENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 60061
        mmTop = 17727
        mmWidth = 83344
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'ID ASOCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 31485
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'NRO CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 130440
        mmTop = 31485
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 31485
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'SITUACION CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 31485
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'LIB. ELECTORAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 89959
        mmTop = 31485
        mmWidth = 23019
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'dbAsoId1'
        DataField = 'ASOID'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 8467
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'dbAsoaPeNom1'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 44715
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'dbLE1'
        AutoSize = True
        DataField = 'ASODNI'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 97367
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'dbNroCta1'
        AutoSize = True
        DataField = 'ASONCTA'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'dbSitCta1'
        AutoSize = True
        DataField = 'SITCTA'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 168011
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppRepAntes: TppReport
    AutoStop = False
    DataPipeline = ppdbRepAntes
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepAntTransf.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepAntesPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 440
    Top = 248
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepAntes'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 8202
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 3969
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174096
        mmTop = 3969
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 8731
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174096
        mmTop = 8731
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 13494
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174096
        mmTop = 13494
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'SITUACION DEL ASOCIADO ANTES DE LA TRANSFERENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 60325
        mmTop = 20373
        mmWidth = 80169
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'ID ASOCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 31485
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'NRO CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 130440
        mmTop = 31485
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 31485
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'SITUACION CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 31485
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'LIB. ELECTORAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 89959
        mmTop = 31485
        mmWidth = 23019
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppdbAsoId: TppDBText
        UserName = 'dbAsoId'
        DataField = 'ASOID'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 8467
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppdbAsoaPeNom: TppDBText
        UserName = 'dbAsoaPeNom'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 44715
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppdbLE: TppDBText
        UserName = 'dbLE'
        AutoSize = True
        DataField = 'ASODNI'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 97367
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppdbNroCta: TppDBText
        UserName = 'dbNroCta'
        AutoSize = True
        DataField = 'ASONCTA'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppdbSitCta: TppDBText
        UserName = 'dbSitCta'
        AutoSize = True
        DataField = 'SITCTA'
        DataPipeline = ppdbRepAntes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepAntes'
        mmHeight = 3704
        mmLeft = 168011
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
    end
  end
end
