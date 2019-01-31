object FEstEnvCob: TFEstEnvCob
  Left = 493
  Top = 87
  BorderStyle = bsDialog
  Caption = 'Estadistica de la Cobranza'
  ClientHeight = 582
  ClientWidth = 664
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 71
    Width = 363
    Height = 113
    Caption = ' Rango de muestra '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 23
      Width = 97
      Height = 13
      Caption = 'A'#241'o de cobranza'
    end
    object Label2: TLabel
      Left = 13
      Top = 66
      Width = 99
      Height = 13
      Caption = 'Mes de Cobranza'
    end
    object rgtipo: TRadioGroup
      Left = 128
      Top = 20
      Width = 127
      Height = 82
      Caption = ' Tipo de Selecci'#243'n '
      ItemIndex = 2
      Items.Strings = (
        'Docentes'
        'Cesantes'
        'Todos')
      TabOrder = 0
      OnClick = rgtipoClick
    end
    object btnprocesar: TBitBtn
      Left = 272
      Top = 26
      Width = 83
      Height = 28
      Caption = 'Procesar'
      TabOrder = 1
      OnClick = btnprocesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object seanopro: TSpinEdit
      Left = 13
      Top = 39
      Width = 54
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 2030
      MinValue = 2006
      ParentFont = False
      TabOrder = 2
      Value = 2007
      OnChange = seanoproChange
    end
    object semespro: TSpinEdit
      Left = 13
      Top = 82
      Width = 40
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 12
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 5
      OnChange = semesproChange
    end
    object dtgData: TDBGrid
      Left = 271
      Top = 61
      Width = 33
      Height = 16
      DataSource = DM1.dsReporte
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
  end
  object BitBtn2: TBitBtn
    Left = 582
    Top = 550
    Width = 75
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btnimprimir: TBitBtn
    Left = 423
    Top = 550
    Width = 75
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btnimprimirClick
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
  object Panel1: TPanel
    Left = 377
    Top = 77
    Width = 280
    Height = 100
    BorderStyle = bsSingle
    Color = clInfoBk
    TabOrder = 3
    object lblanomes: TLabel
      Left = 1
      Top = 63
      Width = 272
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object lbltipdoc: TLabel
      Left = 1
      Top = 33
      Width = 272
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object lblEstadistica: TLabel
      Left = 1
      Top = 2
      Width = 272
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
  end
  object btnaexcel: TBitBtn
    Left = 503
    Top = 550
    Width = 75
    Height = 28
    Caption = 'A Excel'
    TabOrder = 4
    OnClick = btnaexcelClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object dbgprepri: TwwDBGrid
    Left = 6
    Top = 189
    Width = 650
    Height = 355
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
      'BANCOID'#9'3'#9'BANCOID'
      'ASONCTA'#9'20'#9'ASONCTA'
      'SITCTA'#9'3'#9'SITCTA'
      'ASODNI'#9'10'#9'ASODNI'
      'GRAACID'#9'2'#9'GRAACID'
      'GRAINSID'#9'2'#9'GRAINSID'
      'PROFID'#9'3'#9'PROFID'
      'ASOFMOV'#9'1'#9'ASOFMOV'
      'ASOFLUGING'#9'1'#9'ASOFLUGING'
      'ASODIR'#9'250'#9'ASODIR'
      'USUARIO'#9'20'#9'USUARIO'
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
      'ASOAPNCRE'#9'90'#9'ASOAPNCRE'
      'FLGFSOL'#9'1'#9'FLGFSOL'
      'ESTCLF'#9'2'#9'ESTCLF'
      'OBSERVA'#9'40'#9'OBSERVA'
      'USR_CREA'#9'10'#9'USR_CREA'
      'FEC_CREA'#9'18'#9'FEC_CREA'
      'USR_BEN'#9'10'#9'USR_BEN'
      'FEC_BEN'#9'18'#9'FEC_BEN'
      'CTASER'#9'7'#9'CTASER'
      'CARGO'#9'6'#9'CARGO'
      'VARIASCUOT'#9'1'#9'VARIASCUOT'
      'CRENCUOTA'#9'10'#9'CRENCUOTA'
      'NFUSION'#9'9'#9'NFUSION'
      'IDIMAGE'#9'7'#9'IDIMAGE'
      'FSINLIQ'#9'1'#9'FSINLIQ'
      'ASODESCOL'#9'60'#9'ASODESCOL'
      'ASODIRCOL'#9'60'#9'ASODIRCOL'
      'ASOZIPCOL'#9'6'#9'ASOZIPCOL'
      'ASOAPEPATDNI'#9'30'#9'ASOAPEPATDNI'
      'ASOAPEMATDNI'#9'30'#9'ASOAPEMATDNI'
      'ASONOMDNI'#9'30'#9'ASONOMDNI'
      'ASOAPENOMDNI'#9'90'#9'ASOAPENOMDNI'
      'ASODESLAB'#9'60'#9'ASODESLAB'
      'ASODIRLAB'#9'60'#9'ASODIRLAB'
      'ASODPTLABID'#9'2'#9'ASODPTLABID'
      'ASOPRVLABID'#9'4'#9'ASOPRVLABID'
      'ASODSTLABID'#9'6'#9'ASODSTLABID'
      'ASOTELLAB'#9'12'#9'ASOTELLAB'
      'DPTNACID'#9'2'#9'DPTNACID'
      'PRVNACID'#9'4'#9'PRVNACID'
      'DSTNACID'#9'6'#9'DSTNACID'
      'VIALABID'#9'2'#9'VIALABID'
      'ZONALABID'#9'2'#9'ZONALABID'
      'FECACT'#9'18'#9'FECACT'
      'INDICADOR'#9'1'#9'INDICADOR'
      'CCOSID'#9'15'#9'CCOSID'
      'PASSWORD'#9'4'#9'PASSWORD'
      'CODAFP'#9'2'#9'CODAFP'
      'DESHABILITADO'#9'1'#9'DESHABILITADO'
      'VALIDA_CI'#9'1'#9'VALIDA_CI'
      'TCREACION'#9'2'#9'TCREACION'
      'REGVERIF'#9'1'#9'REGVERIF'
      'CODMODANT'#9'10'#9'CODMODANT'
      'VALCODMODDNI'#9'1'#9'VALCODMODDNI'
      'ACTARCRENANT'#9'1'#9'ACTARCRENANT'
      'ACTARCREN'#9'1'#9'ACTARCREN'
      'REINGRESO'#9'2'#9'REINGRESO'
      'AUTDESAPO'#9'1'#9'AUTDESAPO'
      'FECAUTDESAPO'#9'18'#9'FECAUTDESAPO'
      'USUREGAUTDESAPO'#9'20'#9'USUREGAUTDESAPO'
      'OFIREGAUTDESAPO'#9'2'#9'OFIREGAUTDESAPO'
      'CODMODAUTDESAPO'#9'3'#9'CODMODAUTDESAPO'
      'CODARCHIVO'#9'21'#9'CODARCHIVO'
      'GENCODBAR'#9'1'#9'GENCODBAR'
      'ENVAUTDES'#9'6'#9'ENVAUTDES'
      'CORENVAUTDES'#9'5'#9'CORENVAUTDES'
      'CODTIPLUG'#9'2'#9'CODTIPLUG'
      'NUMDIRVIV'#9'6'#9'NUMDIRVIV'
      'NUMMANVIV'#9'3'#9'NUMMANVIV'
      'NUMLOTVIV'#9'3'#9'NUMLOTVIV'
      'DESINTVIV'#9'12'#9'DESINTVIV'
      'DESREFVIV'#9'65'#9'DESREFVIV'
      'CODURBVIV'#9'2'#9'CODURBVIV'
      'DESURBVIV'#9'50'#9'DESURBVIV'
      'NUMETAVIV'#9'6'#9'NUMETAVIV'
      'DESETAVIV'#9'50'#9'DESETAVIV'
      'NUMINTVIV'#9'8'#9'NUMINTVIV'
      'NOMDIRVIV'#9'45'#9'NOMDIRVIV'
      'ANOENV'#9'4'#9'ANOENV'
      'ENVIO'#9'4'#9'ENVIO'
      'CODOTRDOCIDE'#9'2'#9'CODOTRDOCIDE'
      'NUMOTRDOCIDE'#9'15'#9'NUMOTRDOCIDE'
      'CODMOTDESTAPO'#9'2'#9'CODMOTDESTAPO'
      'AUTDESCUO'#9'1'#9'AUTDESCUO'
      'FECAUTDESCUO'#9'18'#9'FECAUTDESCUO'
      'USUREGAUTDESCUO'#9'20'#9'USUREGAUTDESCUO'
      'OFIREGAUTDESCUO'#9'2'#9'OFIREGAUTDESCUO'
      'CODMODAUTDESCUO'#9'3'#9'CODMODAUTDESCUO'
      'MDFASODIR'#9'250'#9'MDFASODIR'
      'MDFZIPID'#9'6'#9'MDFZIPID'
      'MDFCNTREG'#9'1'#9'MDFCNTREG'
      'MDFUSRMOD'#9'20'#9'MDFUSRMOD'
      'MDFFECMOD'#9'18'#9'MDFFECMOD'
      'EMICARTA'#9'1'#9'EMICARTA'
      'DESMANVIV'#9'8'#9'DESMANVIV'
      'CODMOTDESTCUO'#9'2'#9'CODMOTDESTCUO'
      'FECACTPAD'#9'18'#9'FECACTPAD')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 5
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgprepri1DblClick
    FooterColor = clSilver
    FooterCellColor = clWhite
  end
  object rgTipoEst: TRadioGroup
    Left = 6
    Top = 4
    Width = 650
    Height = 60
    Caption = 'Tipo de Estadistica'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Por Envio'
      'Por Retorno')
    ParentFont = False
    TabOrder = 6
    OnClick = rgTipoEstClick
  end
  object pprepxdep: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 256
    Top = 549
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8731
        mmLeft = 25400
        mmTop = 40217
        mmWidth = 12964
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'd. dpto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 26194
        mmTop = 40746
        mmWidth = 11377
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8731
        mmLeft = 38100
        mmTop = 40217
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Descripci'#243'n de departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 38894
        mmTop = 40746
        mmWidth = 31221
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 8731
        mmLeft = 85196
        mmTop = 40217
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Monto Enviado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 85990
        mmTop = 40746
        mmWidth = 19050
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 8731
        mmLeft = 115359
        mmTop = 40217
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Monto Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 116152
        mmTop = 40746
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Derrama magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 24871
        mmTop = 1588
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Equipo de cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 24871
        mmTop = 5556
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 114300
        mmTop = 1588
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 114300
        mmTop = 5556
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 128059
        mmTop = 1588
        mmWidth = 19315
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 128059
        mmTop = 5556
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 124884
        mmTop = 1588
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 5556
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label11'
        Caption = 'COBRANZAS POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 54769
        mmTop = 17992
        mmWidth = 62177
        BandType = 0
      end
      object pplperiodo: TppLabel
        UserName = 'lperiodo'
        Caption = 'PERIODO : 2008/06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 65088
        mmTop = 26458
        mmWidth = 41275
        BandType = 0
      end
      object ppltipaso: TppLabel
        UserName = 'Label12'
        Caption = 'TIPO ASOCIADO : DOCENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 22225
        mmWidth = 53181
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTOID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DPTODES'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 38894
        mmTop = 0
        mmWidth = 45773
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONCUOENV'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3703
        mmLeft = 85990
        mmTop = 0
        mmWidth = 28839
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'MONCUOAPL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3703
        mmLeft = 116152
        mmTop = 0
        mmWidth = 28839
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 25400
        mmTop = 0
        mmWidth = 120121
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 25400
        mmTop = 4763
        mmWidth = 120121
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 66411
        mmTop = 529
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONCUOENV'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 85990
        mmTop = 529
        mmWidth = 28839
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONCUOAPL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 529
        mmWidth = 28839
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 25400
        mmTop = 5556
        mmWidth = 60325
        BandType = 7
      end
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'BDEPipeline1'
    Left = 272
    Top = 549
  end
  object pprRetorno: TppReport
    AutoStop = False
    DataPipeline = ppdbRetorno
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 352
    Top = 549
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRetorno'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape1'
        mmHeight = 8731
        mmLeft = 25400
        mmTop = 40217
        mmWidth = 12964
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'd. dpto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 26194
        mmTop = 40746
        mmWidth = 11377
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape2'
        mmHeight = 8731
        mmLeft = 38100
        mmTop = 40217
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label2'
        Caption = 'Descripci'#243'n de departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 38894
        mmTop = 40746
        mmWidth = 31221
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape3'
        mmHeight = 8731
        mmLeft = 85196
        mmTop = 40217
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label3'
        Caption = 'Monto Enviado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 85990
        mmTop = 40746
        mmWidth = 19050
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape4'
        mmHeight = 8731
        mmLeft = 115359
        mmTop = 40217
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label4'
        Caption = 'Monto Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 116152
        mmTop = 40746
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label6'
        Caption = 'Derrama magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 24871
        mmTop = 1588
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label7'
        Caption = 'Equipo de cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 24871
        mmTop = 5556
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 114300
        mmTop = 1588
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 114300
        mmTop = 5556
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 128059
        mmTop = 1588
        mmWidth = 19315
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 128059
        mmTop = 5556
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label10'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 124884
        mmTop = 1588
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label101'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 5556
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label11'
        Caption = 'COBRANZAS POR DEPARTAMENTO (Por Retorno)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 43528
        mmTop = 17992
        mmWidth = 84667
        BandType = 0
      end
      object pplperiodo2: TppLabel
        UserName = 'lperiodo'
        Caption = 'PERIODO : 2008/06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 65088
        mmTop = 26458
        mmWidth = 41275
        BandType = 0
      end
      object ppltipaso2: TppLabel
        UserName = 'Label12'
        Caption = 'TIPO ASOCIADO : DOCENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 22225
        mmWidth = 53181
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 8731
        mmLeft = 145521
        mmTop = 40217
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Efectividad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 148961
        mmTop = 40746
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 157957
        mmTop = 44450
        mmWidth = 3440
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTOID'
        DataPipeline = ppdbRetorno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText2'
        DataField = 'DPTODES'
        DataPipeline = ppdbRetorno
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3704
        mmLeft = 38894
        mmTop = 0
        mmWidth = 45773
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText3'
        DataField = 'MONCUOENV'
        DataPipeline = ppdbRetorno
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3703
        mmLeft = 85990
        mmTop = 0
        mmWidth = 28839
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText4'
        DataField = 'MONCUOAPL'
        DataPipeline = ppdbRetorno
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3703
        mmLeft = 116152
        mmTop = 0
        mmWidth = 28839
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'EFECTIVIDAD'
        DataPipeline = ppdbRetorno
        DisplayFormat = '##0.#0%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3704
        mmLeft = 148961
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 25400
        mmTop = 0
        mmWidth = 150548
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 25400
        mmTop = 4763
        mmWidth = 150548
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label5'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 66411
        mmTop = 529
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONCUOENV'
        DataPipeline = ppdbRetorno
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3704
        mmLeft = 85990
        mmTop = 529
        mmWidth = 28839
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONCUOAPL'
        DataPipeline = ppdbRetorno
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetorno'
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 529
        mmWidth = 28839
        BandType = 7
      end
      object pplImpresoPor2: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 25400
        mmTop = 5556
        mmWidth = 60325
        BandType = 7
      end
    end
  end
  object ppdbRetorno: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbRetorno'
    Left = 368
    Top = 549
  end
end
