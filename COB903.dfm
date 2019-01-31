object fCronoPag: TfCronoPag
  Left = 411
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cronograma De Pagos'
  ClientHeight = 562
  ClientWidth = 799
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gBPagos: TGroupBox
    Left = 3
    Top = 156
    Width = 788
    Height = 402
    TabOrder = 0
    object SBEstadoCuenta: TSpeedButton
      Left = 15
      Top = 352
      Width = 30
      Height = 27
      Hint = 'Estado de Cuenta'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBEstadoCuentaClick
    end
    object Image2: TImage
      Left = 57
      Top = 383
      Width = 17
      Height = 15
      Picture.Data = {
        07544269746D6170F6000000424DF60000000000000076000000280000001000
        0000100000000100040000000000800000000000000000000000100000001000
        0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006
        660DD08888880E00000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE0
        7700DDDD0E0EEE000000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE07770
        80DD0E0EEE0D0777080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDD
        DDDD}
      Proportional = True
      Transparent = True
    end
    object dtgPagos: TwwDBGrid
      Left = 3
      Top = 12
      Width = 778
      Height = 286
      DisableThemesInTitle = False
      Selected.Strings = (
        'CRECUOTA'#9'4'#9'N'#176'Cuo'#9#9
        'CREFVEN'#9'10'#9'Fec.Venc.'#9#9
        'CREMTO'#9'12'#9'Cuota a Pagar'#9#9
        'CRECAPITAL'#9'10'#9'Amortizaci'#243'n'#9#9
        'CREMTOINT'#9'10'#9'Inter'#233's'#9#9
        'MONCOBDESGRAV'#9'10'#9'Fon.Desgrav.'#9#9
        'CREMTOFLAT'#9'10'#9'Gastos / Flat'#9#9
        'CREMTOCOB'#9'10'#9'Cuota Pagada'#9#9
        'CREESTADO'#9'18'#9'Estado'#9'F'#9
        'FLAGVAR'#9'1'#9'Marcar'#9#9
        'DIF'#9'1'#9'Dif'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgPagosRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCuotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dtgPagosDrawDataCell
      OnDblClick = dtgPagosDblClick
      OnMouseUp = dtgPagosMouseUp
    end
    object BitSalir: TBitBtn
      Left = 701
      Top = 352
      Width = 81
      Height = 29
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 1
      OnClick = BitSalirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object BitPagar: TBitBtn
      Left = 336
      Top = 309
      Width = 85
      Height = 24
      Hint = 'Pagar Desde'
      Caption = 'Pag.Desde'
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = BitPagarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
    end
    object BitDetPag: TBitBtn
      Left = 607
      Top = 352
      Width = 83
      Height = 29
      Caption = 'Det.Pagos'
      Enabled = False
      TabOrder = 3
      OnClick = BitDetPagClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
    object BitProc: TBitBtn
      Left = 235
      Top = 352
      Width = 85
      Height = 29
      Caption = 'Proc.Cob.'
      Enabled = False
      TabOrder = 4
      Visible = False
      OnClick = BitProcClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
    end
    object BitBLoq: TBitBtn
      Left = 276
      Top = 307
      Width = 170
      Height = 27
      Caption = 'Bloqueo/Desbloqueo'
      Enabled = False
      TabOrder = 5
      OnClick = BitBLoqClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
        0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
        03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
        033333337F73FF737F33B33B778000877333333373F777337333333B30888880
        33333333373FFFF73333333B3300000333333333337777733333}
      NumGlyphs = 2
    end
    object grpImprimir: TGroupBox
      Left = 434
      Top = 340
      Width = 162
      Height = 42
      Enabled = False
      TabOrder = 6
      object BitPrint: TBitBtn
        Left = 75
        Top = 12
        Width = 83
        Height = 27
        Hint = 'Imprimir'
        Caption = 'Imprimir'
        Enabled = False
        TabOrder = 0
        OnClick = BitPrintClick
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
      object ChkFoto: TCheckBox
        Left = 5
        Top = 8
        Width = 65
        Height = 17
        Caption = 'Con Foto'
        TabOrder = 1
      end
      object chkInterno: TCheckBox
        Left = 5
        Top = 24
        Width = 60
        Height = 17
        Caption = 'Interno'
        TabOrder = 2
      end
    end
    object grpEncuesta: TGroupBox
      Left = 49
      Top = 340
      Width = 179
      Height = 41
      Enabled = False
      TabOrder = 7
      object ChkHistorico: TCheckBox
        Left = 5
        Top = 17
        Width = 64
        Height = 17
        Caption = 'Historico'
        TabOrder = 0
        OnClick = ChkHistoricoClick
      end
      object BitEncuesta: TBitBtn
        Left = 72
        Top = 10
        Width = 84
        Height = 27
        Cursor = crHandPoint
        Caption = 'R.Gesti'#243'n'
        Enabled = False
        TabOrder = 1
        OnClick = BitEncuestaClick
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
      object BitPrintEncuesta: TBitBtn
        Left = 72
        Top = 10
        Width = 84
        Height = 27
        Cursor = crHandPoint
        Hint = 'Imprimir'
        Caption = 'R.Gesti'#243'n'
        Enabled = False
        TabOrder = 2
        Visible = False
        OnClick = BitPrintEncuestaClick
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
    object BitCorrige: TBitBtn
      Left = 60
      Top = 307
      Width = 200
      Height = 27
      Caption = 'Correcci'#243'n De Excesos Extemporaneo'
      Enabled = False
      TabOrder = 8
      OnClick = BitCorrigeClick
    end
    object Bitmuehis: TBitBtn
      Left = 458
      Top = 307
      Width = 170
      Height = 27
      Caption = 'Historico De Bloqueos'
      Enabled = False
      TabOrder = 9
      OnClick = BitmuehisClick
    end
    object BitEnvioPorcentual: TBitBtn
      Left = 642
      Top = 307
      Width = 140
      Height = 27
      Caption = 'Envio Porcentual (%)'
      Enabled = False
      TabOrder = 10
      OnClick = BitEnvioPorcentualClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000000000000000000000000000000000003F3F3F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F3F3F3FFFFF
        FFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000FFFFFFFFFFFFFFFFFF7F7F7F3F3F3F
        FFFFFFFFFFFFBFBFBF3F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F3F3F3F7F7F7F7F7F7FFFFFFFFFFFFF3F3F3FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000007F7F7F7F7F7F
        FFFFFFBFBFBF7F7F7FFFFFFFFFFFFF7F7FFF7F7FFFFFFFFFBFBFFF7F7FFF7F7F
        FFFFFFFF3F3F3FFFFFFF7F7F7F7F7F7FFFFFFF3F3F3FFFFFFFBFBFFF0000FF3F
        3FFF0000FF7F7FFFBFBFFF0000FFBFBFFF3F3F3F000000FFFFFF000000BFBFBF
        7F7F7FBFBFBFFFFFFFBFBFFFBFBFFFBFBFFF0000FFFFFFFF3F3FFF7F7FFFBFBF
        BF000000FFFFFFFFFFFF000000FFFFFF3F3F3FFFFFFFFFFFFF7F7FFF3F3FFF00
        00FFBFBFFFBFBFFF0000FFFFFFFF3F3F3FFFFFFFFFFFFFFFFFFF0000007F7F7F
        BFBFBFBFBFFF7F7FFFBFBFFF0000FFFFFFFFFFFFFF3F3FFF7F7FFFFFFFFF0000
        00FFFFFFFFFFFFFFFFFF0000003F3F3FFFFFFF7F7FFF3F3FFF3F3FFF3F3FFFBF
        BFFF3F3FFF0000FFFFFFFF7F7F7F000000FFFFFFFFFFFFFFFFFF0000007F7F7F
        FFFFFFBFBFFF7F7FFFBFBFFFFFFFFFFFFFFF7F7FFFBFBFFFFFFFFF3F3F3FFFFF
        FFFFFFFFFFFFFFFFFFFF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000808080
        808080808080808080808080808080404040202020808080404040FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000080808040404060606040404020202020202040
        4040202020808080202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040808080
        000000202020404040202020606060404040404040808080000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF20202040404020202040404020202040404040404040
        4040404040404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object bbtnCuotaAnula: TBitBtn
      Left = 15
      Top = 307
      Width = 30
      Height = 27
      Hint = 'Consulta de Cuotas Anuladas o Extornadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = bbtnCuotaAnulaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555999999
        999955555F77777777775555999FFFFFFFF9555F777F5FFFF55755999F9F9999
        FFF95F777F7F77775557999F9F9FFFFFFFF9777F7F7F5FFFFFF79F9F9F9F9999
        99F97F7F7F7F777777579F9F9F9FFFFFFFF97F7F7F7F5FFFFFF79F9F9F9F9999
        99F97F7F7F7F777777579F9F9F9FFFFFFFF97F7F7F7F5FFF55579F9F9F9F999F
        FFF97F7F7F7F77755FF79F9F9F9FFFFF99997F7F7F7F5FF577779F9F9F9F99FF
        9F957F7F7F7F77557F759F9F9F9FFFFF99557F7F7F7FFFFF77559F9F9F999999
        95557F7F7F77777775559F9F9999999555557F7F7777777555559F9999999555
        55557F7777777555555599999995555555557777777555555555}
      NumGlyphs = 2
    end
    object btnHojRes: TBitBtn
      Left = 55
      Top = 350
      Width = 169
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir Hoja Resumen'
      Caption = 'Resumen Cronograma Pago'
      TabOrder = 12
      OnClick = btnHojResClick
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
    object grbPAdelantado: TGroupBox
      Left = 331
      Top = 340
      Width = 88
      Height = 41
      TabOrder = 13
      Visible = False
      object chkPagoAdelantado: TCheckBox
        Left = 8
        Top = 8
        Width = 75
        Height = 32
        AllowGrayed = True
        Caption = 'Pago Adelantado'
        TabOrder = 0
        WordWrap = True
      end
    end
    object chkRepExc: TCheckBox
      Left = 439
      Top = 383
      Width = 144
      Height = 17
      Caption = 'Reprog. Excepcional'
      TabOrder = 14
    end
    object chkExcel: TCheckBox
      Left = 76
      Top = 383
      Width = 113
      Height = 13
      Caption = 'Excel Cronogramas'
      TabOrder = 15
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 1
    Width = 787
    Height = 156
    Color = 10207162
    ParentColor = False
    TabOrder = 1
    object lblEstado: TLabel
      Left = 412
      Top = 103
      Width = 273
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'AMPLIACION/REDUCCION'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitMarcar: TBitBtn
      Left = 690
      Top = 124
      Width = 86
      Height = 26
      Caption = 'Marca'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitMarcarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object Panel1: TPanel
      Left = 8
      Top = 11
      Width = 773
      Height = 84
      BevelOuter = bvNone
      Color = 10207162
      Enabled = False
      TabOrder = 1
      object TLabel
        Left = 178
        Top = 12
        Width = 28
        Height = 13
        Caption = 'Use  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 590
        Top = 18
        Width = 77
        Height = 13
        Caption = 'Desembolso :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TLabel
        Left = 591
        Top = 3
        Width = 54
        Height = 13
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 38
        Width = 55
        Height = 13
        Caption = 'Cod. Mod. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 202
        Top = 38
        Width = 57
        Height = 13
        Caption = 'Nombres    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 8
        Top = 67
        Width = 59
        Height = 13
        Caption = 'F.Otorgado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 202
        Top = 67
        Width = 57
        Height = 13
        Caption = 'N'#176'  Prest.   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 447
        Top = 67
        Width = 30
        Height = 13
        Caption = 'Tipo  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EdtDesUse: TEdit
        Left = 212
        Top = 5
        Width = 360
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtFecDes: TEdit
        Left = 674
        Top = 5
        Width = 90
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtCodMod: TEdit
        Left = 71
        Top = 33
        Width = 110
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdtNomGen: TEdit
        Left = 268
        Top = 33
        Width = 497
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtFecPre: TEdit
        Left = 71
        Top = 58
        Width = 110
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdtCreDid: TEdit
        Left = 268
        Top = 58
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdtDesTip: TEdit
        Left = 481
        Top = 58
        Width = 285
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object pnlFirma: TPanel
        Left = 5
        Top = 5
        Width = 160
        Height = 26
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clWhite
        TabOrder = 7
        object Label5: TLabel
          Left = 8
          Top = 4
          Width = 113
          Height = 16
          Caption = 'Firm'#243' Dscto. PLA:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 129
          Top = 1
          Width = 18
          Height = 22
          Caption = 'SI'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object Panel2: TPanel
      Left = 9
      Top = 102
      Width = 397
      Height = 33
      BevelOuter = bvNone
      Color = 10207162
      Enabled = False
      TabOrder = 2
      object TLabel
        Left = 6
        Top = 8
        Width = 57
        Height = 13
        Caption = 'Monto        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 198
        Top = 8
        Width = 59
        Height = 13
        Caption = 'Nro.Cuotas :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 316
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Mon. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EdtMonto: TEdit
        Left = 69
        Top = 3
        Width = 110
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtNumCuo: TEdit
        Left = 267
        Top = 3
        Width = 38
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtMoneda: TEdit
        Left = 351
        Top = 3
        Width = 42
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 506
      Top = 124
      Width = 97
      Height = 26
      BevelOuter = bvNone
      Color = 10207162
      Enabled = False
      TabOrder = 3
      object EdtFecCan: TEdit
        Left = 5
        Top = 1
        Width = 85
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object chkCCI: TCheckBox
    Left = 610
    Top = 482
    Width = 63
    Height = 16
    Caption = 'Solo CCI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dtgData: TDBGrid
    Left = 822
    Top = 8
    Width = 187
    Height = 105
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ppDBEstCta: TppDBPipeline
    DataSource = DM1.dsAsoX
    UserName = 'DBPipEstCta'
    Left = 693
    Top = 392
  end
  object ppREstCta: TppReport
    AutoStop = False
    DataPipeline = ppDBEstCta
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
    Template.FileName = 
      'D:\Desarrollo DM\COBRANZAS\FUENTES_CLIENTE_201511\FUENTES_CLIENT' +
      'E_201511_MODIFICADO\EstCta1.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 542
    Top = 391
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstCta'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 71173
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 4498
        mmWidth = 19262
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3969
        mmTop = 10583
        mmWidth = 42714
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 0
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 4498
        mmWidth = 11853
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 0
        mmWidth = 14817
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'CRONOGRAMA DE PAGOS N'#176': 012014240000271    al: 20/07/2015'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 18785
        mmTop = 14817
        mmWidth = 150548
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 26194
        mmWidth = 25400
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        AutoSize = False
        Caption = '1025548102'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32279
        mmTop = 26194
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Tipo De Credito '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 34396
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Se'#241'or(a)           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 38629
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'N'#176' Credito         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 42863
        mmWidth = 26194
        BandType = 0
      end
      object pplblTipCre: TppLabel
        UserName = 'LblCodMod1'
        AutoSize = False
        Caption = '24-EXTRAORDINARIO (CONSUMO)    [NORMAL]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 34396
        mmWidth = 123296
        BandType = 0
      end
      object pplblNomGen: TppLabel
        UserName = 'lblNomGen'
        AutoSize = False
        Caption = 'LOPEZ PRINCIPE VICTORIA GLADYS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 38629
        mmWidth = 73554
        BandType = 0
      end
      object pplblNumPre: TppLabel
        UserName = 'lblNomGen1'
        AutoSize = False
        Caption = '012014240000271'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 42863
        mmWidth = 41540
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Fecha         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 30163
        mmWidth = 23813
        BandType = 0
      end
      object pplblFecPre: TppLabel
        UserName = 'LblCodMod2'
        AutoSize = False
        Caption = '09/01/2014'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32279
        mmTop = 30163
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Use   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 56886
        mmTop = 29898
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'Monto (S/.)  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 42069
        mmWidth = 16404
        BandType = 0
      end
      object pplblUse: TppLabel
        UserName = 'lblUse'
        Caption = '0J - DRE CALLAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 74083
        mmTop = 29898
        mmWidth = 23495
        BandType = 0
      end
      object pplblMonto: TppLabel
        UserName = 'lblUse1'
        Caption = '18,000.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 125942
        mmTop = 42069
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'Nro Cuotas     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 46038
        mmWidth = 25665
        BandType = 0
      end
      object pplblNumCuo: TppLabel
        UserName = 'lblNumCuo'
        AutoSize = False
        Caption = '72'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 126471
        mmTop = 46038
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'Situaci'#243'n Actual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 52917
        mmWidth = 25929
        BandType = 0
      end
      object pplblTipCli: TppLabel
        UserName = 'lblUse2'
        AutoSize = False
        Caption = 'CE - CESANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125677
        mmTop = 52917
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 30163
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 34396
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 38629
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 42863
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 26194
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 52917
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 42069
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 71438
        mmTop = 29898
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 46038
        mmWidth = 1323
        BandType = 0
      end
      object ppShpImg: TppShape
        UserName = 'ShpImg'
        Visible = False
        mmHeight = 28046
        mmLeft = 170921
        mmTop = 15610
        mmWidth = 30163
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Visible = False
        mmHeight = 24871
        mmLeft = 171715
        mmTop = 17198
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 47361
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'Gastos/Flat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 51594
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 47361
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 51594
        mmWidth = 1323
        BandType = 0
      end
      object ppLblInt: TppLabel
        UserName = 'LblInt'
        AutoSize = False
        Caption = '1.85'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 47361
        mmWidth = 7673
        BandType = 0
      end
      object ppLblFlat: TppLabel
        UserName = 'LblFlat'
        AutoSize = False
        Caption = '4.36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 51594
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 4498
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 0
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 55827
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 55563
        mmWidth = 1323
        BandType = 0
      end
      object ppLblCuenta: TppLabel
        UserName = 'LblFlat1'
        AutoSize = False
        Caption = '4098742455 - [A]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 55563
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'O.Otorg.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 56886
        mmTop = 26194
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 71438
        mmTop = 26194
        mmWidth = 1323
        BandType = 0
      end
      object ppLblOriOto: TppLabel
        UserName = 'LblCodMod3'
        AutoSize = False
        Caption = '01 -  SEDE CENTRAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 74348
        mmTop = 25929
        mmWidth = 80433
        BandType = 0
      end
      object pplblRotulo: TppLabel
        UserName = 'lblRotulo'
        AutoSize = False
        Caption = 'Desembolsado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 56356
        mmWidth = 25135
        BandType = 0
      end
      object pplblRot02: TppLabel
        UserName = 'lblRot02'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 56356
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTipDes: TppLabel
        UserName = 'LblTipDes'
        AutoSize = False
        Caption = '16-CHE.GER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125677
        mmTop = 56356
        mmWidth = 38365
        BandType = 0
      end
      object ppLblEstado: TppLabel
        UserName = 'LblTitulo1'
        AutoSize = False
        Caption = 'POR COBRAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 99748
        mmTop = 20638
        mmWidth = 55298
        BandType = 0
      end
      object ppLblCuotas: TppLabel
        UserName = 'LblCuotas'
        AutoSize = False
        Caption = '( (67)-Cuotas Por Pagar )'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 134938
        mmTop = 46038
        mmWidth = 37306
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Caption = '(EN NUEVOS SOLES)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 49477
        mmTop = 20638
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 40217
        mmTop = 51594
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label202'
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 40217
        mmTop = 47361
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        AutoSize = False
        Caption = 'Situaci'#243'n Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 49477
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 49477
        mmWidth = 1323
        BandType = 0
      end
      object pplblTipCliOtorg: TppLabel
        UserName = 'lblTipCliOtorg'
        AutoSize = False
        Caption = 'DO - ASOCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125677
        mmTop = 49477
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        AutoSize = False
        Caption = 'Regimen Pensi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 59531
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 59531
        mmWidth = 1323
        BandType = 0
      end
      object ppLblRegimen: TppLabel
        UserName = 'Label34'
        Caption = 'D.L. 19990'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 59531
        mmWidth = 13843
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'lblRotulo1'
        AutoSize = False
        Caption = 'Direcci'#243'n Domiciliaria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 59796
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 59796
        mmWidth = 1323
        BandType = 0
      end
      object ppLblDirDom: TppLabel
        UserName = 'LblDirDom'
        AutoSize = False
        Caption = 
          'CALLE LOS CEDROS # 155 URBANIZACION JOSE GALVEZ Ref. FRENTE A PL' +
          'AZA NORTE PARADERO JOSE GALVEZ AV. TUPAC AMARU'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 125677
        mmTop = 59796
        mmWidth = 76465
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Caption = 'Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 63500
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 63500
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTelefono: TppLabel
        UserName = 'LblTelefono'
        Caption = '5343347'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 63500
        mmWidth = 10964
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Caption = 'D'#237'as de Atraso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 63500
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 121444
        mmTop = 63500
        mmWidth = 1323
        BandType = 0
      end
      object ppLblDiasAtraso: TppLabel
        UserName = 'LblDirDom1'
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 125677
        mmTop = 63500
        mmWidth = 1566
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Caption = 'Aut. Desc. Aportes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 67204
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 67204
        mmWidth = 1323
        BandType = 0
      end
      object ppLblFirmoAutorizacion: TppLabel
        UserName = 'LblTelefono1'
        Caption = 'Si'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 67204
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Caption = 'Provisi'#243'n (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 67204
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 121444
        mmTop = 67204
        mmWidth = 1323
        BandType = 0
      end
      object ppLblProvision: TppLabel
        UserName = 'LblProvision'
        Caption = '18.85'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 125677
        mmTop = 67204
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label203'
        AutoSize = False
        Caption = 'Desgravamen '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 47096
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 80433
        mmTop = 47361
        mmWidth = 4763
        BandType = 0
      end
      object ppLblDesgravamen: TppLabel
        UserName = 'LblDesgravamen'
        AutoSize = False
        Caption = '0.019'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 71702
        mmTop = 47361
        mmWidth = 8202
        BandType = 0
      end
      object lblGasRef: TppLabel
        UserName = 'lblGasRef'
        AutoSize = False
        Caption = 'Gastos/REF     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 51858
        mmWidth = 19050
        BandType = 0
      end
      object lblMonGasRef: TppLabel
        UserName = 'LblProvision1'
        Caption = '18.85'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 71702
        mmTop = 51858
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 69586
        mmTop = 47625
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 69586
        mmTop = 51858
        mmWidth = 1323
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Picture.Data = {
          0A544A504547496D616765EA1D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002F00FD03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9F
          FE0AADFF000587F1A7C33F8E5AD7C35F879711E86BE1F716F7DA92AEEB9926C0
          2CAA4F0A064723935F24E95FF0547F8F12B7EF3E2978A0F3DE75FF000AE3BFE0
          AA77DB3FE0A39F1717FEA3EE07AFDC4AC1F08FECCBF10522D0F57D63C0BE30B1
          F0CEA377044DA94BA5CD1C06391D5776F2B80083C13C57F4564D94E5787CBE8B
          9D385E514EED26DB6937BEFE87E7B99D4C4CEB4ED37BBD9B565F23DF743FF829
          7FC6CB82BE67C4AF1237AE665FF0AEDFC3FF00F0511F8BD75B777C40F1039EE0
          CC3FC2BC37E247ECDDAF41FB45F8CBC2BF0FFC33E23F11587866ECC58B3B592E
          DE140A08DECA3DCF5A77C35F851E3AF191BEFEC8F08789B513A4394BD16FA74A
          FF006461D55C63861DC75AF4E9E17299D353F674D2693D6315A3DAFDAE7C4E65
          4B31BB50A93F94A5FE67DB9FB3BFFC149FC75E1EF15D8AEBFAD4BAF69734A16E
          16ED81655240E1B1C63935FA65A56A31EAFA6DBDD43CC7711AC887D411915F81
          7E1CF103DBDCF972EF8648C9578DC6D6523B11D88AFDDCF852FE67C34D058670
          D6109E7FDC15F99788F95E170CE8D6C3C145CB993B2B276B5B45EA7D078678CC
          74E788C362AA39C63CAD7336DABDEFABD6DA1D0515CCF8E3E34783FE195E5BDB
          F893C55E1DD06E2EFF00D445A86A315B3CBDBE50EC09FC2BE48F87BFF0515F18
          F8C3FE0AD1AD7C133168B27836C6CA4BAB7B88A2CDC4988E3653BF3820EF3D2B
          E0F0393E2B170A95292D211736DE9A2B5EDDDEA7E8D8CCDB0F869C2151EB3928
          AB6BABDAFDB63EDDA2B93F13FC79F03F827C47168FACF8CBC2FA4EAD31023B3B
          CD56082E189E9F23306E7E9CD6A78A7E22787FC0D656F73ADEBBA3E8F6F7476C
          12DF5EC76E931EB852EC037E15C1EC2AE9EEBD76D1EBE9DCEEF6D4F5F7969BEB
          B7A9B14572BAB7C73F04E8179756F7DE30F0BD94F63B3ED31CFAAC11B5BEF04A
          6F0CC36EE0AC467AE0D5A8FE2BF85E6D524B14F12684F790DA0BF9215BF88C89
          6E718988DD9119C8C31E0E7AD3FABD5B5F95FDCC5EDE9EDCCBEF3A0A2B94F0E7
          C78F03F8C359FECDD27C65E15D535019FF0045B4D5A09A6E3AFC8AE4FE957EFB
          E26786F4CF12368D73E20D0EDF5858CCC6C65BE892E42052E5BCB2DBB68505B3
          8C6013D28961EAA7CAE2EFBECF6EE0ABD36B99495B6DFA9B94572FE18F8DFE0B
          F1B586A177A3F8B7C33AADAE9209BE9AD3538668ECC0EA646562107079381C54
          DE02F8BDE13F8A905C49E19F13683E218ECDB6CEDA6DFC574213FED6C63B7F1A
          2587AB14DCA2F4DF47A7A846BD36D2525AEDAEFE8745457217FF00B41F8074AD
          77FB2EEBC6FE11B6D4B76CFB24BAC5BA4DBBA63617CE7DB15D723ACA8ACAC195
          864107208A99D29C2CE69ABF74546A42775169D85A2B3F54F16E95A1A235EEA7
          A7D9AC92794867B848C33FF74648C9E0F1D69DAD789B4DF0DD9ADC6A3A858D85
          BB90AB2DCCEB12313D002C40A9E493D96E3E78F72F514D4B88E4816557568D97
          70707E523AE73E95534AF12E9DAECB2A58EA16578F09C48B04EB218CFB804E3F
          1A5CAF71F32D8BB4552D73C49A77866D966D4AFECB4F859B6AC9733AC2A4FA02
          C40CD3356D51DB4799B4D9AC64BC781A4B5F3A4FDD39C7CA4E39DB9C648ED4D4
          589C923428AE7FC37E24B9D2FC05A75EF8B2EF43B1D41A0437B25BCFB6C84A47
          3E5B39CEDCF4CF35CFFED01F1FEC3E067C324F1298EDF53865BBB7B68D12E963
          12096454DC1B9040CE78F4AD69E1EA54A8A9415DB765E6FD4CE788A70A6EA4DD
          92577E48F40A2ABD96B169A944F25BDD5BDC471FDF68E40C17EA41A8744F13E9
          BE25491B4DD42C750585B6486DA759421F43B49C1FAD65CAF7B1A7322F51556E
          75BB3B5B632C9776B1C7BB607795557774C673D73DAB17E1E6ADAE3785A6B8F1
          5C9A1437D1CF2E5B4E958DBA4218EC259F9DDB71BBB6734D41B8F309D45CDCA7
          49587E33FF00976FF817F4A9A6F15D9DF786EFAFB4DBCB3BE5B585DC3C12ACA9
          B9549C12A4FA579D7C0EF89DA87C65F807E13F136A8B047A86AD0CD24CB0AED8
          C159590607D1455FD5E7ECDD5E89A5F369B5F9323DBC3DA2A7D5A6FE49A5FAA3
          F203C6FA6D86B7FF0005CAF8ADF68B58352D534EBBD4AFB44B19977ADDEA315B
          2B40BB49C310C090B8392A38AF14FD98FF006BFF008C177FB5DF87EF6DFC4DE2
          8D5BC4BAB6B515ADDE9F717524AB761A5024864809DBB40CFCA46171DB1581FF
          000551F185FF0083FF00E0AA3F16752D2EFAE74DD4F4EF1334F6B756D218E582
          4544219581C8228D47FE0A99F167C43A1DCC3F6AF08E9FAD6A101B6BEF1269FE
          17B2B4D7EFA36186592F1104872382C30C7B9AFE84C2E0AA4F0B4E518466A54E
          11F79DADA7A3BA77D76775F77CF62695A6DDDAD6FA1F56FF00C14DBE2DEA5E10
          D2F416F0AEB33E9367E22D7756D4EF9F4CB8310BCB98EE3CB56675396D817032
          4818E2B23F6C7FDAB3C756FE1DF83B343E29D56CE49BC296BAB4D25A5C181AE6
          ED89CCD214237B9C0E4F35F17EBFF1D35BF1E780FC33E1CD4A7B79B4BF09A4C9
          60163C4AA2572EE5DB24B12DDCD745E35F8E7ADFC57B1F0EDAEB135B347E17D3
          23D234FF0026211E2DD33B431CFCCDCF5AEAC164AA946946A252E472BBB6B677
          B74ED6B9E0E3A5CCA5CB7574BEF56EC7D4BFB6BEB3143FB448BC558E3B8D5F49
          B0D42E8A0C09A69605677EDCB1249AFDADF85772D6DF06B43995199A3D2A270B
          9FBC4460FEB5FCE8F8D3E3B6B5F183C536DAAEB925B497905A4162A608844A63
          850226541E4ED0327BD7F461F050EEF843E1938C674CB73D7FE99AD7C0F88546
          5470583A53DE3CCBEE513AB8528A58CC4548FDAB7E6CFC8CFF00827D7ECBDA0F
          FC1583F6A4F8BBE2CF8C3AAEADAADC68B7A62B7D2E0BE7B63186770AD9521822
          85015460707AF4AE13E1FF00867FE184BFE0A7DF16AD3C29AA5D6B6DE07F09EA
          B26973DD49E74D095863F2D1CE79316467FDCE82BED6F8E5FF000440BAD47F68
          5D4FE20FC21F8ADAF7C28BBF1048D26A56D6492EDCBFDFF29E39508527276364
          03D08ED7FF0065DFF821EE93FB377ED3975E3C9BC757DE2DD3751D32E34EBED3
          F54B2DF3DF9B845599E49BCCE7710C71B7F8BAF7AF5E7C5D96B8D6A8F12DD29D
          2518D0E595A2D25757B72EB67AADEFABD11F350E17CC14A94161D2A90A8E52AD
          CC9B926DD9DAF7D2EB47B5B4DD9F9D1FB38780341F8FDF027C47E20F157C20F8
          F1F13BC77E229EE5ADBC51A1453DC59D94F93B36ED24390D82E1C13D40C7156B
          F6A9D5FE2959FF00C1343C05E1FF00899A3F8AB42D4BC33E2EBBB1D346B9692D
          ADD4D666DE274E24C12AA5990761B71DB8FBAAFBFE0887E35F85DAF6B569F06F
          E3F78A3E1F782FC43334B73A30595BC8DDC108D1CA81BE5E33856C000935DC7E
          D21FF04736F8F3FB2BF807E19FFC2CED799BC137525D1D5F57B73A85C5E6F006
          C03CC5D88B8F9465B03039EB5DB538DB2A58CA557DAA953F68A493551CA9AE56
          B66B963BA8F2C2E9EE71C783F32FAAD5A7EC9A9F272DD382537CC9EE9DDED7BC
          ACD6C7C47FF0501FF827B43FB1C7FC13AEC7C5B7DE26D6BC45E36F1EEBDA64BA
          D4F7520F223716F76F8887DEEB2364B31CFA0E95E9DE0CFD947E1A7EC4DFB025
          F7C54F8D9E26F18789355F8B1A0DAE9B3D8D8CE81879BB2E2282DCB0C8641129
          2ECDB404385E82BED8FDBFFF00E09F9FF0DC3FB33E87F0F17C51FF0008EFF635
          FDBDF7DB8D97DA7CDF2A2923DBB37AE33BF3D78C537F6A0FF826E687FB537EC6
          1E1FF84BAC6B573673F8620B5FECFD62183734771044620E622DCAB296CAEEE3
          23078AF9BA3C691AD85A147195DA72AADD571566A0B9796CEDA2D1691D745A6C
          7BD5384654B135AAE1A8A7CB492A7CCEE9CDDF9AEAFABD5EAF4D59F907FB5AFC
          2AD2BE137C1CF0BFC44F02FC1FF8BFF09266D46092C75ED5757375697A8C8D22
          37CC15E294950CB8C02037B63D7FE327C358FF006C8FF82C4FC3DD07C49A96A5
          616BE30F0B69B75AA4B6337932CA0E8FE74881B3C2BE0A9FF6588FA7D2BF11BF
          E0885F123E3BFC1FD37C2DE3CFDA3B5ED7ADF409E33A55AB6923EC36D12214CB
          AF981E493180199BE51B873BB8F56F09FF00C1285BC2FF00B71F82BE327FC26D
          E70F07E8B6FA40D2CE9A7FD24C5606D3CCF33CCF9739DF8DA71D33DEBDDAFC65
          97C693947109D58D3AD18C92A8F5928F22E69ABBD575D13EC8F1E8F0963A5514
          5D06A94A749B4FD9AD23CCA6ED076D9F4D5AEECFCFABBFF827CF867C27FF0005
          906F80BA7EBDE26B1F87BAE40B717B0C77E5669E0167F6BF21DC1F997CD41C91
          9007A8C8ECFE01783BC3FF00F04D4FF82D9F897C33A5EB77D65F0EF4BF0E5EDF
          EA1F6D94CBE5DA0D2FEDAEAF8FBFB1D3E5E33F281D735F786ABFF04D89353FF8
          299DAFED11FF00097045B5B5FB30D13EC04EEFF4336D9F3BCCF53BB1B3B63E98
          3F163FE091FA6FC68FDBAFC43F1775CF14B4BA3F897439F42BBD063B22B218A5
          D38D9165B8F338619DE3E4E0802BCE971AE1F111F618CAEDD39617966ACF5AD7
          DF6D656DA5B799DF1E11C4507EDB0B4529C711CD1775A52E9D748DF78EFE47E7
          0F8CFE13FC29F8E7F04BC77E32F86BF027E374FA4E9EB7B716DE313AC2B41692
          C61A4CBDBE361853F8B6B1654079C8E3F46FFE0841F13B59F89FFF0004EDF0EC
          9AE6A136A571A3DFDDE990CB33EF90408E0C6A4F70A1F68F40A076C0F31F03FF
          00C1117E207823E1A7887E1BD9FED19E22B2F85DAA25CF95A35A696B1BB34A3E
          ECAE64388C9E5D1080E370C2EEC8FA8BFE09DBFB1A1FD84BF67183C05FF0902F
          89962BF9EF85E8B4FB367CDDBF2EDDEFD36F5CD7271771065D8BCAE585A15BDA
          49548B85FDA36A3CAD3BB9AB27B5D46CBB1D5C2F91E3B0B98C7135697B34E125
          2B7B34B9AE9AB283BB5BD9CAEFB9E71FB1A7ECB1E0DF8A565F11B5EF186956BE
          2EBCBAF1CEBD6B6B16AC82EA1D2EDD6F641E5C28D954DCC198B001893C9C2801
          9FB207ECADE15F17F8B7E265BF8AEDCF8D34DF05F89A6F0E786ACB5B3F6DB7D0
          AC0430DC79312C991F7AE19771CB6C48D738502BE83FD9FF00E0D7FC28EF0F6B
          7A69D45752FED7D7F51D743795E59885DDC3CDE5E3273B776DCF7C6703A52FC1
          6F82FF00F0A8B57F1C5D7F687DBBFE131F10C9AEEDF2BCBFB2EF8208BCBCE4EE
          C7939CF1F7B18E2BE37119D4E4EBF2547695B977E8D6DDB4BF6BABF73EAF0F94
          412A1CF4D5D5F9B6EA9EFDF5B77B1F3769BE20F087C13D33E2D7C31D6F4CD5BC
          43E11B6F135869FE19F0D59B34B757125E5AA5C7D86025D76C424491F0CCA889
          BF2428C0E57E2FF86AF3E0DDBF87FC59A0FC03BAF855A8E8DAD58247ADE97AC6
          9CF1F932DC471C90DDC30C81A489D19948C3E09078C647BC7C43FD8865F1778F
          3C49E2BD3BC55368BE24BDD72C3C43A25DA5989934BB8B5B56B52B22336268E5
          8DDD5972A70FC10403599F133F654F89FF00B43F87ADEC3C75F11B42B3B1D3EF
          AD6FE1B2F0EE8D25B4177241324A1AE1E599DD97E5E110A80D824B6315E8E1F3
          2C2A9C26EA2B3B73A6E7ABE58A95A31B4657D6EE57BBBDF4B5FCFAF97E25C250
          507757E4B7268B99B5772F795B4B28DACAD6D76CEFD9DBE10F86FF006A6F13F8
          F3C69F10B4FB1F176AD63E28BFD06CAC7528C5C5B6876B6CE238E38E16CA2B48
          312B3E373798BCE000391F117C21D17E077ED9B71A4F86F529ADB47BAF877AC5
          DA787C4E5A0D29CCB002F0A93FBB4931F7461728481D6B4BE36EB1F0EFC1BF1E
          35FBE6F1A7C43F81FE24BE318BFBDB5B554D2BC4CA10059C09A196DE49147C9B
          C6D906307200AA7FB387C1DD2FE2AFC78D73C53E1A93C4DA86831F86AE7449BC
          5DAF877BCF11DE5CBC64B26F084C30A4781B156305F0A3EF1AD2329C233C4CE5
          28D370D22D3E55749249FC3E9CB793EA96A4CA3094A3878462EA296B24D5DEB7
          6DADFD79AC9746F439DF0E7C32D6752F871F063C5DAC7C3FBAF8BDE05B1F04DB
          DA4DA25BCD14B73A65D32C67ED6B6D3B2C7704A02B8DDBD73C039355FE39F833
          E08FC49FD953556F07F8560B1934BF1369EBA8689AA584B6B75A1DC493A2B235
          ACDFEA77A13F700461C826BDFB48FD9CBE23FC2CF07F8534FF0003FC46D3E18F
          C39A35BE93369DACE882E74FBC312EDF3D7CB91268DCF71BD97A703AD67DD7EC
          3B79E35F0378DBFE12AF16FDB3C69E3692D679755D3EC7ECD6DA6B5A92D6C90C
          0CEC591189277B12D9EA38C44337A2AA2AB2AB651926B95CD69CF77CD16ADA26
          DDE36F9B6CA965755D374D52BB7169F328BD796DEECAF7D5A4ACEFF2563CE7F6
          AEF08F85FE0FFC44F027C3AF0FF81F588BC23E2B92E754D7B4BF07E9C3ED1AC2
          DB27C904815D0F9459B2F86E5411D0D66EBF6D69E1EF1D78475CF849F03FE25F
          827C45A7EA70437817C3F1E9FA7EA160CC1678EE76CBB58053B95882410306BD
          A75AFD9B3C6DF147C336375E2AF1B68D6FE38F0DDE0BCF0F6BDA068ED6EB62C1
          4A3ACB14B2C8264901C3A6546338C1C11A3E19F859F17B5CF1569973E30F889A
          1C3A4E932898D97867467B36D5187417124D2CA421EE91819FEF5614F32A50A5
          18F3A938A6A5773B49BBEB64BDEBA696B67A745666D2CBEA4AAC9A838A934E36
          50BC52B697BE96777A5D3BF577478CFEC57FB2FE93F1734DF1078A7C75BBC4BF
          D97E2BD4D741D3AE5D9ACF4B55B827CD11E76B4ACDFC6C09000031593F0DBC53
          E13D63E01E87E11D7BC1FA8FC4AD7B57F116AD73A6F87ED997F78B15CC9BA59D
          A47589615E065C919E00278AFA97E00FC186F821E09BED1DB51FED2179A9DDEA
          225F27CBD9E7C85F663273B738CF7AF2AD37F61AD6FC016FA1EADE11F1A41A77
          8C3C3B737ED05CDE69BF68B1BEB6BB98CAF6D3C22456C02461D1C10477E947F6
          B52AD5AA3AB51A5CC9C3E249594BB2BA4DB57B6AEF7F32BFB2EAD2A34FD9435B
          353D9B7771EEECDA49DAF74BF03C8756D32FFE0D7C74F04DDE95F082E7E10C7E
          2296E749D48D9EAB6571A6EA909818AAC9140F9F31586558A71EB5EE1FB199CF
          EC7FF0FF00FEBD6E3FF4A1EAAEBBFB2478F3E2CF8F7C2FE26F1CFC40D3E7BAF0
          BDD49716BA568FA4BDB69AA1E328490F2BC8F273F798E00E8BDEBBAF861F0A1B
          E077C1DF0D7851AFBFB49B478A58CDCF97E5F9BBA42F9DB938FBD8EBDAB9F36C
          C28D6C2469A9273BC6F6E66B4E7EB2BB764D75F25A236CAF035A962A53716A16
          76BF2ADF93A46C95ECFA7AEACFC7BFF82E37FC126BE255B7ED35E26F8B1E0FD1
          2F3C53E1AF16DC0BCBA5B14335C584E5407DE839D9C0C115F0AD87ECADF14147
          CDE04F15291DCE9D2FF857F549FF0009EE93FF003F7FF909FF00C28FF84F749F
          F9FBFF00C84FFE15EE65BE2262B0B868E1E7494B95593BB5A2D1773D8A9838CB
          A9FCB9D87ECC1F12D08FF8A1FC4FEE3FB3E5E3F4ADCD3BF66CF88CBF7BC13E27
          51EFA7C9C7E95FD387FC27BA4FFCFDFF00E427FF000A3FE13DD27FE7EFFF0021
          3FF85777FC450ADFF40EBFF027FE470D5C9613FB5F81FCFCFEC93FF04E9F8A5F
          B457C4FD334A5F0AEB1A5E96675FB7EA37903430DB4591B892C3EF63A01D4D7F
          41BE11F0EC5E11F0B69FA5C24B45A7DB476EA4F70AA067F4A83FE13DD27FE7EF
          FF00213FF851FF0009EE93FF003F7FF909FF00C2BE4F8938A2BE71283A91518C
          6F64B5D5EEEFF237CBF2BA784E671776CD8A2B1FFE13DD27FE7EFF00F213FF00
          851FF09EE93FF3F7FF00909FFC2BE64F4CD8A2B1FF00E13DD27FE7EFFF00213F
          F851FF0009EE93FF003F7FF909FF00C2803628AC7FF84F749FF9FBFF00C84FFE
          147FC27BA4FF00CFDFFE427FF0A00D2D4676B5D3E79630ACF1C6CCA18ED5240C
          8C9ED5E1B6BFB4C6BD710C166D6B62BAA48F234CC90B3456A16347099CE1CB6F
          C8607EEA938CF15EBEDE3BD1DD4AB5D06561820C4FCFE9599E7783FEC0D6BF65
          D3BECCD279A62FB17C85FF00BD8DB8CFBD7A181C461E926ABD3E6EDE5BFF0056
          3C5CDB038CC438BC2D6F676BDFCF6FBB6B5FA5DD95F55E7F37ED0FAF4B6AF786
          1D1F4DFB3DC595A3E9F70ECD75319BCADD2211C151E671EBB0F229F7DFB47EA9
          75A66871E9D0E9726A9AA5A879E37662B6D29BD82D8060390312B1E79CAD6F6B
          BE13F0DF88BC4F15F5C6A931B58648A55B316D85531952A036CDC177283B41C7
          15D1DBEA1E14B5B879A382C639647F31DD6CC8666C839276F5C807EA01AEF963
          300945AA577BDBA6D6B3EFAEBFA9E452CB339939C6588B2D93766DEB7E64968B
          4B2B7ABB2EBE6F6FF13B58D2FC41AB6911C9A459CE27BA9EEEEEF6490DBCED14
          708648813F2E4B9381C003A1C9AC8F05FED09A8783FC1BE1C82DED5352B4B7B1
          B7B79E108C26F34DA79DC313CFF0F006307AF6AF61BED57C2FA9A85B98ACEE15
          65F3C092D0B7CFFDEE57AF4E7DA9915F784E0BD5B8482C56E10055905A10CA07
          0003B7B0E294733C2F272CE8DFBEBD7557BEFD7E43964398AA8A74B136B5EDA6
          C9B4ED6DB75AF7EA715F0D3C61A8789BE2F0B9BEBBD2AF1BFE11CF3C0B191B64
          5BA653B5B27AFA1FD0551D17F684D6F54962D3E67D16C751B8B9D8F2CAAFF66B
          34D9238CB83890B6CC0208EF9C57A369BAAF85F46776B38ACED5A4CEF30DA14D
          D9EB9C2F3508B8F088B092D7ECBA78B699FCC922165F23B7A91B719ACFFB430A
          E4DCA9696496DA5AFF002EBB75B6F6B9B4727C7C69C630AF6779396FADED657D
          FA5AFD2EECAF66B83B1F8E3AB78D2DAE63DDA2E9715ADB6665B891F76A197910
          B40463E5223C83D7E61F5AE7F57F8E77D71E0F8F4C8638DB4FBAD3BEC8C30FE6
          C127D93CCFBEC72D8E39C77EB9AF60B9D4FC2B7925BB4D0D8C8D6A31096B327C
          A1E8BF2F03E94D5BEF09ADC9985BD8F9CC3697FB19DC46318CEDE98E2B4A7996
          1232BAA3A7457D9FEBDEFF002D8C6AE45994E1CAF13AECDDB56BD2F65DADD77D
          CE5FC59F10F52F0F49E1DD26D26D1AD63BCD29AE9E6D44965CC6130A00EA4EE3
          F4AE7EE3F69ED50C767716F696BE4CA891CD0346C0C32321230D9E47008C0E87
          AD771AD58F863C41E2BB3D4AEE686E23B2B692D92DA4B52F19DCCADBB95E08DB
          C7D6B4A5D43C293DDFDA1E1B169B684DE6D0EEC0E00CEDED514F19838C22A74B
          99D9DFD5B7FA5BD2DEA695B2BCD27524E9D7E48DD5BAE892FBB5BE9D6FAEC8E0
          752F8F1AFE811E99F6A4D366B89E182E6E6086270234988DA0313D7AF407A56A
          7C4AF8D5AB786BC773695A7D8C7247690C72B798BCDC9724615B3818C75E7922
          BACB8D5BC2F773C524B1D9C9242BB6366B525A31E80EDE053B50D73C35AB5CC5
          35D2DADC4D01CC6F25A96643EC4AF159FD770BCCA4E97477F9DADF76BF7F91BB
          CAF31E49423897AB8D9DB549277D5DF7D1F6BAECD9C4F85FC5FAA685F0BF465D
          356DDAF352D5A5B5CDD6E658434F27271C9C7A5518BE3D6BDA5DA24DAA0D2516
          E84F145E44723149227DA091DC37A76AF484F14E811C71A2C90AAC4C5D145BB6
          15BAE47CBD79A8A7D6BC3373079722DAC91FCDF2B5A923E6EBFC3DE88E3F0EDB
          75295EEDBF3D6FA7E5F7798A593636308C68E21C79629256D2E92576BCECFEFF
          0023CB13F699F10CF70D6B1E9B6FF68B56977B98CEC9F6150147CDF29F9B9393
          8C533C49F1D7C517DF68B78E4D3747B88E68A4542865DB1165077383B7BE08E0
          8AF516BBF093C10C6D6FA7B476EDBE353664843EA06DEB47DB3C279B83F67B0F
          F4CE27FF00433FBEFF007BE5E7F1ADE39960934D505F9F5F3D3F0F238E591E6B
          28B8CB16F5F974B74B3DFADF5DDAB9C4BFC67F1201966D06DE1B8BD96CE2B897
          788E3F29771673D3E6E80575965E2593C61E0DD1F52961FB3C9771B33203900E
          40E3D8E323D8D5E9758F0BCFA77D8E48ECDED73BBC96B52533EB8DB8A75FDEDB
          F88638934D2B22DA82195576040718EA07A1E95C18AC451A9051A74F95DF7F2F
          EBF2F367B597E071546AB9D6ACE716B67DF4FCB5FBFC91FFD9}
        mmHeight = 11113
        mmLeft = 0
        mmTop = 0
        mmWidth = 49477
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CRECUOTA'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CREFVEN'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 11113
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREMTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 33602
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'AMORT'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 53446
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'INTER'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 73554
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'GASTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 109273
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 124884
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREESTADO'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 165629
        mmTop = 0
        mmWidth = 36248
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CREMTOEXC'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 145257
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'REPRO'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 28310
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'DESGRAVAMEN'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 92075
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 55827
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 106098
        mmTop = 21696
        mmWidth = 46302
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 201348
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'TOTALES  : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 10053
        mmTop = 794
        mmWidth = 16171
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREMTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 33073
        mmTop = 794
        mmWidth = 19050
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'AMORT'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 53446
        mmTop = 794
        mmWidth = 19844
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'INTER'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 74348
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'GASTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 109009
        mmTop = 794
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 125148
        mmTop = 794
        mmWidth = 19579
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 5027
        mmWidth = 201348
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 10319
        mmWidth = 201348
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'SALDO DE DEUDA TOTAL           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 6085
        mmWidth = 43857
        BandType = 7
      end
      object lblSalTot: TppLabel
        UserName = 'lblSalTot'
        AutoSize = False
        Caption = '30,947.34'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 110861
        mmTop = 5821
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'SALDO DE CUOTAS VENCIDAS   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 11113
        mmWidth = 44704
        BandType = 7
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        Caption = 'SALDO DE CUOTAS PENDIENTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 18785
        mmWidth = 45932
        BandType = 7
      end
      object ppLblCuoVen: TppLabel
        UserName = 'lblSalTot1'
        AutoSize = False
        Caption = '2,806.80'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111390
        mmTop = 10848
        mmWidth = 20638
        BandType = 7
      end
      object pplblCuoPen: TppLabel
        UserName = 'lblSalTot2'
        AutoSize = False
        Caption = '16,157.65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111125
        mmTop = 17992
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'MONTO A  PAGAR               '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 22754
        mmWidth = 36830
        BandType = 7
      end
      object pplblMonPag: TppLabel
        UserName = 'lblMonPag'
        AutoSize = False
        Caption = '21,843.79'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111125
        mmTop = 22754
        mmWidth = 20902
        BandType = 7
      end
      object ppLNota1: TppLabel
        UserName = 'LNota1'
        AutoSize = False
        Caption = 
          '- EN PROCESO DE COBRANZA, SIGNIFICA QUE LA CUOTA SERA DESCONTADA' +
          '  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 30163
        mmTop = 26458
        mmWidth = 139171
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 43921
        mmWidth = 201348
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 18785
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 22754
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 14817
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 6085
        mmWidth = 1323
        BandType = 7
      end
      object ppLblUser: TppLabel
        UserName = 'LblUser'
        AutoSize = False
        Caption = 'Impreso por   : DB2ADMIN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 44979
        mmWidth = 89165
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CREMTOEXC'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 145521
        mmTop = 794
        mmWidth = 19579
        BandType = 7
      end
      object ppLblApro: TppLabel
        UserName = 'LblUser1'
        AutoSize = False
        Caption = 'Otorgado por  : Jose Reyes Avilez'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3260
        mmLeft = 7144
        mmTop = 44979
        mmWidth = 89165
        BandType = 7
      end
      object ppLNota2: TppLabel
        UserName = 'LNota2'
        AutoSize = False
        Caption = 'POR "PLANILLA DE HABERES"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 34131
        mmTop = 30692
        mmWidth = 120386
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = 
          'EN CASO NO FUERA ASI DEBERA SER CANCELADA DIRECTAMENTE POR EL DO' +
          'CENTE.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 34131
        mmTop = 34925
        mmWidth = 156898
        BandType = 7
      end
      object lblVen: TppLabel
        UserName = 'lblVen'
        AutoSize = False
        Caption = '(6)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 10848
        mmWidth = 11906
        BandType = 7
      end
      object lblPen: TppLabel
        UserName = 'lblVen1'
        AutoSize = False
        Caption = '(54)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 17727
        mmWidth = 11906
        BandType = 7
      end
      object lblTot: TppLabel
        UserName = 'lblTot'
        AutoSize = False
        Caption = '(67)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        AutoSize = False
        Caption = 'NOTA : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 12965
        mmTop = 26458
        mmWidth = 13758
        BandType = 7
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 22490
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 18785
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 14817
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 6085
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 
          '- (D) : CUOTAS DIFERIDAS, AL SER PAGADAS SE APLICARA LOS INTERES' +
          'ES RESPECTIVOS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 30163
        mmTop = 39423
        mmWidth = 156898
        BandType = 7
      end
      object ppLabel57: TppLabel
        UserName = 'Label302'
        Caption = 'SALDO DE CUOTAS DIFERIDAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 15081
        mmWidth = 42926
        BandType = 7
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 11113
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 11113
        mmWidth = 1323
        BandType = 7
      end
      object ppLblCuoDif: TppLabel
        UserName = 'LblCuoDif'
        AutoSize = False
        Caption = '2,879.34'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111390
        mmTop = 14288
        mmWidth = 20638
        BandType = 7
      end
      object lblDif: TppLabel
        UserName = 'lblVen2'
        AutoSize = False
        Caption = '(7)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 14288
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'DESGRAVAMEN'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 92340
        mmTop = 794
        mmWidth = 16140
        BandType = 7
      end
      object ppRepCCI: TppSubReport
        UserName = 'RepCCI'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBCCI'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 50800
        mmWidth = 203300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBCCI
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpHorizontal
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'hp LaserJet 1320 PCL 6'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBCCI'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 17198
            mmPrintPosition = 0
            object ppShape5: TppShape
              UserName = 'Shape5'
              mmHeight = 7144
              mmLeft = 10583
              mmTop = 9790
              mmWidth = 141023
              BandType = 1
            end
            object ppLabel169: TppLabel
              UserName = 'Label169'
              Caption = 'Cuo.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 11906
              mmTop = 11906
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel170: TppLabel
              UserName = 'Label170'
              Caption = 'Operaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 23548
              mmTop = 11906
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel171: TppLabel
              UserName = 'Label1701'
              Caption = 'Fecha Operac.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 41540
              mmTop = 11906
              mmWidth = 18785
              BandType = 1
            end
            object ppLabel172: TppLabel
              UserName = 'Label172'
              Caption = 'Amort.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 64294
              mmTop = 11906
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel173: TppLabel
              UserName = 'Label173'
              Caption = 'Interes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 81756
              mmTop = 11906
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel174: TppLabel
              UserName = 'Label174'
              Caption = 'Desgrav.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 96573
              mmTop = 11906
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel176: TppLabel
              UserName = 'Label176'
              Caption = 'Flat'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 11906
              mmWidth = 4763
              BandType = 1
            end
            object ppLabel180: TppLabel
              UserName = 'Label180'
              Caption = 'Total Aplicado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 131763
              mmTop = 11906
              mmWidth = 17463
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 20902
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 40746
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 61913
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 78052
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 94721
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 112713
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line201'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 128852
              mmTop = 9790
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel181: TppLabel
              UserName = 'Label181'
              Caption = 'Cuotas Aplicadas con Cargo a la Cuenta Individual  (CCI)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 10583
              mmTop = 5292
              mmWidth = 82550
              BandType = 1
            end
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              DataField = 'CRECUOTA'
              DataPipeline = ppDBCCI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 12965
              mmTop = 0
              mmWidth = 3969
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              DataField = 'NROOPE'
              DataPipeline = ppDBCCI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 19844
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              DataField = 'FOPERAC'
              DataPipeline = ppDBCCI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 42069
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              DataField = 'CREAMORT'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 61648
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              DataField = 'CREINTERES'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 79111
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              DataField = 'MONCOBDESGRAV'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 97631
              mmTop = 0
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText41'
              DataField = 'CREFLAT'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 116152
              mmTop = 0
              mmWidth = 11642
              BandType = 4
            end
            object ppDBText42: TppDBText
              UserName = 'DBText42'
              DataField = 'CREMTOCOB'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3175
              mmLeft = 134144
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppLine22: TppLine
              UserName = 'Line22'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 11113
              mmTop = 529
              mmWidth = 140229
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              DataField = 'CREAMORT'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 59531
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'CREINTERES'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 78052
              mmTop = 1588
              mmWidth = 16140
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'MONCOBDESGRAV'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3175
              mmLeft = 95779
              mmTop = 1588
              mmWidth = 14288
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc11'
              DataField = 'CREFLAT'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3175
              mmLeft = 112184
              mmTop = 1588
              mmWidth = 15610
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc12'
              DataField = 'CREMTOCOB'
              DataPipeline = ppDBCCI
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBCCI'
              mmHeight = 3260
              mmLeft = 132292
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppLabel182: TppLabel
              UserName = 'Label182'
              Caption = 'TOTALES  : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 29898
              mmTop = 1323
              mmWidth = 16140
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CREDID'
      DataPipeline = ppDBEstCta
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBEstCta'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 265
          mmWidth = 201348
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 9525
          mmWidth = 201348
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'N'#176
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1058
          mmTop = 1323
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Cuo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 1058
          mmTop = 5027
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 10319
          mmTop = 1323
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Vencimiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 10319
          mmTop = 5027
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 33338
          mmTop = 1058
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'a Pagar (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 33338
          mmTop = 5027
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          AutoSize = False
          Caption = 'Amort.(S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 53975
          mmTop = 5292
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          AutoSize = False
          Caption = 'Interes (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 73025
          mmTop = 5292
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          AutoSize = False
          Caption = 'Gastos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 109273
          mmTop = 1323
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object lblGas02: TppLabel
          UserName = 'lblGas02'
          AutoSize = False
          Caption = '+ Flat (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 109273
          mmTop = 5027
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 125942
          mmTop = 1058
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Pagada (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 125942
          mmTop = 4763
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          AutoSize = False
          Caption = 'Estado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 166159
          mmTop = 4763
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label101'
          AutoSize = False
          Caption = 'Excesos (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 145521
          mmTop = 5027
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel141: TppLabel
          UserName = 'Label141'
          AutoSize = False
          Caption = 'Fondo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 92075
          mmTop = 1323
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel142: TppLabel
          UserName = 'Label102'
          AutoSize = False
          Caption = 'Desgrav. (S/.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 90488
          mmTop = 5292
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DbOfides: TppDBPipeline
    DataSource = DM1.dsProvin
    UserName = 'DbOfides'
    Left = 16
    Top = 376
  end
  object RepOfides: TppReport
    AutoStop = False
    DataPipeline = DbOfides
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 48
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbOfides'
    object ppHeaderBand29: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43921
      mmPrintPosition = 0
      object lblPerEnc: TppLabel
        UserName = 'lblPerEnc'
        AutoSize = False
        Caption = 'DETALLE HISTORICO DE ENCUESTAS A NIVEL NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel599: TppLabel
        UserName = 'Label599'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel600: TppLabel
        UserName = 'Label600'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 42714
        BandType = 0
      end
      object ppLabel601: TppLabel
        UserName = 'Label5701'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel602: TppLabel
        UserName = 'Label1'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel603: TppLabel
        UserName = 'Label603'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable56: TppSystemVariable
        UserName = 'SystemVariable56'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable57: TppSystemVariable
        UserName = 'SystemVariable57'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable58: TppSystemVariable
        UserName = 'SystemVariable58'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel604: TppLabel
        UserName = 'Label604'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel605: TppLabel
        UserName = 'Label605'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel606: TppLabel
        UserName = 'Label606'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppDBText251: TppDBText
        UserName = 'DBText251'
        DataField = 'ASOCODMOD'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 33602
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText252: TppDBText
        UserName = 'DBText252'
        DataField = 'ASOAPENOM'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 37571
        mmWidth = 86519
        BandType = 0
      end
      object lblUse: TppLabel
        UserName = 'lblUse'
        AutoSize = False
        Caption = 'lblUse'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 25400
        mmWidth = 130175
        BandType = 0
      end
      object lblProc: TppLabel
        UserName = 'lblUse3'
        AutoSize = False
        Caption = 'lblProc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 29633
        mmWidth = 130175
        BandType = 0
      end
      object lblTipAso: TppLabel
        UserName = 'lblUse4'
        AutoSize = False
        Caption = 'lblTipAso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 105040
        mmTop = 33602
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3260
        mmLeft = 3704
        mmTop = 25400
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'Procesado En'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3703
        mmTop = 29633
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label601'
        AutoSize = False
        Caption = 'Cod.Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3703
        mmTop = 33602
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Caption = 'Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3703
        mmTop = 37572
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Caption = 'Tipo De Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 33602
        mmWidth = 23283
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 1058
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197909
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 25929
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 29898
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 33602
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 37571
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100542
        mmTop = 33602
        mmWidth = 3440
        BandType = 0
      end
    end
    object ppDetailBand31: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 43127
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 31750
        mmLeft = 0
        mmTop = 10583
        mmWidth = 198438
        BandType = 4
      end
      object ppDBText253: TppDBText
        UserName = 'DBText253'
        DataField = 'DESCRIPCION01'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 8202
        mmTop = 17463
        mmWidth = 89429
        BandType = 4
      end
      object ppDBText254: TppDBText
        UserName = 'DBText254'
        DataField = 'DESCRIPCION02'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 8731
        mmTop = 27517
        mmWidth = 89694
        BandType = 4
      end
      object ppDBText255: TppDBText
        UserName = 'DBText255'
        DataField = 'DESCRIPCION03'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 8996
        mmTop = 37042
        mmWidth = 99219
        BandType = 4
      end
      object ppDBText257: TppDBText
        UserName = 'DBText257'
        DataField = 'OTMET'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3683
        mmLeft = 110861
        mmTop = 17463
        mmWidth = 85461
        BandType = 4
      end
      object ppDBText258: TppDBText
        UserName = 'DBText258'
        DataField = 'OTJUS'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3683
        mmLeft = 110861
        mmTop = 27252
        mmWidth = 85725
        BandType = 4
      end
      object ppDBText259: TppDBText
        UserName = 'DBText259'
        DataField = 'OTOSOL'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 110861
        mmTop = 37042
        mmWidth = 85725
        BandType = 4
      end
      object ppLabel590: TppLabel
        UserName = 'Label590'
        Caption = #191'Por Que Medio Se Entero?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 12700
        mmWidth = 35729
        BandType = 4
      end
      object ppLabel591: TppLabel
        UserName = 'Label5901'
        Caption = #191'Cual Es La Justificaci'#243'n De Deudor?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 22490
        mmWidth = 47964
        BandType = 4
      end
      object ppLabel592: TppLabel
        UserName = 'Label5902'
        Caption = #191'Cual Es La Situaci'#243'n?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 32015
        mmWidth = 29676
        BandType = 4
      end
      object ppLabel593: TppLabel
        UserName = 'Label5903'
        AutoSize = False
        Caption = 'Encuestado Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText256: TppDBText
        UserName = 'DBText256'
        DataField = 'USUARIO'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 0
        mmTop = 5027
        mmWidth = 47890
        BandType = 4
      end
      object ppDBText249: TppDBText
        UserName = 'DBText249'
        DataField = 'HREG'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 55298
        mmTop = 5027
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText250: TppDBText
        UserName = 'DBText250'
        DataField = 'OFDESNOM'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 109538
        mmTop = 5027
        mmWidth = 49477
        BandType = 4
      end
      object ppLabel594: TppLabel
        UserName = 'Label594'
        AutoSize = False
        Caption = 'Fecha y Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 55298
        mmTop = 529
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel595: TppLabel
        UserName = 'Label595'
        AutoSize = False
        Caption = 'Encuestado En'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 109273
        mmTop = 529
        mmWidth = 28046
        BandType = 4
      end
    end
    object ppFooterBand24: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand29: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 265
        mmWidth = 198438
        BandType = 7
      end
      object ppLabel610: TppLabel
        UserName = 'Label610'
        Caption = 'N'#176' De Encuestas Realizadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 57415
        mmTop = 1588
        mmWidth = 43656
        BandType = 7
      end
      object ppLabel613: TppLabel
        UserName = 'Label613'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 105304
        mmTop = 1588
        mmWidth = 3440
        BandType = 7
      end
      object ppDBCalc217: TppDBCalc
        UserName = 'DBCalc217'
        DataField = 'ASOID'
        DataPipeline = DbOfides
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 112713
        mmTop = 1588
        mmWidth = 27781
        BandType = 7
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 747
    Top = 354
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
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 755
    Top = 394
  end
  object ppREstadoCuenta: TppReport
    DataPipeline = ppDBPEstadoCuenta
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
    Template.FileName = 
      'D:\Desarrollo DM\COBRANZAS\FUENTES_CLIENTE_201511\FUENTES_CLIENT' +
      'E_201511_MODIFICADO\ESTADOCUENTA.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 91
    Top = 402
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPEstadoCuenta'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 108744
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 3175
        mmTop = 45244
        mmWidth = 188913
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 3175
        mmTop = 40217
        mmWidth = 188913
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 41275
        mmTop = 24077
        mmWidth = 68527
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        AutoSize = False
        Caption = 'ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 24077
        mmWidth = 16976
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        AutoSize = False
        Caption = 'NUMERO DE CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 29104
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        AutoSize = False
        Caption = 'TIPO DE CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 34396
        mmWidth = 27781
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CREDID'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 41275
        mmTop = 29104
        mmWidth = 47361
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'TIPCREDES'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 41275
        mmTop = 34396
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = 'COD.MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 124619
        mmTop = 24077
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Caption = 'OTORGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 124619
        mmTop = 29104
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Caption = 'TIPO DOCENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 124619
        mmTop = 34396
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 149490
        mmTop = 24077
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CREFOTORG'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 149490
        mmTop = 29104
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'ASOTIPDES'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3598
        mmLeft = 156104
        mmTop = 34396
        mmWidth = 16722
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 52917
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        AutoSize = False
        Caption = 'CUOTA PACTADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 12171
        mmTop = 55827
        mmWidth = 27474
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Caption = 'MONTO OTORGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5821
        mmTop = 67469
        mmWidth = 34925
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CRENUMCUO'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5821
        mmLeft = 64294
        mmTop = 54769
        mmWidth = 12435
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'CREMTOOTOR'
        DataPipeline = ppDBPEstadoCuenta
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5821
        mmLeft = 57679
        mmTop = 66675
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'INICIO DE DESCUENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 92869
        mmTop = 55827
        mmWidth = 35719
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'INICIO'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 55827
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label1001'
        AutoSize = False
        Caption = 'VALOR CUOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 67469
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CREMTO'
        DataPipeline = ppDBPEstadoCuenta
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5821
        mmLeft = 151077
        mmTop = 66411
        mmWidth = 20108
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 74613
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label1002'
        AutoSize = False
        Caption = 'CONSOLIDADO DE SALDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5419
        mmLeft = 57944
        mmTop = 77258
        mmWidth = 60061
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        AutoSize = False
        Caption = 'TOTAL A PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 24871
        mmTop = 87048
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        AutoSize = False
        Caption = 'TOTAL PAGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 25665
        mmTop = 93927
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Caption = 'SALDOS POR PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 17727
        mmTop = 101071
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'TOTAPAGAR'
        DataPipeline = ppDBPEstadoCuenta
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5821
        mmLeft = 133879
        mmTop = 85990
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'TOTPAGADO'
        DataPipeline = ppDBPEstadoCuenta
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5821
        mmLeft = 136261
        mmTop = 92869
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'SALDOPORPAGAR'
        DataPipeline = ppDBPEstadoCuenta
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5821
        mmLeft = 141817
        mmTop = 100013
        mmWidth = 21696
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 107421
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 126736
        mmTop = 85990
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label1101'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 126736
        mmTop = 93134
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 126736
        mmTop = 100542
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label1102'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 140229
        mmTop = 67204
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 46038
        mmTop = 67204
        mmWidth = 5292
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 21167
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        AutoSize = False
        Caption = 'Fecha de emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 144992
        mmTop = 1058
        mmWidth = 26797
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        AutoSize = False
        Caption = 'Hora de emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 146844
        mmTop = 7144
        mmWidth = 24807
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 173038
        mmTop = 1058
        mmWidth = 19315
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        AutoSize = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 173038
        mmTop = 7144
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        AutoSize = False
        Caption = 'Sistema de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 10319
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        AutoSize = False
        Caption = 'ESTADO DE CUENTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 15081
        mmWidth = 194205
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'ASOTIPID'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 149490
        mmTop = 34396
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        AutoSize = False
        Caption = '(1)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 164571
        mmTop = 101071
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        AutoSize = False
        Caption = 'DIRECCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3969
        mmTop = 41010
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        AutoSize = False
        Caption = 'DISTRITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3969
        mmTop = 46302
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        AutoSize = False
        Caption = 'PROVINCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 65881
        mmTop = 46302
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        AutoSize = False
        Caption = 'DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 133350
        mmTop = 46302
        mmWidth = 25929
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'REGPENDES'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 170657
        mmTop = 24077
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'DPTODES'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 46302
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'ZIPDES'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 46302
        mmWidth = 40481
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'CIUDDES'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3704
        mmLeft = 84931
        mmTop = 46302
        mmWidth = 45244
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'ASODIR'
        DataPipeline = ppDBPEstadoCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 3598
        mmLeft = 22754
        mmTop = 41010
        mmWidth = 165894
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D616765EA1D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002F00FD03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9F
          FE0AADFF000587F1A7C33F8E5AD7C35F879711E86BE1F716F7DA92AEEB9926C0
          2CAA4F0A064723935F24E95FF0547F8F12B7EF3E2978A0F3DE75FF000AE3BFE0
          AA77DB3FE0A39F1717FEA3EE07AFDC4AC1F08FECCBF10522D0F57D63C0BE30B1
          F0CEA377044DA94BA5CD1C06391D5776F2B80083C13C57F4564D94E5787CBE8B
          9D385E514EED26DB6937BEFE87E7B99D4C4CEB4ED37BBD9B565F23DF743FF829
          7FC6CB82BE67C4AF1237AE665FF0AEDFC3FF00F0511F8BD75B777C40F1039EE0
          CC3FC2BC37E247ECDDAF41FB45F8CBC2BF0FFC33E23F11587866ECC58B3B592E
          DE140A08DECA3DCF5A77C35F851E3AF191BEFEC8F08789B513A4394BD16FA74A
          FF006461D55C63861DC75AF4E9E17299D353F674D2693D6315A3DAFDAE7C4E65
          4B31BB50A93F94A5FE67DB9FB3BFFC149FC75E1EF15D8AEBFAD4BAF69734A16E
          16ED81655240E1B1C63935FA65A56A31EAFA6DBDD43CC7711AC887D411915F81
          7E1CF103DBDCF972EF8648C9578DC6D6523B11D88AFDDCF852FE67C34D058670
          D6109E7FDC15F99788F95E170CE8D6C3C145CB993B2B276B5B45EA7D078678CC
          74E788C362AA39C63CAD7336DABDEFABD6DA1D0515CCF8E3E34783FE195E5BDB
          F893C55E1DD06E2EFF00D445A86A315B3CBDBE50EC09FC2BE48F87BFF0515F18
          F8C3FE0AD1AD7C133168B27836C6CA4BAB7B88A2CDC4988E3653BF3820EF3D2B
          E0F0393E2B170A95292D211736DE9A2B5EDDDEA7E8D8CCDB0F869C2151EB3928
          AB6BABDAFDB63EDDA2B93F13FC79F03F827C47168FACF8CBC2FA4EAD31023B3B
          CD56082E189E9F23306E7E9CD6A78A7E22787FC0D656F73ADEBBA3E8F6F7476C
          12DF5EC76E931EB852EC037E15C1EC2AE9EEBD76D1EBE9DCEEF6D4F5F7969BEB
          B7A9B14572BAB7C73F04E8179756F7DE30F0BD94F63B3ED31CFAAC11B5BEF04A
          6F0CC36EE0AC467AE0D5A8FE2BF85E6D524B14F12684F790DA0BF9215BF88C89
          6E718988DD9119C8C31E0E7AD3FABD5B5F95FDCC5EDE9EDCCBEF3A0A2B94F0E7
          C78F03F8C359FECDD27C65E15D535019FF0045B4D5A09A6E3AFC8AE4FE957EFB
          E26786F4CF12368D73E20D0EDF5858CCC6C65BE892E42052E5BCB2DBB68505B3
          8C6013D28961EAA7CAE2EFBECF6EE0ABD36B99495B6DFA9B94572FE18F8DFE0B
          F1B586A177A3F8B7C33AADAE9209BE9AD3538668ECC0EA646562107079381C54
          DE02F8BDE13F8A905C49E19F13683E218ECDB6CEDA6DFC574213FED6C63B7F1A
          2587AB14DCA2F4DF47A7A846BD36D2525AEDAEFE8745457217FF00B41F8074AD
          77FB2EEBC6FE11B6D4B76CFB24BAC5BA4DBBA63617CE7DB15D723ACA8ACAC195
          864107208A99D29C2CE69ABF74546A42775169D85A2B3F54F16E95A1A235EEA7
          A7D9AC92794867B848C33FF74648C9E0F1D69DAD789B4DF0DD9ADC6A3A858D85
          BB90AB2DCCEB12313D002C40A9E493D96E3E78F72F514D4B88E4816557568D97
          70707E523AE73E95534AF12E9DAECB2A58EA16578F09C48B04EB218CFB804E3F
          1A5CAF71F32D8BB4552D73C49A77866D966D4AFECB4F859B6AC9733AC2A4FA02
          C40CD3356D51DB4799B4D9AC64BC781A4B5F3A4FDD39C7CA4E39DB9C648ED4D4
          589C923428AE7FC37E24B9D2FC05A75EF8B2EF43B1D41A0437B25BCFB6C84A47
          3E5B39CEDCF4CF35CFFED01F1FEC3E067C324F1298EDF53865BBB7B68D12E963
          12096454DC1B9040CE78F4AD69E1EA54A8A9415DB765E6FD4CE788A70A6EA4DD
          92577E48F40A2ABD96B169A944F25BDD5BDC471FDF68E40C17EA41A8744F13E9
          BE25491B4DD42C750585B6486DA759421F43B49C1FAD65CAF7B1A7322F51556E
          75BB3B5B632C9776B1C7BB607795557774C673D73DAB17E1E6ADAE3785A6B8F1
          5C9A1437D1CF2E5B4E958DBA4218EC259F9DDB71BBB6734D41B8F309D45CDCA7
          49587E33FF00976FF817F4A9A6F15D9DF786EFAFB4DBCB3BE5B585DC3C12ACA9
          B9549C12A4FA579D7C0EF89DA87C65F807E13F136A8B047A86AD0CD24CB0AED8
          C159590607D1455FD5E7ECDD5E89A5F369B5F9323DBC3DA2A7D5A6FE49A5FAA3
          F203C6FA6D86B7FF0005CAF8ADF68B58352D534EBBD4AFB44B19977ADDEA315B
          2B40BB49C310C090B8392A38AF14FD98FF006BFF008C177FB5DF87EF6DFC4DE2
          8D5BC4BAB6B515ADDE9F717524AB761A5024864809DBB40CFCA46171DB1581FF
          000551F185FF0083FF00E0AA3F16752D2EFAE74DD4F4EF1334F6B756D218E582
          4544219581C8228D47FE0A99F167C43A1DCC3F6AF08E9FAD6A101B6BEF1269FE
          17B2B4D7EFA36186592F1104872382C30C7B9AFE84C2E0AA4F0B4E518466A54E
          11F79DADA7A3BA77D76775F77CF62695A6DDDAD6FA1F56FF00C14DBE2DEA5E10
          D2F416F0AEB33E9367E22D7756D4EF9F4CB8310BCB98EE3CB56675396D817032
          4818E2B23F6C7FDAB3C756FE1DF83B343E29D56CE49BC296BAB4D25A5C181AE6
          ED89CCD214237B9C0E4F35F17EBFF1D35BF1E780FC33E1CD4A7B79B4BF09A4C9
          60163C4AA2572EE5DB24B12DDCD745E35F8E7ADFC57B1F0EDAEB135B347E17D3
          23D234FF0026211E2DD33B431CFCCDCF5AEAC164AA946946A252E472BBB6B677
          B74ED6B9E0E3A5CCA5CB7574BEF56EC7D4BFB6BEB3143FB448BC558E3B8D5F49
          B0D42E8A0C09A69605677EDCB1249AFDADF85772D6DF06B43995199A3D2A270B
          9FBC4460FEB5FCE8F8D3E3B6B5F183C536DAAEB925B497905A4162A608844A63
          850226541E4ED0327BD7F461F050EEF843E1938C674CB73D7FE99AD7C0F88546
          5470583A53DE3CCBEE513AB8528A58CC4548FDAB7E6CFC8CFF00827D7ECBDA0F
          FC1583F6A4F8BBE2CF8C3AAEADAADC68B7A62B7D2E0BE7B63186770AD9521822
          85015460707AF4AE13E1FF00867FE184BFE0A7DF16AD3C29AA5D6B6DE07F09EA
          B26973DD49E74D095863F2D1CE79316467FDCE82BED6F8E5FF000440BAD47F68
          5D4FE20FC21F8ADAF7C28BBF1048D26A56D6492EDCBFDFF29E39508527276364
          03D08ED7FF0065DFF821EE93FB377ED3975E3C9BC757DE2DD3751D32E34EBED3
          F54B2DF3DF9B845599E49BCCE7710C71B7F8BAF7AF5E7C5D96B8D6A8F12DD29D
          2518D0E595A2D25757B72EB67AADEFABD11F350E17CC14A94161D2A90A8E52AD
          CC9B926DD9DAF7D2EB47B5B4DD9F9D1FB38780341F8FDF027C47E20F157C20F8
          F1F13BC77E229EE5ADBC51A1453DC59D94F93B36ED24390D82E1C13D40C7156B
          F6A9D5FE2959FF00C1343C05E1FF00899A3F8AB42D4BC33E2EBBB1D346B9692D
          ADD4D666DE274E24C12AA5990761B71DB8FBAAFBFE0887E35F85DAF6B569F06F
          E3F78A3E1F782FC43334B73A30595BC8DDC108D1CA81BE5E33856C000935DC7E
          D21FF04736F8F3FB2BF807E19FFC2CED799BC137525D1D5F57B73A85C5E6F006
          C03CC5D88B8F9465B03039EB5DB538DB2A58CA557DAA953F68A493551CA9AE56
          B66B963BA8F2C2E9EE71C783F32FAAD5A7EC9A9F272DD382537CC9EE9DDED7BC
          ACD6C7C47FF0501FF827B43FB1C7FC13AEC7C5B7DE26D6BC45E36F1EEBDA64BA
          D4F7520F223716F76F8887DEEB2364B31CFA0E95E9DE0CFD947E1A7EC4DFB025
          F7C54F8D9E26F18789355F8B1A0DAE9B3D8D8CE81879BB2E2282DCB0C8641129
          2ECDB404385E82BED8FDBFFF00E09F9FF0DC3FB33E87F0F17C51FF0008EFF635
          FDBDF7DB8D97DA7CDF2A2923DBB37AE33BF3D78C537F6A0FF826E687FB537EC6
          1E1FF84BAC6B573673F8620B5FECFD62183734771044620E622DCAB296CAEEE3
          23078AF9BA3C691AD85A147195DA72AADD571566A0B9796CEDA2D1691D745A6C
          7BD5384654B135AAE1A8A7CB492A7CCEE9CDDF9AEAFABD5EAF4D59F907FB5AFC
          2AD2BE137C1CF0BFC44F02FC1FF8BFF09266D46092C75ED5757375697A8C8D22
          37CC15E294950CB8C02037B63D7FE327C358FF006C8FF82C4FC3DD07C49A96A5
          616BE30F0B69B75AA4B6337932CA0E8FE74881B3C2BE0A9FF6588FA7D2BF11BF
          E0885F123E3BFC1FD37C2DE3CFDA3B5ED7ADF409E33A55AB6923EC36D12214CB
          AF981E493180199BE51B873BB8F56F09FF00C1285BC2FF00B71F82BE327FC26D
          E70F07E8B6FA40D2CE9A7FD24C5606D3CCF33CCF9739DF8DA71D33DEBDDAFC65
          97C693947109D58D3AD18C92A8F5928F22E69ABBD575D13EC8F1E8F0963A5514
          5D06A94A749B4FD9AD23CCA6ED076D9F4D5AEECFCFABBFF827CF867C27FF0005
          906F80BA7EBDE26B1F87BAE40B717B0C77E5669E0167F6BF21DC1F997CD41C91
          9007A8C8ECFE01783BC3FF00F04D4FF82D9F897C33A5EB77D65F0EF4BF0E5EDF
          EA1F6D94CBE5DA0D2FEDAEAF8FBFB1D3E5E33F281D735F786ABFF04D89353FF8
          299DAFED11FF00097045B5B5FB30D13EC04EEFF4336D9F3BCCF53BB1B3B63E98
          3F163FE091FA6FC68FDBAFC43F1775CF14B4BA3F897439F42BBD063B22B218A5
          D38D9165B8F338619DE3E4E0802BCE971AE1F111F618CAEDD39617966ACF5AD7
          DF6D656DA5B799DF1E11C4507EDB0B4529C711CD1775A52E9D748DF78EFE47E7
          0F8CFE13FC29F8E7F04BC77E32F86BF027E374FA4E9EB7B716DE313AC2B41692
          C61A4CBDBE361853F8B6B1654079C8E3F46FFE0841F13B59F89FFF0004EDF0EC
          9AE6A136A571A3DFDDE990CB33EF90408E0C6A4F70A1F68F40A076C0F31F03FF
          00C1117E207823E1A7887E1BD9FED19E22B2F85DAA25CF95A35A696B1BB34A3E
          ECAE64388C9E5D1080E370C2EEC8FA8BFE09DBFB1A1FD84BF67183C05FF0902F
          89962BF9EF85E8B4FB367CDDBF2EDDEFD36F5CD7271771065D8BCAE585A15BDA
          49548B85FDA36A3CAD3BB9AB27B5D46CBB1D5C2F91E3B0B98C7135697B34E125
          2B7B34B9AE9AB283BB5BD9CAEFB9E71FB1A7ECB1E0DF8A565F11B5EF186956BE
          2EBCBAF1CEBD6B6B16AC82EA1D2EDD6F641E5C28D954DCC198B001893C9C2801
          9FB207ECADE15F17F8B7E265BF8AEDCF8D34DF05F89A6F0E786ACB5B3F6DB7D0
          AC0430DC79312C991F7AE19771CB6C48D738502BE83FD9FF00E0D7FC28EF0F6B
          7A69D45752FED7D7F51D743795E59885DDC3CDE5E3273B776DCF7C6703A52FC1
          6F82FF00F0A8B57F1C5D7F687DBBFE131F10C9AEEDF2BCBFB2EF8208BCBCE4EE
          C7939CF1F7B18E2BE37119D4E4EBF2547695B977E8D6DDB4BF6BABF73EAF0F94
          412A1CF4D5D5F9B6EA9EFDF5B77B1F3769BE20F087C13D33E2D7C31D6F4CD5BC
          43E11B6F135869FE19F0D59B34B757125E5AA5C7D86025D76C424491F0CCA889
          BF2428C0E57E2FF86AF3E0DDBF87FC59A0FC03BAF855A8E8DAD58247ADE97AC6
          9CF1F932DC471C90DDC30C81A489D19948C3E09078C647BC7C43FD8865F1778F
          3C49E2BD3BC55368BE24BDD72C3C43A25DA5989934BB8B5B56B52B22336268E5
          8DDD5972A70FC10403599F133F654F89FF00B43F87ADEC3C75F11B42B3B1D3EF
          AD6FE1B2F0EE8D25B4177241324A1AE1E599DD97E5E110A80D824B6315E8E1F3
          2C2A9C26EA2B3B73A6E7ABE58A95A31B4657D6EE57BBBDF4B5FCFAF97E25C250
          507757E4B7268B99B5772F795B4B28DACAD6D76CEFD9DBE10F86FF006A6F13F8
          F3C69F10B4FB1F176AD63E28BFD06CAC7528C5C5B6876B6CE238E38E16CA2B48
          312B3E373798BCE000391F117C21D17E077ED9B71A4F86F529ADB47BAF877AC5
          DA787C4E5A0D29CCB002F0A93FBB4931F7461728481D6B4BE36EB1F0EFC1BF1E
          35FBE6F1A7C43F81FE24BE318BFBDB5B554D2BC4CA10059C09A196DE49147C9B
          C6D906307200AA7FB387C1DD2FE2AFC78D73C53E1A93C4DA86831F86AE7449BC
          5DAF877BCF11DE5CBC64B26F084C30A4781B156305F0A3EF1AD2329C233C4CE5
          28D370D22D3E55749249FC3E9CB793EA96A4CA3094A3878462EA296B24D5DEB7
          6DADFD79AC9746F439DF0E7C32D6752F871F063C5DAC7C3FBAF8BDE05B1F04DB
          DA4DA25BCD14B73A65D32C67ED6B6D3B2C7704A02B8DDBD73C039355FE39F833
          E08FC49FD953556F07F8560B1934BF1369EBA8689AA584B6B75A1DC493A2B235
          ACDFEA77A13F700461C826BDFB48FD9CBE23FC2CF07F8534FF0003FC46D3E18F
          C39A35BE93369DACE882E74FBC312EDF3D7CB91268DCF71BD97A703AD67DD7EC
          3B79E35F0378DBFE12AF16FDB3C69E3692D679755D3EC7ECD6DA6B5A92D6C90C
          0CEC591189277B12D9EA38C44337A2AA2AB2AB651926B95CD69CF77CD16ADA26
          DDE36F9B6CA965755D374D52BB7169F328BD796DEECAF7D5A4ACEFF2563CE7F6
          AEF08F85FE0FFC44F027C3AF0FF81F588BC23E2B92E754D7B4BF07E9C3ED1AC2
          DB27C904815D0F9459B2F86E5411D0D66EBF6D69E1EF1D78475CF849F03FE25F
          827C45A7EA70437817C3F1E9FA7EA160CC1678EE76CBB58053B95882410306BD
          A75AFD9B3C6DF147C336375E2AF1B68D6FE38F0DDE0BCF0F6BDA068ED6EB62C1
          4A3ACB14B2C8264901C3A6546338C1C11A3E19F859F17B5CF1569973E30F889A
          1C3A4E932898D97867467B36D5187417124D2CA421EE91819FEF5614F32A50A5
          18F3A938A6A5773B49BBEB64BDEBA696B67A745666D2CBEA4AAC9A838A934E36
          50BC52B697BE96777A5D3BF577478CFEC57FB2FE93F1734DF1078A7C75BBC4BF
          D97E2BD4D741D3AE5D9ACF4B55B827CD11E76B4ACDFC6C09000031593F0DBC53
          E13D63E01E87E11D7BC1FA8FC4AD7B57F116AD73A6F87ED997F78B15CC9BA59D
          A47589615E065C919E00278AFA97E00FC186F821E09BED1DB51FED2179A9DDEA
          225F27CBD9E7C85F663273B738CF7AF2AD37F61AD6FC016FA1EADE11F1A41A77
          8C3C3B737ED05CDE69BF68B1BEB6BB98CAF6D3C22456C02461D1C10477E947F6
          B52AD5AA3AB51A5CC9C3E249594BB2BA4DB57B6AEF7F32BFB2EAD2A34FD9435B
          353D9B7771EEECDA49DAF74BF03C8756D32FFE0D7C74F04DDE95F082E7E10C7E
          2296E749D48D9EAB6571A6EA909818AAC9140F9F31586558A71EB5EE1FB199CF
          EC7FF0FF00FEBD6E3FF4A1EAAEBBFB2478F3E2CF8F7C2FE26F1CFC40D3E7BAF0
          BDD49716BA568FA4BDB69AA1E328490F2BC8F273F798E00E8BDEBBAF861F0A1B
          E077C1DF0D7851AFBFB49B478A58CDCF97E5F9BBA42F9DB938FBD8EBDAB9F36C
          C28D6C2469A9273BC6F6E66B4E7EB2BB764D75F25A236CAF035A962A53716A16
          76BF2ADF93A46C95ECFA7AEACFC7BFF82E37FC126BE255B7ED35E26F8B1E0FD1
          2F3C53E1AF16DC0BCBA5B14335C584E5407DE839D9C0C115F0AD87ECADF14147
          CDE04F15291DCE9D2FF857F549FF0009EE93FF003F7FF909FF00C28FF84F749F
          F9FBFF00C84FFE15EE65BE2262B0B868E1E7494B95593BB5A2D1773D8A9838CB
          A9FCB9D87ECC1F12D08FF8A1FC4FEE3FB3E5E3F4ADCD3BF66CF88CBF7BC13E27
          51EFA7C9C7E95FD387FC27BA4FFCFDFF00E427FF000A3FE13DD27FE7EFFF0021
          3FF85777FC450ADFF40EBFF027FE470D5C9613FB5F81FCFCFEC93FF04E9F8A5F
          B457C4FD334A5F0AEB1A5E96675FB7EA37903430DB4591B892C3EF63A01D4D7F
          41BE11F0EC5E11F0B69FA5C24B45A7DB476EA4F70AA067F4A83FE13DD27FE7EF
          FF00213FF851FF0009EE93FF003F7FF909FF00C2BE4F8938A2BE71283A91518C
          6F64B5D5EEEFF237CBF2BA784E671776CD8A2B1FFE13DD27FE7EFF00F213FF00
          851FF09EE93FF3F7FF00909FFC2BE64F4CD8A2B1FF00E13DD27FE7EFFF00213F
          F851FF0009EE93FF003F7FF909FF00C2803628AC7FF84F749FF9FBFF00C84FFE
          147FC27BA4FF00CFDFFE427FF0A00D2D4676B5D3E79630ACF1C6CCA18ED5240C
          8C9ED5E1B6BFB4C6BD710C166D6B62BAA48F234CC90B3456A16347099CE1CB6F
          C8607EEA938CF15EBEDE3BD1DD4AB5D06561820C4FCFE9599E7783FEC0D6BF65
          D3BECCD279A62FB17C85FF00BD8DB8CFBD7A181C461E926ABD3E6EDE5BFF0056
          3C5CDB038CC438BC2D6F676BDFCF6FBB6B5FA5DD95F55E7F37ED0FAF4B6AF786
          1D1F4DFB3DC595A3E9F70ECD75319BCADD2211C151E671EBB0F229F7DFB47EA9
          75A66871E9D0E9726A9AA5A879E37662B6D29BD82D8060390312B1E79CAD6F6B
          BE13F0DF88BC4F15F5C6A931B58648A55B316D85531952A036CDC177283B41C7
          15D1DBEA1E14B5B879A382C639647F31DD6CC8666C839276F5C807EA01AEF963
          300945AA577BDBA6D6B3EFAEBFA9E452CB339939C6588B2D93766DEB7E64968B
          4B2B7ABB2EBE6F6FF13B58D2FC41AB6911C9A459CE27BA9EEEEEF6490DBCED14
          708648813F2E4B9381C003A1C9AC8F05FED09A8783FC1BE1C82DED5352B4B7B1
          B7B79E108C26F34DA79DC313CFF0F006307AF6AF61BED57C2FA9A85B98ACEE15
          65F3C092D0B7CFFDEE57AF4E7DA9915F784E0BD5B8482C56E10055905A10CA07
          0003B7B0E294733C2F272CE8DFBEBD7557BEFD7E43964398AA8A74B136B5EDA6
          C9B4ED6DB75AF7EA715F0D3C61A8789BE2F0B9BEBBD2AF1BFE11CF3C0B191B64
          5BA653B5B27AFA1FD0551D17F684D6F54962D3E67D16C751B8B9D8F2CAAFF66B
          34D9238CB83890B6CC0208EF9C57A369BAAF85F46776B38ACED5A4CEF30DA14D
          D9EB9C2F3508B8F088B092D7ECBA78B699FCC922165F23B7A91B719ACFFB430A
          E4DCA9696496DA5AFF002EBB75B6F6B9B4727C7C69C630AF6779396FADED657D
          FA5AFD2EECAF66B83B1F8E3AB78D2DAE63DDA2E9715ADB6665B891F76A197910
          B40463E5223C83D7E61F5AE7F57F8E77D71E0F8F4C8638DB4FBAD3BEC8C30FE6
          C127D93CCFBEC72D8E39C77EB9AF60B9D4FC2B7925BB4D0D8C8D6A31096B327C
          A1E8BF2F03E94D5BEF09ADC9985BD8F9CC3697FB19DC46318CEDE98E2B4A7996
          1232BAA3A7457D9FEBDEFF002D8C6AE45994E1CAF13AECDDB56BD2F65DADD77D
          CE5FC59F10F52F0F49E1DD26D26D1AD63BCD29AE9E6D44965CC6130A00EA4EE3
          F4AE7EE3F69ED50C767716F696BE4CA891CD0346C0C32321230D9E47008C0E87
          AD771AD58F863C41E2BB3D4AEE686E23B2B692D92DA4B52F19DCCADBB95E08DB
          C7D6B4A5D43C293DDFDA1E1B169B684DE6D0EEC0E00CEDED514F19838C22A74B
          99D9DFD5B7FA5BD2DEA695B2BCD27524E9D7E48DD5BAE892FBB5BE9D6FAEC8E0
          752F8F1AFE811E99F6A4D366B89E182E6E6086270234988DA0313D7AF407A56A
          7C4AF8D5AB786BC773695A7D8C7247690C72B798BCDC9724615B3818C75E7922
          BACB8D5BC2F773C524B1D9C9242BB6366B525A31E80EDE053B50D73C35AB5CC5
          35D2DADC4D01CC6F25A96643EC4AF159FD770BCCA4E97477F9DADF76BF7F91BB
          CAF31E49423897AB8D9DB549277D5DF7D1F6BAECD9C4F85FC5FAA685F0BF465D
          356DDAF352D5A5B5CDD6E658434F27271C9C7A5518BE3D6BDA5DA24DAA0D2516
          E84F145E44723149227DA091DC37A76AF484F14E811C71A2C90AAC4C5D145BB6
          15BAE47CBD79A8A7D6BC3373079722DAC91FCDF2B5A923E6EBFC3DE88E3F0EDB
          75295EEDBF3D6FA7E5F7798A593636308C68E21C79629256D2E92576BCECFEFF
          0023CB13F699F10CF70D6B1E9B6FF68B56977B98CEC9F6150147CDF29F9B9393
          8C533C49F1D7C517DF68B78E4D3747B88E68A4542865DB1165077383B7BE08E0
          8AF516BBF093C10C6D6FA7B476EDBE353664843EA06DEB47DB3C279B83F67B0F
          F4CE27FF00433FBEFF007BE5E7F1ADE39960934D505F9F5F3D3F0F238E591E6B
          28B8CB16F5F974B74B3DFADF5DDAB9C4BFC67F1201966D06DE1B8BD96CE2B897
          788E3F29771673D3E6E80575965E2593C61E0DD1F52961FB3C9771B33203900E
          40E3D8E323D8D5E9758F0BCFA77D8E48ECDED73BBC96B52533EB8DB8A75FDEDB
          F88638934D2B22DA82195576040718EA07A1E95C18AC451A9051A74F95DF7F2F
          EBF2F367B597E071546AB9D6ACE716B67DF4FCB5FBFC91FFD9}
        mmHeight = 10848
        mmLeft = 0
        mmTop = 0
        mmWidth = 44715
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBProcesoCobranza'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBProcesoCobranza
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
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBProcesoCobranza'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 8467
            mmPrintPosition = 0
            object ppLabel122: TppLabel
              UserName = 'Label122'
              AutoSize = False
              Caption = 'ENVIOS GENERADOS PARA DESCUENTO POR PLANILLA AL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 3969
              mmWidth = 125942
              BandType = 1
            end
            object ppSystemVariable6: TppSystemVariable
              UserName = 'SystemVariable6'
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 146050
              mmTop = 3440
              mmWidth = 17463
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              AutoSize = True
              DataField = 'CREESTADO'
              DataPipeline = ppDBProcesoCobranza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBProcesoCobranza'
              mmHeight = 3598
              mmLeft = 0
              mmTop = 0
              mmWidth = 44916
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'PERIODO'
              DataPipeline = ppDBProcesoCobranza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBProcesoCobranza'
              mmHeight = 3704
              mmLeft = 47096
              mmTop = 0
              mmWidth = 35454
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'PROCESO'
              DataPipeline = ppDBProcesoCobranza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBProcesoCobranza'
              mmHeight = 3704
              mmLeft = 146315
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppLabel121: TppLabel
              UserName = 'Label121'
              AutoSize = False
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3598
              mmLeft = 138642
              mmTop = 0
              mmWidth = 3969
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 84402
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 35719
        mmLeft = 0
        mmTop = 28046
        mmWidth = 194469
        BandType = 7
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        AutoSize = False
        Caption = 'SALDO A PAGAR AL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5419
        mmLeft = 40481
        mmTop = 4498
        mmWidth = 43921
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 11377
        mmWidth = 194998
        BandType = 7
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5419
        mmLeft = 86254
        mmTop = 4498
        mmWidth = 22754
        BandType = 7
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'SALDOPAGOHOY'
        DataPipeline = ppDBPEstadoCuenta
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPEstadoCuenta'
        mmHeight = 5027
        mmLeft = 122502
        mmTop = 4763
        mmWidth = 21696
        BandType = 7
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 115359
        mmTop = 4763
        mmWidth = 5292
        BandType = 7
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        AutoSize = False
        Caption = 'OBSERVACIONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5419
        mmLeft = 67998
        mmTop = 14023
        mmWidth = 39952
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 265
        mmWidth = 194998
        BandType = 7
      end
      object pplblVencido: TppLabel
        UserName = 'lblVencido'
        AutoSize = False
        Caption = 'A LA FECHA UD. TIENE UN SALDO VENCIDO DE    S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 20902
        mmWidth = 88731
        BandType = 7
      end
      object pplblImpVencido: TppLabel
        UserName = 'lblImpVencido'
        AutoSize = False
        Caption = '376.88'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 94986
        mmTop = 21167
        mmWidth = 27781
        BandType = 7
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        AutoSize = False
        Caption = '(2)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 145786
        mmTop = 5292
        mmWidth = 3895
        BandType = 7
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        AutoSize = False
        Caption = 'IMPORTANTE PARA EL USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 7408
        mmTop = 30163
        mmWidth = 56356
        BandType = 7
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        AutoSize = False
        Caption = 
          'SALDO POR PAGAR INCLUYE AMORTIZACION, INTERES, GASTOS Y CUOTAS E' +
          'N PROCESO DE COBRANZAS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 11906
        mmTop = 35719
        mmWidth = 149352
        BandType = 7
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        Caption = '(1)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 7408
        mmTop = 35454
        mmWidth = 3969
        BandType = 7
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        Caption = '(2)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 7408
        mmTop = 39952
        mmWidth = 3895
        BandType = 7
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        Caption = 'SALDO POR PAGAR AL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 11906
        mmTop = 40217
        mmWidth = 31581
        BandType = 7
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        AutoSize = False
        Caption = 
          'LAS CUOTAS EN PROCESOS DE COBRANZAS SIGNIFICA QUE HAN SIDO ENVIA' +
          'DAS A DESCONTAR VIA PLANILLA DE HABERES; EN CASO NO FUERAN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 7144
        mmTop = 46038
        mmWidth = 179070
        BandType = 7
      end
      object ppLabel131: TppLabel
        UserName = 'Label1301'
        AutoSize = False
        Caption = 'DESCONTADAS DEBERAN SER CANCELADAS DIRECTAMENTE POR EL DOCENTE.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 7144
        mmTop = 49477
        mmWidth = 97631
        BandType = 7
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        AutoSize = False
        Caption = 
          'LAS CUOTAS VENCIDAS PODRAN SER ABONADAS EN LAS CAJAS DE NUESTRA ' +
          'OFICINA A NIVEL NACIONAL O EN NUESTRA CUENTA RECAUDADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 7144
        mmTop = 53975
        mmWidth = 178594
        BandType = 7
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        AutoSize = False
        Caption = 'DEL BANCO DE CREDITO DEL PERU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 7144
        mmTop = 57679
        mmWidth = 43053
        BandType = 7
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        AutoSize = False
        Caption = '193 1405628-0-61'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 51594
        mmTop = 56886
        mmWidth = 26120
        BandType = 7
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        AutoSize = False
        Caption = 
          'NO INCLUYE INTERESES DE CUOTAS NO VENCIDAS NI CUOTAS EN PROCESO ' +
          'DE COBRANZAS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 59002
        mmTop = 40217
        mmWidth = 132027
        BandType = 7
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 43921
        mmTop = 40217
        mmWidth = 14023
        BandType = 7
      end
      object ppRegCCI: TppRegion
        UserName = 'RegCCI'
        Caption = 'RegCCI'
        Visible = False
        mmHeight = 16140
        mmLeft = 265
        mmTop = 66146
        mmWidth = 96838
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Monto Pagado por CCI(*): S/.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 3969
          mmTop = 70379
          mmWidth = 37042
          BandType = 7
        end
        object pplblCCI: TppLabel
          UserName = 'lblImpVencido1'
          Caption = '376.88'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 41804
          mmTop = 70379
          mmWidth = 10710
          BandType = 7
        end
        object ppLabel183: TppLabel
          UserName = 'Label183'
          Caption = '*CCI: Aplicaci'#243'n de Cuota total o parcial por Cuenta Individual.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 3969
          mmTop = 75936
          mmWidth = 78655
          BandType = 7
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPEstadoCuenta: TppDBPipeline
    DataSource = DM1.dsTDoc
    UserName = 'DBPEstadoCuenta'
    Left = 19
    Top = 402
  end
  object ppDBProcesoCobranza: TppDBPipeline
    DataSource = DM1.dsTZona
    UserName = 'ppDBProcesoCobranza'
    Left = 51
    Top = 402
  end
  object ppHojResNor: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 1270
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 254
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
    Left = 168
    Top = 321
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 288926
      mmPrintPosition = 0
      object ppMemo3: TppMemo
        UserName = 'Memo3'
        Caption = 
          'HOJA RESUMEN'#13#10#13#10'Apellidos y Nombres  :'#13#10#13#10'D.N.I.'#9#9'    :'#13#10'N'#176' de C' +
          'r'#233'dito'#9'    :'#13#10'Fecha'#9#9'    :'#13#10'Monto Otorgado (S/.) :'#13#10'Plazo (meses' +
          ')'#9'    :'#13#10'Tipo de Cr'#233'dito'#9'    :'#13#10'Forma de Desembolso  :'#13#10'Tasa Efe' +
          'ctiva Anual  :'#13#10'Tasa de Gastos Admin.:'#13#10#13#10'-'#9'El desembolso en efe' +
          'ctivo deber'#225' cobrarse el  d'#237'a de la aprobaci'#243'n del cr'#233'dito. En c' +
          'aso contrario se proceder'#225' a su anulaci'#243'n.'#13#10'-'#9'El desembolso en c' +
          'heque de gerencia, cuenta de ahorros o giro bancario se efectuar' +
          #225' en las entidades autorizadas y en los plazos determinados por ' +
          'Derrama.'#13#10'-'#9'El cr'#233'dito otorgado generar'#225' un inter'#233's compensatori' +
          'o anual y, por '#250'nica vez, una comisi'#243'n por gastos administrativo' +
          's sobre el monto otorgado, distribuida entre las cuotas del cr'#233'd' +
          'ito.'#13#10'-'#9'El docente autoriza a Derrama a efectuar la cobranza de ' +
          'las cuotas fijadas en el calendario de pagos mediante descuento ' +
          'por planilla '#250'nica de remuneraciones.'#13#10'-'#9'En caso de no efectuars' +
          'e el cobro respectivo, el docente deber'#225' pagar la(s) cuota(s) ve' +
          'ncida(s) en las cajas de Derrama ubicadas en la Sede Central y e' +
          'n las oficinas a nivel nacional o a trav'#233's del Banco de Cr'#233'dito ' +
          '(Cuenta Recaudadora N'#186' 193-1405628-0-61,  indicando el N'#186' de DNI' +
          ' del titular).'#13#10'-'#9'En caso contrario, a partir de 2 cuotas vencid' +
          'as Derrama podr'#225' dar por vencidos todos los plazos y proceder al' +
          ' cobro del '#237'ntegro de lo adeudado, pudiendo disponer el llenado ' +
          'y la ejecuci'#243'n del pagar'#233' incompleto suscrito y entregado por el' +
          ' docente al momento de la firma del contrato de cr'#233'dito.'#13#10'-'#9'El d' +
          'ocente podr'#225' efectuar pagos anticipados de las cuotas del cr'#233'dit' +
          'o, los que se aplicar'#225'n primero a las '#250'ltimas cuotas en forma as' +
          'cendente, y/o podr'#225' solicitar la cancelaci'#243'n del saldo total ade' +
          'udado. En ambos casos se excluir'#225'n los intereses, pagando solame' +
          'nte el capital m'#225's el total de gastos administrativos.'#13#10'-'#9'En cas' +
          'o de desistimiento del cr'#233'dito, el docente deber'#225' comunicarlo po' +
          'r escrito a  Derrama en un plazo m'#225'ximo de 24 horas desde la fec' +
          'ha de aprobaci'#243'n del cr'#233'dito. Toda devoluci'#243'n luego de ocurrido ' +
          'el desembolso se considerar'#225' como pago anticipado, el que inclui' +
          'r'#225' el total de gastos administrativos.'#13#10'-'#9'Al pagar puntualmente ' +
          'sus cuotas estar'#225' cuidando su historial crediticio para el otorg' +
          'amiento de futuros cr'#233'ditos.'#13#10#13#10'Declaro conocer los t'#233'rminos y c' +
          'ondiciones del contrato y la hoja resumen arriba indicados.'#13#10#13#10#13 +
          #10#13#10#13#10' ____________________________'#13#10' Firma'#13#10' D.N.I.  ___________' +
          '_'#13#10
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Lines.Strings = (
          'N'#176' de Cr'#233'dito'#9'    '
          'Fecha Aprobaci'#243'n'#9'   '
          'Monto Otorgado (S/.) '
          'Plazo (meses)'#9'    '
          'Tipo de Cr'#233'dito'#9'    '
          'Forma de Desembolso  '
          'Tasa Efectiva Anual  '
          'T.Costo Efectiva Anual  '
          'Comisi'#243'n Gastos Admin.'
          'Fondo Desgravamen'
          'Forma de descuento'
          ''
          
            '- El desembolso en efectivo se cobrar'#225' el d'#237'a de la aprobaci'#243'n d' +
            'el cr'#233'dito. De no cobrarse se proceder'#225' a su anulaci'#243'n.'
          
            '- El desembolso en cheque de gerencia, abono en cuenta de ahorro' +
            's o giro bancario se efectuar'#225' en las entidades autorizadas y en' +
            ' los plazos determinados por Derrama.'
          
            '- El cr'#233'dito otorgado generar'#225' un inter'#233's compensatorio anual y ' +
            'por '#250'nica vez, una comisi'#243'n por gastos administrativos sobre el ' +
            'monto otorgado, distribuida entre el N'#186' total de cuotas del cr'#233'd' +
            'ito.'
          
            '- El docente autoriza a Derrama a efectuar la cobranza mensual d' +
            'e las cuotas fijadas en el calendario de pagos, mediante descuen' +
            'to por planilla '#250'nica de remuneraciones.'
          
            '- De no efectuarse la cobranza, el docente deber'#225' pagar la(s) cu' +
            'ota(s) vencida(s) en la Derrama, ya sea en la Sede Central o en ' +
            'las Oficinas Desconcentradas a nivel nacional, o a trav'#233's del Ba' +
            'nco de Cr'#233'dito (Cuenta Recaudadora N'#186' 193-1405628-0-61), indican' +
            'do el N'#186' de DNI del Docente.'
          
            '- De producirse un atraso en el pago de una o m'#225's cuotas, Derram' +
            'a podr'#225' dar por vencidos todos los plazos y proceder al cobro de' +
            'l '#237'ntegro de lo adeudado, pudiendo disponer el llenado y la ejec' +
            'uci'#243'n del pagar'#233' incompleto suscrito y entregado por el docente ' +
            'al momento de la firma del contrato de cr'#233'dito.'
          
            '- El docente podr'#225' efectuar pagos anticipados de las cuotas del ' +
            'cr'#233'dito, los que se aplicar'#225'n primero a las '#250'ltimas cuotas en fo' +
            'rma ascendente, y/o podr'#225' solicitar la cancelaci'#243'n del saldo tot' +
            'al adeudado. En ambos casos se excluir'#225'n los intereses, pagando ' +
            'solamente el capital, m'#225's el total de gastos administrativos.'
          
            '- El docente podr'#225' desistir del cr'#233'dito, comunicando su decisi'#243'n' +
            ' por escrito a  Derrama, antes que se haya emitido la orden de d' +
            'esembolso. Toda devoluci'#243'n luego de ocurrido el desembolso, se c' +
            'onsiderar'#225' como pago anticipado, el que incluir'#225' el total de gas' +
            'tos administrativos.'
          
            '- En caso de incumplimiento de pago, por parte del docente, el g' +
            'arante solidariamente asumir'#225' el pago de la deuda.'
          '- Ver adenda de fondo de protecci'#243'n de desgravamen.'
          ''
          
            'Declaro tener conocimiento de los t'#233'rminos y condiciones del con' +
            'trato y la hoja resumen.'
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ' ____________________________')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 279136
        mmLeft = 1852
        mmTop = 9790
        mmWidth = 94192
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object mDat01: TppMemo
        UserName = 'mDat01'
        Caption = #13#10
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          '')
        Transparent = True
        mmHeight = 280459
        mmLeft = 96309
        mmTop = 7673
        mmWidth = 103452
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'RESUMEN CRONOGRAMA DE PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 3440
        mmWidth = 72496
        BandType = 4
      end
      object lblCopia01: TppLabel
        UserName = 'lblCopia1'
        AutoSize = False
        Caption = '(Copia)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 79375
        mmTop = 3440
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel144: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 44186
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel145: TppLabel
        UserName = 'Label50'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 10054
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel146: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 13758
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel147: TppLabel
        UserName = 'Label403'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 28575
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel148: TppLabel
        UserName = 'Label51'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 32279
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel149: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 21167
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel150: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 24871
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel151: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 17463
        mmWidth = 2646
        BandType = 4
      end
      object lblNomGen: TppLabel
        UserName = 'lblNomGen'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 256382
        mmWidth = 93134
        BandType = 4
      end
      object lblDni: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 14288
        mmTop = 260880
        mmWidth = 30692
        BandType = 4
      end
      object lblFecCre: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 14288
        mmWidth = 30692
        BandType = 4
      end
      object lblTipCre: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 25135
        mmWidth = 40217
        BandType = 4
      end
      object lblTipDes: TppLabel
        UserName = 'lblTotGas1'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 28840
        mmWidth = 31485
        BandType = 4
      end
      object lblNumCredito: TppLabel
        UserName = 'lblNumCre'
        AutoSize = False
        Caption = 'XX-XXXXX-XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 10583
        mmWidth = 32279
        BandType = 4
      end
      object lblMonto: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 17992
        mmWidth = 20373
        BandType = 4
      end
      object lblTasEfe: TppLabel
        UserName = 'lblTasEfe'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 32544
        mmWidth = 20373
        BandType = 4
      end
      object lblTasGas: TppLabel
        UserName = 'lblTasGas'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 40217
        mmWidth = 20373
        BandType = 4
      end
      object lblPlazo: TppLabel
        UserName = 'lblPlazo'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 21431
        mmWidth = 19844
        BandType = 4
      end
      object ppLabel152: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 35983
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel153: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'N'#176'   Vcto      Cuota    Capital  Interes Fon.Des. Gastos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3217
        mmLeft = 96573
        mmTop = 3704
        mmWidth = 102394
        BandType = 4
      end
      object ppLabel270: TppLabel
        UserName = 'Label501'
        AutoSize = False
        Caption = 'Apellidos y Nombres :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 252148
        mmWidth = 44186
        BandType = 4
      end
      object ppLabel271: TppLabel
        UserName = 'Label271'
        AutoSize = False
        Caption = 'D.N.I. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 260615
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel154: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = '( Firma )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 284163
        mmWidth = 12171
        BandType = 4
      end
      object lblFrmDes: TppLabel
        UserName = 'lblTasGas1'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 47890
        mmWidth = 41540
        BandType = 4
      end
      object ppLabel211: TppLabel
        UserName = 'Label211'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 39952
        mmWidth = 2646
        BandType = 4
      end
      object lblFonDes: TppLabel
        UserName = 'lblTasGas2'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 44186
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 47890
        mmWidth = 2646
        BandType = 4
      end
      object lblTasEfe03: TppLabel
        UserName = 'lblTasEfe2'
        AutoSize = False
        Caption = 'lblNomGen'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 36513
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object cdsCronograma_Tmp: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRECUOTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CREFVEN'
        DataType = ftDate
      end
      item
        Name = 'CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTO'
        DataType = ftFloat
      end
      item
        Name = 'CREDESGRAV'
        DataType = ftCurrency
      end
      item
        Name = 'cdsCosPer'
        DataType = ftCurrency
      end
      item
        Name = 'cdsFacPre'
        DataType = ftCurrency
      end
      item
        Name = 'cdsSaldo'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    PictureMasks.Strings = (
      
        'TRES'#9'{{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]' +
        ',({{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]),[-' +
        ']{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 965
    Top = 407
    Data = {
      220100009619E0BD01000000180000000A000000000003000000220108435245
      43554F5441010049000000010005574944544802000200140007435245465645
      4E040006000000000008435245414D4F525408000400000000000A435245494E
      5445524553080004000000000007435245464C41540800040000000000064352
      454D544F08000400000000000A43524544455347524156080004000000010007
      535542545950450200490006004D6F6E65790009636473436F73506572080004
      000000010007535542545950450200490006004D6F6E65790009636473466163
      507265080004000000010007535542545950450200490006004D6F6E65790008
      63647353616C646F080004000000010007535542545950450200490006004D6F
      6E6579000000}
  end
  object dsCronograma_Tmp: TDataSource
    DataSet = cdsCronograma_Tmp
    Left = 965
    Top = 427
  end
  object cdsCronograma: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRECUOTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CREFVEN'
        DataType = ftDate
      end
      item
        Name = 'CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTO'
        DataType = ftFloat
      end
      item
        Name = 'cdsSegDes'
        DataType = ftCurrency
      end
      item
        Name = 'cdsCosPer'
        DataType = ftCurrency
      end
      item
        Name = 'cdsFacPre'
        DataType = ftCurrency
      end
      item
        Name = 'cdsSaldo'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    PictureMasks.Strings = (
      
        'TRES'#9'{{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]' +
        ',({{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]),[-' +
        ']{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 985
    Top = 305
    Data = {
      210100009619E0BD01000000180000000A000000000003000000210108435245
      43554F5441010049000000010005574944544802000200140007435245465645
      4E040006000000000008435245414D4F525408000400000000000A435245494E
      5445524553080004000000000007435245464C41540800040000000000064352
      454D544F08000400000000000963647353656744657308000400000001000753
      5542545950450200490006004D6F6E65790009636473436F7350657208000400
      0000010007535542545950450200490006004D6F6E6579000963647346616350
      7265080004000000010007535542545950450200490006004D6F6E6579000863
      647353616C646F080004000000010007535542545950450200490006004D6F6E
      6579000000}
  end
  object dsCronograma: TDataSource
    DataSet = cdsCronograma
    Left = 985
    Top = 337
  end
  object ppHojResRef: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 1270
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 254
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\aa.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 210
    Top = 320
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 289190
      mmPrintPosition = 0
      object ppMemo1: TppMemo
        UserName = 'Memo3'
        Caption = 
          'HOJA RESUMEN'#13#10#13#10'Apellidos y Nombres  :'#13#10#13#10'D.N.I.'#9#9'    :'#13#10'N'#176' de C' +
          'r'#233'dito'#9'    :'#13#10'Fecha'#9#9'    :'#13#10'Monto Otorgado (S/.) :'#13#10'Plazo (meses' +
          ')'#9'    :'#13#10'Tipo de Cr'#233'dito'#9'    :'#13#10'Forma de Desembolso  :'#13#10'Tasa Efe' +
          'ctiva Anual  :'#13#10'Tasa de Gastos Admin.:'#13#10#13#10'-'#9'El desembolso en efe' +
          'ctivo deber'#225' cobrarse el  d'#237'a de la aprobaci'#243'n del cr'#233'dito. En c' +
          'aso contrario se proceder'#225' a su anulaci'#243'n.'#13#10'-'#9'El desembolso en c' +
          'heque de gerencia, cuenta de ahorros o giro bancario se efectuar' +
          #225' en las entidades autorizadas y en los plazos determinados por ' +
          'Derrama.'#13#10'-'#9'El cr'#233'dito otorgado generar'#225' un inter'#233's compensatori' +
          'o anual y, por '#250'nica vez, una comisi'#243'n por gastos administrativo' +
          's sobre el monto otorgado, distribuida entre las cuotas del cr'#233'd' +
          'ito.'#13#10'-'#9'El docente autoriza a Derrama a efectuar la cobranza de ' +
          'las cuotas fijadas en el calendario de pagos mediante descuento ' +
          'por planilla '#250'nica de remuneraciones.'#13#10'-'#9'En caso de no efectuars' +
          'e el cobro respectivo, el docente deber'#225' pagar la(s) cuota(s) ve' +
          'ncida(s) en las cajas de Derrama ubicadas en la Sede Central y e' +
          'n las oficinas a nivel nacional o a trav'#233's del Banco de Cr'#233'dito ' +
          '(Cuenta Recaudadora N'#186' 193-1405628-0-61,  indicando el N'#186' de DNI' +
          ' del titular).'#13#10'-'#9'En caso contrario, a partir de 2 cuotas vencid' +
          'as Derrama podr'#225' dar por vencidos todos los plazos y proceder al' +
          ' cobro del '#237'ntegro de lo adeudado, pudiendo disponer el llenado ' +
          'y la ejecuci'#243'n del pagar'#233' incompleto suscrito y entregado por el' +
          ' docente al momento de la firma del contrato de cr'#233'dito.'#13#10'-'#9'El d' +
          'ocente podr'#225' efectuar pagos anticipados de las cuotas del cr'#233'dit' +
          'o, los que se aplicar'#225'n primero a las '#250'ltimas cuotas en forma as' +
          'cendente, y/o podr'#225' solicitar la cancelaci'#243'n del saldo total ade' +
          'udado. En ambos casos se excluir'#225'n los intereses, pagando solame' +
          'nte el capital m'#225's el total de gastos administrativos.'#13#10'-'#9'En cas' +
          'o de desistimiento del cr'#233'dito, el docente deber'#225' comunicarlo po' +
          'r escrito a  Derrama en un plazo m'#225'ximo de 24 horas desde la fec' +
          'ha de aprobaci'#243'n del cr'#233'dito. Toda devoluci'#243'n luego de ocurrido ' +
          'el desembolso se considerar'#225' como pago anticipado, el que inclui' +
          'r'#225' el total de gastos administrativos.'#13#10'-'#9'Al pagar puntualmente ' +
          'sus cuotas estar'#225' cuidando su historial crediticio para el otorg' +
          'amiento de futuros cr'#233'ditos.'#13#10#13#10'Declaro conocer los t'#233'rminos y c' +
          'ondiciones del contrato y la hoja resumen arriba indicados.'#13#10#13#10#13 +
          #10#13#10#13#10' ____________________________'#13#10' Firma'#13#10' D.N.I.  ___________' +
          '_'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          'N'#176' de Cr'#233'dito'#9'    '
          'Fecha Aprobaci'#243'n'#9'   '
          'Monto Refinanciado (K)  S/. '
          'Plazo (meses)'#9'    '
          'Tipo de Cr'#233'dito'#9'    '
          'Forma de Desembolso  '
          'Tasa Efectiva Anual  '
          'Tasa Costo Efectiva Anual  '
          'Gastos/REF.'
          'Forma de descuento'
          ''
          
            '- La aprobaci'#243'n de la operaci'#243'n de refinanciamiento de no acepta' +
            'rse, se proceder'#225' a su anulaci'#243'n respectiva.'
          
            '- El cr'#233'dito refinanciado generar'#225' un inter'#233's compensatorio anua' +
            'l. El nuevo gasto se tomar'#225' de los saldos no pagados del cr'#233'dito' +
            ' anterior como: intereses vencidos no pagados, intereses de las ' +
            'cuotas diferidas no pagadas, gasto flat no pagado y desgravamen ' +
            'vencidos no pagados, que ser'#225'n distribuidas entre el n'#250'mero tota' +
            'l de cuotas del nuevo cr'#233'dito refinanciado.'
          
            '- El docente autoriza a Derrama a efectuar la cobranza mensual d' +
            'e las cuotas fijadas en el calendario de pagos, mediante descuen' +
            'to por planilla '#250'nica de remuneraciones.'
          
            '- De no efectuarse la cobranza, el docente deber'#225' pagar la(s) cu' +
            'ota(s) vencida(s) en la Derrama, ya sea en la Sede Central o en ' +
            'las Oficinas Desconcentradas a nivel nacional, o a trav'#233's del Ba' +
            'nco de Cr'#233'dito (Cuenta Recaudadora  N'#186' 193-1405628-0-61), indica' +
            'ndo el N'#186' de DNI del Docente.'
          
            '- De producirse un atraso en el pago de una o m'#225's cuotas, Derram' +
            'a podr'#225' dar por vencidos todos los plazos y proceder al cobro de' +
            'l '#237'ntegro de lo adeudado, pudiendo disponer el llenado y la ejec' +
            'uci'#243'n del pagar'#233' incompleto suscrito y entregado por el docente ' +
            'al momento de la firma del contrato de cr'#233'dito refinanciado.'
          
            '- El docente podr'#225' efectuar pagos anticipados de las cuotas del ' +
            'cr'#233'dito, los que se aplicar'#225'n primero a las '#250'ltimas cuotas en fo' +
            'rma ascendente, y/o podr'#225' solicitar la cancelaci'#243'n del saldo tot' +
            'al adeudado. En ambos casos se excluir'#225'n los intereses, pagando ' +
            'solamente el capital, m'#225's el total de gastos administrativos.'
          
            '- El docente podr'#225' desistir del cr'#233'dito refinanciado, s'#243'lo hasta' +
            ' el mismo d'#237'a de aprobado, comunicando su decisi'#243'n por escrito a' +
            ' Derrama, antes que se haya efectuado el cierre de operaciones d' +
            'el d'#237'a. '
          
            '- En caso de incumplimiento de pago, por parte del docente, el g' +
            'arante solidariamente asumir'#225' el pago de la deuda.'
          
            '- Para el descuento de planilla se autoriza voluntariamente y en' +
            ' forma expresa e irrevocable a Derrama, efectuar la cobranza men' +
            'sual de las cuotas del cr'#233'dito refinanciado incluido los meses d' +
            'e julio y diciembre.'
          
            '- Los procesos de cobranza generados y enviados por el cr'#233'dito a' +
            'nterior, se descargaran y se aplicaran a las '#250'ltimas cuotas en f' +
            'orma ascendente del cr'#233'dito refinanciado. No genera devoluci'#243'n a' +
            'lguna al asociado.'
          ''
          
            'Declaro tener conocimiento de los t'#233'rminos y condiciones del con' +
            'trato y la hoja resumen.'
          '')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 279136
        mmLeft = 794
        mmTop = 9790
        mmWidth = 95250
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'RESUMEN CRONOGRAMA DE PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 529
        mmTop = 3440
        mmWidth = 73554
        BandType = 4
      end
      object ppLabel156: TppLabel
        UserName = 'lblCopia1'
        AutoSize = False
        Caption = '(Copia)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 79640
        mmTop = 3704
        mmWidth = 15610
        BandType = 4
      end
      object ppLabel157: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 45773
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel158: TppLabel
        UserName = 'Label50'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 10054
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel159: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 14552
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel160: TppLabel
        UserName = 'Label403'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 32279
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel161: TppLabel
        UserName = 'Label51'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 36513
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel162: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 23283
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel163: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 27517
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel164: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 18785
        mmWidth = 2646
        BandType = 4
      end
      object lblNomGen01: TppLabel
        UserName = 'lblNomGen'
        AutoSize = False
        Caption = 'LOPEZ ZAMORA DE SALINAS TERESA ELIZABETH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 266965
        mmWidth = 92604
        BandType = 4
      end
      object lblDni01: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = '08000950'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 271463
        mmWidth = 24077
        BandType = 4
      end
      object lblFecCre01: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = '10/07/2009'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 14817
        mmWidth = 30692
        BandType = 4
      end
      object lblTipCre01: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'EXTRAORDINARIO (CONSUMO)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 27781
        mmWidth = 40217
        BandType = 4
      end
      object lblTipDes01: TppLabel
        UserName = 'lblTotGas1'
        AutoSize = False
        Caption = 'REFINANCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 32544
        mmWidth = 31485
        BandType = 4
      end
      object lblNumCredito01: TppLabel
        UserName = 'lblNumCre'
        AutoSize = False
        Caption = '24-00283-2009'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 10319
        mmWidth = 32279
        BandType = 4
      end
      object lblMonto01: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = '1,431.40'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 19315
        mmWidth = 20373
        BandType = 4
      end
      object lblTasEfe01: TppLabel
        UserName = 'lblTasEfe'
        AutoSize = False
        Caption = '24.60 %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 36777
        mmWidth = 20373
        BandType = 4
      end
      object lblTasGas01: TppLabel
        UserName = 'lblTasGas'
        AutoSize = False
        Caption = 'S/.15.69'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 45773
        mmWidth = 20373
        BandType = 4
      end
      object lblPlazo01: TppLabel
        UserName = 'lblPlazo'
        AutoSize = False
        Caption = '18'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 23548
        mmWidth = 19844
        BandType = 4
      end
      object ppLabel175: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 41275
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel177: TppLabel
        UserName = 'Label501'
        AutoSize = False
        Caption = 'Apellidos y Nombres :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 262732
        mmWidth = 44186
        BandType = 4
      end
      object ppLabel178: TppLabel
        UserName = 'Label271'
        AutoSize = False
        Caption = 'D.N.I. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 271198
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel179: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = '( Firma )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 283634
        mmWidth = 12171
        BandType = 4
      end
      object lblFrmDes01: TppLabel
        UserName = 'lblTasGas1'
        AutoSize = False
        Caption = 'PLANILLA MINISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 50271
        mmWidth = 41540
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 35190
        mmTop = 281253
        mmWidth = 60061
        BandType = 4
      end
      object mDat02: TppMemo
        UserName = 'mDat02'
        Caption = #13#10
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          '')
        Transparent = True
        mmHeight = 280459
        mmLeft = 96309
        mmTop = 7673
        mmWidth = 103452
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        AutoSize = False
        Caption = 'N'#176'   Vcto      Cuota    Capital  Interes Fon.Des. Gastos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3217
        mmLeft = 96573
        mmTop = 4233
        mmWidth = 102394
        BandType = 4
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 50271
        mmWidth = 2646
        BandType = 4
      end
      object lblTasEfe02: TppLabel
        UserName = 'lblTasEfe1'
        AutoSize = False
        Caption = '24.60 %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 41540
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBCCI: TppDBPipeline
    UserName = 'DBCCI'
    Left = 603
    Top = 362
  end
  object ppReport1: TppReport
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 395
    Top = 234
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppImage4: TppImage
        UserName = 'Image4'
        MaintainAspectRatio = False
        mmHeight = 13229
        mmLeft = 11113
        mmTop = 5821
        mmWidth = 13229
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object cdsCronograma_Tmp2: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRECUOTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CREFVEN'
        DataType = ftDate
      end
      item
        Name = 'CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTO'
        DataType = ftFloat
      end
      item
        Name = 'CREDESGRAV'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    PictureMasks.Strings = (
      
        'TRES'#9'{{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]' +
        ',({{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]),[-' +
        ']{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 1013
    Top = 71
    Data = {
      B10000009619E0BD010000001800000007000000000003000000B10008435245
      43554F5441010049000000010005574944544802000200140007435245465645
      4E040006000000000008435245414D4F525408000400000000000A435245494E
      5445524553080004000000000007435245464C41540800040000000000064352
      454D544F08000400000000000A43524544455347524156080004000000010007
      535542545950450200490006004D6F6E6579000000}
  end
  object dsCronograma_Tmp2: TDataSource
    DataSet = cdsCronograma_Tmp2
    Left = 1013
    Top = 107
  end
end
