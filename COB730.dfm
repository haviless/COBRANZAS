object FActBcoRec: TFActBcoRec
  Left = 226
  Top = 187
  Width = 608
  Height = 471
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 1
    Width = 593
    Height = 399
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 7
      Top = 1
      Width = 310
      Height = 60
      Caption = 'Actualizaci'#243'n de Situaci'#243'n de Cuentas Bancarias Recibidas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      WordWrap = True
    end
    object Panel1: TPanel
      Left = 4
      Top = 63
      Width = 585
      Height = 330
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TPanel
        Left = 4
        Top = 6
        Width = 156
        Height = 57
        Color = 13165023
        TabOrder = 0
        object Bevel1: TBevel
          Left = 4
          Top = 16
          Width = 146
          Height = 36
        end
        object TLabel
          Left = 6
          Top = 1
          Width = 62
          Height = 15
          Caption = 'Vista Previa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object bbtnVerDbf: TBitBtn
          Left = 8
          Top = 21
          Width = 65
          Height = 25
          Caption = 'DBF'
          TabOrder = 0
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
          Top = 21
          Width = 65
          Height = 25
          Caption = 'TXT'
          Enabled = False
          TabOrder = 1
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
      end
      object Panel3: TPanel
        Left = 164
        Top = 6
        Width = 418
        Height = 57
        Color = 13165023
        TabOrder = 1
        object gbPorRuta: TGroupBox
          Left = 7
          Top = 5
          Width = 362
          Height = 44
          Caption = 'Archivo Origen '
          TabOrder = 0
          object dbeName: TwwDBEdit
            Left = 7
            Top = 15
            Width = 348
            Height = 23
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
      object dbgSitCtasBcos: TwwDBGrid
        Left = 4
        Top = 154
        Width = 575
        Height = 171
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clInfoBk
        DataSource = DM1.ds1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 2
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object Panel5: TPanel
        Left = 1
        Top = 66
        Width = 581
        Height = 83
        Color = 13165023
        TabOrder = 3
        object GroupBox2: TGroupBox
          Left = 5
          Top = 1
          Width = 92
          Height = 54
          TabOrder = 0
          object btnRenom: TBitBtn
            Left = 5
            Top = 16
            Width = 80
            Height = 25
            Caption = 'Renombra'
            TabOrder = 0
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
        end
        object GroupBox4: TGroupBox
          Left = 332
          Top = 1
          Width = 245
          Height = 78
          Caption = 'Proceso '
          TabOrder = 1
          object Label2: TLabel
            Left = 8
            Top = 23
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
            Left = 197
            Top = 23
            Width = 42
            Height = 15
            Caption = '000000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object pbData: TProgressBar
            Left = 19
            Top = 23
            Width = 171
            Height = 16
            TabOrder = 0
          end
        end
        object GroupBox1: TGroupBox
          Left = 100
          Top = 1
          Width = 229
          Height = 54
          Caption = 'Transferir  '
          TabOrder = 2
          object bbtnTranDBF: TBitBtn
            Left = 7
            Top = 22
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
            TabOrder = 0
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
            Left = 119
            Top = 22
            Width = 100
            Height = 25
            Cursor = crHandPoint
            Caption = 'Transferir Texto'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000C0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000033
              000030FFFFFFF033000030FCCCCCF033000030FFFFFFF033000030FCCCCCF033
              000030FFFFFFF033000030FCCCCCF033000030FFFFFFF033000030FCCCCCF033
              000030FFFFFFF033000030000000003300003333333333330000}
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 451
      Top = 25
      Width = 138
      Height = 38
      BevelOuter = bvNone
      Color = 13165023
      TabOrder = 0
      object TLabel
        Left = 9
        Top = 3
        Width = 92
        Height = 15
        Caption = 'Fecha Recepci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbdtpFecRecep: TwwDBDateTimePicker
        Left = 9
        Top = 16
        Width = 118
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -8
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 0
      end
    end
  end
  object sbtnCancelar: TfcShapeBtn
    Left = 548
    Top = 405
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
  object bbtnObservaciones: TfcShapeBtn
    Left = 504
    Top = 405
    Width = 34
    Height = 31
    Hint = 'Ver Modificaciones'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnObservacionesClick
  end
  object scFile: TStrContainer
    Left = 120
    Top = 408
  end
  object odLeer: TOpenDialog
    InitialDir = '\\APLICACIONES\SOLApli\AutDisk'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 166
    Top = 408
  end
  object tbOrigen: TTable
    DatabaseName = 'AutDisk'
    Left = 24
    Top = 408
  end
  object ds1: TwwDataSource
    DataSet = tbOrigen
    Left = 72
    Top = 408
  end
  object sd1: TSaveDialog
    Options = [ofEnableSizing]
    Left = 208
    Top = 410
  end
end
