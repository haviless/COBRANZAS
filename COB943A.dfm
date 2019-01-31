object fPreAproDev: TfPreAproDev
  Left = 407
  Top = 163
  BorderStyle = bsDialog
  Caption = 'Solicitud de devoluci'#243'n'
  ClientHeight = 566
  ClientWidth = 667
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grbAsociados: TGroupBox
    Left = 18
    Top = 55
    Width = 642
    Height = 53
    Caption = 'Asociado'
    TabOrder = 0
    object EdtCodMod: TEdit
      Left = 15
      Top = 16
      Width = 94
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = EdtCodModChange
      OnExit = EdtCodModExit
      OnKeyPress = EdtCodModKeyPress
    end
    object BitBuscar: TBitBtn
      Left = 112
      Top = 17
      Width = 23
      Height = 24
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBuscarClick
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 586
      Top = 10
      Width = 44
      Height = 37
      Cancel = True
      Caption = 'Salir'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn3Click
    end
    object Panel3: TPanel
      Left = 143
      Top = 15
      Width = 436
      Height = 27
      Enabled = False
      TabOrder = 3
      object edtNomGen: TEdit
        Left = 1
        Top = 1
        Width = 433
        Height = 24
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object grbPrestamos: TGroupBox
    Left = 18
    Top = 107
    Width = 641
    Height = 134
    Caption = 'Prestamos'
    Enabled = False
    TabOrder = 1
    object dtgPrestamo: TwwDBGrid
      Left = 16
      Top = 15
      Width = 607
      Height = 92
      DisableThemesInTitle = False
      Selected.Strings = (
        'NUMERO'#9'6'#9'N'#250'mero'
        'CREFOTORG'#9'10'#9'Fec.Prestamo'
        'TMONABR'#9'5'#9'Moneda'
        'CREMTOOTOR'#9'11'#9'Mon.Aprobado'
        'CRENUMCUO'#9'7'#9'N'#176' Cuotas'
        'CRESDOACT'#9'11'#9'Saldo'
        'TIPCREDES'#9'30'#9'Motivo'
        'CREESTADO'#9'17'#9'Estado'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsSolicitud
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dtgPrestamoDrawDataCell
      OnDblClick = dtgPrestamoDblClick
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 17
      Top = 110
      Width = 93
      Height = 22
      Caption = 'Anulaci'#243'n'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888889800008898888888888888898800008899
        88777777777798880000889990000000000998880000888990BFFFBFFF998888
        0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
        990788880000888880999FB99F0788880000888880FC9999CF07888800008888
        80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
        0000888880999F099998888800008888999FBF0F089988880000889999000000
        8889988800008899988888888888898800008888888888888888889800008888
        88888888888888880000}
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
  end
  object grbCronograma: TGroupBox
    Left = 19
    Top = 242
    Width = 641
    Height = 184
    Caption = 'Cronograma'
    TabOrder = 2
    object DBGCUOTAS: TwwDBGrid
      Left = 15
      Top = 16
      Width = 606
      Height = 139
      DisableThemesInTitle = False
      Selected.Strings = (
        'CRECUOTA'#9'6'#9'N'#176' Cuota'#9#9
        'CREFVEN'#9'10'#9'Fec.Vencimto'#9#9
        'CREMTO'#9'12'#9'Cuota a Pagar'#9#9
        'CRECAPITAL'#9'11'#9'Amortizaci'#243'n'#9#9
        'CREMTOINT'#9'11'#9'Interes'#9#9
        'CREMTOFLAT'#9'11'#9'Gastos / Flat'#9#9
        'MONCOBDESGRAV'#9'11'#9'Desgravamen'#9#9
        'CREMTOCOB'#9'12'#9'Cuota Pagada'#9#9
        'CREESTADO'#9'22'#9'Estado'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCuotas
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = DBGCUOTASDrawDataCell
      OnDblClick = DBGCUOTASDblClick
    end
    object fcSBTodos2: TfcShapeBtn
      Left = 16
      Top = 158
      Width = 102
      Height = 22
      Caption = 'Marc. Todos'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
        7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F
        7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFF
        FF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F0000
        FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF0000
        FF0000FF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F0000FF0000
        FF0000FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF0000FF0000
        FF0000FF0000FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F0000FF0000FF0000
        FF0000FF0000FF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F0000FF0000FF0000
        FF0000FF0000FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF0000FF0000FFFFFF
        FF0000FF0000FF0000FF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFF
        FF0000FF0000FF0000FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFF
        FF0000FF0000FF0000FF0000FF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FF0000FF0000FFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FF0000FF0000FF0000FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FF0000FF0000FF0000FF0000FF7F7F7F7F7F7FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFF7F7F7F7F7F7FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FFFFFFFF7F7F7F7F7F7FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FFFFFFFF7F7F7F7F
        7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFFFFFFFF
        FFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FFFFFFFF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF00
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcSBTodos2Click
    end
  end
  object Panel1: TPanel
    Left = 18
    Top = 1
    Width = 641
    Height = 56
    BevelInner = bvRaised
    BorderWidth = 1
    Color = 10207162
    TabOrder = 3
    object Label1: TLabel
      Left = 46
      Top = 6
      Width = 560
      Height = 20
      Caption = 
        'En esta pantalla determina el CR'#201'DITO involucrado en la devoluci' +
        #243'n  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 28
      Width = 565
      Height = 20
      Caption = 
        'y el importe a devolver y/o aplicar para la aprobaci'#243'n del SECTO' +
        'RISTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object grbacciones: TGroupBox
    Left = 19
    Top = 427
    Width = 641
    Height = 126
    TabOrder = 5
    object Label3: TLabel
      Left = 22
      Top = 7
      Width = 85
      Height = 13
      Caption = 'Imp. a Revertir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 119
      Top = 8
      Width = 91
      Height = 13
      Caption = 'Imp. a Devolver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 235
      Top = 7
      Width = 79
      Height = 13
      Caption = 'Imp. a Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 412
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Ext.Prest.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label9: TLabel
      Left = 331
      Top = 54
      Width = 93
      Height = 16
      Caption = 'Observaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 324
      Top = 7
      Width = 69
      Height = 13
      Caption = 'Desembolso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 15
      Top = 57
      Width = 153
      Height = 16
      Caption = 'Motivo de devoluci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtAplica: TEdit
      Left = 235
      Top = 24
      Width = 79
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0.00'
      Visible = False
      OnExit = edtAplicaExit
      OnKeyPress = edtAplicaKeyPress
    end
    object Panel2: TPanel
      Left = 18
      Top = 24
      Width = 95
      Height = 26
      BevelInner = bvLowered
      Enabled = False
      TabOrder = 0
      object edtRevierte: TEdit
        Left = 2
        Top = 1
        Width = 91
        Height = 24
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object chkExtornaPrestamo: TCheckBox
      Left = 429
      Top = 29
      Width = 15
      Height = 17
      TabOrder = 3
      Visible = False
      OnClick = chkExtornaPrestamoClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 570
      Top = 12
      Width = 53
      Height = 41
      Caption = 'Aceptar'
      Color = clBtnFace
      DitherColor = clWhite
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 5
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object fcsbOtro: TfcShapeBtn
      Left = 513
      Top = 12
      Width = 49
      Height = 41
      Caption = 'Otro'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        333333777777777F33333330B00000003333337F7777777F3333333000000000
        333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
        333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
        03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
        03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
        3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
        333333333377F7F33333333333330F03333333333337F7F33333333333330B03
        3333333333373733333333333333303333333333333373333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 6
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcsbOtroClick
    end
    object MotDevo: TMemo
      Left = 332
      Top = 70
      Width = 299
      Height = 49
      MaxLength = 450
      TabOrder = 4
      OnKeyPress = MotDevoKeyPress
    end
    object BtnDesembolso: TBitBtn
      Left = 340
      Top = 26
      Width = 32
      Height = 25
      Caption = '....'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnDesembolsoClick
    end
    object Panel5: TPanel
      Left = 124
      Top = 23
      Width = 82
      Height = 26
      Enabled = False
      TabOrder = 7
      object edtDevuelve: TEdit
        Left = 0
        Top = 1
        Width = 81
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0.00'
        OnChange = edtDevuelveChange
        OnExit = edtDevuelveExit
        OnKeyPress = edtDevuelveKeyPress
      end
    end
    object dblMotivoDev: TwwDBLookupCombo
      Left = 16
      Top = 73
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODREF'#9'3'#9'Codigo'#9'F'
        'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblMotivoDevChange
      OnExit = dblMotivoDevExit
    end
    object Panel6: TPanel
      Left = 69
      Top = 72
      Width = 257
      Height = 24
      BevelInner = bvLowered
      Enabled = False
      TabOrder = 9
      object edtMotivoDev: TEdit
        Left = 3
        Top = 1
        Width = 250
        Height = 21
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlSeleccion: TPanel
    Left = 670
    Top = 3
    Width = 673
    Height = 243
    Color = 9090478
    TabOrder = 4
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 671
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label7: TLabel
      Left = 7
      Top = 4
      Width = 131
      Height = 13
      Caption = 'Selecci'#242'n de Asociado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object GbAsociados: TGroupBox
      Left = 8
      Top = 28
      Width = 656
      Height = 209
      Caption = 'Buscar'
      Color = 10207162
      ParentColor = False
      TabOrder = 0
      object BitMostrar: TBitBtn
        Left = 450
        Top = 40
        Width = 92
        Height = 27
        Caption = 'Resultados'
        TabOrder = 1
        OnClick = BitMostrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
          33333333373F33333333333330B03333333333337F7F33333333333330F03333
          333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
          333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
          333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
          3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
          33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
          33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
          03333337777777F7F33333330000000003333337777777773333}
        NumGlyphs = 2
      end
      object gbBuscar: TGroupBox
        Left = 11
        Top = 30
        Width = 137
        Height = 40
        TabOrder = 0
        object edtBuscar: TEdit
          Left = 10
          Top = 9
          Width = 114
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object dtgAsociado: TwwDBGrid
        Left = 11
        Top = 75
        Width = 630
        Height = 123
        DisableThemesInTitle = False
        Selected.Strings = (
          'ASOCODMOD'#9'15'#9'Cod.Modular'
          'ASOCODAUX'#9'6'#9'Orden'
          'ASOAPENOM'#9'50'#9'Apellidos y Nombres'#9'F'
          'USEID'#9'3'#9'Use'
          'UPROID'#9'3'#9'Lug.Proceso'
          'ASODNI'#9'10'#9'D.N.I.')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = dtgAsociadoDblClick
      end
      object BitSalir: TBitBtn
        Left = 550
        Top = 40
        Width = 91
        Height = 27
        Caption = '&Salir'
        TabOrder = 3
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
      object rbtApeNom: TRadioButton
        Left = 242
        Top = 8
        Width = 135
        Height = 17
        Caption = 'Apellidos y Nombres(D.N.I.)'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = rbtApeNomClick
      end
      object rbtDni: TRadioButton
        Left = 394
        Top = 8
        Width = 57
        Height = 17
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rbtDniClick
      end
      object rbtCuenta: TRadioButton
        Left = 463
        Top = 8
        Width = 89
        Height = 17
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rbtCuentaClick
      end
      object rbtCodMod: TRadioButton
        Left = 559
        Top = 9
        Width = 89
        Height = 17
        Caption = 'Codigo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rbtCodModClick
      end
    end
    object Button1: TButton
      Left = 652
      Top = 3
      Width = 19
      Height = 16
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object pnlDetallePago: TPanel
    Left = 647
    Top = 263
    Width = 641
    Height = 185
    Color = 10207162
    TabOrder = 6
    Visible = False
    object Shape2: TShape
      Left = 1
      Top = 1
      Width = 639
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label8: TLabel
      Left = 7
      Top = 4
      Width = 158
      Height = 13
      Caption = 'Detalle de Pago (selecione)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbgCuotasPag: TwwDBGrid
      Left = 16
      Top = 44
      Width = 613
      Height = 121
      DisableThemesInTitle = False
      ControlType.Strings = (
        'Flag;CheckBox;1;')
      Selected.Strings = (
        'Flag'#9'1'#9'Marc.'#9#9
        'ASOID'#9'10'#9'Cod.Unico'#9#9
        'CREDID'#9'15'#9'Credito'#9#9
        'CRECUOTA'#9'3'#9'Cuota'#9#9
        'CREMTOCOB'#9'10'#9'Mto. a Devol.'#9#9
        'CREMTOEXC'#9'10'#9'Exc. Sin Aplic.'#9#9
        'CREAPLEXC'#9'10'#9'Exc.Aplic.'#9#9
        'CREFPAG'#9'10'#9'F.Pago'#9#9
        'NROOPE'#9'20'#9'NROOPE'#9#9
        'FOPERAC'#9'10'#9'FOPERAC'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSCTASPAG
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgCuotasPagDblClick
      OnAfterDrawCell = dbgCuotasPagAfterDrawCell
    end
    object Button2: TButton
      Left = 620
      Top = 3
      Width = 19
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object pnlTipodesembolso: TPanel
    Left = 83
    Top = 579
    Width = 561
    Height = 158
    Color = 10207162
    TabOrder = 7
    Visible = False
    object Shape3: TShape
      Left = 1
      Top = 1
      Width = 559
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label21: TLabel
      Left = 10
      Top = 28
      Width = 97
      Height = 13
      Caption = 'Tipo de Desembolso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblAgencia: TLabel
      Left = 12
      Top = 67
      Width = 84
      Height = 13
      Caption = 'Agencia Bancaria'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCtaAhorros: TLabel
      Left = 326
      Top = 28
      Width = 90
      Height = 13
      Caption = 'Cuenta De Ahorros'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 4
      Width = 97
      Height = 13
      Caption = 'Tipo de Desembolso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBLkuCTipDes: TwwDBLookupCombo
      Left = 12
      Top = 41
      Width = 49
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPDESEID'#9'2'#9'Codigo'#9'F'
        'TIPDESEABR'#9'25'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormPago
      LookupField = 'TIPDESEID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLkuCTipDesChange
      OnExit = DBLkuCTipDesExit
      OnKeyPress = DBLkuCTipDesKeyPress
    end
    object EdtTipDes: TEdit
      Left = 65
      Top = 41
      Width = 246
      Height = 24
      Color = 12975869
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBLkCDAgencias: TwwDBLookupComboDlg
      Left = 13
      Top = 80
      Width = 191
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit, dgDblClickColSizing]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Agencia Bancarias'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'AGENBCODES'#9'25'#9'Agencia'#9'F'
        'DPTODES'#9'20'#9'Departamento'#9'F'
        'AGENBCOID'#9'8'#9'Codigo de Agencia'#9'F')
      LookupTable = DM1.cdsAgenciaBco
      LookupField = 'AGENBCODES'
      Enabled = False
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = DBLkCDAgenciasChange
    end
    object EdtCodAgen: TEdit
      Left = 209
      Top = 80
      Width = 124
      Height = 24
      Color = 12975869
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtDepGir: TEdit
      Left = 339
      Top = 80
      Width = 207
      Height = 24
      Color = 12975869
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object BtnCerrar: TButton
      Left = 542
      Top = 3
      Width = 19
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnCerrarClick
    end
    object BtnSalir: TBitBtn
      Left = 450
      Top = 118
      Width = 97
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 6
      OnClick = BtnSalirClick
    end
    object EdtCtaAhorros: TEdit
      Left = 322
      Top = 41
      Width = 100
      Height = 23
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtSitCta: TEdit
      Left = 429
      Top = 41
      Width = 115
      Height = 23
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object pnlOficinas: TPanel
      Left = 24
      Top = 112
      Width = 309
      Height = 35
      Locked = True
      TabOrder = 9
      Visible = False
      object Label12: TLabel
        Left = 7
        Top = 8
        Width = 86
        Height = 13
        Caption = 'Desembolsar En : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 147
        Top = 2
        Width = 158
        Height = 30
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 0
        object EdtOfiDes: TEdit
          Left = 3
          Top = 3
          Width = 151
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object DBLkOfiDes: TwwDBLookupCombo
        Left = 101
        Top = 5
        Width = 44
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'OFDESID'#9'2'#9'Codigo'#9'F'
          'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsOfDes
        LookupField = 'OFDESID'
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DBLkOfiDesChange
      end
    end
  end
  object CDSCUOTAS: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FLG'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CRECUOTA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CREMTOCOB'
        DataType = ftFloat
      end
      item
        Name = 'CREMTOEXC'
        DataType = ftFloat
      end
      item
        Name = 'CREAPLEXC'
        DataType = ftFloat
      end
      item
        Name = 'NROOPE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FOPERAC'
        DataType = ftDate
      end
      item
        Name = 'CREFPAG'
        DataType = ftDate
      end
      item
        Name = 'TRANSINTID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KEY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CREINTERES'
        DataType = ftCurrency
      end
      item
        Name = 'CREFLAT'
        DataType = ftCurrency
      end
      item
        Name = 'MONPACDESGRAV'
        DataType = ftCurrency
      end
      item
        Name = 'MONCOBDESGRAV'
        DataType = ftCurrency
      end
      item
        Name = 'CREAMORT'
        DataType = ftCurrency
      end
      item
        Name = 'CREOBS'
        DataType = ftString
        Size = 512
      end
      item
        Name = 'FORPAGID'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 649
    Top = 266
    Data = {
      F30100009619E0BD010000001800000011000000000003000000F30103464C47
      01004900000001000557494454480200020002000843524543554F5441010049
      0000000100055749445448020002000200094352454D544F434F420800040000
      000000094352454D544F45584308000400000000000943524541504C45584308
      00040000000000064E524F4F5045010049000000010005574944544802000200
      0F0007464F504552414304000600000000000743524546504147040006000000
      00000A5452414E53494E54494401004900000001000557494454480200020003
      00034B455901004900000001000557494454480200020032000A435245494E54
      45524553080004000000010007535542545950450200490006004D6F6E657900
      07435245464C4154080004000000010007535542545950450200490006004D6F
      6E6579000D4D4F4E504143444553475241560800040000000100075355425459
      50450200490006004D6F6E6579000D4D4F4E434F424445534752415608000400
      0000010007535542545950450200490006004D6F6E65790008435245414D4F52
      54080004000000010007535542545950450200490006004D6F6E657900064352
      454F4253020049000000010005574944544802000200000208464F5250414749
      4401004900000001000557494454480200020002000000}
  end
  object DSCUOTAS: TDataSource
    DataSet = CDSCUOTAS
    Left = 649
    Top = 277
  end
  object CDSCTASPAG: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Flag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CREDID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CRECUOTA'
        DataType = ftInteger
      end
      item
        Name = 'CREAMORT'
        DataType = ftCurrency
      end
      item
        Name = 'CREINTERES'
        DataType = ftCurrency
      end
      item
        Name = 'CREFLAT'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTOEXC'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTOCOB'
        DataType = ftCurrency
      end
      item
        Name = 'CREFPAG'
        DataType = ftDate
      end
      item
        Name = 'CREFLAGDEV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CREAPLEXC'
        DataType = ftCurrency
      end
      item
        Name = 'CREESTID'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NROOPE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FOPERAC'
        DataType = ftDate
      end
      item
        Name = 'MONTO'
        DataType = ftCurrency
      end
      item
        Name = 'NRONABO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORPAGID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRANSINTID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KEY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MONCOBDESGRAV'
        DataType = ftCurrency
      end
      item
        Name = 'CREOBS'
        DataType = ftString
        Size = 512
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 649
    Top = 321
    Data = {
      A90200009619E0BD010000001800000016000000000003000000A90204466C61
      6701004900000001000557494454480200020001000541534F49440100490000
      000100055749445448020002000A000643524544494401004900000001000557
      49445448020002000F000843524543554F544104000100000000000843524541
      4D4F5254080004000000010007535542545950450200490006004D6F6E657900
      0A435245494E5445524553080004000000010007535542545950450200490006
      004D6F6E65790007435245464C41540800040000000100075355425459504502
      00490006004D6F6E657900094352454D544F4558430800040000000100075355
      42545950450200490006004D6F6E657900094352454D544F434F420800040000
      00010007535542545950450200490006004D6F6E657900074352454650414704
      000600000000000A435245464C41474445560100490000000100055749445448
      0200020001000943524541504C45584308000400000001000753554254595045
      0200490006004D6F6E6579000843524545535449440100490000000100055749
      445448020002000100064E524F4F504501004900000001000557494454480200
      0200140007464F50455241430400060000000000054D4F4E544F080004000000
      010007535542545950450200490006004D6F6E657900074E524F4E41424F0100
      49000000010005574944544802000200140008464F5250414749440100490000
      0001000557494454480200020002000A5452414E53494E544944010049000000
      0100055749445448020002000300034B45590100490000000100055749445448
      0200020032000D4D4F4E434F4244455347524156080004000000010007535542
      545950450200490006004D6F6E657900064352454F4253020049000000010005
      57494454480200020000020000}
  end
  object DSCTASPAG: TDataSource
    DataSet = CDSCTASPAG
    Left = 649
    Top = 329
  end
end
