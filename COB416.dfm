object FToolConsistencia: TFToolConsistencia
  Left = 131
  Top = 222
  Width = 838
  Height = 201
  Caption = 'Consistencia'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 174
    Align = alClient
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object edtName: TEdit
      Left = 7
      Top = 34
      Width = 114
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'edtName'
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 131
      Top = 1
      Width = 330
      Height = 120
      Caption = 'Condiciones de Busqueda'
      TabOrder = 1
      object cbUse: TCheckBox
        Left = 6
        Top = 17
        Width = 121
        Height = 17
        Caption = 'USE'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object cbCM: TCheckBox
        Left = 6
        Top = 36
        Width = 121
        Height = 17
        Caption = 'C'#243'digo Modular'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 1
      end
      object cbAN: TCheckBox
        Left = 6
        Top = 56
        Width = 116
        Height = 17
        Caption = 'Apellidos y Nombres'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 2
      end
      object cbCP: TCheckBox
        Left = 6
        Top = 96
        Width = 121
        Height = 17
        Caption = 'C'#243'digo de pago'
        TabOrder = 3
      end
      object seLong: TSpinEdit
        Left = 131
        Top = 60
        Width = 38
        Height = 24
        MaxValue = 40
        MinValue = 5
        TabOrder = 4
        Value = 20
      end
      object BitBtn2: TBitBtn
        Left = 131
        Top = 89
        Width = 65
        Height = 25
        Caption = 'Buscar '
        TabOrder = 5
        Visible = False
        OnClick = BitBtn2Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000070000077777000007000000070B0
          00777770F0007000000070F000777770B0007000000070000000700000007000
          0000700B000000B0000070000000700F000700F0000070000000700B000700B0
          0000700000007700000000000007700000007770B00070B00077700000007770
          0000700000777000000077770007770007777000000077770B07770B07777000
          0000777700077700077770000000777777777777777770000000777777777777
          777770000000}
      end
      object cbLike: TCheckBox
        Left = 183
        Top = 63
        Width = 86
        Height = 17
        Caption = 'Ambos Lados'
        TabOrder = 6
      end
      object bbtnConsist1: TBitBtn
        Left = 131
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Buscar SQL'
        TabOrder = 7
        OnClick = bbtnConsist1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDD0000000DDDDD000DDDDD000D0000000DDDDD070DDDDD070D0000000DDDD
          D0008DDD8000D0000000DDDDD00000000000D0000000D444407000070000D000
          0000D4FFF07000070000D0000000D4F8800000000000D0000000D4FFFF000070
          000DD0000000D4F88F80088F00DDD0000000D4FFFFF00FFF00DDD0000000D4F8
          8F80088F00DDD0000000D4FFFFFFFFFF4DDDD0000000D444444444444DDDD000
          0000D474474474474DDDD0000000D444444444444DDDD0000000DDDDDDDDDDDD
          DDDDD0000000}
      end
      object BitBtn4: TBitBtn
        Left = 228
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Automatica'
        TabOrder = 8
        OnClick = BitBtn4Click
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777770000007777777777777777770000007777770007777700070000007777
          770F0777770F0700000077777700087778000700000077777700000000000700
          00007777770F0000F000070000007777770F0000F00007000000780000000000
          00000700000070FBFB00000800007700000070BFBFBF00B070077700000070FB
          FBFB00F070077700000070BFBFBF00B070077700000070FBFBFBFBF077777700
          000070BFBFBFBFB077777700000070FBF0000008777777000000770007777777
          777777000000777777777777777777000000}
      end
      object BitBtn5: TBitBtn
        Left = 202
        Top = 89
        Width = 122
        Height = 25
        Caption = 'Actualiza Cambios'
        TabOrder = 9
        OnClick = BitBtn5Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000000007777703300007030777770330000703000777033000000303
          0777033333333303000703300000330303070307777703030307030777770303
          0307030777770003030703077777070303070000000000000307770307777707
          0307770000000000000777770307777707077777000000000007}
      end
      object cbDNI: TCheckBox
        Left = 7
        Top = 76
        Width = 97
        Height = 17
        Caption = 'D.N.I.'
        TabOrder = 10
      end
    end
    object GroupBox2: TGroupBox
      Left = 464
      Top = 1
      Width = 197
      Height = 96
      Caption = 'Inconsistencias'
      TabOrder = 2
      object Busca: TLabel
        Left = 35
        Top = 48
        Width = 30
        Height = 15
        Caption = 'Busca'
      end
      object Reemplaza: TLabel
        Left = 116
        Top = 48
        Width = 54
        Height = 15
        Caption = 'Reemplaza'
      end
      object BitBtn1: TBitBtn
        Left = 10
        Top = 18
        Width = 87
        Height = 25
        Caption = 'Reemplazar'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777770000000007700000007777
          7708888888077000000077777708888888077000000070000008888888077000
          000070FBFB08888888077000000070BFBF08888888077000000070FBFB088888
          88077000000070BFBF00000000077000000070FBFBFBFBF077777000000070BF
          BFBFBFB077777000000070FBFBFBFBF077777000000070BFBFBFBFB077777000
          0000700000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
      object me1: TMaskEdit
        Left = 4
        Top = 65
        Width = 92
        Height = 23
        TabOrder = 1
      end
      object me2: TMaskEdit
        Left = 99
        Top = 65
        Width = 92
        Height = 23
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 104
        Top = 18
        Width = 87
        Height = 25
        Caption = 'Autom'#225'tica'
        TabOrder = 3
        OnClick = BitBtn3Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777770000070000000777777777770BFB0700000007777
          77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
          0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
          B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
          FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
          0000770000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
    end
    object gbConta: TGroupBox
      Left = 7
      Top = 57
      Width = 119
      Height = 64
      Caption = 'Contadores'
      TabOrder = 3
      object Label1: TLabel
        Left = 4
        Top = 14
        Width = 26
        Height = 15
        Caption = 'Total'
      end
      object Label2: TLabel
        Left = 4
        Top = 29
        Width = 47
        Height = 15
        Caption = 'Buscados'
      end
      object Label3: TLabel
        Left = 4
        Top = 46
        Width = 66
        Height = 15
        Caption = 'Actualizados'
      end
      object lblTO: TLabel
        Left = 76
        Top = 14
        Width = 7
        Height = 15
        Caption = '0'
      end
      object lblTB: TLabel
        Left = 76
        Top = 29
        Width = 7
        Height = 15
        Caption = '0'
      end
      object lblAC: TLabel
        Left = 76
        Top = 46
        Width = 37
        Height = 15
        AutoSize = False
        Caption = '0'
      end
    end
    object pbTot: TProgressBar
      Left = 467
      Top = 103
      Width = 194
      Height = 17
      TabOrder = 4
      Visible = False
    end
    object GroupBox3: TGroupBox
      Left = 64
      Top = 121
      Width = 597
      Height = 46
      TabOrder = 5
      object Label4: TLabel
        Left = 16
        Top = 19
        Width = 41
        Height = 15
        Caption = 'Archivo'
      end
      object Label5: TLabel
        Left = 206
        Top = 19
        Width = 42
        Height = 15
        Caption = 'Cobrado'
      end
      object Label6: TLabel
        Left = 397
        Top = 19
        Width = 57
        Height = 15
        Caption = 'Diferencia'
      end
      object meArc: TMaskEdit
        Left = 69
        Top = 15
        Width = 121
        Height = 23
        Enabled = False
        TabOrder = 0
        Text = 'meArc'
      end
      object meCob: TMaskEdit
        Left = 253
        Top = 14
        Width = 121
        Height = 23
        Enabled = False
        TabOrder = 1
        Text = 'meCob'
      end
      object meDif: TMaskEdit
        Left = 460
        Top = 14
        Width = 121
        Height = 23
        Enabled = False
        TabOrder = 2
        Text = 'meDif'
      end
    end
    object gbPorDataOk: TGroupBox
      Left = 666
      Top = 1
      Width = 163
      Height = 168
      TabOrder = 6
      object Z2bbtnMarTod: TfcShapeBtn
        Left = 5
        Top = 13
        Width = 72
        Height = 57
        Hint = 'Marca Todos los Asocidodos en el Filtro'
        Caption = 'Marcar Todos'
        Color = 10207162
        DitherColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentFont = False
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        TextOptions.WordWrap = True
        OnClick = sbtnAceptarClick
      end
      object Z2bbtnGenAso: TfcShapeBtn
        Left = 5
        Top = 72
        Width = 155
        Height = 30
        Hint = 'Genera Codigo de Asociados en el Maestro'
        Caption = 'Generar Asociados    '
        Color = 10207162
        DitherColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
        ParentFont = False
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        Visible = False
        OnClick = Z2bbtnGenAsoClick
      end
      object Z2bbtnActCodPag: TfcShapeBtn
        Left = 5
        Top = 104
        Width = 155
        Height = 31
        Hint = 'Actualiza Codigo de Pago de Asociados Nulos Desde el Maestro'
        Caption = 'Act. Cod. Pago Nulos'
        Color = 10207162
        DitherColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
        ParentFont = False
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 2
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnActCodPagClick
      end
      object Z2bbtnResCodDup: TfcShapeBtn
        Left = 5
        Top = 136
        Width = 155
        Height = 31
        Hint = 'Resoluci'#243'n de Asociados Duplicados'
        Caption = 'Res. C'#243'digo Duplicados'
        Color = 10207162
        DitherColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
        ParentFont = False
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 3
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnResCodDupClick
      end
      object Z2bbtnDesMarTod: TfcShapeBtn
        Left = 81
        Top = 12
        Width = 72
        Height = 57
        Hint = 'Desmarca Todos los Asocidodos en el Filtro'
        Caption = 'Desmarcar Todos'
        Color = 10207162
        DitherColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentFont = False
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 4
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        TextOptions.WordWrap = True
        OnClick = Z2bbtnDesMarTodClick
      end
    end
    object Z2bbtnEliCodAso: TfcShapeBtn
      Left = 15
      Top = 131
      Width = 42
      Height = 34
      Hint = 'Limpia el Codigo de Asociado'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 7
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnEliCodAsoClick
    end
    object Z2bbtnGenFile: TfcShapeBtn
      Left = 7
      Top = 6
      Width = 117
      Height = 27
      Hint = 'Generar Archivo con los Asociados Marcados'
      Caption = 'Generar Archivo'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      Margin = 0
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnGenFileClick
    end
  end
end
