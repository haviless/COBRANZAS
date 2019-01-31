object FActBcoEnv: TFActBcoEnv
  Left = 64
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Act. Situaci'#243'n Ctas Bancarias'
  ClientHeight = 389
  ClientWidth = 596
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
  object pnlCabecera: TPanel
    Left = 3
    Top = 2
    Width = 590
    Height = 347
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 7
      Top = 1
      Width = 310
      Height = 60
      Caption = 'Actualizaci'#243'n de Situaci'#243'n de Cuentas Bancarias Enviadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      WordWrap = True
    end
    object Panel1: TPanel
      Left = 5
      Top = 196
      Width = 581
      Height = 146
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object dbgSitCtasBcos: TwwDBGrid
        Left = 4
        Top = 4
        Width = 572
        Height = 138
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clInfoBk
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    object Panel2: TPanel
      Left = 449
      Top = 20
      Width = 138
      Height = 43
      Color = 13165023
      TabOrder = 0
      object TLabel
        Left = 9
        Top = 3
        Width = 68
        Height = 15
        Caption = 'Fecha Env'#237'o :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbdtpFecEnvio: TwwDBDateTimePicker
        Left = 9
        Top = 16
        Width = 118
        Height = 21
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
    object Panel4: TPanel
      Left = 5
      Top = 62
      Width = 582
      Height = 130
      Color = 13165023
      TabOrder = 2
      object lblGenera: TLabel
        Left = 245
        Top = 76
        Width = 49
        Height = 15
        Caption = 'lblGenera'
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 67
        Width = 229
        Height = 57
        Caption = 'Generar '
        TabOrder = 0
        object bbtnTranDBF: TBitBtn
          Left = 8
          Top = 21
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Caption = 'Generar DBF'
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
          Left = 120
          Top = 21
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Caption = 'Generar Texto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
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
      end
      object rgPrestamos: TRadioGroup
        Left = 6
        Top = 5
        Width = 202
        Height = 57
        Caption = 'Pr'#233'stamos  '
        ItemIndex = 0
        Items.Strings = (
          'Pendientes'
          'Todos')
        TabOrder = 1
      end
      object gbPorRuta: TGroupBox
        Left = 213
        Top = 5
        Width = 362
        Height = 44
        Caption = 'Nombre Archivo '
        TabOrder = 2
        object dbeNomArch: TwwDBEdit
          Left = 7
          Top = 15
          Width = 348
          Height = 23
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 391
        Top = 66
        Width = 185
        Height = 57
        Caption = 'Vista Previa'
        TabOrder = 3
        object bbtnVerDbf: TBitBtn
          Left = 24
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
          Left = 94
          Top = 21
          Width = 65
          Height = 25
          Caption = 'TXT'
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
      object pbGenerar: TProgressBar
        Left = 243
        Top = 96
        Width = 143
        Height = 16
        Max = 1000
        TabOrder = 4
        Visible = False
      end
    end
  end
  object sbtnCancelar: TfcShapeBtn
    Left = 540
    Top = 354
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
  object scFile: TStrContainer
    Left = 112
    Top = 352
  end
  object tbOrigen: TTable
    DatabaseName = 'CtasBcos'
    Left = 32
    Top = 352
  end
  object ds1: TwwDataSource
    DataSet = tbOrigen
    Left = 72
    Top = 352
  end
  object SaveDialog1: TSaveDialog
    InitialDir = 'C:\CtasBcos'
    Left = 154
    Top = 352
  end
end
