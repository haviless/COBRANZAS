object FToolsDescarga: TFToolsDescarga
  Left = 220
  Top = 345
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Descarga de Archivo'
  ClientHeight = 156
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 156
    Align = alClient
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 8
      Top = 64
      Width = 65
      Height = 49
      TabOrder = 7
      Visible = False
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 63
        Height = 19
        Align = alTop
        Caption = 'Label4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 1
        Top = 33
        Width = 63
        Height = 15
        Align = alBottom
        Caption = 'Label5'
      end
    end
    object pnlBar: TPanel
      Left = 551
      Top = 122
      Width = 232
      Height = 28
      Caption = 'Por Archivo'
      TabOrder = 4
      object Label2: TLabel
        Left = 4
        Top = 7
        Width = 7
        Height = 15
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblTReg: TLabel
        Left = 191
        Top = 7
        Width = 35
        Height = 15
        Caption = '00000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object pbData: TProgressBar
        Left = 16
        Top = 6
        Width = 172
        Height = 16
        TabOrder = 0
      end
    end
    object gbPorPeriodo: TGroupBox
      Left = 792
      Top = 21
      Width = 67
      Height = 92
      Caption = 'Por Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      object bbtnVerificaPer: TBitBtn
        Left = 4
        Top = 64
        Width = 57
        Height = 25
        Cursor = crHandPoint
        Caption = 'Consist.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = bbtnVerificaPerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777700000000708877770FFFFFF08FF088770F0000F08F5FF0880FFFFFF07599
          9FF00F0000F079999F080FFFFFF0799508070F0F0000880FF0870FFF07080FF6
          F0870FFF008FF6CCCF0700000780FCC6CF0877777770FCCC6FF0707700080F6F
          F088707770070FF0887777000707808877777777777777777777}
        Margin = 2
      end
      object bbtnModificaPer: TBitBtn
        Left = 4
        Top = 14
        Width = 57
        Height = 25
        Cursor = crHandPoint
        Caption = 'Manipular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = bbtnModificaPerClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000077777777770FFFFF700000007777
          777770FF0FFFF0000000777777770FF0FFFFF000000077777777000FFFFFF000
          00007777777007FF0FFFF000000077777707FFF0F0FFF0000000770000FFF00F
          0F0F0000000070330FF00FF0F0F07000000070FF0F03300F0F007000000070F0
          0000000000307000000070FF3F3F3F3F3F307000000070F00000000000307000
          000070FF3F3F3F3F3F7070000000770000000000000770000000777777777777
          777770000000}
        Margin = 1
      end
      object bbtnPlantillaPer: TBitBtn
        Left = 4
        Top = 39
        Width = 57
        Height = 25
        Cursor = crHandPoint
        BiDiMode = bdRightToLeft
        Caption = 'Plantillas     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777770000000000700000007777770FFFFFFFF0700000007777
          770FFFFFFFF0700000007777770FFFFFFFF07000000088888800000000007000
          00008FFFFF0FCCCCCCC0700000008FFFFF0000000000700000008FFFFFFFF877
          7777700000008888888888888887700000008F88888888FFFF87700000008888
          888888FFFF8770000000777778FFFFFFFF877000000077777888888888877000
          0000777778F88888888770000000777778888888888770000000777777777777
          777770000000}
        Margin = 2
      end
    end
    object gbPorDataOk: TGroupBox
      Left = 700
      Top = 2
      Width = 104
      Height = 105
      TabOrder = 6
      Visible = False
      object btnOk: TBitBtn
        Left = 11
        Top = 42
        Width = 83
        Height = 31
        Caption = 'Data OK.'
        TabOrder = 0
        TabStop = False
        Visible = False
        OnClick = btnOkClick
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
      end
    end
    object gbPorOpciones: TGroupBox
      Left = 6
      Top = 1
      Width = 150
      Height = 139
      Caption = 'Opciones'
      TabOrder = 0
      object Bevel3: TBevel
        Left = 2
        Top = 53
        Width = 148
        Height = 47
      end
      object Label3: TLabel
        Left = 6
        Top = 46
        Width = 62
        Height = 15
        Caption = 'Vista Previa'
      end
      object btnUnZip: TBitBtn
        Left = 8
        Top = 18
        Width = 65
        Height = 26
        Caption = 'ZIP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnUnZipClick
        Glyph.Data = {
          76050000424D7605000000000000360000002800000015000000150000000100
          18000000000040050000C40E0000C40E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000
          00000000808080000000000000000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000
          00808080000000000000000000000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000
          00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000CFCFCF808080CFCFCF8080
          80CFCFCF808080CFCFCF808080000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C00000000000000000000000000000000000000000000000000000000000
          00000000000000000000CFCFCF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000FFFF00808000FFFF00808000FFFF00808000FFFF00808000FF
          FF000000C0C0C0000000808080000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000808000FFFF00808000FFFF00808000FFFF00808000FFFF0080
          80000000C0C0C0000000CFCFCF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000FFFF00808000FFFF00808000FFFF00808000FFFF00808000FF
          FF000000C0C0C0000000808080000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000808000FFFF00808000FFFF00808000FFFF00808000FFFF0080
          80000000C0C0C0000000CFCFCF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000FFFF00808000FFFF00808000FFFF00808000FFFF00808000FF
          FF000000C0C0C0000000808080000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000808000FFFF0080800000000000000000000000000000000000
          00000000C0C0C0000000CFCFCF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C000000000FFFF00808000FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000808080000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0000000000000000000C0C0C00000000000000000000000000000
          00000000000000000000CFCFCF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000CFCFCF808080CFCFCF8080
          80CFCFCF808080CFCFCF000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000
          00000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
      end
      object btnRenom: TBitBtn
        Left = 63
        Top = 107
        Width = 80
        Height = 25
        Caption = 'Renombra'
        TabOrder = 4
        OnClick = btnRenomClick
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
      end
      object bbtnCopia: TBitBtn
        Left = 78
        Top = 18
        Width = 65
        Height = 26
        Caption = 'Copiar'
        TabOrder = 1
        OnClick = bbtnCopiaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
      object bbtnVerDbf: TBitBtn
        Left = 8
        Top = 67
        Width = 65
        Height = 25
        Caption = 'DBF'
        TabOrder = 2
        OnClick = bbtnVerDbfClick
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
      end
      object bbtnVerTxt: TBitBtn
        Left = 78
        Top = 67
        Width = 65
        Height = 25
        Caption = 'TXT'
        TabOrder = 3
        OnClick = bbtnVerTxtClick
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
      end
      object bbtnUnir: TBitBtn
        Left = 7
        Top = 107
        Width = 51
        Height = 25
        Caption = 'Une'
        TabOrder = 5
        OnClick = bbtnUnirClick
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
      end
    end
    object gbPorRuta: TGroupBox
      Left = 163
      Top = 1
      Width = 380
      Height = 44
      Caption = 'Archivo'
      TabOrder = 1
      object edtName: TEdit
        Left = 16
        Top = 14
        Width = 348
        Height = 23
        TabOrder = 0
      end
    end
    object gbPorTransferencia: TGroupBox
      Left = 163
      Top = 45
      Width = 380
      Height = 94
      Caption = 'Transferir'
      TabOrder = 2
      object Label7: TLabel
        Left = 11
        Top = 21
        Width = 50
        Height = 13
        Caption = 'A'#241'o / Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 11
        Top = 46
        Width = 64
        Height = 13
        Caption = 'Unid Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 11
        Top = 72
        Width = 68
        Height = 13
        Caption = 'T.Recudaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 149
        Top = 46
        Width = 51
        Height = 15
        Caption = 'Unid Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 84
        Top = 40
        Width = 61
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
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
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdUProExit
      end
      object seAno: TSpinEdit
        Left = 85
        Top = 12
        Width = 55
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 4
        MaxValue = 2030
        MinValue = 2000
        ParentFont = False
        TabOrder = 0
        Value = 2001
      end
      object seMes: TSpinEdit
        Left = 145
        Top = 12
        Width = 39
        Height = 24
        MaxLength = 2
        MaxValue = 12
        MinValue = 1
        TabOrder = 1
        Value = 1
        OnExit = seMesExit
      end
      object bbtnTranDBF: TBitBtn
        Left = 273
        Top = 21
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Caption = 'Transferir DBF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = bbtnTranDBFClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777711177
          77777011117B9B17777700393911B9B177777193939393931777771939093939
          3177719093009393917771303930093931777190939393939177771939193939
          3177771393919393917771B939393939B9171B939311119B9B17193911777719
          B9B1139177777771139171177777777771117777777777777777}
      end
      object bbtnTranTexto: TBitBtn
        Left = 273
        Top = 57
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Caption = 'Transferir Texto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = bbtnTranTextoClick
        Glyph.Data = {
          D6000000424DD60000000000000076000000280000000C0000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000033
          000030FFFFFFF033000030FCCCCCF033000030FFFFFFF033000030FCCCCCF033
          000030FFFFFFF033000030FCCCCCF033000030FFFFFFF033000030FCCCCCF033
          000030FFFFFFF033000030000000003300003333333333330000}
      end
      object dbcTRecauda: TwwDBLookupCombo
        Left = 84
        Top = 66
        Width = 127
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        LookupTable = DM1.cdsTRecauda
        LookupField = 'RECAUDA'
        Options = [loColLines, loTitles]
        Style = csDropDownList
        ParentFont = False
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 204
        Top = 40
        Width = 61
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPAGOID'#9'3'#9'Id'#9'F'
          'UPAGONOM'#9'65'#9'Unida de Pago'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
      end
    end
    object gbPorArchivo: TGroupBox
      Left = 550
      Top = 1
      Width = 186
      Height = 116
      Caption = 'Por Archivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object bbtnModifica: TBitBtn
        Left = 9
        Top = 17
        Width = 170
        Height = 23
        Cursor = crHandPoint
        Caption = 'Manipular Data        '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bbtnModificaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000077777777770FFFFF700000007777
          777770FF0FFFF0000000777777770FF0FFFFF000000077777777000FFFFFF000
          00007777777007FF0FFFF000000077777707FFF0F0FFF0000000770000FFF00F
          0F0F0000000070330FF00FF0F0F07000000070FF0F03300F0F007000000070F0
          0000000000307000000070FF3F3F3F3F3F307000000070F00000000000307000
          000070FF3F3F3F3F3F7070000000770000000000000770000000777777777777
          777770000000}
      end
      object bbtnPlantilla: TBitBtn
        Left = 9
        Top = 41
        Width = 170
        Height = 23
        Cursor = crHandPoint
        Caption = 'Plantillas                  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bbtnPlantillaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777770000000000700000007777770FFFFFFFF0700000007777
          770FFFFFFFF0700000007777770FFFFFFFF07000000088888800000000007000
          00008FFFFF0FCCCCCCC0700000008FFFFF0000000000700000008FFFFFFFF877
          7777700000008888888888888887700000008F88888888FFFF87700000008888
          888888FFFF8770000000777778FFFFFFFF877000000077777888888888877000
          0000777778F88888888770000000777778888888888770000000777777777777
          777770000000}
      end
      object bbtnVerifica: TBitBtn
        Left = 9
        Top = 65
        Width = 170
        Height = 23
        Cursor = crHandPoint
        Caption = 'Consistenciar Datos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bbtnVerificaClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777700000000708877770FFFFFF08FF088770F0000F08F5FF0880FFFFFF07599
          9FF00F0000F079999F080FFFFFF0799508070F0F0000880FF0870FFF07080FF6
          F0870FFF008FF6CCCF0700000780FCC6CF0877777770FCCC6FF0707700080F6F
          F088707770070FF0887777000707808877777777777777777777}
      end
      object btnseparc: TBitBtn
        Left = 10
        Top = 88
        Width = 170
        Height = 23
        Cursor = crHandPoint
        Caption = 'Separar Informaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnseparcClick
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
      end
    end
  end
  object scFile: TStrContainer
    Left = 432
    Top = 159
  end
  object odLeer: TOpenDialog
    InitialDir = '\\APLICACIONES\SOLApli\AutDisk'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 486
    Top = 161
  end
  object tbOrigen: TTable
    DatabaseName = 'AutDisk'
    Left = 336
    Top = 160
  end
  object ds1: TwwDataSource
    DataSet = tbOrigen
    Left = 384
    Top = 159
  end
  object odLeeZip: TOpenDialog
    InitialDir = 'C:\autdisk'
    Left = 544
    Top = 160
  end
  object opdZip: TOpenDialog
    DefaultExt = '*.zip'
    Filter = 'zip|*.zip'
    InitialDir = 'C:\'
    Title = 'Abrir Archivo'
    Left = 599
    Top = 160
  end
end
