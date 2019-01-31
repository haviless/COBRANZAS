object FAsociados: TFAsociados
  Left = 123
  Top = 265
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Maestro de Asociados'
  ClientHeight = 540
  ClientWidth = 792
  Color = 12904163
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
  object Panel1: TPanel
    Left = 1
    Top = 2
    Width = 785
    Height = 567
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 0
    object fcLabel1: TfcLabel
      Left = 40
      Top = 12
      Width = 107
      Height = 59
      Caption = 'Maestro de'#13#10'Asociados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object Bevel1: TBevel
      Left = 174
      Top = 4
      Width = 77
      Height = 75
    end
    object pnlTool: TPanel
      Left = 7
      Top = 493
      Width = 772
      Height = 40
      BevelOuter = bvNone
      Color = 13165023
      TabOrder = 0
      object sbtnFirma: TfcShapeBtn
        Left = 326
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Firma y Huella'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnFirmaClick
      end
      object sbtnSitu: TfcShapeBtn
        Left = 379
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Situaciones'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
          77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0FFFFF
          FFF07F333F7F3FFFF3370FFF700F0000FFF07F3F777F777733370F707F0FFFFF
          FFF07F77337F3FFFFFF7007EEE0F000000F077FFFF7F777777370777770FFFFF
          FFF07777777F3FFFFFF7307EEE0F000000F03773FF7F7777773733707F0FFFFF
          FFF03337737F3FFF33373333700F000FFFF03333377F77733FF73333330FFFFF
          00003333337F3FF377773333330F00FF0F033333337F77337F733333330FFFFF
          00333333337FFFFF773333333300000003333333337777777333}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 5
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        Visible = False
        OnClick = sbtnSituClick
      end
      object sbtnCtasBanc: TfcShapeBtn
        Left = 274
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Cuentas Bancarias'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
          555555777777777FF5555500000000805555557777777777FF555550BBBBB008
          05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
          005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
          055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
          055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
          05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
          05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
          005555555775FFFF77F555555570000000555555555777777755}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 4
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnCtasBancClick
      end
      object sbtnResol: TfcShapeBtn
        Left = 169
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Resoluciones'
        Color = 10207162
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
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 2
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnResolClick
      end
      object sbtnAportes: TfcShapeBtn
        Left = 221
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Aportes'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500055555500
          00005777FFFFFF77777750B077000003333057F77777777F555750B070888803
          B3B057F7F75FFF7F555700B07700000B3B3077F7F577777F555750B07777770B
          B3B057F7F555557F555750B07777770BBB3057F7FFFFFF7F555750B00000000B
          BBB057F77777777F555750B05F5F5F0BBBB057F7F7F7F77F555750B05F5F5F0B
          BBB057F7F7F7F77F555750B05F5F5F0BBBB057F7F7F7F77F555750B07777770B
          BBB057F77777777F555750B05F5F5F0BBBB057F7F757577F5557500055555503
          BBB057775555557F555755555555550B3BB055555555557F5557555555555503
          B3B055555555557FFFF755555555550000005555555555777777}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 3
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnAportesClick
      end
      object sbtnDFam: TfcShapeBtn
        Left = 64
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Datos Familiares'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
          00007777777777777777933393303933337073F37F37F73F3377393393303393
          379037FF7F37F37FF777379793303379793037777337F3777737339933303339
          93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
          999037777337F377777793993330333393307377FF37F3337FF7333993303333
          993033377F37F33377F7333993303333993033377337F3337737333333303333
          33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
          03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
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
        OnClick = sbtnDFamClick
      end
      object sbtnDLab: TfcShapeBtn
        Left = 11
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Centros de Trabajo'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
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
        OnClick = sbtnDLabClick
      end
      object sbtnDSocioE: TfcShapeBtn
        Left = 116
        Top = 5
        Width = 32
        Height = 31
        Hint = 'Datos Socio Econ'#243'micos'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000333FFF3777777777F3000330FFFFFFF033777FF7F3FF3FF7F07B7030F00F0
          0F0377777F7F7737737F0BBB030FFFFFFF0377777F7F3FFFF37F07B7030F0000
          FF037777737F7777337F3000330FFFFFFF033777337F3FF3FF7F3333330F00F0
          00033333337F7737777F3333330FFFF0FF033FFFFF7F3FF7F3730000030F08F0
          F03377777F7F7737F7330999030FFFF0033377777F7FFFF77333099903000000
          333377777F7777773333099903333333333377777F33FFFFFFF3000003300000
          00337777733777777733333333330CCC033333333333777773333333333330C0
          3333333333333777333333333333330333333333333333733333}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnDSocioEClick
      end
    end
    object pnlInicio: TPanel
      Left = 362
      Top = 14
      Width = 418
      Height = 57
      BevelOuter = bvNone
      Color = 13165023
      TabOrder = 1
      object lblCodigoDM: TLabel
        Left = 23
        Top = 7
        Width = 82
        Height = 15
        Caption = 'C'#243'digo Derrama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblCodigoMod: TLabel
        Left = 169
        Top = 7
        Width = 80
        Height = 15
        Caption = 'C'#243'digo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeCodMod: TwwDBEdit
        Left = 168
        Top = 24
        Width = 112
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'ASOCODMOD'
        DataSource = DM1.dsAso
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCodigo: TwwDBEdit
        Left = 22
        Top = 23
        Width = 138
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASOID'
        DataSource = DM1.dsAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        Picture.PictureMask = '*15[#]'
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdCodigo: TwwDBLookupComboDlg
        Left = 23
        Top = 22
        Width = 138
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Codigo'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'ASOID'#9'15'#9'ID'#9'F'
          'ASOCODMOD'#9'10'#9'CODIGO MODULAR'#9'F'
          'ASOAPENOM'#9'70'#9'APELLIDOS Y NOMBRES'#9'F')
        LookupTable = DM1.cdsAso
        LookupField = 'ASOID'
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        Color = 13165023
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        Visible = False
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        UseTFields = False
        ShowMatchText = True
        OnCloseUp = dblcdCodigoCloseUp
        OnExit = dblcdCodigoExit
      end
      object dblcdCodMod: TwwDBLookupComboDlg
        Left = 289
        Top = 22
        Width = 111
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Codigo Modular'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'ASOID'#9'15'#9'ASOID'#9'F'
          'ASOCODMOD'#9'10'#9'ASOCODMOD'#9'F'
          'ASOCODPAGO'#9'25'#9'ASOCODPAGO'#9'F'
          'ASOAPEPAT'#9'30'#9'ASOAPEPAT'#9'F'
          'ASOAPEMAT'#9'30'#9'ASOAPEMAT'#9'F'
          'ASONOMBRES'#9'30'#9'ASONOMBRES'#9'F'
          'ASOAPENOM'#9'90'#9'ASOAPENOM'#9'F'
          'USEID'#9'3'#9'USEID'#9'F'
          'UPROCID'#9'3'#9'UPROCID'#9'F'
          'UPAGOID'#9'3'#9'UPAGOID'#9'F'
          'ASORESNOM'#9'15'#9'ASORESNOM'#9'F'
          'ASOFRESNOM'#9'18'#9'ASOFRESNOM'#9'F'
          'RESID'#9'2'#9'RESID'#9'F'
          'REGPENID'#9'2'#9'REGPENID'#9'F'
          'ASOSITID'#9'2'#9'ASOSITID'#9'F'
          'ASOFACT'#9'1'#9'ASOFACT'#9'F'
          'ASOTIPID'#9'2'#9'ASOTIPID'#9'F'
          'VIAID'#9'2'#9'VIAID'#9'F'
          'VIANOMBRE'#9'60'#9'VIANOMBRE'#9'F'
          'ASONUMDIR'#9'5'#9'ASONUMDIR'#9'F'
          'ASOFDPTO'#9'1'#9'ASOFDPTO'#9'F'
          'ASODPTO'#9'5'#9'ASODPTO'#9'F'
          'ZONAID'#9'2'#9'ZONAID'#9'F'
          'ZONANOMB'#9'60'#9'ZONANOMB'#9'F'
          'UBIGEOID'#9'6'#9'UBIGEOID'#9'F'
          'DPTOID'#9'3'#9'DPTOID'#9'F'
          'DISTID'#9'3'#9'DISTID'#9'F'
          'CIUID'#9'3'#9'CIUID'#9'F'
          'PAISID'#9'2'#9'PAISID'#9'F'
          'ASOLNACID'#9'3'#9'ASOLNACID'#9'F'
          'REFDOM'#9'80'#9'REFDOM'#9'F'
          'ASOFECNAC'#9'18'#9'ASOFECNAC'#9'F'
          'ASOTELF1'#9'20'#9'ASOTELF1'#9'F'
          'ASOTELF2'#9'20'#9'ASOTELF2'#9'F'
          'TIPDOCCOD'#9'2'#9'TIPDOCCOD'#9'F'
          'ASODOCNUM'#9'15'#9'ASODOCNUM'#9'F'
          'ASOLIBMIL'#9'15'#9'ASOLIBMIL'#9'F'
          'ASORUC'#9'15'#9'ASORUC'#9'F'
          'ESTCIVID'#9'2'#9'ESTCIVID'#9'F'
          'ASOSEXO'#9'1'#9'ASOSEXO'#9'F'
          'ASOEMAIL'#9'60'#9'ASOEMAIL'#9'F'
          'BANCOID'#9'2'#9'BANCOID'#9'F'
          'ASONCTA'#9'20'#9'ASONCTA'#9'F'
          'SITCTA'#9'3'#9'SITCTA'#9'F'
          'ASODNI'#9'10'#9'ASODNI'#9'F'
          'GRAACID'#9'2'#9'GRAACID'#9'F'
          'GRAINSID'#9'2'#9'GRAINSID'#9'F'
          'PROFID'#9'3'#9'PROFID'#9'F'
          'ASODIR'#9'60'#9'ASODIR'#9'F')
        LookupTable = DM1.cdsAso
        LookupField = 'ASOCODMOD'
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        Color = 13165023
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        Visible = False
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcdCodModExit
      end
    end
    object pnlNomTrab: TPanel
      Left = 5
      Top = 82
      Width = 775
      Height = 97
      BevelOuter = bvNone
      Color = 13165023
      TabOrder = 2
      object lblApePat: TLabel
        Left = 6
        Top = 2
        Width = 87
        Height = 15
        Caption = 'Apellido Paterno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblApeMat: TLabel
        Left = 189
        Top = 2
        Width = 91
        Height = 15
        Caption = 'Apellido Materno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblNombres: TLabel
        Left = 386
        Top = 2
        Width = 45
        Height = 15
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblSituacion: TLabel
        Left = 561
        Top = 2
        Width = 122
        Height = 15
        Caption = 'Situaci'#243'n del Aportante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblTipoAsociado: TLabel
        Left = 6
        Top = 50
        Width = 92
        Height = 15
        Caption = 'Tipo de Aportante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblUnidadProceso: TLabel
        Left = 198
        Top = 50
        Width = 94
        Height = 15
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblUSE: TLabel
        Left = 430
        Top = 50
        Width = 23
        Height = 15
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblDNI: TLabel
        Left = 665
        Top = 50
        Width = 54
        Height = 15
        Caption = 'D.N.I/L.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeApePaterno: TwwDBEdit
        Left = 6
        Top = 22
        Width = 179
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASOAPEPAT'
        DataSource = DM1.dsAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeApePaternoExit
      end
      object dbeApeMaterno: TwwDBEdit
        Left = 187
        Top = 22
        Width = 193
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASOAPEMAT'
        DataSource = DM1.dsAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeApeMaternoExit
      end
      object dbeNombres: TwwDBEdit
        Left = 383
        Top = 22
        Width = 175
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASONOMBRES'
        DataSource = DM1.dsAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeNombresExit
      end
      object dblcSituacion: TwwDBLookupCombo
        Left = 560
        Top = 22
        Width = 51
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
          'ASOSITID'#9'2'#9'ID'#9'F'
          'ASOSITDES'#9'40'#9'DESCRIPCION'#9'F')
        DataField = 'ASOSITID'
        DataSource = DM1.dsAso
        LookupTable = DM1.cdsSAso
        LookupField = 'ASOSITID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcSituacionExit
        OnNotInList = dblcNotInList
      end
      object edtSituacion: TEdit
        Left = 612
        Top = 22
        Width = 157
        Height = 23
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dblcTipo: TwwDBLookupCombo
        Left = 6
        Top = 70
        Width = 51
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
          'ASOTIPID'#9'2'#9'ID'#9'F'
          'ASOTIPDES'#9'30'#9'DESCRIPCION'#9'F')
        DataField = 'ASOTIPID'
        DataSource = DM1.dsAso
        LookupTable = DM1.cdsTAso
        LookupField = 'ASOTIPID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcTipoExit
        OnNotInList = dblcNotInList
      end
      object edtTipoAso: TEdit
        Left = 59
        Top = 70
        Width = 135
        Height = 23
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dblcUProceso: TwwDBLookupCombo
        Left = 197
        Top = 70
        Width = 51
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
          'UPROID'#9'4'#9'ID'#9'F'
          'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
        DataField = 'UPROID'
        DataSource = DM1.dsAso
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcUProcesoExit
        OnNotInList = dblcNotInList
      end
      object edtUProceso: TEdit
        Left = 248
        Top = 70
        Width = 177
        Height = 23
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object dblcUSE: TwwDBLookupCombo
        Left = 430
        Top = 70
        Width = 51
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
          'USEID'#9'3'#9'ID'#9'F'
          'USENOM'#9'65'#9'DESCRIPCION'#9'F')
        DataField = 'USEID'
        DataSource = DM1.dsAso
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 9
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcUSEExit
        OnNotInList = dblcNotInList
      end
      object edtUSE: TEdit
        Left = 482
        Top = 70
        Width = 177
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object dbeNroDNI: TwwDBEdit
        Left = 665
        Top = 70
        Width = 103
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASODNI'
        DataSource = DM1.dsAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 8
        ParentFont = False
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeNroDNIExit
      end
    end
    object pnlTrab: TPanel
      Left = 6
      Top = 182
      Width = 773
      Height = 305
      BevelOuter = bvNone
      Color = 13165023
      TabOrder = 3
      object pcAsociados: TPageControl
        Left = 9
        Top = 5
        Width = 756
        Height = 293
        ActivePage = tsDLab
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object tsDPer: TTabSheet
          Caption = 'Datos &Personales'
          object lblNomTot: TLabel
            Left = 11
            Top = 12
            Width = 89
            Height = 15
            Caption = 'Nombre Completo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblFNac: TLabel
            Left = 357
            Top = 12
            Width = 69
            Height = 15
            Caption = 'Fecha Nacim.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblSexo: TLabel
            Left = 482
            Top = 12
            Width = 27
            Height = 15
            Caption = 'Sexo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblEstCivil: TLabel
            Left = 555
            Top = 66
            Width = 61
            Height = 15
            Caption = 'Estado Civil'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNacionalidad: TLabel
            Left = 304
            Top = 61
            Width = 68
            Height = 15
            Caption = 'Nacionalidad'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblLugNac: TLabel
            Left = 11
            Top = 61
            Width = 80
            Height = 15
            Caption = 'Lug.Nacimiento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblTipDocIdent: TLabel
            Left = 11
            Top = 114
            Width = 191
            Height = 15
            Caption = 'Tipo de Documento de Identificaci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNroDocId: TLabel
            Left = 261
            Top = 114
            Width = 14
            Height = 15
            Caption = 'N'#176
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblLibMilitar: TLabel
            Left = 391
            Top = 114
            Width = 76
            Height = 15
            Caption = 'Libreta Militar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblRUC: TLabel
            Left = 11
            Top = 169
            Width = 31
            Height = 15
            Caption = 'R.U.C.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblEMail: TLabel
            Left = 171
            Top = 169
            Width = 34
            Height = 15
            Caption = 'E-Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblRegimen: TLabel
            Left = 539
            Top = 111
            Width = 100
            Height = 15
            Caption = 'Regimen de Pension'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbeNombre: TwwDBEdit
            Left = 11
            Top = 30
            Width = 334
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASOAPENOM'
            DataSource = DM1.dsAso
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbdtpFechaNac: TwwDBDateTimePicker
            Left = 358
            Top = 30
            Width = 110
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'ASOFECNAC'
            DataSource = DM1.dsAso
            Epoch = 1950
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            UnboundDataType = wwDTEdtDate
            DisplayFormat = 'dd/mm/yyyy'
          end
          object dblcSexo: TwwDBLookupCombo
            Left = 483
            Top = 30
            Width = 35
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
              'SEXO'#9'2'#9'ID'#9'F'
              'DESCRIP'#9'30'#9'DESCRIPCION'#9'F')
            DataField = 'ASOSEXO'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsSexo
            LookupField = 'SEXO'
            Options = [loColLines, loRowLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            SearchDelay = 2
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcSexoExit
            OnNotInList = dblcNotInList
          end
          object edtSexo: TEdit
            Left = 519
            Top = 30
            Width = 138
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dblcEstCivil: TwwDBLookupCombo
            Left = 554
            Top = 82
            Width = 35
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
              'ESTCIVID'#9'2'#9'ID'#9'F'
              'ESTCIVDES'#9'30'#9'DESCRIPCION'#9'F')
            DataField = 'ESTCIVID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsEstCiv
            LookupField = 'ESTCIVID'
            Options = [loColLines, loRowLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 8
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcEstCivilExit
            OnNotInList = dblcNotInList
          end
          object edtEstCivil: TEdit
            Left = 590
            Top = 82
            Width = 139
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object edtNacionalidad: TEdit
            Left = 345
            Top = 81
            Width = 195
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object dblcdNacionalidad: TwwDBLookupComboDlg
            Left = 304
            Top = 81
            Width = 41
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Nacionalidades'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'PAISID'#9'2'#9'ID'#9'F'
              'PAISDES'#9'30'#9'Pais'#9'F')
            DataField = 'PAISID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsPais
            LookupField = 'PAISID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 6
            AutoDropDown = True
            ShowButton = True
            OrderByDisplay = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcdNacionalidadExit
          end
          object edtLugarNac: TEdit
            Left = 92
            Top = 81
            Width = 198
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object dblcLugarNac: TwwDBLookupComboDlg
            Left = 11
            Top = 81
            Width = 78
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lugares de Nacimiento'
            MaxWidth = 0
            MaxHeight = 209
            SearchDelay = 2
            Selected.Strings = (
              'ZIPID'#9'6'#9'ID'#9'F'
              'ZIPDES'#9'38'#9'Descripci'#243'n'#9'F'
              'CIUDID'#9'5'#9'Prov'#9'F'
              'DPTOID'#9'3'#9'Dpto'#9'F')
            DataField = 'ASOLNACID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsDist
            LookupField = 'ZIPID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = True
            UseTFields = False
            OnExit = dblcLugarNacExit
          end
          object dblcTipoDoc: TwwDBLookupCombo
            Left = 11
            Top = 135
            Width = 43
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
              'TIPDOCCOD'#9'2'#9'ID'#9'F'
              'TIPDOCDES'#9'35'#9'DESCRIPCION'#9'F')
            DataField = 'TIPDOCCOD'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsTDoc
            LookupField = 'TIPDOCCOD'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 10
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            OnExit = dblcTipoDocExit
            OnNotInList = dblcNotInList
          end
          object edtTipoDoc: TEdit
            Left = 55
            Top = 135
            Width = 195
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object dbeNroDoc: TwwDBEdit
            Left = 261
            Top = 135
            Width = 122
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASODOCNUM'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 12
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeNroLibM: TwwDBEdit
            Left = 393
            Top = 135
            Width = 138
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASOLIBMIL'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 13
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeNroRUC: TwwDBEdit
            Left = 11
            Top = 185
            Width = 139
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASORUC'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            Picture.PictureMask = '###########'
            TabOrder = 16
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeNroRUCExit
          end
          object dbeemail: TwwDBEdit
            Left = 171
            Top = 185
            Width = 355
            Height = 21
            BorderStyle = bsNone
            CharCase = ecLowerCase
            Color = 13165023
            DataField = 'ASOEMAIL'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 17
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dblcRegimen: TwwDBLookupCombo
            Left = 539
            Top = 135
            Width = 51
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
              'REGPENID'#9'2'#9'ID'#9'F'
              'REGPENDES'#9'40'#9'DESCRIPCION'#9'F')
            DataField = 'REGPENID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsTPension
            LookupField = 'REGPENID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 14
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcRegimenExit
            OnNotInList = dblcNotInList
          end
          object edtRegimen: TEdit
            Left = 591
            Top = 135
            Width = 139
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
        end
        object tsDDom: TTabSheet
          Caption = '&Domicilio'
          ImageIndex = 1
          object lblTipoVia: TLabel
            Left = 9
            Top = 15
            Width = 58
            Height = 15
            Caption = 'Tipo de V'#237'a'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNomVia: TLabel
            Left = 212
            Top = 15
            Width = 60
            Height = 15
            Caption = 'Nombre V'#237'a'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNroCasa: TLabel
            Left = 471
            Top = 15
            Width = 14
            Height = 15
            Caption = 'N'#176
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNroDpto: TLabel
            Left = 528
            Top = 15
            Width = 24
            Height = 15
            Caption = 'Dpto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblDistrito: TLabel
            Left = 512
            Top = 151
            Width = 40
            Height = 15
            Caption = 'Distrito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNomZona: TLabel
            Left = 214
            Top = 59
            Width = 69
            Height = 15
            Caption = 'Nombre Zona'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblTipoZona: TLabel
            Left = 9
            Top = 59
            Width = 67
            Height = 15
            Caption = 'Tipo de Zona'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblDireccion: TLabel
            Left = 9
            Top = 108
            Width = 51
            Height = 15
            Caption = 'Direcci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblTelf1: TLabel
            Left = 518
            Top = 108
            Width = 71
            Height = 15
            Caption = 'Tel'#233'fono N'#176' 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblTelf2: TLabel
            Left = 625
            Top = 108
            Width = 73
            Height = 15
            Caption = 'Tel'#233'fono N'#176' 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblDepartamento: TLabel
            Left = 9
            Top = 151
            Width = 74
            Height = 15
            Caption = 'Departamento '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblProvincia: TLabel
            Left = 248
            Top = 151
            Width = 49
            Height = 15
            Caption = 'Provincia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblRefDomic: TLabel
            Left = 10
            Top = 202
            Width = 128
            Height = 15
            Caption = 'Referencia Domiciliaria '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 519
            Top = 61
            Width = 36
            Height = 15
            Caption = 'Ub'#237'geo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dblcTipoVia: TwwDBLookupCombo
            Left = 10
            Top = 32
            Width = 41
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
              'TIPVIAID'#9'2'#9'ID'#9'F'
              'TIPVIADES'#9'30'#9'DESCRIPCION'#9'F')
            DataField = 'VIAID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsTVia
            LookupField = 'TIPVIAID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcTipoViaExit
            OnNotInList = dblcNotInList
          end
          object edtTipoVia: TEdit
            Left = 51
            Top = 32
            Width = 145
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbeNombreVia: TwwDBEdit
            Left = 210
            Top = 32
            Width = 258
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'VIANOMBRE'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeNroDireccion: TwwDBEdit
            Left = 469
            Top = 32
            Width = 56
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASONUMDIR'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            Picture.PictureMask = '*5[#]'
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeDpto: TwwDBEdit
            Left = 526
            Top = 32
            Width = 58
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASODPTO'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            Picture.PictureMask = '*5[#]'
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object edtDistrito: TEdit
            Left = 575
            Top = 171
            Width = 171
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object dblcdDistrito: TwwDBLookupComboDlg
            Left = 512
            Top = 171
            Width = 62
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Distritos'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'ZIPID'#9'7'#9'ID'#9'F'
              'ZIPDES'#9'38'#9'Descripci'#243'n'#9'F'
              'CIUDID'#9'5'#9'Prov'#9'F'
              'DPTOID'#9'3'#9'Dpto'#9'F')
            DataField = 'ZIPID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsDist
            LookupField = 'ZIPID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 16
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcdDistritoExit
          end
          object dbeNombreZona: TwwDBEdit
            Left = 213
            Top = 79
            Width = 273
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ZONANOMB'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object edtZona: TEdit
            Left = 51
            Top = 79
            Width = 146
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object dblcTipoZona: TwwDBLookupCombo
            Left = 9
            Top = 79
            Width = 41
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
              'TIPZONAID'#9'2'#9'ID'#9'F'
              'TIPZONADES'#9'30'#9'DESCRIPCION'#9'F')
            DataField = 'ZONAID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsTZona
            LookupField = 'TIPZONAID'
            Options = [loColLines, loRowLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcTipoZonaExit
            OnNotInList = dblcNotInList
          end
          object dbeDireccion: TwwDBEdit
            Left = 9
            Top = 124
            Width = 499
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASODIR'
            DataSource = DM1.dsAso
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeTelefono1: TwwDBEdit
            Left = 518
            Top = 124
            Width = 94
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'ASOTELF1'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeTelefono2: TwwDBEdit
            Left = 625
            Top = 124
            Width = 94
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'ASOTELF2'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dblcdDepto: TwwDBLookupComboDlg
            Left = 9
            Top = 171
            Width = 46
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Departamentos'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'DPTOID'#9'3'#9'ID'#9'F'
              'DPTODES'#9'30'#9'Descripci'#243'n'#9'F')
            DataField = 'DPTOID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsDpto
            LookupField = 'DPTOID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 12
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcdDeptoExit
          end
          object edtDepto: TEdit
            Left = 57
            Top = 171
            Width = 183
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object dblcdCiudad: TwwDBLookupComboDlg
            Left = 248
            Top = 171
            Width = 75
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Provincias'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'CIUDID'#9'3'#9'ID'#9'F'
              'CIUDDES'#9'30'#9'Descripci'#243'n'#9'F'
              'DPTOID'#9'3'#9'Dpto'#9'F')
            DataField = 'CIUDID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsProvin
            LookupField = 'CIUDID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 14
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcdCiudadExit
          end
          object edtProvincia: TEdit
            Left = 325
            Top = 171
            Width = 183
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object dbeReferencia: TwwDBEdit
            Left = 10
            Top = 221
            Width = 578
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'REFDOM'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 18
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object edtUbigeo: TwwDBEdit
            Left = 519
            Top = 79
            Width = 87
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'UBIGEOID'
            DataSource = DM1.dsAso
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object tsDLab: TTabSheet
          Caption = 'Datos &Laborales'
          ImageIndex = 2
          object lblCodigoPago: TLabel
            Left = 18
            Top = 16
            Width = 77
            Height = 15
            Caption = 'C'#243'digo de Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblUnidadPago: TLabel
            Left = 148
            Top = 16
            Width = 78
            Height = 15
            Caption = 'Unidad de Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblResolucion: TLabel
            Left = 350
            Top = 64
            Width = 72
            Height = 15
            Caption = 'N'#176' Resoluci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblFechaPago: TLabel
            Left = 509
            Top = 64
            Width = 88
            Height = 15
            Caption = 'Fecha Resoluci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 18
            Top = 64
            Width = 96
            Height = 15
            Caption = 'Tipo de Resoluci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 18
            Top = 113
            Width = 31
            Height = 15
            Caption = 'Banco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 350
            Top = 113
            Width = 107
            Height = 15
            Caption = 'Nro Cuenta Bancaria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 509
            Top = 112
            Width = 146
            Height = 15
            Caption = 'Situaci'#243'n de la Cta Bancaria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbeCodigoPago: TwwDBEdit
            Left = 18
            Top = 33
            Width = 116
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASOCODPAGO'
            DataSource = DM1.dsAso
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dblcUPago: TwwDBLookupCombo
            Left = 148
            Top = 33
            Width = 51
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
              'UPAGOID'#9'3'#9'ID'#9'F'
              'UPAGONOM'#9'65'#9'DESCRIPCION'#9'F')
            DataField = 'UPAGOID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsUPago
            LookupField = 'UPAGOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcUPagoExit
            OnNotInList = dblcNotInList
          end
          object edtUPago: TEdit
            Left = 200
            Top = 33
            Width = 261
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object dbeResolucion: TwwDBEdit
            Left = 349
            Top = 82
            Width = 143
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASORESNOM'
            DataSource = DM1.dsAso
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            Picture.PictureMask = '*15[#]'
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbdtpFecha: TwwDBDateTimePicker
            Left = 509
            Top = 82
            Width = 97
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'ASOFRESNOM'
            DataSource = DM1.dsAso
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 3
          end
          object dblcRTipResol: TwwDBLookupCombo
            Left = 18
            Top = 82
            Width = 51
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
              'TIPRESID'#9'2'#9'ID'#9'F'
              'TIPRESDES'#9'40'#9'DESCRIPCION'#9'F')
            DataField = 'RESID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsTResol
            LookupField = 'TIPRESID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcRTipResolExit
          end
          object edtResolDescrip: TEdit
            Left = 70
            Top = 82
            Width = 263
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object dblcdBco: TwwDBLookupCombo
            Left = 18
            Top = 131
            Width = 51
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            DataField = 'BANCOID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsBcos
            LookupField = 'BANCOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcdBcoExit
            OnNotInList = dblcNotInList
          end
          object edtBanco: TEdit
            Left = 70
            Top = 131
            Width = 263
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object nroCta: TwwDBEdit
            Left = 349
            Top = 131
            Width = 143
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASONCTA'
            DataSource = DM1.dsAso
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dblcdSit: TwwDBLookupCombo
            Left = 509
            Top = 131
            Width = 51
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
              'SITCTAID'#9'2'#9'C'#243'digo'#9'F'
              'SITCTADES'#9'30'#9'Descripci'#243'n'#9'F')
            DataField = 'SITCTA'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsSitCta
            LookupField = 'SITCTAID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 10
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcdSitExit
            OnNotInList = dblcNotInList
          end
          object edtSitCtaBco: TEdit
            Left = 561
            Top = 131
            Width = 156
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
        end
        object TabSheet1: TTabSheet
          Caption = '&Formaci'#243'n Acad'#233'mica'
          ImageIndex = 3
          object lblGradoInst: TLabel
            Left = 16
            Top = 15
            Width = 94
            Height = 15
            Caption = 'Grado Instrucci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblGradoAc: TLabel
            Left = 16
            Top = 68
            Width = 90
            Height = 15
            Caption = 'Grado Acad'#233'mico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblProfesion: TLabel
            Left = 16
            Top = 175
            Width = 50
            Height = 15
            Caption = 'Profesi'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 16
            Top = 123
            Width = 57
            Height = 15
            Caption = 'Instituci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 409
            Top = 123
            Width = 90
            Height = 15
            Caption = 'Fecha de T'#233'rmino'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 522
            Top = 123
            Width = 98
            Height = 15
            Caption = 'Tiempo de Estudios'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 634
            Top = 148
            Width = 25
            Height = 15
            Caption = 'A'#241'os'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dblcGradoIns: TwwDBLookupCombo
            Left = 16
            Top = 37
            Width = 39
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
              'GRAINSID'#9'2'#9'ID'#9'F'
              'GRAINSDES'#9'25'#9'DESCRIPCION'#9'F')
            DataField = 'GRAINSID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsGradoI
            LookupField = 'GRAINSID'
            Options = [loColLines, loRowLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcGradoInsExit
            OnNotInList = dblcNotInList
          end
          object edtGradoIns: TEdit
            Left = 56
            Top = 37
            Width = 279
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dblcGradoAcad: TwwDBLookupCombo
            Left = 16
            Top = 90
            Width = 40
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
              'GRAACID'#9'2'#9'ID'#9'F'
              'GRAACDES'#9'30'#9'DESCRIPCION'#9'F')
            DataField = 'GRAACID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsGradoA
            LookupField = 'GRAACID'
            Options = [loColLines, loRowLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcGradoAcadExit
            OnNotInList = dblcNotInList
          end
          object edtGradoAcad: TEdit
            Left = 57
            Top = 90
            Width = 279
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dblcdProfesion: TwwDBLookupComboDlg
            Left = 16
            Top = 197
            Width = 42
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Profesiones'
            MaxWidth = 0
            MaxHeight = 209
            SearchDelay = 2
            Selected.Strings = (
              'PROFID'#9'3'#9'ID'#9'F'
              'PROFDES'#9'50'#9'Descripci'#243'n'#9'F')
            DataField = 'PROFID'
            DataSource = DM1.dsAso
            LookupTable = DM1.cdsProf
            LookupField = 'PROFID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcdProfesionExit
          end
          object edtProfesion: TEdit
            Left = 59
            Top = 197
            Width = 279
            Height = 23
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object dbeInstitucion: TwwDBEdit
            Left = 16
            Top = 144
            Width = 383
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'ASOLUGEST'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeApeMaternoExit
          end
          object dbdtpFecTermino: TwwDBDateTimePicker
            Left = 410
            Top = 144
            Width = 90
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'FECTEREST'
            DataSource = DM1.dsAso
            Epoch = 1950
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 5
            UnboundDataType = wwDTEdtDate
            DisplayFormat = 'dd/mm/yyyy'
          end
          object dbeTiempo: TwwDBEdit
            Left = 520
            Top = 144
            Width = 101
            Height = 21
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13165023
            DataField = 'TIEMPOEST'
            DataSource = DM1.dsAso
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
      object sbtnAceptar: TfcShapeBtn
        Left = 672
        Top = 250
        Width = 32
        Height = 31
        Hint = 'Guardar Datos del Asociado'
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
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnAceptarClick
      end
      object sbtnCancelar: TfcShapeBtn
        Left = 712
        Top = 250
        Width = 32
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
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 2
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnCancelarClick
      end
      object sbtnNuevo: TfcShapeBtn
        Left = 632
        Top = 250
        Width = 32
        Height = 31
        Hint = 'Nuevo Asociado'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D760100000000000076000000280000001F000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333033333333333333333333333333333330333333333333
          333333333333333333303000000000003333337777777777733030FFFFFFFFF0
          3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
          3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
          3333337F33333333733030FFFFFFFFF03333337F33333FFF733030FFFF000000
          3333337F33337777733030FFFF00FF033333337F33337F37333030FFFF00F033
          3333337F33337F77333030FFFF0003333333337FFFFF77333330300000003333
          3333337777777333333033333333333333333333333333333330}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 3
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnNuevoClick
      end
    end
  end
end
