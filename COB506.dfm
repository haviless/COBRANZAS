object Fcredsinpagpricuo: TFcredsinpagpricuo
  Left = 430
  Top = 194
  BorderStyle = bsDialog
  Caption = 'Primera cuota sin pago'
  ClientHeight = 412
  ClientWidth = 814
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 1
    Width = 687
    Height = 123
    Caption = ' Filtrar informaci'#243'n '
    TabOrder = 0
    object gbfecha: TGroupBox
      Left = 6
      Top = 15
      Width = 149
      Height = 63
      Caption = ' Fecha de vencimiento '
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 19
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label2: TLabel
        Left = 5
        Top = 41
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object Label7: TLabel
        Left = 39
        Top = 19
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label8: TLabel
        Left = 39
        Top = 41
        Width = 3
        Height = 13
        Caption = ':'
      end
      object dbdtpInicial: TwwDBDateTimePicker
        Left = 48
        Top = 15
        Width = 97
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 0
        UnboundDataType = wwDTEdtDate
        OnChange = dbdtpInicialChange
      end
      object dbdtpFinal: TwwDBDateTimePicker
        Left = 48
        Top = 37
        Width = 97
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
        UnboundDataType = wwDTEdtDate
        OnChange = dbdtpFinalChange
      end
    end
    object gbunidadgestion: TGroupBox
      Left = 264
      Top = 15
      Width = 330
      Height = 79
      Caption = 'Por UGEL'
      TabOrder = 2
      object Label3: TLabel
        Left = 6
        Top = 15
        Width = 90
        Height = 13
        Caption = 'Unidad de proceso'
      end
      object Label4: TLabel
        Left = 6
        Top = 36
        Width = 76
        Height = 13
        Caption = 'Unidad de pago'
      end
      object Label9: TLabel
        Left = 99
        Top = 15
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label10: TLabel
        Left = 99
        Top = 36
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label13: TLabel
        Left = 6
        Top = 57
        Width = 86
        Height = 13
        Caption = 'Unidad de gesti'#243'n'
      end
      object Label16: TLabel
        Left = 99
        Top = 57
        Width = 3
        Height = 13
        Caption = ':'
      end
      object dblcdCodUniPro: TwwDBLookupCombo
        Left = 105
        Top = 11
        Width = 54
        Height = 21
        DropDownAlignment = taLeftJustify
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        MaxLength = 3
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcdCodUniProChange
        OnExit = dblcdCodUniProExit
      end
      object dblcdCodUniPag: TwwDBLookupCombo
        Left = 105
        Top = 32
        Width = 54
        Height = 21
        DropDownAlignment = taLeftJustify
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Enabled = False
        MaxLength = 2
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcdCodUniPagChange
        OnExit = dblcdCodUniPagExit
      end
      object meDescUniPag: TMaskEdit
        Left = 161
        Top = 32
        Width = 164
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object dblcdCodUniGes: TwwDBLookupCombo
        Left = 105
        Top = 53
        Width = 54
        Height = 21
        DropDownAlignment = taLeftJustify
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Enabled = False
        MaxLength = 2
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcdCodUniGesChange
        OnExit = dblcdCodUniGesExit
      end
      object meDescUniGes: TMaskEdit
        Left = 161
        Top = 53
        Width = 164
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object meDescUniPro: TMaskEdit
        Left = 161
        Top = 11
        Width = 164
        Height = 21
        Enabled = False
        TabOrder = 5
      end
    end
    object btnprocesar: TBitBtn
      Left = 600
      Top = 19
      Width = 84
      Height = 29
      Caption = 'Procesar'
      TabOrder = 3
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
    object rgfiltro: TRadioGroup
      Left = 157
      Top = 15
      Width = 103
      Height = 63
      Caption = ' Tipo de filtro '
      ItemIndex = 0
      Items.Strings = (
        'Por UGEL'
        'Por Ofide')
      TabOrder = 1
      OnClick = rgfiltroClick
    end
  end
  object dbgReporte: TwwDBGrid
    Left = 2
    Top = 126
    Width = 807
    Height = 249
    DisableThemesInTitle = False
    Selected.Strings = (
      'COD_MOD'#9'10'#9'C'#243'digo~modular'
      'DNI_ASO'#9'8'#9'DNI~asociado'
      'APELL_NOMBRE'#9'42'#9'Apellidos y nombres'
      'TIP_ASO_OTO'#9'2'#9'Tipo asociado~al otorgamiento'
      'CANAL_OTORG'#9'40'#9'Canal de otorgamiento'
      'UGEL_OTORG'#9'75'#9'Ugel al otorgamiento'
      'UGEL_ACTUAL'#9'75'#9'Ugel Actual'
      'NUMERO_CREDITO'#9'15'#9'N'#250'mero~cr'#233'dito'
      'IMPORTE_OTORG'#9'10'#9'Importe~otorgado'
      'FECHA_OTORG'#9'10'#9'Fecha~otorgamiento'
      'PLAZO_OTORG'#9'10'#9'Plazo~otorgamiento'
      'IMPORTE_CUOTA'#9'10'#9'Monto de~la cuota'
      'ESTADO_CUOTA1_ACTUAL'#9'30'#9'Estado cuota~1 actual '
      'VEN_PRI_CUO_ORI'#9'10'#9'Primera fecha~Venc.Orig.'
      'VEN_ULT_CUO_ORI'#9'10'#9#218'ltima fecha~Venc.Orig.'
      'ULT_CALIF_REGIST'#9'35'#9#218'ltima~calificaci'#243'n'
      'CUOTA_DIFERIDA_ACTUAL'#9'2'#9'Cuot. Dif.~Actual'
      'CUO_PEND_NUMERO'#9'10'#9'Cuotas~pendientes'
      'CUOPENCREANT'#9'10'#9'N'#250'mero de cuotas~pendientes cred. ant.'
      'ULTFORPAGCREANT'#9'45'#9'ultima forma de pago~credito anterior '
      'ESTCREANT'#9'35'#9'Estado cr'#233'dito~anterior'
      'FECCANCREANT'#9'10'#9#218'ltimo pago~credito anterior'
      'FECHA_VEN_ACTUAL'#9'10'#9#218'lt.Fec.~Venc. Act.'#9'F'
      'NUMCREACT'#9'10'#9'N'#250'mero creditos~activos')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsReporte
    KeyOptions = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object BitSalir: TBitBtn
    Left = 725
    Top = 381
    Width = 86
    Height = 27
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Kind = bkClose
  end
  object btnAExcel: TBitBtn
    Left = 635
    Top = 381
    Width = 84
    Height = 25
    Caption = 'Excel'
    Enabled = False
    TabOrder = 3
    OnClick = btnAExcelClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
  end
  object gbOficina: TGroupBox
    Left = 605
    Top = 63
    Width = 326
    Height = 42
    Caption = 'Por Ofide'
    TabOrder = 4
    object Label6: TLabel
      Left = 4
      Top = 17
      Width = 33
      Height = 13
      Caption = 'Oficina'
    end
    object Label12: TLabel
      Left = 96
      Top = 17
      Width = 3
      Height = 13
      Caption = ':'
    end
    object dblcdOficina: TwwDBLookupCombo
      Left = 104
      Top = 13
      Width = 54
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsOfDes
      LookupField = 'OFDESID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcdOficinaChange
      OnExit = dblcdOficinaExit
    end
    object meOficina: TMaskEdit
      Left = 159
      Top = 12
      Width = 160
      Height = 21
      TabOrder = 1
    end
  end
  object DBGAExcel: TDBGrid
    Left = 704
    Top = 24
    Width = 51
    Height = 49
    DataSource = dsReporte
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object cdsReporte: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_ASOCIADO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COD_MOD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DNI_ASO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'APELL_NOMBRE'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'TIP_ASO_OTO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CANAL_OTORG'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UGEL_OTORG'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'UGEL_ACTUAL'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'NUMERO_CREDITO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IMPORTE_OTORG'
        DataType = ftFloat
      end
      item
        Name = 'FECHA_OTORG'
        DataType = ftDate
      end
      item
        Name = 'PLAZO_OTORG'
        DataType = ftInteger
      end
      item
        Name = 'IMPORTE_CUOTA'
        DataType = ftFloat
      end
      item
        Name = 'VEN_PRI_CUO_ORI'
        DataType = ftDate
      end
      item
        Name = 'ESTADO_CUOTA1_ACTUAL'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CUO_PEND_NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'ULT_CALIF_REGIST'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CUOTA_DIFERIDA_ACTUAL'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VEN_ULT_CUO_ORI'
        DataType = ftDate
      end
      item
        Name = 'ULTFORPAGCREANT'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ESTCREANT'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FECCANCREANT'
        DataType = ftDate
      end
      item
        Name = 'CUOPENCREANT'
        DataType = ftInteger
      end
      item
        Name = 'NUMCREACT'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_VEN_ACTUAL'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 728
    Top = 80
    Data = {
      E40200009619E0BD010000001800000019000000000003000000E4020F434F44
      49474F5F41534F434941444F0100490000000100055749445448020002000A00
      07434F445F4D4F440100490000000100055749445448020002000A0007444E49
      5F41534F01004900000001000557494454480200020008000C4150454C4C5F4E
      4F4D4252450100490000000100055749445448020002005A000B5449505F4153
      4F5F4F544F01004900000001000557494454480200020002000B43414E414C5F
      4F544F524701004900000001000557494454480200020028000A5547454C5F4F
      544F52470100490000000100055749445448020002004B000B5547454C5F4143
      5455414C0100490000000100055749445448020002004B000E4E554D45524F5F
      4352454449544F0100490000000100055749445448020002000F000D494D504F
      5254455F4F544F524708000400000000000B46454348415F4F544F5247040006
      00000000000B504C415A4F5F4F544F524704000100000000000D494D504F5254
      455F43554F544108000400000000000F56454E5F5052495F43554F5F4F524904
      000600000000001445535441444F5F43554F5441315F41435455414C01004900
      00000100055749445448020002001E000F43554F5F50454E445F4E554D45524F
      040001000000000010554C545F43414C49465F52454749535401004900000001
      000557494454480200020023001543554F54415F44494645524944415F414354
      55414C01004900000001000557494454480200020002000F56454E5F554C545F
      43554F5F4F524904000600000000000F554C54464F52504147435245414E5401
      00490000000100055749445448020002002D0009455354435245414E54010049
      00000001000557494454480200020023000C46454343414E435245414E540400
      0600000000000C43554F50454E435245414E540400010000000000094E554D43
      524541435404000100000000001046454348415F56454E5F41435455414C0400
      0600000000000000}
  end
  object dsReporte: TDataSource
    DataSet = cdsReporte
    Left = 720
    Top = 96
  end
end
