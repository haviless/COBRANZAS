object FCtaRecBcoNac: TFCtaRecBcoNac
  Left = 18
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Modulo cuenta recaudadora Banco de la Naci'#243'n'
  ClientHeight = 379
  ClientWidth = 728
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 672
    Top = 8
    Width = 33
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
    Visible = False
  end
  object btnEnvio: TBitBtn
    Left = 357
    Top = 344
    Width = 167
    Height = 29
    Caption = 'Enviar informaci'#243'n al banco'
    TabOrder = 0
    OnClick = btnEnvioClick
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
  object BtnCerrar: TBitBtn
    Left = 530
    Top = 344
    Width = 81
    Height = 29
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = BtnCerrarClick
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
  object btnDesOra: TBitBtn
    Left = 4
    Top = 344
    Width = 183
    Height = 29
    Caption = 'Importar informaci'#243'n del banco'
    TabOrder = 2
    OnClick = btnDesOraClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
  end
  object btnInconsistencias: TBitBtn
    Left = 192
    Top = 344
    Width = 159
    Height = 29
    Caption = 'Validar pagos registrados '
    TabOrder = 5
    OnClick = btnVerCobClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object TabTeletransfer: TPageControl
    Left = 2
    Top = 64
    Width = 712
    Height = 273
    ActivePage = TabSheet4
    MultiLine = True
    TabOrder = 3
    OnChange = TabTeletransferChange
    object TabSheet1: TTabSheet
      Caption = 'Cabecera'
      object dbgCabecera: TwwDBGrid
        Left = 3
        Top = 16
        Width = 692
        Height = 192
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnCellChanged = dbgCabeceraCellChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsCuentas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object btnimpboldep: TBitBtn
        Left = 3
        Top = 215
        Width = 138
        Height = 29
        Caption = 'Boletas de Depositos'
        TabOrder = 1
        OnClick = btnimpboldepClick
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
      object btnimpresdia: TBitBtn
        Left = 145
        Top = 215
        Width = 118
        Height = 29
        Caption = 'Resumen Diario'
        TabOrder = 2
        OnClick = btnimpresdiaClick
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
      object btnelides: TBitBtn
        Left = 268
        Top = 215
        Width = 83
        Height = 29
        Caption = 'Elimina'
        TabOrder = 3
        OnClick = btnelidesClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalle'
      ImageIndex = 1
      object dbgdetalle: TwwDBGrid
        Left = 3
        Top = 8
        Width = 690
        Height = 190
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsDFam
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object btnrepfecpag: TBitBtn
        Left = 160
        Top = 204
        Width = 153
        Height = 29
        Caption = 'Detalle por fecha de pago'
        TabOrder = 1
        OnClick = btnrepfecpagClick
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
      object btnmarapo: TBitBtn
        Left = 3
        Top = 204
        Width = 152
        Height = 29
        Caption = 'Marcar Pago'
        TabOrder = 2
        OnClick = btnmarapoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object btnrepcuodes: TBitBtn
        Left = 320
        Top = 204
        Width = 131
        Height = 29
        Caption = 'Cuotas descargadas'
        TabOrder = 3
        OnClick = btnrepcuodesClick
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
      object btnmigconinc: TBitBtn
        Left = 457
        Top = 204
        Width = 168
        Height = 29
        Caption = 'Migraci'#243'n con inconsistencia'
        TabOrder = 4
        OnClick = btnmigconincClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
          000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
          99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
          0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
          FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
          0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
          000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
          00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
          00FF33337FFF7FF77733333300000000033F3333777777777333}
        NumGlyphs = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'No Registrados'
      ImageIndex = 3
      object fcLabel1: TfcLabel
        Left = 114
        Top = 208
        Width = 1
        Height = 0
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
      end
      object dbgnoregistrados: TwwDBGrid
        Left = 3
        Top = 8
        Width = 690
        Height = 190
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsDLabo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object btnpagnoreg: TBitBtn
        Left = 2
        Top = 204
        Width = 130
        Height = 29
        Caption = 'Pagos no registrados'
        TabOrder = 1
        OnClick = btnpagnoregClick
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
      object btndesaut: TBitBtn
        Left = 137
        Top = 204
        Width = 138
        Height = 29
        Caption = 'Descargo automatico'
        TabOrder = 2
        OnClick = btndesautClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pagos con inconsistencias'
      ImageIndex = 4
      object dbginconsistencias: TwwDBGrid
        Left = 3
        Top = 8
        Width = 692
        Height = 190
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsTRela
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
    end
  end
  object pnlapenom: TPanel
    Left = 2
    Top = 4
    Width = 388
    Height = 53
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 6
    Visible = False
    object Label3: TLabel
      Left = 5
      Top = 3
      Width = 115
      Height = 15
      Caption = 'Apellidos y Nombre(s):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object pnlasoapenomdni: TPanel
      Left = 4
      Top = 22
      Width = 376
      Height = 23
      Caption = 'pnlasoapenomdni'
      TabOrder = 0
      object edtBuscarDet: TEdit
        Left = 1
        Top = 1
        Width = 373
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtBuscarDetChange
        OnKeyPress = edtBuscarDetKeyPress
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsDFam
    UserName = 'DBPipeline1'
    Left = 533
    Top = 7
  end
  object ppRepDescargo: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 536
    Top = 7
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DEPOSITOS EFECTUADOS EN CUENTA RECAUDADORA BANCO DE LA NACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 6085
        mmTop = 0
        mmWidth = 135425
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 148432
        mmTop = 0
        mmWidth = 10816
        BandType = 0
      end
      object pplblHora: TppLabel
        UserName = 'lblHora'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 4233
        mmWidth = 8731
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7145
        mmLeft = 3175
        mmTop = 12171
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 12700
        mmWidth = 3175
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7145
        mmLeft = 9525
        mmTop = 12171
        mmWidth = 18255
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'N'#250'mero de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 12700
        mmWidth = 14552
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 7145
        mmLeft = 27517
        mmTop = 12171
        mmWidth = 58738
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 28046
        mmTop = 12700
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 28046
        mmTop = 15610
        mmWidth = 17463
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 7145
        mmLeft = 85990
        mmTop = 12171
        mmWidth = 17991
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 12700
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 15610
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 15610
        mmWidth = 14288
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 7145
        mmLeft = 103717
        mmTop = 12171
        mmWidth = 17991
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'N'#250'mero de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 12700
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 15610
        mmWidth = 12965
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 7145
        mmLeft = 121444
        mmTop = 12171
        mmWidth = 29634
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Nombre de la agencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 12700
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'del banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 15610
        mmWidth = 12171
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 4233
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'FECHA DEL ARCHIVO 18/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 45508
        mmTop = 4233
        mmWidth = 55541
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 7144
        mmLeft = 150813
        mmTop = 12171
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Estado de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 151342
        mmTop = 12700
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 151342
        mmTop = 15610
        mmWidth = 7938
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMDOCCOB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'APENOMCLI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 28046
        mmTop = 0
        mmWidth = 57679
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONPAG'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 0
        mmWidth = 16934
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'IDEPER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DESOFI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'NUMERO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'DESTIP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 151342
        mmTop = 0
        mmWidth = 33867
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3175
        mmTop = 4498
        mmWidth = 187590
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3175
        mmTop = 0
        mmWidth = 187590
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONPAG'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 794
        mmWidth = 16934
        BandType = 7
      end
      object pplImpreso: TppLabel
        UserName = 'Label12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 5821
        mmWidth = 57415
        BandType = 7
      end
    end
  end
  object cdsFantasmas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOAPENOM'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CREDOCPAG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FECPAG'
        DataType = ftTime
      end
      item
        Name = 'MONTO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 483
    Top = 7
    Data = {
      A10000009619E0BD010000001800000005000000000003000000A1000541534F
      49440100490000000100055749445448020002000A000941534F4150454E4F4D
      010049000000010005574944544802000200280009435245444F435041470100
      490000000100055749445448020002000A000646454350414704000700000000
      00054D4F4E544F080004000000010007535542545950450200490006004D6F6E
      6579000000}
  end
  object dsFantasmas: TDataSource
    DataSet = cdsFantasmas
    Left = 499
    Top = 7
  end
  object bdeNoReg: TppBDEPipeline
    DataSource = DM1.dsDLabo
    UserName = 'bdeNoReg'
    Left = 569
    Top = 8
  end
  object pprNoReg: TppReport
    AutoStop = False
    DataPipeline = bdeNoReg
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 585
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdeNoReg'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand4BeforePrint
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'PAGOS EFECTUADOS EN LA CUENTA RECAUDADORA NO DETECTADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 13050
        mmTop = 0
        mmWidth = 124545
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'lblFecha1'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 148432
        mmTop = 0
        mmWidth = 10816
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'lblHora1'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 4233
        mmWidth = 8731
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 6614
        mmLeft = 3175
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4234
        mmTop = 13758
        mmWidth = 3175
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 6614
        mmLeft = 13229
        mmTop = 12700
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'DOCUMENTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 23241
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 6614
        mmLeft = 35983
        mmTop = 12700
        mmWidth = 59796
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 12700
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37041
        mmTop = 15610
        mmWidth = 21167
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 6615
        mmLeft = 95515
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 12700
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'PAGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96045
        mmTop = 15610
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 14288
        mmTop = 15610
        mmWidth = 8213
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 6615
        mmLeft = 113242
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 12700
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label102'
        Caption = 'OPERACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 15610
        mmWidth = 16933
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 6615
        mmLeft = 130969
        mmTop = 12700
        mmWidth = 51329
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'NOMBRE DE LA AGENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 12700
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132822
        mmTop = 15610
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 4233
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 39878
        mmTop = 4498
        mmWidth = 68284
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'NUMERO'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3260
        mmLeft = 4234
        mmTop = 0
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'NUMDOCCOB'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'APENOMCLI'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 0
        mmWidth = 57415
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'MONPAG'
        DataPipeline = bdeNoReg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 96045
        mmTop = 0
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'IDEPER'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'DESOFI'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 0
        mmWidth = 47890
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3175
        mmTop = 5292
        mmWidth = 179652
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3175
        mmTop = 529
        mmWidth = 179652
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONPAG'
        DataPipeline = bdeNoReg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3239
        mmLeft = 96045
        mmTop = 1588
        mmWidth = 15611
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Label29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 6085
        mmWidth = 57415
        BandType = 7
      end
    end
  end
  object ppbdepcuodes: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdepcuodes'
    Left = 446
    Top = 13
  end
  object pprcuodes: TppReport
    AutoStop = False
    DataPipeline = ppbdepcuodes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 440
    Top = 5
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepcuodes'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 8202
        mmLeft = 81227
        mmTop = 15610
        mmWidth = 79640
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 8202
        mmLeft = 160602
        mmTop = 15610
        mmWidth = 75671
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Cuotas Pagadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 184944
        mmTop = 16140
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Num.Cre.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 20108
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94721
        mmTop = 20108
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Amortiza.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161132
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Gastos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 191294
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'M.Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 160602
        mmTop = 19579
        mmWidth = 75406
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 94192
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 190765
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 205846
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 8202
        mmLeft = 236009
        mmTop = 15610
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Estado de la cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 236538
        mmTop = 17992
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Cronograma de Pago Pactado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 98425
        mmTop = 16140
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label501'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 113771
        mmTop = 20108
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Amorti.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 102923
        mmTop = 20108
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Gastos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 124619
        mmTop = 20108
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Mto.Cu.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 135467
        mmTop = 20108
        mmWidth = 9906
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 81227
        mmTop = 19579
        mmWidth = 79640
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape31'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape32: TppShape
        UserName = 'Shape201'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 124090
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Fec. Ven.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 146315
        mmTop = 20108
        mmWidth = 14023
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 8202
        mmLeft = 260615
        mmTop = 15610
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Observaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 261144
        mmTop = 17992
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'DESCARGO DE CUOTAS POR CUENTA RECAUDADORA BANCO DE LA NACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 68182
        mmTop = 5821
        mmWidth = 121624
        BandType = 0
      end
      object pplTitulo02: TppLabel
        UserName = 'lTitulo02'
        Caption = 'DEL 99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 117364
        mmTop = 10054
        mmWidth = 23241
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 1058
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 3969
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 247650
        mmTop = 1058
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 247650
        mmTop = 3969
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 247650
        mmTop = 6879
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 260351
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 260351
        mmTop = 3969
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 260351
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Exceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 206375
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppShape45: TppShape
        UserName = 'Shape45'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 220928
        mmTop = 19579
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'CU_CRECUOTA'
        DataPipeline = ppbdepcuodes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 94721
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'CU_CREAMORT'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 161132
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'CU_CREINTERES'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'CU_CREFLAT'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 191294
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'CU_CREDID'
        DataPipeline = ppbdepcuodes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'CU_CREMTOCOB'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText303'
        DataField = 'PAC_CREAMORT'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 102923
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'PAC_CREINTERES'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 113771
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'PAC_CREFLAT'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 124619
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'PAC_CREMTO'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'PAC_CREFVEN'
        DataPipeline = ppbdepcuodes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 146315
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'PA_CREESTADO'
        DataPipeline = ppbdepcuodes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 236538
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CU_CREMTOEXC'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 206375
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object pplObservacion: TppLabel
        OnPrint = pplObservacionPrint
        UserName = 'lObservacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 261144
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'CU_CREFLAT'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 191294
        mmTop = 529
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'CU_CREMTOCOB'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 529
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'CU_CREINTERES'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 529
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'CU_CREAMORT'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3175
        mmLeft = 161132
        mmTop = 529
        mmWidth = 14288
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Style = psInsideFrame
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 160867
        mmTop = 4233
        mmWidth = 74877
        BandType = 7
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Total Descargo en el dia :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 120915
        mmTop = 529
        mmWidth = 38629
        BandType = 7
      end
      object pplImpresopor: TppLabel
        UserName = 'lImpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 4498
        mmWidth = 57944
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'CU_CREMTOEXC'
        DataPipeline = ppbdepcuodes
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepcuodes'
        mmHeight = 3440
        mmLeft = 206375
        mmTop = 529
        mmWidth = 14288
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText24'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText24: TppDBText
          UserName = 'DBText24'
          DataField = 'NUMDOCCOB'
          DataPipeline = ppbdepcuodes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 6879
          mmTop = 265
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          DataField = 'ASOCODMOD'
          DataPipeline = ppbdepcuodes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 20638
          mmTop = 265
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = ppbdepcuodes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 36513
          mmTop = 265
          mmWidth = 52388
          BandType = 3
          GroupNo = 0
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          DataField = 'MONPAG'
          DataPipeline = ppbdepcuodes
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 90488
          mmTop = 265
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CU_CREAMORT'
          DataPipeline = ppbdepcuodes
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 161132
          mmTop = 1058
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CU_CREINTERES'
          DataPipeline = ppbdepcuodes
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 176213
          mmTop = 1058
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CU_CREFLAT'
          DataPipeline = ppbdepcuodes
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 191294
          mmTop = 1058
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'CU_CREMTOCOB'
          DataPipeline = ppbdepcuodes
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold, fsItalic]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3175
          mmLeft = 221457
          mmTop = 1058
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psInsideFrame
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 161132
          mmTop = 265
          mmWidth = 74877
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psInsideFrame
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 161132
          mmTop = 4763
          mmWidth = 74877
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          DataField = 'CU_CREMTOEXC'
          DataPipeline = ppbdepcuodes
          DisplayFormat = '#,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepcuodes'
          mmHeight = 3440
          mmLeft = 206375
          mmTop = 1058
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppbdeprepfecreg: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdeprepfecreg'
    Left = 405
    Top = 65535
  end
  object pprrepfecreg: TppReport
    AutoStop = False
    DataPipeline = ppbdeprepfecreg
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 122
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 400
    Top = 7
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdeprepfecreg'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppShape44: TppShape
        UserName = 'Shape44'
        mmHeight = 7144
        mmLeft = 179917
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape43: TppShape
        UserName = 'Shape43'
        mmHeight = 7144
        mmLeft = 165629
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape42: TppShape
        UserName = 'Shape42'
        mmHeight = 7144
        mmLeft = 151342
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape401'
        mmHeight = 7144
        mmLeft = 137054
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 7144
        mmLeft = 122767
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 7144
        mmLeft = 109802
        mmTop = 11642
        mmWidth = 13228
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 7144
        mmLeft = 96838
        mmTop = 11642
        mmWidth = 13228
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 7144
        mmLeft = 37306
        mmTop = 11642
        mmWidth = 59797
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 7144
        mmLeft = 17727
        mmTop = 11642
        mmWidth = 19845
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        mmHeight = 7144
        mmLeft = 1058
        mmTop = 11642
        mmWidth = 16934
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 12171
        mmWidth = 11811
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 15081
        mmWidth = 6614
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 12171
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 15081
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Apellidos y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37835
        mmTop = 12171
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37835
        mmTop = 15081
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'N'#250'm.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97631
        mmTop = 12171
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label601'
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97631
        mmTop = 15081
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'Amort.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123296
        mmTop = 12171
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 12171
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 151871
        mmTop = 12171
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'Excesos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 166159
        mmTop = 12171
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 12171
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Num.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 12171
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'Ope.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 15081
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = 'Pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 15081
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'PAGOS EFECTUADOS EN LA CUENTA RECAUDADORA NO DETECTADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 0
        mmWidth = 124619
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 165629
        mmTop = 265
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 165629
        mmTop = 4233
        mmWidth = 7938
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 265
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 4233
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = ' EN EL SISTEMA DE FECHA  : 18/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 4498
        mmWidth = 68263
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdeprepfecreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdeprepfecreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 0
        mmWidth = 58738
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREDID'
        DataPipeline = ppbdeprepfecreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FREG'
        DataPipeline = ppbdeprepfecreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CREINTERES'
        DataPipeline = ppbdeprepfecreg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 137319
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CREAMORT'
        DataPipeline = ppbdeprepfecreg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CREFLAT'
        DataPipeline = ppbdeprepfecreg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 151607
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CREMTOCOB'
        DataPipeline = ppbdeprepfecreg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CREMTOEXC'
        DataPipeline = ppbdeprepfecreg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 165894
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CREDOCPAG'
        DataPipeline = ppbdeprepfecreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdeprepfecreg'
        mmHeight = 3175
        mmLeft = 110067
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
