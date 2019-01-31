object FRepCobEfectivo: TFRepCobEfectivo
  Left = 530
  Top = 312
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 222
  ClientWidth = 288
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object pnlFondo0002: TPanel
    Left = 5
    Top = 7
    Width = 279
    Height = 210
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 11
      Top = 2
      Width = 197
      Height = 27
      Caption = 'Cobranza en Efectivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      WordWrap = True
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 237
      Top = 162
      Width = 32
      Height = 31
      Hint = 'Cancelar'
      Color = 13165023
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 193
      Top = 162
      Width = 32
      Height = 31
      Hint = 'Aceptar '
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
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object pnlFondo001: TPanel
      Left = 7
      Top = 45
      Width = 266
      Height = 100
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object GroupBox1: TGroupBox
        Left = 78
        Top = 19
        Width = 110
        Height = 59
        Caption = 'Periodo'
        TabOrder = 0
        object TLabel
          Left = 12
          Top = 15
          Width = 20
          Height = 15
          Caption = 'A'#241'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object wwDBSpinEdit2: TwwDBSpinEdit
          Left = 10
          Top = 28
          Width = 87
          Height = 21
          Increment = 1.000000000000000000
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          UnboundDataType = wwDefault
        end
      end
    end
  end
  object ppRepCobEfectivo: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report1'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta: 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCobEfectivoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 61
    Top = 161
    Version = '7.02'
    mmColumnWidth = 0
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 58738
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 216430
        mmTop = 6615
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 216430
        mmTop = 10848
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label3'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 216430
        mmTop = 15081
        mmWidth = 11906
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label4'
        Caption = 'RESUMEN DE CUOTAS PAGADAS FORMA DE PAGO: EN EFECTIVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11642
        mmLeft = 89959
        mmTop = 12435
        mmWidth = 82550
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 230717
        mmTop = 6615
        mmWidth = 19050
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 230717
        mmTop = 10848
        mmWidth = 23283
        BandType = 1
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 230717
        mmTop = 15081
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label9'
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 49477
        mmWidth = 5292
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label101'
        Caption = 'CODIGO MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 12435
        mmTop = 47890
        mmWidth = 13494
        BandType = 1
      end
      object ppLabel18: TppLabel
        UserName = 'Label14'
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 49477
        mmWidth = 14288
        BandType = 1
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        AutoSize = True
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
        mmHeight = 24342
        mmLeft = 2117
        mmTop = 794
        mmWidth = 38365
        BandType = 1
      end
      object ppLabel22: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1323
        mmTop = 23548
        mmWidth = 46302
        BandType = 1
      end
      object ppLabel23: TppLabel
        UserName = 'Label11'
        Caption = 'Apellido y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 46038
        mmTop = 49477
        mmWidth = 24606
        BandType = 1
      end
      object ppLabel24: TppLabel
        UserName = 'Label6'
        Caption = 'N'#176' CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 29104
        mmTop = 47890
        mmWidth = 11377
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label7'
        Caption = 'LUGAR DE PROCESO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 36513
        mmWidth = 37835
        BandType = 1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 36777
        mmWidth = 39688
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label302'
        Caption = 'CUENTA BANCARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 99219
        mmTop = 47890
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label8'
        Caption = 'CODIGO DE AGENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 118004
        mmTop = 47890
        mmWidth = 14817
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label17'
        Caption = 'DEL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 100806
        mmTop = 26458
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label18'
        Caption = 'AL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 26458
        mmWidth = 12435
        BandType = 1
      end
      object ppLine6: TppLine
        UserName = 'Line13'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 57150
        mmWidth = 261143
        BandType = 1
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'CUOTA  S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 171450
        mmTop = 47890
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label202'
        Caption = 'IMPORTE S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 155311
        mmTop = 47890
        mmWidth = 11377
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label10'
        Caption = 'FECHA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 137319
        mmTop = 47890
        mmWidth = 13229
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label22'
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 183886
        mmTop = 49477
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label23'
        Caption = 'Intereses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 201084
        mmTop = 49477
        mmWidth = 11906
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label24'
        Caption = 'Gas/Flt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 215636
        mmTop = 49477
        mmWidth = 8996
        BandType = 1
      end
      object ppLabel40: TppLabel
        UserName = 'Label401'
        Caption = 'Exceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 227013
        mmTop = 49477
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'TIPO DE CANCELACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 240242
        mmTop = 47890
        mmWidth = 19315
        BandType = 1
      end
      object ppLine7: TppLine
        UserName = 'Line16'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 57944
        mmWidth = 261143
        BandType = 1
      end
      object ppLine8: TppLine
        UserName = 'Line17'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 45244
        mmWidth = 261143
        BandType = 1
      end
      object ppLine9: TppLine
        UserName = 'Line18'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 46038
        mmWidth = 261143
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 10848
        mmTop = 46302
        mmWidth = 265
        BandType = 1
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 27781
        mmTop = 46567
        mmWidth = 265
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 42863
        mmTop = 46302
        mmWidth = 265
        BandType = 1
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 78846
        mmTop = 46302
        mmWidth = 265
        BandType = 1
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 98161
        mmTop = 46567
        mmWidth = 265
        BandType = 1
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 116946
        mmTop = 46302
        mmWidth = 265
        BandType = 1
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 135996
        mmTop = 46567
        mmWidth = 265
        BandType = 1
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 153988
        mmTop = 46038
        mmWidth = 265
        BandType = 1
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 170127
        mmTop = 46038
        mmWidth = 265
        BandType = 1
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 182827
        mmTop = 46038
        mmWidth = 265
        BandType = 1
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 200290
        mmTop = 46038
        mmWidth = 265
        BandType = 1
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 214578
        mmTop = 46302
        mmWidth = 265
        BandType = 1
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 226219
        mmTop = 46302
        mmWidth = 265
        BandType = 1
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 239184
        mmTop = 46038
        mmWidth = 265
        BandType = 1
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 2117
        mmTop = 45244
        mmWidth = 265
        BandType = 1
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 262996
        mmTop = 45244
        mmWidth = 265
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 120121
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line102'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'TIPO CONSUMO ORDINARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 2646
        mmWidth = 44715
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'USE === >'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 7408
        mmWidth = 17992
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 19844
        mmWidth = 261143
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 20638
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'SUB-TOTAL POR USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 22225
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label12'
        Caption = 'SUB-TOTAL POR TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 27252
        mmWidth = 33867
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 33073
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label15'
        Caption = 'TIPO VIVIENDA (CONSTRUCCION)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 36248
        mmWidth = 52917
        BandType = 7
      end
      object ppLabel47: TppLabel
        UserName = 'Label29'
        Caption = 'USE === >'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 13758
        mmTop = 41010
        mmWidth = 16669
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 53181
        mmWidth = 261143
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 53975
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel48: TppLabel
        UserName = 'Label30'
        Caption = 'SUB-TOTAL POR USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 55563
        mmWidth = 34660
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label31'
        Caption = 'SUB-TOTAL POR TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 60590
        mmWidth = 34925
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line11'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 66146
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel50: TppLabel
        UserName = 'Label32'
        Caption = 'TIPO EXTRAORDINARIO (CONSUMO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 67469
        mmWidth = 56092
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label33'
        Caption = 'USE === >'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 72231
        mmWidth = 17992
        BandType = 7
      end
      object ppLine17: TppLine
        UserName = 'Line12'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 78052
        mmWidth = 261143
        BandType = 7
      end
      object ppLine18: TppLine
        UserName = 'Line101'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 78846
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label301'
        Caption = 'SUB-TOTAL POR USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 37042
        mmTop = 80433
        mmWidth = 34131
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label35'
        Caption = 'SUB-TOTAL POR TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 37042
        mmTop = 85461
        mmWidth = 34660
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 91546
        mmWidth = 261143
        BandType = 7
      end
      object ppLine20: TppLine
        UserName = 'Line15'
        Pen.Style = psDot
        Weight = 1.000000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 92340
        mmWidth = 261143
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label36'
        Caption = 'TOTAL POR USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 94456
        mmWidth = 28310
        BandType = 7
      end
      object ppLabel55: TppLabel
        UserName = 'Label37'
        Caption = 'TOTAL POR TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 99484
        mmWidth = 26723
        BandType = 7
      end
      object ppLabel56: TppLabel
        UserName = 'Label38'
        Caption = 'TOTAL POR FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 103981
        mmWidth = 33602
        BandType = 7
      end
      object ppLabel57: TppLabel
        UserName = 'Label39'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 108479
        mmWidth = 29633
        BandType = 7
      end
      object ppLabel58: TppLabel
        UserName = 'Label40'
        Caption = 'N'#176' MOVIMIIENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 112977
        mmWidth = 30163
        BandType = 7
      end
    end
  end
end
