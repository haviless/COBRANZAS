object FRangoFechas: TFRangoFechas
  Left = 166
  Top = 188
  Width = 441
  Height = 205
  Caption = 'Reporte de Reclamos'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTool: TPanel
    Left = 5
    Top = 4
    Width = 409
    Height = 157
    BevelOuter = bvNone
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 10
      Width = 393
      Height = 104
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TLabel
        Left = 13
        Top = 44
        Width = 49
        Height = 15
        Caption = 'Fecha Fin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 13
        Top = 12
        Width = 65
        Height = 15
        Caption = 'Fecha Inicio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsitrecl: TLabel
        Left = 13
        Top = 76
        Width = 50
        Height = 15
        Caption = 'Situaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbdtpfecini: TwwDBDateTimePicker
        Left = 88
        Top = 7
        Width = 97
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        Epoch = 1950
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 1
        OnExit = dbdtpfeciniExit
      end
      object dbdtpfecfin: TwwDBDateTimePicker
        Left = 88
        Top = 39
        Width = 97
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        Epoch = 1950
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 2
        OnExit = dbdtpfecfinExit
      end
      object dblcsitrecl: TwwDBLookupCombo
        Left = 85
        Top = 71
        Width = 41
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BANCOID'#9'2'#9'Id'#9'F'
          'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdssitreclamo
        LookupField = 'RECLSITID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcsitreclExit
      end
      object edtsitrecl: TEdit
        Left = 132
        Top = 71
        Width = 248
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 326
      Top = 121
      Width = 29
      Height = 28
      Hint = 'Devuelve Aporte'
      Color = 13165023
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 363
      Top = 122
      Width = 29
      Height = 27
      Hint = 'Cancelar'
      Cancel = True
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
  end
  object ppRepReclamos: TppReport
    AutoStop = False
    DataPipeline = ppdbReclamos
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepReclamos.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepReclamosPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 130
    Top = 117
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbReclamos'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 71173
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 19844
        mmLeft = 48419
        mmTop = 50536
        mmWidth = 76465
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 8202
        mmWidth = 8467
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 12435
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 16669
        mmWidth = 9525
        BandType = 1
      end
      object pplbltitulor: TppLabel
        UserName = 'lbltitulor'
        Caption = 
          'Reporte Estad'#237'stico de Reclamos Recibidos del 00/00/0000 al 00/0' +
          '0/0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 22225
        mmTop = 36248
        mmWidth = 157163
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 8202
        mmWidth = 14817
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 12435
        mmWidth = 11113
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 16669
        mmWidth = 7673
        BandType = 1
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765D70D0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108005C009103012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A2B0BC47E32D03C25F66FEDCBFF00B27DAB7793FB9924DDB7
          1BBEE29C6370EBEB5C8689E1A5F19D84BE218FC65E298A1BDBCBA6852D350314
          42213C8A9B50AE546D55E0D007A6515C2FFC2B3FFA9DFC69FF00836FFEC28974
          0BFF0005D84FACD9F8A35ABF82D71717B6BAACCB72B2DBA063208CED051F6925
          482012A0371C800EEA8AF33D2743D63C7A92F89351F126BBA558DDB7FC4B2C74
          E98DA98EDC13B5A5041DCEDD72323182090405D2FF008567FF0053BF8D3FF06D
          FF00D850077545799F88BC072E91E19D5752B7F1AF8C5A6B4B39AE2359355254
          B221600E141C647AD775A7F88B44D5EE1ADF4DD634FBD99577B476D7492305C8
          19214938C91CFBD0069514514005145140051451400514514005145140051457
          11E31D4B5D8BC67E12D1F46D512C13506BA69CC96CB32B88915C29070707E61F
          2B29F9BAF02803C87E3678C74FF126AF6BA6D9C3751CDA3CF756F70D32A8566D
          C8B94C3124650F503B57ADFC1BFF009253A2FF00DB7FFD1F257CD3E2F12AF8D7
          5E5B8749261A8DC091E3428ACDE636485249033DB271EA6BE96F837FF24A745F
          FB6FFF00A3E4A00EEAB0BC6DFF00221788BFEC1973FF00A29AB76B0BC6DFF221
          788BFEC1973FFA29A800F04FFC885E1DFF00B065B7FE8A5ADDAC2F04FF00C885
          E1DFFB065B7FE8A5ADDA00C2F1B7FC885E22FF00B065CFFE8A6AF9D7E0EF8974
          8F0AF8BAEEFB5ABBFB2DB4960F0ABF96EF97324640C2827A29FCABE8AF1B7FC8
          85E22FFB065CFF00E8A6AF8CE803EE2B2BCB7D46C2DAFAD24F32DAE6259A27C1
          1B918020E0F23823AD4F5E5FE15D63C57A25C7823C3FACC3A625B6A36B246B1C
          50CAB3C31C36EACBBCB3603E4E186DC0C1E79E3D42800A28A2800A28A2800A28
          A2800A28A2800AE17C53FF00255BC01FF711FF00D10B5DD564F88744FEDCB08E
          38AF26B1BCB7945C59DDC27E68650080C57A3A90CCA54F04311EE003E5BF895E
          1FD5745F1AEA771A8D9BC10EA17971716B212196543231041048CE08C83C8C8C
          81915F407C1BFF009253A2FF00DB7FFD1F2569681AA45E2DD3750D2B5ED3AD7E
          DF613FD9B50B29103C4EC30CB2AABF3E5BF0CA58763D71938569A668DA25CDFE
          9335B7892DECAD2709A7C7A7FF006898842D1A3B7CD0F0C7CD79B9625BB74000
          00F45AC2F1B7FC885E22FF00B065CFFE8A6AE7A6B8F095B2092EEEFC55690EE5
          433DD4FAB4312162146E77215464819240A5F1C7852287C15AC5CD86ABABDB4D
          0594F23799A8CF711CA9E53068D925765C104F20020E083C7201D07827FE442F
          0EFF00D832DBFF00452D6ED799F863C21AAEBBE0AD0A7D4FC55ABD9016711B6B
          7D1A716F1C70F9681431DA59DC850C493805885007279EBDBBF04E9D7F736377
          F14BC691DCDB4AD0CA9F6B98ED75241191160F20F4A00F50F1B7FC885E22FF00
          B065CFFE8A6AF8FB4CD32F759D4ADF4ED3AD9EE6EEE1B647127527F900064927
          8001278AF5BD6AE7C39A968B7965E1DF1F78D358D56688AC1605E7985C7F7959
          0A2E576EECF3C0C9C36307D52CF4CF0AFC2CF0D5C4D04696D16DDD23C920335D
          C8A84850588DCE70D841819270064D0073FF0064B9D37C51F09EC2E90C5716F6
          1750CC9B81C32DAA0232383823B57A7D727E1CD22EF51BB87C55E214FF00899C
          B17FA1D91076699138FB801009948C6F7201FE11851CF5940051451400514514
          00514514005145140051451401CF788BC30DAB5C43A9699A83E91ADDBA98E2BF
          8A25933113F347221E244EE01FBAD823BE68CBE2BBFF000EDEC56BE2AB144B59
          5B09ACD92B7D9572C401306C980F318C92CA4B1F980071D7D14011C13C5736F1
          DC5BCA92C32A878E48D832BA9190411C10477AC6F1B7FC885E22FF00B065CFFE
          8A6AC2D1BC3DE21F0DF8835EB8D2F4ED146957F2C4D6D64B7D240906C4D85822
          C05433E149C7A632D8CD5ED6E0F15EB1A0EA3A5FF6568B0FDB2D65B7F33FB565
          6D9BD4AE71F6719C6738C8A00BFE09FF00910BC3BFF60CB6FF00D14B5BB5C9E8
          9078AF47D074ED2FFB2B459BEC76B15BF99FDAB2AEFD8A1738FB39C6719C64D5
          1F14F87FC49E30B4B0D32FAD34CB4D356FE19EF561D4E673710A93BA3C0853AE
          411CF551F50005F7C498E7D58E95E13D227F12DD47B4CD2DACCA96B102ACC019
          8E5777CA3DB9233B86DA346F046A777AF41E22F1A6A50EA7A85B6EFB159C11ED
          B5B22589DCB9C176C6DC330C8C72588523B3B3B2B4D3AD12D2C6D61B5B68F3B2
          1823088B9393851C0E493F8D4F40051451400514514005145140051451401E77
          A9472EABF1B1747B8BED4934F5F0E0BA16F6B7F35BAF9BF692BBCF96EB93B4E3
          F2F415C35FF8F3C5B6315B787AC2FEFA4920D6750D385E5BE9EB7D7D2C36CB19
          4CA315576FDE1DCD8070A0F5CEEF5FD5FC17E1ED7B554D4F53D3C5C5D24490E5
          A69023C6AFE62A3A060AEBBF0D86041207A0A8B57F0178575DD32D74DBFD0ED1
          ACED599EDE2854C2222DCB6D31952012724742704F205007947827E2178EEFFC
          4769A6C9749A90B8D4E4B69E2D4AC12CE5B782131F98C9B5955A5DB212D18DEC
          9E5E7041C9D1F84DF13B54D6E3BF1E21D512E63B2B296F6EE492D6389E10ACA1
          42796F9913687627CB054903272B5E8167F0E3C2361059C36FA346AB657BF6FB
          72D2C8CD1CDF2FCC18B138F9132B9DA768C8E293FE15BF8516C21B28F4B68608
          6DE4B55F22EA68D9A1918BBC6CCAE19D0B1276B12064E3AD0079A597C5EF104D
          F0E7C45797526929ADDAC30DCD9BDBCF1C9FBA9E5D9CC618ED68B70186E794DC
          3392DD3F87FE25EA9AFF0088FC3BA6C7A6C11452C463D699F892DAEF64F88826
          ECA7CD6CE7E6DC76B2E769C67ACD67C07E19D7D615D43498D961B716AAB0C8F0
          0F24306119F2CAEE40CA08539008C8C5493782BC373B5F3BE93006BF95A6BA68
          F28657689E1624A91D524718E99766FBC49A00E3BE1B7C4AB8F18789B54B2B97
          81EDE789AFF4E485407B681653098E7E4E243847C73F7C9CE0A81CB78BB5DF11
          68FF001375DD7ADF56D48E8BA05E69DF6CD3E29731B5BCF16242119829390000
          0757DD918CD7B0A7863474B8D1A75B4C4BA2C4D0E9EDE6BFEE5190211D7E6F95
          40F9B3D3D6A44F0F69297DAADE7D8A379B56448EFBCC25D6754528AA5492B8DA
          48C01CE79CD007905A7C41D6B4FF0019EADE21D76E1C68D27871B53D334D0E55
          444D3A2401C2EE0257EEDF363CCEC06D16348F8C1AE6ABE17431DBE8CDE20B8D
          5ED6C22405FECF0C7709BE377C3316395914A860548E402307D335AF05F87FC4
          37735D6A9A7F9F34D6AB6723F9D226E85641285F9587F1A839EBDB38E2A6B8F0
          B68577A85EDEDCE9904D2DF4490DDAC8374770A87285E33F23329E8C41603807
          1401C2C5E2BD44F8B3C37A3C5A9D9EB7762E351B2B99D639EC57CF82DD1B63A0
          7646258F2FB19467E5504735DBC4FE28BAF0A789BED7AD368FE24D36DCDFA591
          D2923DB1C68448137BC826859948120C10DCFDD2AB5D4689F0B7C2BA16D10D93
          CEB1DC5C4F025CC9BD6113C6B1C9185E032144030FB8F5E79AB9A5FC3DF0A68D
          A7DE58D868B0430DEC4F05C36E6691E3700327984970A70380400791CD007935
          DF8D3C7D1CDE1FD3D75ABEB97BBD163D59E6D23408AE6E1BCD6E11D0B85DA98C
          0750BD4654939A9BC3FF00127C5DACE8B773492D9DE249A6DF6A3751B5BB5ABD
          A46AB2AC4B0BACAAF2A6F8C02EA095DD82FBBEEFA7EABF0DBC21ADC1610EA1A2
          C732585BADADB112C8AC912E36A16560580C71B89C64FA9C89F0DBC211DB5A5B
          A68B1AA5A5BCF6B0912C9B84530612216DD9607CC7C649C6E24633401C3F8A7E
          25EA3A17843C229A6CDA741A8EA1A62EA13BDE4CCE1238E2593CBC33176329DC
          8ACCC49208CEE3B977F4AF104DABFC5DB26B7B9BB5D2EF3C251DFC7692390A19
          E718628095DFB4E33F866BACD33C31A3E8F762EAC6CF64EB6B1D9A48F23C8638
          23002C69B89DABC0240C64F27279AC88BE18783A0B9D2EE63D1F13695B4D9B9B
          99898B6C8D28EAFF0037CEEC79CF5C74E2803AEA28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2803FFFD9}
        mmHeight = 21167
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 38365
        BandType = 1
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1323
        mmTop = 23548
        mmWidth = 47361
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'ENVIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 52652
        mmWidth = 16140
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110331
        mmTop = 60325
        mmWidth = 11113
        BandType = 1
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 11642
        mmLeft = 66675
        mmTop = 58738
        mmWidth = 265
        BandType = 1
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 11642
        mmLeft = 106098
        mmTop = 58738
        mmWidth = 265
        BandType = 1
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 11642
        mmLeft = 86254
        mmTop = 58738
        mmWidth = 265
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 48683
        mmTop = 58473
        mmWidth = 75936
        BandType = 1
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 11906
        mmLeft = 12171
        mmTop = 58473
        mmWidth = 36513
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 60325
        mmWidth = 10848
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Dev. Aportes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 52123
        mmTop = 60590
        mmWidth = 11642
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Dev. Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 70908
        mmTop = 60590
        mmWidth = 11906
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Otros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 92340
        mmTop = 60590
        mmWidth = 7938
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5644
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CNTAPO'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 49213
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CNTCUO'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 68527
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CNTOTR'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FECHA'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 794
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'TOTAL'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 107686
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 56092
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'TOTALES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 1852
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CNTAPO'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 49213
        mmTop = 1852
        mmWidth = 15875
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CNTCUO'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 68527
        mmTop = 1852
        mmWidth = 15875
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CNTOTR'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 1852
        mmWidth = 16140
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'TOTAL'
        DataPipeline = ppdbReclamos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReclamos'
        mmHeight = 3969
        mmLeft = 107686
        mmTop = 1852
        mmWidth = 16140
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 12965
        mmTop = 7144
        mmWidth = 112713
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 12965
        mmTop = 265
        mmWidth = 112713
        BandType = 7
      end
    end
  end
  object ppdbReclamos: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbReclamos'
    Left = 47
    Top = 117
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
  end
  object ppRepConclusiones: TppReport
    AutoStop = False
    DataPipeline = ppdbConclusiones
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepConclusiones.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepConclusionesPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 332
    Top = 13
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbConclusiones'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 62442
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 11906
        mmLeft = 12435
        mmTop = 49742
        mmWidth = 102394
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 8202
        mmWidth = 8467
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 12435
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 16669
        mmWidth = 9525
        BandType = 1
      end
      object pplbltituloc: TppLabel
        UserName = 'lbltituloc'
        Caption = 
          'Reporte Estad'#237'stico de Conclusi'#243'n de Reclamos del 00/00/0000 al ' +
          '00/00/0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 17727
        mmTop = 36248
        mmWidth = 166423
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 8202
        mmWidth = 14817
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 12435
        mmWidth = 11113
        BandType = 1
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159544
        mmTop = 16669
        mmWidth = 7673
        BandType = 1
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765D70D0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108005C009103012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A2B0BC47E32D03C25F66FEDCBFF00B27DAB7793FB9924DDB7
          1BBEE29C6370EBEB5C8689E1A5F19D84BE218FC65E298A1BDBCBA6852D350314
          42213C8A9B50AE546D55E0D007A6515C2FFC2B3FFA9DFC69FF00836FFEC28974
          0BFF0005D84FACD9F8A35ABF82D71717B6BAACCB72B2DBA063208CED051F6925
          482012A0371C800EEA8AF33D2743D63C7A92F89351F126BBA558DDB7FC4B2C74
          E98DA98EDC13B5A5041DCEDD72323182090405D2FF008567FF0053BF8D3FF06D
          FF00D850077545799F88BC072E91E19D5752B7F1AF8C5A6B4B39AE2359355254
          B221600E141C647AD775A7F88B44D5EE1ADF4DD634FBD99577B476D7492305C8
          19214938C91CFBD0069514514005145140051451400514514005145140051457
          11E31D4B5D8BC67E12D1F46D512C13506BA69CC96CB32B88915C29070707E61F
          2B29F9BAF02803C87E3678C74FF126AF6BA6D9C3751CDA3CF756F70D32A8566D
          C8B94C3124650F503B57ADFC1BFF009253A2FF00DB7FFD1F257CD3E2F12AF8D7
          5E5B8749261A8DC091E3428ACDE636485249033DB271EA6BE96F837FF24A745F
          FB6FFF00A3E4A00EEAB0BC6DFF00221788BFEC1973FF00A29AB76B0BC6DFF221
          788BFEC1973FFA29A800F04FFC885E1DFF00B065B7FE8A5ADDAC2F04FF00C885
          E1DFFB065B7FE8A5ADDA00C2F1B7FC885E22FF00B065CFFE8A6AF9D7E0EF8974
          8F0AF8BAEEFB5ABBFB2DB4960F0ABF96EF97324640C2827A29FCABE8AF1B7FC8
          85E22FFB065CFF00E8A6AF8CE803EE2B2BCB7D46C2DAFAD24F32DAE6259A27C1
          1B918020E0F23823AD4F5E5FE15D63C57A25C7823C3FACC3A625B6A36B246B1C
          50CAB3C31C36EACBBCB3603E4E186DC0C1E79E3D42800A28A2800A28A2800A28
          A2800A28A2800AE17C53FF00255BC01FF711FF00D10B5DD564F88744FEDCB08E
          38AF26B1BCB7945C59DDC27E68650080C57A3A90CCA54F04311EE003E5BF895E
          1FD5745F1AEA771A8D9BC10EA17971716B212196543231041048CE08C83C8C8C
          81915F407C1BFF009253A2FF00DB7FFD1F2569681AA45E2DD3750D2B5ED3AD7E
          DF613FD9B50B29103C4EC30CB2AABF3E5BF0CA58763D71938569A668DA25CDFE
          9335B7892DECAD2709A7C7A7FF006898842D1A3B7CD0F0C7CD79B9625BB74000
          00F45AC2F1B7FC885E22FF00B065CFFE8A6AE7A6B8F095B2092EEEFC55690EE5
          433DD4FAB4312162146E77215464819240A5F1C7852287C15AC5CD86ABABDB4D
          0594F23799A8CF711CA9E53068D925765C104F20020E083C7201D07827FE442F
          0EFF00D832DBFF00452D6ED799F863C21AAEBBE0AD0A7D4FC55ABD9016711B6B
          7D1A716F1C70F9681431DA59DC850C493805885007279EBDBBF04E9D7F736377
          F14BC691DCDB4AD0CA9F6B98ED75241191160F20F4A00F50F1B7FC885E22FF00
          B065CFFE8A6AF8FB4CD32F759D4ADF4ED3AD9EE6EEE1B647127527F900064927
          8001278AF5BD6AE7C39A968B7965E1DF1F78D358D56688AC1605E7985C7F7959
          0A2E576EECF3C0C9C36307D52CF4CF0AFC2CF0D5C4D04696D16DDD23C920335D
          C8A84850588DCE70D841819270064D0073FF0064B9D37C51F09EC2E90C5716F6
          1750CC9B81C32DAA0232383823B57A7D727E1CD22EF51BB87C55E214FF00899C
          B17FA1D91076699138FB801009948C6F7201FE11851CF5940051451400514514
          00514514005145140051451401CF788BC30DAB5C43A9699A83E91ADDBA98E2BF
          8A25933113F347221E244EE01FBAD823BE68CBE2BBFF000EDEC56BE2AB144B59
          5B09ACD92B7D9572C401306C980F318C92CA4B1F980071D7D14011C13C5736F1
          DC5BCA92C32A878E48D832BA9190411C10477AC6F1B7FC885E22FF00B065CFFE
          8A6AC2D1BC3DE21F0DF8835EB8D2F4ED146957F2C4D6D64B7D240906C4D85822
          C05433E149C7A632D8CD5ED6E0F15EB1A0EA3A5FF6568B0FDB2D65B7F33FB565
          6D9BD4AE71F6719C6738C8A00BFE09FF00910BC3BFF60CB6FF00D14B5BB5C9E8
          9078AF47D074ED2FFB2B459BEC76B15BF99FDAB2AEFD8A1738FB39C6719C64D5
          1F14F87FC49E30B4B0D32FAD34CB4D356FE19EF561D4E673710A93BA3C0853AE
          411CF551F50005F7C498E7D58E95E13D227F12DD47B4CD2DACCA96B102ACC019
          8E5777CA3DB9233B86DA346F046A777AF41E22F1A6A50EA7A85B6EFB159C11ED
          B5B22589DCB9C176C6DC330C8C72588523B3B3B2B4D3AD12D2C6D61B5B68F3B2
          1823088B9393851C0E493F8D4F40051451400514514005145140051451401E77
          A9472EABF1B1747B8BED4934F5F0E0BA16F6B7F35BAF9BF692BBCF96EB93B4E3
          F2F415C35FF8F3C5B6315B787AC2FEFA4920D6750D385E5BE9EB7D7D2C36CB19
          4CA315576FDE1DCD8070A0F5CEEF5FD5FC17E1ED7B554D4F53D3C5C5D24490E5
          A69023C6AFE62A3A060AEBBF0D86041207A0A8B57F0178575DD32D74DBFD0ED1
          ACED599EDE2854C2222DCB6D31952012724742704F205007947827E2178EEFFC
          4769A6C9749A90B8D4E4B69E2D4AC12CE5B782131F98C9B5955A5DB212D18DEC
          9E5E7041C9D1F84DF13B54D6E3BF1E21D512E63B2B296F6EE492D6389E10ACA1
          42796F9913687627CB054903272B5E8167F0E3C2361059C36FA346AB657BF6FB
          72D2C8CD1CDF2FCC18B138F9132B9DA768C8E293FE15BF8516C21B28F4B68608
          6DE4B55F22EA68D9A1918BBC6CCAE19D0B1276B12064E3AD0079A597C5EF104D
          F0E7C45797526929ADDAC30DCD9BDBCF1C9FBA9E5D9CC618ED68B70186E794DC
          3392DD3F87FE25EA9AFF0088FC3BA6C7A6C11452C463D699F892DAEF64F88826
          ECA7CD6CE7E6DC76B2E769C67ACD67C07E19D7D615D43498D961B716AAB0C8F0
          0F24306119F2CAEE40CA08539008C8C5493782BC373B5F3BE93006BF95A6BA68
          F28657689E1624A91D524718E99766FBC49A00E3BE1B7C4AB8F18789B54B2B97
          81EDE789AFF4E485407B681653098E7E4E243847C73F7C9CE0A81CB78BB5DF11
          68FF001375DD7ADF56D48E8BA05E69DF6CD3E29731B5BCF16242119829390000
          0757DD918CD7B0A7863474B8D1A75B4C4BA2C4D0E9EDE6BFEE5190211D7E6F95
          40F9B3D3D6A44F0F69297DAADE7D8A379B56448EFBCC25D6754528AA5492B8DA
          48C01CE79CD007905A7C41D6B4FF0019EADE21D76E1C68D27871B53D334D0E55
          444D3A2401C2EE0257EEDF363CCEC06D16348F8C1AE6ABE17431DBE8CDE20B8D
          5ED6C22405FECF0C7709BE377C3316395914A860548E402307D335AF05F87FC4
          37735D6A9A7F9F34D6AB6723F9D226E85641285F9587F1A839EBDB38E2A6B8F0
          B68577A85EDEDCE9904D2DF4490DDAC8374770A87285E33F23329E8C41603807
          1401C2C5E2BD44F8B3C37A3C5A9D9EB7762E351B2B99D639EC57CF82DD1B63A0
          7646258F2FB19467E5504735DBC4FE28BAF0A789BED7AD368FE24D36DCDFA591
          D2923DB1C68448137BC826859948120C10DCFDD2AB5D4689F0B7C2BA16D10D93
          CEB1DC5C4F025CC9BD6113C6B1C9185E032144030FB8F5E79AB9A5FC3DF0A68D
          A7DE58D868B0430DEC4F05C36E6691E3700327984970A70380400791CD007935
          DF8D3C7D1CDE1FD3D75ABEB97BBD163D59E6D23408AE6E1BCD6E11D0B85DA98C
          0750BD4654939A9BC3FF00127C5DACE8B773492D9DE249A6DF6A3751B5BB5ABD
          A46AB2AC4B0BACAAF2A6F8C02EA095DD82FBBEEFA7EABF0DBC21ADC1610EA1A2
          C732585BADADB112C8AC912E36A16560580C71B89C64FA9C89F0DBC211DB5A5B
          A68B1AA5A5BCF6B0912C9B84530612216DD9607CC7C649C6E24633401C3F8A7E
          25EA3A17843C229A6CDA741A8EA1A62EA13BDE4CCE1238E2593CBC33176329DC
          8ACCC49208CEE3B977F4AF104DABFC5DB26B7B9BB5D2EF3C251DFC7692390A19
          E718628095DFB4E33F866BACD33C31A3E8F762EAC6CF64EB6B1D9A48F23C8638
          23002C69B89DABC0240C64F27279AC88BE18783A0B9D2EE63D1F13695B4D9B9B
          99898B6C8D28EAFF0037CEEC79CF5C74E2803AEA28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2803FFFD9}
        mmHeight = 21167
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 38365
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1323
        mmTop = 23548
        mmWidth = 47361
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 98954
        mmTop = 51594
        mmWidth = 11113
        BandType = 1
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 11642
        mmLeft = 34660
        mmTop = 50006
        mmWidth = 265
        BandType = 1
      end
      object ppShape6: TppShape
        UserName = 'Shape101'
        mmHeight = 11642
        mmLeft = 93927
        mmTop = 49742
        mmWidth = 265
        BandType = 1
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 11642
        mmLeft = 64294
        mmTop = 49742
        mmWidth = 265
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'DIAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 51329
        mmWidth = 7938
        BandType = 1
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Reclamo concluido a favor del Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 36248
        mmTop = 51329
        mmWidth = 26723
        BandType = 1
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Reclamo concluido a favor del Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 65881
        mmTop = 51329
        mmWidth = 26723
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5644
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CNTUSU'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CNTEMP'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'DIAS'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TOTAL'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 56092
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'TOTALES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 1058
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CNTUSU'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 1058
        mmWidth = 15875
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CNTEMP'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 1058
        mmWidth = 16140
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'TOTAL'
        DataPipeline = ppdbConclusiones
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbConclusiones'
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 1058
        mmWidth = 16140
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 12965
        mmTop = 265
        mmWidth = 101336
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 13229
        mmTop = 6085
        mmWidth = 101336
        BandType = 7
      end
    end
  end
  object ppdbConclusiones: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbConclusiones'
    Left = 231
    Top = 13
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
  end
end
