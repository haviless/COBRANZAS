object FPlantManEnv: TFPlantManEnv
  Left = 177
  Top = 26
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Plantillas de Envio'
  ClientHeight = 498
  ClientWidth = 774
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTiempo: TPanel
    Left = 239
    Top = 200
    Width = 297
    Height = 97
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 6008319
    TabOrder = 8
    Visible = False
    object lblInicio: TLabel
      Left = 75
      Top = 17
      Width = 60
      Height = 15
      Caption = 'Hora Inicio'
    end
    object lblFin: TLabel
      Left = 75
      Top = 41
      Width = 44
      Height = 15
      Caption = 'Hora Fin'
    end
    object lblTiempo: TLabel
      Left = 248
      Top = 5
      Width = 37
      Height = 15
      Caption = 'Tiempo'
      Visible = False
    end
    object lblTInicio: TLabel
      Left = 187
      Top = 17
      Width = 19
      Height = 15
      Caption = '--:--'
    end
    object lblTFin: TLabel
      Left = 187
      Top = 41
      Width = 19
      Height = 15
      Caption = '--:--'
    end
    object lblTtiempo: TLabel
      Left = 256
      Top = 18
      Width = 19
      Height = 15
      Caption = '--:--'
      Visible = False
    end
    object lblProceso: TLabel
      Left = 5
      Top = 61
      Width = 111
      Height = 30
      Caption = 'Procesando'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 262
      Top = 62
      Width = 30
      Height = 31
      Hint = 'Cancelar'
      Color = clSilver
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
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
  end
  object pnlPlantUsa: TPanel
    Left = 2
    Top = 3
    Width = 270
    Height = 494
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 5
    object Label14: TLabel
      Left = 65
      Top = 12
      Width = 141
      Height = 27
      Caption = 'Plantilla a Usar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgmodelo: TwwDBGrid
      Left = 6
      Top = 42
      Width = 252
      Height = 401
      DisableThemesInTitle = False
      Selected.Strings = (
        'ITEM'#9'2'#9'It.'#9'F'
        'CAMPO'#9'15'#9'CAMPO'#9'F'
        'TIPO'#9'10'#9'TIPO'#9'F'
        'LONGITUD'#9'3'#9'Ln'#9'F'
        'CEROIZQ'#9'1'#9'Cero~Izq.'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsModelo
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object bbtnTransferir: TfcShapeBtn
      Left = 10
      Top = 451
      Width = 39
      Height = 30
      Hint = 'Transferir'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDD
        DD000000DDDDDD000000DDDDDD066660DDDDDD000000D0000006666000000D00
        0000DDD000666666000DDD000000DDDDD00066000DDDDD000000DDDDDDD0000D
        DDDDDD000000DDDDDDDD88DDDDDDDD000000D0000000000000000D000000D0F8
        0F80F80F80F80D000000D0FF0FF0FF0FF0FF0D000000D0000000000000000D00
        0000DDDDDDDDDDDDDDDDDD000000D0000000000000000D000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsNormal
      Shape = bsEllipse
      ShowHint = True
      Spacing = 0
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnTransferirClick
    end
  end
  object wwDBRichEdit1: TwwDBRichEdit
    Left = 47
    Top = 28
    Width = 618
    Height = 25
    AutoURLDetect = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PrintJobName = 'Delphi 5'
    TabOrder = 6
    Visible = False
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    EditWidth = rewPrinterSize
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'MS Sans Serif'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'MS Sans Serif'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      BD0600007B5C727466315C616E73695C616E7369637067313235325C64656666
      307B5C666F6E7474626C7B5C66305C666E696C5C66636861727365743020436F
      7572696572204E65773B7D7D0D0A5C766965776B696E64345C7563315C706172
      645C74783433325C6C616E6731303235305C625C66305C667331382043414D50
      4F30315C62305C7061720D0A5C706172645C74783134345C622043414D504F30
      325C7061720D0A5C706172645C74783433322043414D504F30335C7061720D0A
      5C706172645C6C616E67305C62305C7461625C7461625C7461625C7461625C74
      61625C7461625C7061720D0A5C706172645C7478313434305C6C616E67313032
      35305C7461625C7461625C7461625C7461625C7461622043414D504F30345C70
      61720D0A5C706172645C6C616E67305C7061720D0A5C7061720D0A4F46494349
      4F204E5C2762302043414D504F30352D444D2D434F425C7061720D0A5C706172
      0D0A53655C2766316F7265733A5C7061720D0A43414D504F30365C7061720D0A
      43414D504F30385C7061720D0A5C7061720D0A5C7061720D0A4465206D692063
      6F6E73696465726163695C2766336E203A5C7061720D0A5C7061720D0A5C7061
      72645C74783433325C6C616E6731303235305C74616220457320677261746F20
      646972696769726C65206C612070726573656E74652C20656E2072656C616369
      5C2766336E20616C20436F6E76656E696F20646520436F6272616E7A615C7061
      720D0A737573637269746F20636F6E2066656368612030362F30382F31393937
      2C20636F6E2065736520657374696D61646F2042616E636F2C20636F6E206C61
      2066696E616C696461645C7061720D0A646520736F6C6963697461726C652C20
      6465206163756572646F2061206C6F20696E64696361646F20656E20656C2074
      5C276539726D696E6F2043756172746F2064656C20726566657269646F5C7061
      720D0A436F6E76656E696F2C2073652073697276616E2070726F636573617220
      6C6F73206465736375656E746F73206465206C61732063756F74617320646520
      616D6F7274697A6163695C2766336E5C7061720D0A64656C206D657320646520
      5C622043414D504F30392F43414D504F31305C6230202C20706F7220756E2069
      6D706F72746520746F74616C2064656C2043414D504F31312043414D504F3132
      2C5C7061720D0A636F72726573706F6E6469656E74652061206C6F732070725C
      2765397374616D6F73206F746F726761646F732061206C6F7320646F63656E74
      65732061736F636961646F73206465206C615C7061720D0A44657272616D6120
      4D6167697374657269616C2E5C7061720D0A5C7061720D0A5C74616220506172
      6120646963686F2065666563746F2C206C652061646A756E74616D6F73206120
      6C612070726573656E746520756E206C69737461646F207920756E206469736B
      657474655C7061720D0A636F6E74656E69656E646F206C6F7320696D706F7274
      6573206465206C61732043414D504F31332063756F746173206120646573636F
      6E7461722061206C6F7320646F63656E7465732064655C7061720D0A6C6F7320
      43414D504F3134206C7567617265732064656C2063756164726F2061646A756E
      746F2C20717565207469656E656E207375206375656E74612064652061686F72
      726F20656E20657374655C7061720D0A657374696D61646F2042616E636F2E5C
      7061720D0A5C7061720D0A5C7461622051756564616D6F732061206C61206573
      70657261202C2064656E74726F2064656C20706C617A6F2061636F726461646F
      2C2064656C2061626F6E6F20656E206E7565737472615C7061720D0A6375656E
      746120636F727269656E7465204E5C2762302043414D504F31352C206465206C
      6F7320696D706F7274657320612073657220646573636F6E7461646F73207920
      6465206C612070726F6E74615C7061720D0A72656D6973695C2766336E206120
      65737461206F666963696E612C2064656C206F666963696F2061646A756E7461
      6E646F206C6120696E666F726D6163695C2766336E20636F72726573706F6E64
      69656E74655C7061720D0A7175652073757374656E746520656C2061626F6E6F
      206120656665637475617273652C20656E20756E206C69737461646F20792064
      69736B657474652E5C7061720D0A5C7061720D0A5C7061720D0A5C7461625C74
      61625C7461625C7061720D0A5C7461625C7461625C7461625C7461625C746162
      5C7461625C7461625C7461625C746162204174656E74616D656E74652C5C7061
      720D0A5C7061720D0A5C7061720D0A5C7061720D0A5C706172645C7061720D0A
      5C7061720D0A5C7061720D0A41532F73735C7061720D0A5C7061720D0A7D0D0A
      00}
  end
  object wwDBRichEdit2: TwwDBRichEdit
    Left = 79
    Top = 36
    Width = 618
    Height = 25
    AutoURLDetect = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PrintJobName = 'Delphi 5'
    TabOrder = 7
    Visible = False
    EditorOptions = [reoShowSaveExit, reoShowPageSetup, reoShowRuler, reoShowSpellCheck, reoShowMainMenuIcons]
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    EditWidth = rewPrinterSize
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'MS Sans Serif'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'MS Sans Serif'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      6B0000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
      66305C666E696C20417269616C3B7D7D0D0A5C766965776B696E64345C756331
      5C706172645C6C616E6731303235305C66305C66733234207777444252696368
      45646974325C7061720D0A7D0D0A00}
  end
  object pnlPrevio: TPanel
    Left = 527
    Top = 358
    Width = 744
    Height = 262
    BevelInner = bvLowered
    BevelWidth = 2
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object Label12: TLabel
      Left = 24
      Top = 7
      Width = 209
      Height = 27
      Caption = 'Preliminar de Exportar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgPrevio: TwwDBGrid
      Left = 11
      Top = 35
      Width = 717
      Height = 174
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object bbtnCancelaCabecera: TfcShapeBtn
      Left = 685
      Top = 215
      Width = 32
      Height = 31
      Hint = 'Cancelar'
      Color = clSilver
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
      OnClick = bbtnCancelaCabeceraClick
    end
    object BitBtn4: TfcShapeBtn
      Left = 21
      Top = 215
      Width = 32
      Height = 31
      Hint = 'Maximiza'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitBtn4Click
    end
    object BitBtn1: TfcShapeBtn
      Left = 61
      Top = 215
      Width = 32
      Height = 31
      Hint = 'Minimiza'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
        333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
        33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
        333337F3333337F333333078F8F870333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitBtn1Click
    end
  end
  object pnlPlantillas: TPanel
    Left = 271
    Top = 3
    Width = 503
    Height = 494
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 0
    object Label2: TLabel
      Left = 203
      Top = 5
      Width = 80
      Height = 27
      Caption = 'Plantillas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 335
      Top = 14
      Width = 75
      Height = 27
      Caption = 'Detalles'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 71
      Top = 14
      Width = 86
      Height = 27
      Caption = 'Cabecera'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgDetal: TwwDBGrid
      Left = 246
      Top = 41
      Width = 243
      Height = 403
      DisableThemesInTitle = False
      Selected.Strings = (
        'PLANTILLA'#9'5'#9'PLANTILLA'#9'F'
        'ITEM'#9'10'#9'ITEM'#9'F'
        'CAMPO'#9'15'#9'CAMPO'#9'F'
        'NOMBRE'#9'30'#9'NOMBRE'#9'F'
        'DESDE'#9'10'#9'DESDE'#9'F'
        'HASTA'#9'10'#9'HASTA'#9'F'
        'TIPO'#9'10'#9'TIPO'#9'F'
        'CEROIZQ'#9'1'#9'CEROIZQ'#9'F'
        'USUARIO'#9'10'#9'USUARIO'#9'F'
        'FREG'#9'18'#9'FREG'#9'F'
        'HREG'#9'18'#9'HREG'#9'F'
        'LONGITUD'#9'10'#9'LONGITUD'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsPlandet
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgDetalDblClick
      OnKeyDown = dbgDetalKeyDown
      object wwDBGrid2IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 30
        Height = 34
        Hint = 'Adicionar'
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = wwDBGrid2IButtonClick
      end
    end
    object dbgCabec: TwwDBGrid
      Left = 7
      Top = 42
      Width = 235
      Height = 402
      DisableThemesInTitle = False
      Selected.Strings = (
        'PLANTILLA'#9'5'#9'It'#9'F'
        'NOMBRE'#9'20'#9'Plantilla'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      OnRowChanged = dbgCabecRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgCabecDblClick
      OnKeyDown = dbgCabecKeyDown
      object wwDBGrid3IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 30
        Height = 34
        Hint = 'Adicionar'
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = wwDBGrid3IButtonClick
      end
    end
    object pgProc: TProgressBar
      Left = 55
      Top = 455
      Width = 248
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object bbtnCargar: TfcShapeBtn
      Left = 10
      Top = 451
      Width = 39
      Height = 31
      Hint = 'Elegir formato'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDD
        DD000000DDDDDD000000DDDDDD066660DDDDDD000000D0000006666000000D00
        0000DDD000666666000DDD000000DDDDD00066000DDDDD000000DDDDDDD0000D
        DDDDDD000000DDDDDDDD88DDDDDDDD000000D0000000000000000D000000D0F8
        0F80F80F80F80D000000D0FF0FF0FF0FF0FF0D000000D0000000000000000D00
        0000DDDDDDDDDDDDDDDDDD000000D0000000000000000D000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsNormal
      Shape = bsEllipse
      ShowHint = True
      Spacing = 0
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCargarClick
    end
  end
  object pnlDet: TPanel
    Left = 528
    Top = 51
    Width = 229
    Height = 385
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    Color = 10207162
    TabOrder = 4
    Visible = False
    object Label7: TLabel
      Left = 33
      Top = 6
      Width = 136
      Height = 21
      Caption = 'Detalle de Plantilla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 25
      Top = 35
      Width = 20
      Height = 13
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 44
      Top = 199
      Width = 102
      Height = 15
      Caption = 'Ceros a la izquierda'
      Visible = False
    end
    object Label15: TLabel
      Left = 44
      Top = 217
      Width = 135
      Height = 15
      Caption = 'Incluye separador decimal'
      Visible = False
    end
    object Label19: TLabel
      Left = 44
      Top = 318
      Width = 59
      Height = 15
      Caption = 'Ascendente'
      Visible = False
    end
    object Label21: TLabel
      Left = 25
      Top = 177
      Width = 41
      Height = 13
      Caption = 'Longitud'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 25
      Top = 147
      Width = 57
      Height = 13
      Caption = 'Campo DBF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbeItem: TwwDBEdit
      Left = 77
      Top = 28
      Width = 63
      Height = 23
      DataField = 'ITEM'
      DataSource = DM1.dsPlandet
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbcbCero: TDBCheckBox
      Left = 27
      Top = 199
      Width = 14
      Height = 17
      DataField = 'CEROIZQ'
      DataSource = DM1.dsPlandet
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
      OnExit = dbcbCeroExit
    end
    object dbcbsepdec: TDBCheckBox
      Left = 27
      Top = 217
      Width = 14
      Height = 17
      DataField = 'SEPDEC'
      DataSource = DM1.dsPlandet
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
      OnExit = dbcbsepdecExit
    end
    object dbenroord: TwwDBEdit
      Left = 115
      Top = 311
      Width = 47
      Height = 23
      DataField = 'ORDASC'
      DataSource = DM1.dsPlandet
      TabOrder = 11
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
      OnExit = dbenroordExit
    end
    object rgtipagr: TRadioGroup
      Left = 12
      Top = 240
      Width = 201
      Height = 64
      Caption = 'Tipo de Agrupaci'#243'n'
      Items.Strings = (
        'Columna'
        'Operaci'#243'n')
      TabOrder = 8
      Visible = False
      OnClick = rgtipagrClick
      OnExit = rgtipagrExit
    end
    object dblctipope: TComboBox
      Left = 116
      Top = 274
      Width = 91
      Height = 23
      ItemHeight = 15
      TabOrder = 9
      Visible = False
      OnExit = dblctipopeExit
      Items.Strings = (
        'CONTADOR'
        'SUMATORIA')
    end
    object dbcbasc: TCheckBox
      Left = 26
      Top = 316
      Width = 18
      Height = 18
      TabOrder = 10
      Visible = False
      OnClick = dbcbascClick
      OnExit = dbcbascExit
    end
    object bbtnCancD: TfcShapeBtn
      Left = 189
      Top = 345
      Width = 30
      Height = 31
      Hint = 'Cancelar'
      Color = clSilver
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
      TabOrder = 13
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancDClick
    end
    object bbtnOkD: TfcShapeBtn
      Left = 152
      Top = 345
      Width = 30
      Height = 31
      Hint = 'Aceptar'
      Color = clSilver
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
      TabOrder = 12
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnOkDClick
    end
    object dbelong: TwwDBEdit
      Left = 90
      Top = 168
      Width = 114
      Height = 23
      DataField = 'LONGITUD'
      DataSource = DM1.dsPlandet
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbelongExit
    end
    object rgtipdet: TRadioGroup
      Left = 12
      Top = 54
      Width = 203
      Height = 75
      Caption = 'Tipo de Detalle'
      Items.Strings = (
        'Campo'
        'Constante')
      TabOrder = 1
      OnClick = rgtipdetClick
      OnExit = rgtipdetExit
    end
    object dbevalor: TwwDBEdit
      Left = 115
      Top = 98
      Width = 92
      Height = 23
      DataField = 'VALOR'
      DataSource = DM1.dsPlandet
      MaxLength = 10
      TabOrder = 3
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
      OnExit = dbevalorExit
    end
    object dblcdcampo: TwwDBLookupComboDlg
      Left = 115
      Top = 69
      Width = 93
      Height = 23
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'NOMBRE'
      DataSource = DM1.dsPlandet
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdcampoExit
    end
    object dbecampodbf: TwwDBEdit
      Left = 90
      Top = 138
      Width = 114
      Height = 23
      DataField = 'CAMPODBF'
      DataSource = DM1.dsPlandet
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlCab: TPanel
    Left = 308
    Top = 92
    Width = 188
    Height = 155
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    Color = 10207162
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 11
      Top = 36
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 62
      Width = 37
      Height = 13
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 64
      Top = 8
      Width = 55
      Height = 21
      Caption = 'Plantilla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 29
      Top = 92
      Width = 111
      Height = 15
      Caption = 'Considera agrupaci'#243'n'
    end
    object dbeCodigo: TwwDBEdit
      Left = 53
      Top = 31
      Width = 60
      Height = 23
      DataField = 'PLANTILLA'
      DataSource = DM1.dsPlantilla
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNombre: TwwDBEdit
      Left = 53
      Top = 58
      Width = 120
      Height = 23
      DataField = 'NOMBRE'
      DataSource = DM1.dsPlantilla
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeNombreExit
    end
    object dbcbgrp: TDBCheckBox
      Left = 12
      Top = 92
      Width = 14
      Height = 17
      DataField = 'FLGGRP'
      DataSource = DM1.dsPlantilla
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnExit = dbcbgrpExit
    end
    object bbtnOkC: TfcShapeBtn
      Left = 110
      Top = 114
      Width = 30
      Height = 31
      Hint = 'Aceptar'
      Color = clSilver
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnOkCClick
    end
    object bbtnCancC: TfcShapeBtn
      Left = 147
      Top = 114
      Width = 30
      Height = 31
      Hint = 'Cancelar'
      Color = clSilver
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
      OnClick = bbtnCancCClick
    end
  end
  object pnlTransf: TPanel
    Left = 164
    Top = 120
    Width = 445
    Height = 284
    BevelInner = bvLowered
    BevelWidth = 2
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    Color = 10207162
    ParentBiDiMode = False
    TabOrder = 2
    Visible = False
    object Label10: TLabel
      Left = 32
      Top = 8
      Width = 129
      Height = 27
      Caption = 'Transferencia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 75
      Width = 57
      Height = 13
      Caption = 'Forma Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 15
      Top = 47
      Width = 50
      Height = 13
      Caption = 'A'#241'o / Mes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 15
      Top = 108
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblOficio: TLabel
      Left = 17
      Top = 177
      Width = 50
      Height = 13
      Caption = 'Nro. Oficio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSitAso: TLabel
      Left = 16
      Top = 140
      Width = 81
      Height = 15
      Caption = 'Situaci'#243'n Asoc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 240
      Top = 224
      Width = 33
      Height = 33
      Enabled = False
      Visible = False
      OnClick = SpeedButton1Click
    end
    object dblcdUPro: TwwDBLookupComboDlg
      Left = 93
      Top = 108
      Width = 80
      Height = 23
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Proceso'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPROID'#9'3'#9'Codigo'#9'F'
        'UPRONOM'#9'75'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      TabOrder = 4
      Visible = False
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
      OnExit = dblcdUProExit
    end
    object dblcdbanco: TwwDBLookupComboDlg
      Left = 93
      Top = 104
      Width = 80
      Height = 23
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Busquedad'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'BANCOID'#9'2'#9'Id'#9'F'
        'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsBcos
      LookupField = 'BANCOID'
      TabOrder = 5
      Visible = False
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
      OnExit = dblcdbancoExit
    end
    object dblcdFPago: TwwDBLookupComboDlg
      Left = 93
      Top = 71
      Width = 80
      Height = 23
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Proceso'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'FORPAGOID'#9'3'#9'Id'#9'F'
        'FORPAGODES'#9'45'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
      OnExit = dblcdFPagoExit
    end
    object seMes: TSpinEdit
      Left = 156
      Top = 40
      Width = 45
      Height = 24
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
      OnExit = seMesExit
    end
    object seAno: TSpinEdit
      Left = 94
      Top = 40
      Width = 57
      Height = 24
      MaxLength = 4
      MaxValue = 2010
      MinValue = 2000
      TabOrder = 0
      Value = 2001
      OnExit = seAnoExit
    end
    object pnlBar: TPanel
      Left = 189
      Top = 168
      Width = 240
      Height = 30
      TabOrder = 15
      Visible = False
      object Label18: TLabel
        Left = 5
        Top = 9
        Width = 7
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblTReg: TLabel
        Left = 216
        Top = 9
        Width = 19
        Height = 17
        Caption = '100'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object pbData: TProgressBar
        Left = 14
        Top = 6
        Width = 199
        Height = 18
        TabOrder = 0
      end
    end
    object bbtnCancT: TfcShapeBtn
      Left = 389
      Top = 223
      Width = 30
      Height = 31
      Hint = 'Cancelar'
      Color = clSilver
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
      TabOrder = 14
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancTClick
    end
    object bbtnPrevio: TfcShapeBtn
      Left = 278
      Top = 223
      Width = 30
      Height = 31
      Hint = 'Visualizar'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 11
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnPrevioClick
    end
    object bbtnDocumento: TfcShapeBtn
      Left = 352
      Top = 223
      Width = 30
      Height = 31
      Hint = 'Documentos'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 13
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnDocumentoClick
    end
    object bbtnImportar: TfcShapeBtn
      Left = 315
      Top = 223
      Width = 30
      Height = 31
      Hint = 'Grabar'
      Color = clSilver
      DitherColor = clWhite
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777770000000000007770330770000330777033077000033077703307700003
        30777033000000033077703333333333307770330000000330777030FFFFFFF0
        30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
        8077777CCC777700007777CCC77777777777777C777777777777}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 12
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImportarClick
    end
    object dbedescri: TwwDBEdit
      Left = 176
      Top = 104
      Width = 249
      Height = 23
      Color = 13165023
      Enabled = False
      TabOrder = 6
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object dbefpago: TwwDBEdit
      Left = 176
      Top = 71
      Width = 249
      Height = 23
      Color = 13165023
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtOficio: TEdit
      Left = 93
      Top = 170
      Width = 89
      Height = 23
      TabOrder = 9
    end
    object rgAporte: TRadioGroup
      Left = 16
      Top = 223
      Width = 150
      Height = 33
      Caption = 'Incluir Aportes'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 10
      Visible = False
    end
    object dblcSituacion: TwwDBLookupCombo
      Left = 93
      Top = 140
      Width = 80
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CONTNUM'#9'9'#9'ID'#9'F'
        'CONTACTO'#9'20'#9'Contacto'#9'F')
      LookupTable = DM1.cdsSAso
      LookupField = 'ASOSITID'
      Options = [loColLines, loTitles]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcSituacionExit
    end
    object edtSituacion: TEdit
      Left = 176
      Top = 140
      Width = 249
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
      TabOrder = 8
    end
    object rgVariosPer: TRadioGroup
      Left = 15
      Top = 271
      Width = 151
      Height = 33
      Caption = 'Incluir Varios Periodos'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 16
      Visible = False
    end
  end
  object odLeer: TOpenDialog
    InitialDir = 'C:\COBSOL'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 277
    Top = 9
  end
  object pprRepResTel: TppReport
    AutoStop = False
    DataPipeline = ppdbRepDcto
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 378000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepDctoTelAho.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = pprRepResTelPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 422
    Top = 399
    Version = '7.02'
    mmColumnWidth = 365300
    DataPipelineName = 'ppdbRepDcto'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 38894
      mmPrintPosition = 0
      object pplblCia: TppLabel
        UserName = 'lblCia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 794
        mmWidth = 84402
        BandType = 0
      end
      object pplblAreaPersonal: TppLabel
        UserName = 'lblAreaPersonal'
        Caption = 'Recursos Humanos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 6085
        mmWidth = 30163
        BandType = 0
      end
      object pplbltitulo: TppLabel
        UserName = 'lbltitulo1'
        Caption = 'COBRANZA POR ENCARGO A CUENTA DE AHORROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 58473
        mmTop = 6085
        mmWidth = 87313
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Pagina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 794
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 794
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 6085
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 6085
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 11377
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 11377
        mmWidth = 18785
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 21960
        mmWidth = 194469
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 23813
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 35454
        mmTop = 23813
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Movimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91546
        mmTop = 23813
        mmWidth = 21167
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 32544
        mmWidth = 194734
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Importe por Cobrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 119856
        mmTop = 23019
        mmWidth = 23019
        BandType = 0
      end
      object pplblsubtitulo: TppLabel
        UserName = 'lblsubtitulo'
        Caption = 'JULIO-2001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 92869
        mmTop = 11377
        mmWidth = 18521
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'BANCONOM'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 16669
        mmTop = 33867
        mmWidth = 81756
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'BANCO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 33867
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Item'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 23813
        mmWidth = 6350
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'UPROID'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'MOVMTO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 1058
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'IMPORTE'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 116152
        mmTop = 1058
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMERO'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'UPRONOM'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 1058
        mmWidth = 58473
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1588
        mmWidth = 11377
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 2381
        mmTop = 265
        mmWidth = 194205
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MOVMTO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 1588
        mmWidth = 26194
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'IMPORTE'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 116152
        mmTop = 1588
        mmWidth = 28840
        BandType = 7
      end
    end
  end
  object ppdbRepDcto: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbRepDcto'
    Left = 136
    Top = 399
    object ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 0
      DisplayWidth = 0
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
      FieldLength = 3
      DisplayWidth = 3
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
      FieldLength = 20
      DisplayWidth = 20
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
    object ppField66: TppField
      FieldAlias = 'FLGFSOL'
      FieldName = 'FLGFSOL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
  end
  object pprRepResNTel: TppReport
    AutoStop = False
    DataPipeline = ppdbRepDcto
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 378000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepDctoNTelAho.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = pprRepResNTelPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 347
    Top = 399
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepDcto'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object pplblcia1: TppLabel
        UserName = 'lblCia1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 794
        mmWidth = 84402
        BandType = 0
      end
      object pplblareapersonal1: TppLabel
        UserName = 'lblAreaPersonal1'
        Caption = 'Recursos Humanos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 6085
        mmWidth = 30163
        BandType = 0
      end
      object pplbltitulo1: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'COBRANZA POR ENCARGO A CUENTA DE AHORROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 52917
        mmTop = 5821
        mmWidth = 91281
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Pagina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 151077
        mmTop = 1058
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 1058
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 151077
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 6350
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 11642
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 11642
        mmWidth = 19844
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 21960
        mmWidth = 178859
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 23813
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Detalle'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 23813
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Numero de personas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 91811
        mmTop = 23019
        mmWidth = 16669
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 32544
        mmWidth = 179123
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label101'
        Caption = 'Monto Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 115359
        mmTop = 23283
        mmWidth = 16404
        BandType = 0
      end
      object pplblsubtitulo1: TppLabel
        UserName = 'lbltitulo'
        AutoSize = False
        Caption = 'JULIO-2001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 52652
        mmTop = 11113
        mmWidth = 91546
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Monto Aporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 141023
        mmTop = 23019
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Monto Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 165100
        mmTop = 23019
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'USEID'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MOVMTO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'MTODCT'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'NUMERO'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        DataField = 'USENOM'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 1058
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'MTOAPO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'TOTAL'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 157957
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1588
        mmWidth = 11377
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 2381
        mmTop = 0
        mmWidth = 178859
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'MOVMTO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 1588
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'MTODCT'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 1588
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'MTOAPO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 1588
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'TOTAL'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 157957
        mmTop = 1588
        mmWidth = 21960
        BandType = 7
      end
    end
  end
  object pprRepDetalle: TppReport
    AutoStop = False
    DataPipeline = ppdbRepDcto
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'rRepDetalle'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 378000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepDetalle.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = pprRepDetallePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 130
    Top = 367
    Version = '7.02'
    mmColumnWidth = 365300
    DataPipelineName = 'ppdbRepDcto'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object pplblcia2: TppLabel
        UserName = 'lblcia2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 794
        mmWidth = 84402
        BandType = 0
      end
      object pplblareapersonal2: TppLabel
        UserName = 'lblareapersonal2'
        Caption = 'Recursos Humanos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 6085
        mmWidth = 30163
        BandType = 0
      end
      object pplbltitulo2: TppLabel
        UserName = 'lbltitulo2'
        Caption = 'DESCUENTOS DEL MES DE FEBRERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 81227
        mmTop = 6085
        mmWidth = 62177
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 794
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 794
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 6085
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 6085
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160867
        mmTop = 11377
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 11377
        mmWidth = 13229
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 21960
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'C'#243'digo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 4763
        mmTop = 23283
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'C'#243'digo Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 27252
        mmTop = 23283
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label201'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 78581
        mmTop = 27517
        mmWidth = 29898
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 32279
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Monto Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 133615
        mmTop = 23283
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Monto Aporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 160338
        mmTop = 23283
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Monto Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 183621
        mmTop = 23283
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Cuenta en Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 51065
        mmTop = 23019
        mmWidth = 14288
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'MTOAPO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'TOTAL'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 1058
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'MTODCT'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 130440
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 71967
        mmTop = 1058
        mmWidth = 57150
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASONCTA'
        DataPipeline = ppdbRepDcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 46038
        mmTop = 1058
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 1588
        mmWidth = 11377
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 265
        mmWidth = 199232
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'MTOAPO'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 1323
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'TOTAL'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 1323
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'MTODCT'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 4233
        mmLeft = 130440
        mmTop = 1323
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'NUM'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 3969
        mmLeft = 41540
        mmTop = 1588
        mmWidth = 22754
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'CUENTA'
        DataPipeline = ppdbRepDcto
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepDcto'
        mmHeight = 3969
        mmLeft = 85990
        mmTop = 1588
        mmWidth = 22754
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Trabajadores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 21431
        mmTop = 1588
        mmWidth = 18521
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 72761
        mmTop = 1588
        mmWidth = 10054
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText19'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'UPRONOM'
          DataPipeline = ppdbRepDcto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbRepDcto'
          mmHeight = 4233
          mmLeft = 39688
          mmTop = 794
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'UNIDAD DE PROCESO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 794
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc101'
          DataField = 'TOTAL'
          DataPipeline = ppdbRepDcto
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDcto'
          mmHeight = 4233
          mmLeft = 175948
          mmTop = 1323
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 529
          mmWidth = 199232
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          DataField = 'MTODCT'
          DataPipeline = ppdbRepDcto
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDcto'
          mmHeight = 4233
          mmLeft = 130440
          mmTop = 1323
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'MTOAPO'
          DataPipeline = ppdbRepDcto
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbRepDcto'
          mmHeight = 4233
          mmLeft = 153194
          mmTop = 1323
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2910
          mmTop = 1588
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'NUM'
          DataPipeline = ppdbRepDcto
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppdbRepDcto'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CUENTA'
          DataPipeline = ppdbRepDcto
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppdbRepDcto'
          mmHeight = 3969
          mmLeft = 85990
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'Trabajadores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 21167
          mmTop = 1588
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          Caption = 'Cuotas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 72761
          mmTop = 1588
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object rptOficio: TppReport
    AutoStop = False
    DataPipeline = bdeppOficio
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\Oficios_TELE.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = rptOficioPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 232
    Top = 392
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdeppOficio'
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 26723
      mmPrintPosition = 0
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Departamento de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 4498
        mmWidth = 42069
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161132
        mmTop = 0
        mmWidth = 1852
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161132
        mmTop = 4498
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161132
        mmTop = 10583
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 0
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 4498
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 8996
        mmWidth = 7144
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 21167
        mmWidth = 191294
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 21167
        mmWidth = 191294
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'C'#243'digo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 21960
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Provincia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 21960
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Movimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 21960
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Importe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 21696
        mmWidth = 11113
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 26458
        mmWidth = 191294
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 26458
        mmWidth = 191294
        BandType = 0
      end
      object plblTitTel: TppLabel
        UserName = 'plblTitTel'
        Caption = 'plblTitTel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 17463
        mmTop = 16404
        mmWidth = 13494
        BandType = 0
      end
      object rchtPagina: TppRichText
        UserName = 'rchtPagina'
        Stretch = True
        mmHeight = 5027
        mmLeft = 82550
        mmTop = 794
        mmWidth = 18256
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        AutoSize = True
        DataField = 'PROVBCOID'
        DataPipeline = bdeppOficio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppOficio'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        DataField = 'UPRONOM'
        DataPipeline = bdeppOficio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeppOficio'
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        DataField = 'Movimiento'
        DataPipeline = bdeppOficio
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeppOficio'
        mmHeight = 3969
        mmLeft = 130969
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        DataField = 'CREMTO'
        DataPipeline = bdeppOficio
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeppOficio'
        mmHeight = 3969
        mmLeft = 167746
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'TOTALES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 19844
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'Movimiento'
        DataPipeline = bdeppOficio
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeppOficio'
        mmHeight = 3969
        mmLeft = 130175
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        AutoSize = True
        DataField = 'CREMTO'
        DataPipeline = bdeppOficio
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeppOficio'
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 265
        mmWidth = 191294
        BandType = 7
      end
    end
  end
  object bdeppOficio: TppBDEPipeline
    UserName = 'bdeppOficio'
    Left = 58
    Top = 308
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
    Report = rptOficio
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 50
    Top = 380
  end
end
