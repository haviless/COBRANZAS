object FToolRegGlobal: TFToolRegGlobal
  Left = 142
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registro Global'
  ClientHeight = 192
  ClientWidth = 804
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 82
    Align = alTop
    BevelOuter = bvNone
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bbtnImprime: TfcShapeBtn
      Left = 228
      Top = 32
      Width = 34
      Height = 31
      Hint = 'Imprimir'
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimeClick
    end
    object gbPeriodo: TGroupBox
      Left = 4
      Top = -1
      Width = 216
      Height = 78
      TabOrder = 0
      object Label3: TLabel
        Left = 9
        Top = 35
        Width = 31
        Height = 15
        Caption = 'Desde'
      end
      object Label4: TLabel
        Left = 113
        Top = 35
        Width = 29
        Height = 15
        Caption = 'Hasta'
      end
      object dtpDesde: TDateTimePicker
        Left = 9
        Top = 50
        Width = 94
        Height = 23
        Date = 36892.719144328700000000
        Time = 36892.719144328700000000
        TabOrder = 0
      end
      object dtpHasta: TDateTimePicker
        Left = 111
        Top = 50
        Width = 93
        Height = 23
        Date = 36943.719144328700000000
        Time = 36943.719144328700000000
        TabOrder = 1
      end
      object rgFecha: TRadioGroup
        Left = 0
        Top = 0
        Width = 216
        Height = 34
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Fec.Registro'
          'Fec.Deposito')
        TabOrder = 2
      end
    end
    object pnlRepre: TPanel
      Left = 384
      Top = 3
      Width = 360
      Height = 70
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      BorderStyle = bsSingle
      Color = 10207162
      ParentBiDiMode = False
      TabOrder = 3
      object lblRepsen: TLabel
        Left = 8
        Top = 9
        Width = 73
        Height = 15
        Caption = 'Representante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdRepresentante: TwwDBLookupComboDlg
        Left = 9
        Top = 29
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Representante'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'REPRID'#9'5'#9'Codigo'#9'F'
          'REPRAPENOM'#9'70'#9'Representante'#9'F')
        LookupTable = DM1.cdsRepresentante
        LookupField = 'REPRID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdRepresentanteExit
      end
      object edtRepresentante: TEdit
        Left = 78
        Top = 27
        Width = 273
        Height = 23
        Color = 13165023
        Enabled = False
        TabOrder = 1
      end
    end
    object rdgTipo: TRadioGroup
      Left = 269
      Top = 1
      Width = 108
      Height = 72
      Caption = ' Tipo '
      ItemIndex = 1
      Items.Strings = (
        'U. Pago'
        'Representante')
      TabOrder = 2
      OnClick = rdgTipoClick
    end
    object bbtnAceptar: TfcShapeBtn
      Left = 763
      Top = 18
      Width = 34
      Height = 31
      Hint = 'Mostrar Asociados'
      Color = 10207162
      DitherColor = clWhite
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
      OnClick = bbtnAceptarClick
    end
    object pnlUPago: TPanel
      Left = 384
      Top = 3
      Width = 364
      Height = 75
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      BorderStyle = bsSingle
      Color = 10207162
      ParentBiDiMode = False
      TabOrder = 4
      Visible = False
      object lblUPago: TLabel
        Left = 4
        Top = 41
        Width = 44
        Height = 15
        Caption = 'U. Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblUnidadProceso: TLabel
        Left = 4
        Top = 11
        Width = 60
        Height = 15
        Caption = 'U. Proceso :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 66
        Top = 41
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPAGOID'#9'3'#9'ID'#9'F'
          'UPAGONOM'#9'65'#9'UNIDAD DE PAGO'#9'F')
        LookupTable = DM1.cdsQry3
        LookupField = 'UPAGOID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdUPagoExit
      end
      object dblcdUProceso: TwwDBLookupComboDlg
        Left = 66
        Top = 11
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'UPROID'#9'5'#9'Id'#9'F'
          'UPRONOM'#9'35'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsQry2
        LookupField = 'UPROID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUProcesoExit
      end
      object dbeUProceso: TwwDBEdit
        Left = 129
        Top = 11
        Width = 225
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeUPago: TwwDBEdit
        Left = 129
        Top = 41
        Width = 225
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object Datos: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'Datos'
    Left = 19
    Top = 98
  end
  object ppBDeposito: TppReport
    AutoStop = False
    DataPipeline = Datos
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\BoletasDep.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppBDepositoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 83
    Top = 98
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'Datos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'U. Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 31750
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 31750
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#186' Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 92869
        mmTop = 31750
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 120386
        mmTop = 31750
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'F. Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 140229
        mmTop = 31750
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Boleta Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 794
        mmWidth = 14288
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 191030
        mmTop = 5821
        mmWidth = 10319
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 199761
        mmTop = 10848
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 794
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 5821
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Pag.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 10848
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 186267
        mmTop = 31750
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 16404
        mmWidth = 9790
        BandType = 0
      end
      object ppUsuario: TppLabel
        UserName = 'Usuario'
        Caption = '.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 200555
        mmTop = 16404
        mmWidth = 794
        BandType = 0
      end
      object ppFecha: TppLabel
        UserName = 'Fecha'
        Caption = 'Del 01/07/2003 Al 01/08/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 21431
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CIADES'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 0
        mmWidth = 77788
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Unidades de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 74348
        mmTop = 15081
        mmWidth = 54240
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Relaci'#243'n de Boletas de Dep'#243'sito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 66411
        mmTop = 9260
        mmWidth = 70115
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 7408
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 28310
        mmWidth = 142875
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 34925
        mmWidth = 142875
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'UPAGONOM'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 11377
        mmTop = 0
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'BANCONOM'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 0
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MES'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 186267
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CPAGOMTO'
        DataPipeline = Datos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 116946
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CPAGOFECHA'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'RCOBNOPE'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CCBCOID'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'UPAGOID'
        DataPipeline = Datos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 0
        mmWidth = 5027
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
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 202936
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'CPAGOMTO'
        DataPipeline = Datos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Datos'
        mmHeight = 4233
        mmLeft = 113930
        mmTop = 794
        mmWidth = 20743
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 98161
        mmTop = 794
        mmWidth = 7144
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText8'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'REPRID'
          DataPipeline = Datos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 14817
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'REPRAPENOM'
          DataPipeline = Datos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 26988
          mmTop = 0
          mmWidth = 69321
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Repres.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1323
          mmTop = 0
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText13'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'RCOBID'
          DataPipeline = Datos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 28310
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Doc. Cob.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 11377
          mmTop = 0
          mmWidth = 13494
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 51858
          mmTop = 0
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'RCOBMTO'
          DataPipeline = Datos
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Datos'
          mmHeight = 3704
          mmLeft = 64294
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
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
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 19
    Top = 154
  end
end
