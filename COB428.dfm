object FCtaRecBcoCre: TFCtaRecBcoCre
  Left = 264
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cta. Bco. Cr'#233'dito'
  ClientHeight = 383
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
    Left = 688
    Top = 4
    Width = 33
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
    Visible = False
  end
  object Memo1: TMemo
    Left = 640
    Top = 4
    Width = 41
    Height = 17
    Lines.Strings = (
      'Me'
      'mo'
      '1')
    TabOrder = 2
    Visible = False
  end
  object btnEnvinfban: TBitBtn
    Left = 6
    Top = 349
    Width = 162
    Height = 29
    Caption = 'Enviar informaci'#243'n al banco'
    TabOrder = 0
    OnClick = btnEnvinfbanClick
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
    Left = 647
    Top = 349
    Width = 78
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
    Left = 172
    Top = 349
    Width = 179
    Height = 29
    Caption = 'Descargar cuenta recaudadora'
    TabOrder = 3
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
    Left = 356
    Top = 349
    Width = 150
    Height = 29
    Caption = 'Validar pagos registrados '
    TabOrder = 6
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
    Left = 7
    Top = 73
    Width = 712
    Height = 265
    ActivePage = TabSheet3
    MultiLine = True
    TabOrder = 4
    OnChange = TabTeletransferChange
    object TabSheet1: TTabSheet
      Caption = 'Cabecera'
      object dbgCabecera: TwwDBGrid
        Left = 3
        Top = 8
        Width = 692
        Height = 190
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
      object btnrepboldep: TBitBtn
        Left = 3
        Top = 204
        Width = 138
        Height = 29
        Caption = 'Boletas de Depositos'
        TabOrder = 1
        OnClick = btnrepboldepClick
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
      object btnrepdia: TBitBtn
        Left = 142
        Top = 204
        Width = 118
        Height = 29
        Caption = 'Resumen Diario'
        TabOrder = 2
        OnClick = btnrepdiaClick
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
      object btnelifecpro: TBitBtn
        Left = 564
        Top = 204
        Width = 83
        Height = 29
        Caption = 'Elimina'
        TabOrder = 3
        OnClick = btnelifecproClick
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
      object btnsalmin: TBitBtn
        Left = 261
        Top = 204
        Width = 118
        Height = 29
        Caption = 'Saldos m'#237'nimos'
        TabOrder = 4
        OnClick = btnsalminClick
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
      object btncuocanade: TBitBtn
        Left = 380
        Top = 204
        Width = 182
        Height = 29
        Caption = 'Cuotas canceladas adelantadas'
        TabOrder = 5
        OnClick = btncuocanadeClick
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
        OnDblClick = dbgdetalleDblClick
      end
      object btnrepfecpag: TBitBtn
        Left = 121
        Top = 204
        Width = 164
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
      object btnmarpag: TBitBtn
        Left = 3
        Top = 204
        Width = 110
        Height = 29
        Caption = 'Marcar Pago'
        TabOrder = 2
        OnClick = btnmarpagClick
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
      object btnrepdescargo: TBitBtn
        Left = 292
        Top = 204
        Width = 133
        Height = 29
        Caption = 'Cuotas descargadas'
        TabOrder = 3
        OnClick = btnrepdescargoClick
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
      object bbtnDetGralDescargo: TBitBtn
        Left = 433
        Top = 204
        Width = 127
        Height = 29
        Caption = 'Det.Genrl. Descargo '
        TabOrder = 4
        OnClick = bbtnDetGralDescargoClick
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
      object btnreppagnoreg: TBitBtn
        Left = 2
        Top = 204
        Width = 130
        Height = 29
        Caption = 'Pagos no registrados'
        TabOrder = 1
        OnClick = btnreppagnoregClick
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
      object btnvalaut: TBitBtn
        Left = 280
        Top = 204
        Width = 138
        Height = 29
        Caption = 'Validaci'#243'n automatica'
        TabOrder = 3
        OnClick = btnvalautClick
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
        DataSource = DM1.dsResol
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
    object TabSheet3: TTabSheet
      Caption = 'Cronogramas Cerrados'
      ImageIndex = 4
      object dbgCronogramaCerrados: TwwDBGrid
        Left = 3
        Top = 8
        Width = 692
        Height = 190
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsAsoBanAct
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnCalcCellColors = dbgCronogramaCerradosCalcCellColors
        OnDblClick = dbgCronogramaCerradosDblClick
      end
      object bbtnEnvDev: TBitBtn
        Left = 466
        Top = 204
        Width = 142
        Height = 25
        Caption = 'Env'#237'a a Devoluci'#243'n'
        TabOrder = 1
        OnClick = bbtnEnvDevClick
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
      object btnAExcel: TBitBtn
        Left = 616
        Top = 204
        Width = 80
        Height = 25
        Caption = 'A Excel'
        TabOrder = 2
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
    end
  end
  object pnlapenom: TPanel
    Left = 7
    Top = 6
    Width = 388
    Height = 53
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 7
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
      Left = 5
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
  object rgord: TRadioGroup
    Left = 400
    Top = 0
    Width = 137
    Height = 64
    Caption = ' Ordenado por '
    Items.Strings = (
      'Monto'
      'Estado del Pago'
      'Apellidos y Nombres')
    TabOrder = 8
    OnClick = rgordClick
  end
  object btnAsoBanco: TBitBtn
    Left = 511
    Top = 349
    Width = 128
    Height = 29
    Hint = 'Registrar Docentes que NO pagan por Planilla'
    Caption = 'NO Pagan x Planilla'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btnAsoBancoClick
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
  object dtgData: TDBGrid
    Left = 952
    Top = 256
    Width = 89
    Height = 33
    DataSource = DM1.dsAsoBanAct
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsDFam
    UserName = 'DBPipeline1'
    Left = 685
    Top = 31
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
    Left = 693
    Top = 39
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
        Caption = 'DEPOSITOS EFECTUADOS EN CUENTA RECAUDADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 32808
        mmTop = 0
        mmWidth = 93134
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
        mmHeight = 6614
        mmLeft = 3175
        mmTop = 12700
        mmWidth = 10319
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
        mmTop = 13758
        mmWidth = 3175
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6614
        mmLeft = 13229
        mmTop = 12700
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 11377
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 6614
        mmLeft = 35983
        mmTop = 12700
        mmWidth = 59796
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
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
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 15610
        mmWidth = 21167
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 6615
        mmLeft = 95515
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
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
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'PAGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 15610
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 15610
        mmWidth = 14023
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 6615
        mmLeft = 113242
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
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
      object ppLabel10: TppLabel
        UserName = 'Label10'
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
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6615
        mmLeft = 130969
        mmTop = 12700
        mmWidth = 51329
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
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
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 15610
        mmWidth = 16404
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
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 4233
        mmWidth = 55563
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 265
        mmWidth = 57679
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONTOT'
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
        mmLeft = 96045
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NUMOPE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'AGENBCODES'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 265
        mmWidth = 47890
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
        mmLeft = 4233
        mmTop = 529
        mmWidth = 8731
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 3175
        mmTop = 5292
        mmWidth = 179652
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3175
        mmTop = 529
        mmWidth = 179652
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONTOT'
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
        mmHeight = 3239
        mmLeft = 96045
        mmTop = 1323
        mmWidth = 17198
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
        mmLeft = 125677
        mmTop = 6615
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
    Left = 587
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
    Left = 595
    Top = 15
  end
  object bdeNoReg: TppBDEPipeline
    DataSource = DM1.dsDLabo
    UserName = 'bdeNoReg'
    Left = 729
    Top = 8
  end
  object pprNoReg: TppReport
    AutoStop = False
    DataPipeline = bdeNoReg
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 737
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
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 11377
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
        Caption = 'MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 15610
        mmWidth = 14023
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
        Caption = ' EN EL SISTEMA DE FECHA  : 18/12/2004'
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
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CUENTA'
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
        mmTop = 264
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'ASOCODMOD'
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
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'ASOAPENOMDNI'
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
        mmTop = 265
        mmWidth = 57415
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'MONTOT'
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
        mmTop = 265
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'NUMOPE'
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
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'AGENBCODES'
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
        mmTop = 264
        mmWidth = 47890
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3175
        mmTop = 7144
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
        DataField = 'MONTOT'
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
        mmLeft = 125677
        mmTop = 9260
        mmWidth = 57415
        BandType = 7
      end
    end
  end
  object ppbdepcuodes: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdepcuodes'
    Left = 641
    Top = 23
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
    TextSearchSettings.Enabled = True
    Left = 649
    Top = 31
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
        Caption = 'DESCARGO DE CUOTAS POR CUENTA RECAUDADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 86254
        mmTop = 5821
        mmWidth = 85471
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
          DataField = 'NUMOPE'
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
          mmWidth = 11642
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
          mmLeft = 19844
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
          mmLeft = 35719
          mmTop = 265
          mmWidth = 52388
          BandType = 3
          GroupNo = 0
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          DataField = 'MONTOT'
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
          mmLeft = 88900
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
    Left = 544
    Top = 65535
  end
  object pprrepfecreg: TppReport
    AutoStop = False
    DataPipeline = ppbdeprepfecreg
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 552
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
        mmLeft = 181240
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape43: TppShape
        UserName = 'Shape43'
        mmHeight = 7144
        mmLeft = 166952
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape42: TppShape
        UserName = 'Shape42'
        mmHeight = 7144
        mmLeft = 152665
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape401'
        mmHeight = 7144
        mmLeft = 138377
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 7144
        mmLeft = 124090
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 7144
        mmLeft = 111125
        mmTop = 11642
        mmWidth = 13228
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 7144
        mmLeft = 98161
        mmTop = 11642
        mmWidth = 13228
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 7144
        mmLeft = 38629
        mmTop = 11642
        mmWidth = 59797
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 7144
        mmLeft = 19050
        mmTop = 11642
        mmWidth = 19845
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        mmHeight = 7144
        mmLeft = 2381
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
        mmLeft = 2910
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
        mmLeft = 2910
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
        mmLeft = 19579
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
        mmLeft = 19579
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
        mmLeft = 39158
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
        mmLeft = 39158
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
        mmLeft = 98954
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
        mmLeft = 98954
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
        mmLeft = 124619
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
        mmLeft = 138907
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
        mmLeft = 153194
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
        mmLeft = 167482
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
        mmLeft = 181769
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
        mmLeft = 111654
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
        mmLeft = 111654
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
        mmLeft = 181769
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
        mmHeight = 4191
        mmLeft = 12965
        mmTop = 0
        mmWidth = 124545
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
        mmHeight = 3260
        mmLeft = 148432
        mmTop = 0
        mmWidth = 8678
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
        mmHeight = 3260
        mmLeft = 148432
        mmTop = 4233
        mmWidth = 6900
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
        mmHeight = 3260
        mmLeft = 160338
        mmTop = 0
        mmWidth = 14139
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
        mmHeight = 3260
        mmLeft = 160338
        mmTop = 4233
        mmWidth = 17399
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
        mmHeight = 4191
        mmLeft = 39952
        mmTop = 4498
        mmWidth = 68284
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
        mmLeft = 19579
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
        mmLeft = 39158
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
        mmLeft = 98690
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
        mmLeft = 2910
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
        mmLeft = 138907
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
        mmLeft = 124619
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
        mmLeft = 153194
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
        mmLeft = 181769
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
        mmLeft = 167482
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
        mmLeft = 111654
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
    end
  end
  object bdeDetGnrDescargo: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdeDetGnrDescargo'
    Left = 784
    Top = 8
  end
  object pprDetGnrDescargo: TppReport
    AutoStop = False
    DataPipeline = bdeDetGnrDescargo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 134
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\SRC_201007_COB\RepDesrgCtaReca.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 784
    Top = 24
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdeDetGnrDescargo'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 8467
        mmLeft = 265
        mmTop = 27781
        mmWidth = 172773
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label301'
        Caption = 'Cod.Mod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 3101
        mmTop = 30427
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 21167
        mmTop = 30427
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Num.Ope'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 74083
        mmTop = 30427
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Fec.Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 91281
        mmTop = 30427
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'Agencia Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 108744
        mmTop = 30427
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Monto Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 135467
        mmTop = 30427
        mmWidth = 16140
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 20108
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 72761
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 89694
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 106627
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 133879
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Detalle General de Descargo por Cuenta Recaudadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 41540
        mmTop = 9790
        mmWidth = 109273
        BandType = 0
      end
      object ppLDel: TppLabel
        UserName = 'Label302'
        Caption = 'Del DD/MM/YYYY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 73554
        mmTop = 15610
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 1058
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 5027
        mmWidth = 25739
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 165100
        mmTop = 1323
        mmWidth = 9483
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 5292
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 164307
        mmTop = 9260
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 1058
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 5292
        mmWidth = 17992
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label502'
        Caption = 'Monto Aplic.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 154517
        mmTop = 30427
        mmWidth = 17526
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 152665
        mmTop = 28046
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'tipo'
        DataPipeline = bdeDetGnrDescargo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeDetGnrDescargo'
        mmHeight = 3175
        mmLeft = 100542
        mmTop = 794
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'cu_cremtocob'
        DataPipeline = bdeDetGnrDescargo
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeDetGnrDescargo'
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 529
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'pa_creestado'
        DataPipeline = bdeDetGnrDescargo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeDetGnrDescargo'
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 529
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'cu_credid'
        DataPipeline = bdeDetGnrDescargo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeDetGnrDescargo'
        mmHeight = 3175
        mmLeft = 109009
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        BlankWhenZero = True
        DataField = 'cu_crecuota'
        DataPipeline = bdeDetGnrDescargo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeDetGnrDescargo'
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 794
        mmWidth = 5292
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLImpresopor2: TppLabel
        UserName = 'lImpresopor1'
        Caption = 'lImpresopor1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 265
        mmTop = 529
        mmWidth = 26988
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'cu_cremtocob'
        DataPipeline = bdeDetGnrDescargo
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeDetGnrDescargo'
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 153988
        mmTop = 794
        mmWidth = 20108
        BandType = 7
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        Caption = 'Total Descargado en el d'#237'a :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 94986
        mmTop = 1058
        mmWidth = 37677
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 153988
        mmTop = 4763
        mmWidth = 20108
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText35'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'ppDBText50'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText50: TppDBText
          UserName = 'DBText50'
          DataField = 'NUMOPE'
          DataPipeline = bdeDetGnrDescargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 73290
          mmTop = 265
          mmWidth = 12700
          BandType = 3
          GroupNo = 1
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'ASOCODMOD'
          DataPipeline = bdeDetGnrDescargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 0
          mmTop = 265
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = bdeDetGnrDescargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 20373
          mmTop = 265
          mmWidth = 49477
          BandType = 3
          GroupNo = 1
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          DataField = 'FECPAG'
          DataPipeline = bdeDetGnrDescargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 89165
          mmTop = 265
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'agenbcodes'
          DataPipeline = bdeDetGnrDescargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 107156
          mmTop = 265
          mmWidth = 25665
          BandType = 3
          GroupNo = 1
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'montot'
          DataPipeline = bdeDetGnrDescargo
          DisplayFormat = '###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 134673
          mmTop = 265
          mmWidth = 15081
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'cu_cremtocob'
          DataPipeline = bdeDetGnrDescargo
          DisplayFormat = '###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'bdeDetGnrDescargo'
          mmHeight = 3440
          mmLeft = 155311
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 153988
          mmTop = 0
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 153988
          mmTop = 4233
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ppDBText37'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppRepDevol: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 134
    Template.FileName = 'C:\SOLEXES\SOLFORMATOS\Cob\Dema\RepFrmDev.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 29
    Top = 259
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 62971
      mmPrintPosition = 0
      object lblRotPag: TppLabel
        UserName = 'lblRotPag'
        Caption = 'Paguese En Caja  : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4487
        mmLeft = 99219
        mmTop = 51329
        mmWidth = 34713
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label1'
        ReprintOnOverFlow = True
        Caption = 'Derrama Magisterial         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 15346
        mmTop = 529
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label2'
        Caption = 'Equipo De Cobranzas     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 6350
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label3'
        Caption = 'Jr. Gregorio Escobedo 598  Jesus Maria -  Telf. 463-5262 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 11642
        mmWidth = 77258
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 529
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label5'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 5027
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 529
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 529
        mmWidth = 18256
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 5027
        mmWidth = 21696
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'DEVOLUCION APLICADA A OTRAS CUOTAS N 000741-2008-DM-COB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 22225
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label8'
        Caption = 'FECHA DOCUMENTO      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 41275
        mmWidth = 46270
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label9'
        Caption = 'DEPARTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 46302
        mmWidth = 32343
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label10'
        Caption = 'SE'#209'OR(A)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 31221
        mmWidth = 19008
        BandType = 0
      end
      object xxx: TppLabel
        UserName = 'xxx'
        Caption = 'CODIGO MODULAR     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 36248
        mmWidth = 41783
        BandType = 0
      end
      object ppp: TppLabel
        UserName = 'p'
        Caption = 'COD. PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 41275
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label13'
        Caption = 'U. PROCESO         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 46302
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 31221
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label15'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 36248
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label16'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 41275
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 46302
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 41275
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label19'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 46302
        mmWidth = 1323
        BandType = 0
      end
      object ppLblNomGen: TppLabel
        UserName = 'Label101'
        Caption = 'HERNANDEZ PANTA ROBERTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 50006
        mmTop = 31221
        mmWidth = 58473
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        Caption = '1002761583'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49742
        mmTop = 36248
        mmWidth = 21696
        BandType = 0
      end
      object ppLblFecDoc: TppLabel
        UserName = 'LblFecDoc'
        Caption = '12/07/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49477
        mmTop = 41275
        mmWidth = 19579
        BandType = 0
      end
      object ppLblDpto: TppLabel
        UserName = 'LblDpto'
        Caption = 'PIURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 50006
        mmTop = 46302
        mmWidth = 11906
        BandType = 0
      end
      object ppLblCodPag: TppLabel
        UserName = 'LblCodPag'
        Caption = 'AAS32758'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 140759
        mmTop = 41275
        mmWidth = 18521
        BandType = 0
      end
      object ppLblUproc: TppLabel
        UserName = 'LblUproc'
        Caption = 'D.R.E. PIURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 140759
        mmTop = 46302
        mmWidth = 24342
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 56356
        mmWidth = 192882
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 62706
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label26'
        Caption = 'DESEMBOLSO        '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1852
        mmTop = 57415
        mmWidth = 35941
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label27'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 57415
        mmWidth = 1323
        BandType = 0
      end
      object ppLblDesem: TppLabel
        UserName = 'LblDesem'
        Caption = 'DEVOLUCION APLICADA A OTRAS CUOTAS - Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 48683
        mmTop = 57415
        mmWidth = 122502
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'p1'
        Caption = 'D.N.I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 36248
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label20'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 36248
        mmWidth = 1323
        BandType = 0
      end
      object PPLblDni: TppLabel
        UserName = 'LblCodPag1'
        Caption = '02761583'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 141023
        mmTop = 36248
        mmWidth = 17198
        BandType = 0
      end
      object lblPagEn: TppLabel
        UserName = 'lblPagEn'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4487
        mmLeft = 135996
        mmTop = 51329
        mmWidth = 51594
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 61913
      mmPrintPosition = 0
      object ppMeses: TppMemo
        UserName = 'Meses'
        Caption = 
          'CONCEPTO  : APLICACION DE DEVOLUCION'#13#10#13#10'POR LAS CUOTAS DEL CREDI' +
          'TO N 122007240000965 (En Nuevos Soles)'#13#10'------------------------' +
          '---------------------------------------------'#13#10#13#10'F.Pag:22/09/200' +
          '8 Cuo.:06:  70.87'#13#10#13#10#13#10'Nota :cuota aplicada por exceso.'#13#10
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'CONCEPTO  : APLICACION DE DEVOLUCION'
          ''
          'POR LAS CUOTAS DEL CREDITO N 122007240000965 (En Nuevos Soles)'
          
            '----------------------------------------------------------------' +
            '-----'
          ''
          'F.Pag:22/09/2008 Cuo.:06:  70.87'
          ''
          ''
          'Nota :cuota aplicada por exceso.')
        Transparent = True
        mmHeight = 61913
        mmLeft = 2381
        mmTop = 0
        mmWidth = 187061
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand5: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 118269
      mmPrintPosition = 0
      object ppLTotal: TppLabel
        UserName = 'Label11'
        Caption = 'TOTAL DEVOLUCIONES APLICADAS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 77174
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 191030
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 8467
        mmWidth = 191030
        BandType = 7
      end
      object ppLblMonDev: TppLabel
        UserName = 'LblMonDev'
        Caption = '9,170.87'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 163777
        mmTop = 2117
        mmWidth = 21167
        BandType = 7
      end
      object ppLblUsuario: TppLabel
        UserName = 'LblUsuario'
        AutoSize = False
        Caption = 'Hecho Por :JBOCANEGRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 75406
        mmWidth = 52123
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 24606
        mmTop = 74613
        mmWidth = 60854
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 59267
        mmTop = 95779
        mmWidth = 74613
        BandType = 7
      end
      object ppLabel108: TppLabel
        UserName = 'Label201'
        Caption = 'V'#176'.B'#176'.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 76200
        mmWidth = 12700
        BandType = 7
      end
      object ppLine26: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 110331
        mmTop = 74613
        mmWidth = 60590
        BandType = 7
      end
      object ppLabel109: TppLabel
        UserName = 'Label52'
        Caption = 'FIRMA DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 76994
        mmTop = 101865
        mmWidth = 38100
        BandType = 7
      end
      object pplFirmaAso: TppLabel
        UserName = 'lFirmaAso'
        Caption = 'HERNANDEZ PANTA ROBERTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 71438
        mmTop = 96573
        mmWidth = 53446
        BandType = 7
      end
      object ppLabel110: TppLabel
        UserName = 'LblMonDev1'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 157163
        mmTop = 2117
        mmWidth = 6096
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPi2: TppDBPipeline
    UserName = 'DBPi2'
    Left = 63
    Top = 259
    object ppDBPi2ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPi2ppField2: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object ppDBPi2ppField3: TppField
      FieldAlias = 'CRECUOTA'
      FieldName = 'CRECUOTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppDBPi2ppField4: TppField
      FieldAlias = 'NROOPE'
      FieldName = 'NROOPE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppDBPi2ppField5: TppField
      FieldAlias = 'CREMTOCOB'
      FieldName = 'CREMTOCOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPi2ppField6: TppField
      FieldAlias = 'CREMTOCOBNEW'
      FieldName = 'CREMTOCOBNEW'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
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
    Report = ppRepDevol
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 112
    Top = 256
  end
end
