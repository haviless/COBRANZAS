object fRepCronog1: TfRepCronog1
  Left = 389
  Top = 215
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reprogramaci'#243'n De Cronogramas (Nuevo)'
  ClientHeight = 527
  ClientWidth = 690
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object BitLote: TButton
    Left = 118
    Top = 310
    Width = 11
    Height = 25
    Caption = 'Refinaciacion En Lote'
    Enabled = False
    TabOrder = 3
    Visible = False
    OnClick = BitLoteClick
  end
  object gbBoton: TGroupBox
    Left = 4
    Top = 411
    Width = 682
    Height = 45
    TabOrder = 1
    object BitSalir: TBitBtn
      Left = 613
      Top = 14
      Width = 62
      Height = 26
      Caption = '&Salir'
      TabOrder = 0
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object BitGrabar: TBitBtn
      Left = 507
      Top = 14
      Width = 90
      Height = 26
      Caption = '&Grabar'
      Enabled = False
      TabOrder = 1
      OnClick = BitGrabarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object bbtnAceptar: TBitBtn
      Left = 450
      Top = 14
      Width = 72
      Height = 26
      Caption = 'Aprobar'
      Enabled = False
      TabOrder = 2
      OnClick = bbtnAceptarClick
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
    object bbtnAnular: TBitBtn
      Left = 522
      Top = 14
      Width = 86
      Height = 26
      Caption = 'Desaprobar'
      Enabled = False
      TabOrder = 3
      OnClick = bbtnAnularClick
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
      Margin = 1
      NumGlyphs = 2
    end
    object pnlReportes: TPanel
      Left = 8
      Top = 9
      Width = 425
      Height = 33
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 4
      object sRep: TShape
        Left = 0
        Top = 1
        Width = 329
        Height = 30
      end
      object rdbContrato: TRadioButton
        Left = 7
        Top = 10
        Width = 112
        Height = 13
        Caption = 'Solicitud-Contrato'
        Checked = True
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object rdbHoja: TRadioButton
        Left = 107
        Top = 10
        Width = 71
        Height = 10
        Caption = 'Hoja Resum'#233'n'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object rdbPagare: TRadioButton
        Left = 188
        Top = 10
        Width = 47
        Height = 12
        Caption = 'Pagar'#233
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object z2bbtnImprime: TfcShapeBtn
        Left = 333
        Top = 1
        Width = 32
        Height = 31
        Cursor = crHandPoint
        Hint = '[F8] - Imprimir  '
        Color = clBtnFace
        DitherColor = clWhite
        Enabled = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
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
        OnClick = z2bbtnImprimeClick
      end
      object chkCopia: TCheckBox
        Left = 367
        Top = 9
        Width = 49
        Height = 17
        Caption = 'Copia'
        TabOrder = 4
      end
      object rdbDecJur: TRadioButton
        Left = 235
        Top = 10
        Width = 91
        Height = 12
        Caption = 'Declaraci'#243'n Jurada'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
    end
    object bitImprimir: TfcShapeBtn
      Left = 390
      Top = 14
      Width = 130
      Height = 26
      Cursor = crHandPoint
      Hint = 'Imprimir  Calificaci'#243'n Externa del Asociado'
      Caption = ' Evaluaci'#243'n Externa'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bitImprimirClick
    end
  end
  object gbDet: TGroupBox
    Left = 4
    Top = 226
    Width = 682
    Height = 188
    TabOrder = 0
    object dtgNotaAbono: TwwDBGrid
      Left = 12
      Top = 12
      Width = 660
      Height = 171
      DisableThemesInTitle = False
      Selected.Strings = (
        'NUMPRE'#9'9'#9'N'#176'~Credito'#9#9
        'ANOPRE'#9'6'#9'A'#241'o~Credito'#9'F'#9
        'TIPPRE'#9'6'#9'Tipo~Credito'#9#9
        'CRECUOTA'#9'6'#9'N'#176'~Cuota'#9#9
        'CREFVEN'#9'11'#9'Fec.Vencto.'#9#9
        'CAPITAL'#9'11'#9'Importe~Capital'#9#9
        'INTFLA'#9'11'#9'Importe~Int+Flt+Des'#9#9
        'ABONO'#9'12'#9'Importe Por~Reprogramar'#9#9
        'CREESTADO'#9'25'#9'Estado'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsAportes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
  end
  object gbCab: TGroupBox
    Left = 4
    Top = -5
    Width = 682
    Height = 231
    TabOrder = 2
    object lblAsociado: TLabel
      Left = 106
      Top = 7
      Width = 393
      Height = 20
      AutoSize = False
      Caption = 'Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 82
      Height = 19
      AutoSize = False
      Caption = 'Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 26
      Width = 82
      Height = 20
      AutoSize = False
      Caption = 'Credito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCreditos: TLabel
      Left = 106
      Top = 26
      Width = 393
      Height = 20
      AutoSize = False
      Caption = 'Credito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 76
      Width = 97
      Height = 15
      Caption = 'Tipo De Operaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 15
      Top = 119
      Width = 96
      Height = 15
      Caption = 'Tipo De Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 80
      Top = 7
      Width = 20
      Height = 20
      AutoSize = False
      Caption = ' : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 80
      Top = 26
      Width = 20
      Height = 19
      AutoSize = False
      Caption = ' : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 17
      Top = 166
      Width = 112
      Height = 15
      AutoSize = False
      Caption = 'Observaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 525
      Top = 13
      Width = 128
      Height = 21
      AutoSize = False
      Caption = 'Saldo a Refinanciar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 51
      Width = 163
      Height = 21
      Caption = 'Calificaci'#243'n Interna : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCalifica: TLabel
      Left = 187
      Top = 51
      Width = 326
      Height = 20
      AutoSize = False
      Caption = 'NORMAL - DICIEMBRE 2012'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 524
      Top = 35
      Width = 153
      Height = 41
      Alignment = taRightJustify
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblSaldo: TLabel
        Left = 9
        Top = 6
        Width = 136
        Height = 29
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object DBLCTipCob: TwwDBLookupCombo
      Left = 13
      Top = 93
      Width = 46
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'2'#9'Codigo'#9'F'
        'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'ID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
    end
    object Panel2: TPanel
      Left = 60
      Top = 91
      Width = 301
      Height = 28
      Enabled = False
      TabOrder = 2
      object EdtForPago: TEdit
        Left = 1
        Top = 1
        Width = 297
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object DBLCTipC: TwwDBLookupCombo
      Left = 13
      Top = 135
      Width = 42
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTtransaccion
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCChange
      OnExit = DBLCTipCExit
    end
    object Panel3: TPanel
      Left = 59
      Top = 134
      Width = 198
      Height = 28
      Enabled = False
      TabOrder = 4
      object EdtTipCob: TEdit
        Left = 1
        Top = 1
        Width = 194
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object BitCalcular: TBitBtn
      Left = 393
      Top = 195
      Width = 90
      Height = 27
      Caption = 'Pre-&Calculo'
      TabOrder = 5
      Visible = False
      OnClick = BitCalcularClick
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
    object GroupBox4: TGroupBox
      Left = 504
      Top = 170
      Width = 78
      Height = 53
      Enabled = False
      TabOrder = 6
      object TLabel
        Left = 6
        Top = 7
        Width = 64
        Height = 15
        Caption = 'Monto Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeCuotas: TwwDBEdit
        Left = 6
        Top = 24
        Width = 69
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object chkMesInicio: TCheckBox
      Left = 392
      Top = 176
      Width = 96
      Height = 14
      Caption = 'Inicia Este Mes'
      TabOrder = 7
    end
    object GroupBox5: TGroupBox
      Left = 585
      Top = 170
      Width = 93
      Height = 53
      Enabled = False
      TabOrder = 8
      object TLabel
        Left = 12
        Top = 7
        Width = 65
        Height = 15
        Caption = 'Nuevo Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeSaldo: TwwDBEdit
        Left = 3
        Top = 24
        Width = 86
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox6: TGroupBox
      Left = 392
      Top = 85
      Width = 286
      Height = 74
      TabOrder = 9
      object TLabel
        Left = 12
        Top = 17
        Width = 95
        Height = 15
        Caption = 'Capacidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblCuo02: TLabel
        Left = 231
        Top = 18
        Width = 51
        Height = 15
        Caption = 'De Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblCuo01: TLabel
        Left = 231
        Top = 7
        Width = 40
        Height = 15
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeCapacidad: TwwDBEdit
        Left = 12
        Top = 35
        Width = 97
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeCapacidadExit
      end
      object BitPreCalculo: TBitBtn
        Left = 128
        Top = 37
        Width = 90
        Height = 25
        Caption = 'Pre-Calculo'
        TabOrder = 1
        OnClick = BitPreCalculoClick
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
      object dbsNumCuotas: TwwDBSpinEdit
        Left = 232
        Top = 37
        Width = 49
        Height = 25
        Increment = 1.000000000000000000
        MaxValue = 72.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        UsePictureMask = False
        OnChange = dbsNumCuotasChange
      end
    end
    object mObserva: TMemo
      Left = 12
      Top = 181
      Width = 369
      Height = 38
      Lines.Strings = (
        '')
      MaxLength = 100
      TabOrder = 10
      OnExit = mObservaExit
    end
    object GroupBox1: TGroupBox
      Left = 270
      Top = 124
      Width = 115
      Height = 51
      Caption = 'D'#237'as de Atraso (Hoy)'
      Enabled = False
      TabOrder = 11
      object dbeAtraso: TwwDBEdit
        Left = 31
        Top = 18
        Width = 59
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object gbObs: TGroupBox
    Left = 4
    Top = 456
    Width = 682
    Height = 66
    TabOrder = 4
    object mAnula: TMemo
      Left = 12
      Top = 24
      Width = 320
      Height = 38
      Enabled = False
      Lines.Strings = (
        '')
      MaxLength = 200
      TabOrder = 0
      OnExit = mAnulaExit
    end
    object mAproba: TMemo
      Left = 349
      Top = 24
      Width = 320
      Height = 38
      Enabled = False
      Lines.Strings = (
        '')
      MaxLength = 200
      TabOrder = 1
      OnExit = mAprobaExit
    end
    object cbAnu: TCheckBox
      Left = 13
      Top = 8
      Width = 212
      Height = 17
      Caption = 'Desaprobar   -   Observaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = cbAnuClick
    end
    object cbApr: TCheckBox
      Left = 350
      Top = 8
      Width = 178
      Height = 17
      Caption = 'Aprobado   -   Observaci'#243'n '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = cbAprClick
    end
  end
  object rpContratoN: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 2350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\aa1.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 36
    Top = 360
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 280459
      mmPrintPosition = 0
      object ppShape184: TppShape
        UserName = 'Shape184'
        mmHeight = 6879
        mmLeft = 132027
        mmTop = 182034
        mmWidth = 42598
        BandType = 0
      end
      object ppShape174: TppShape
        UserName = 'Shape174'
        mmHeight = 6879
        mmLeft = 1588
        mmTop = 175419
        mmWidth = 41804
        BandType = 0
      end
      object ppShape171: TppShape
        UserName = 'Shape171'
        mmHeight = 6879
        mmLeft = 107156
        mmTop = 168805
        mmWidth = 25135
        BandType = 0
      end
      object ppShape205: TppShape
        UserName = 'Shape205'
        mmHeight = 6350
        mmLeft = 1588
        mmTop = 266436
        mmWidth = 86784
        BandType = 0
      end
      object ppShape182: TppShape
        UserName = 'Shape182'
        mmHeight = 6879
        mmLeft = 67204
        mmTop = 182034
        mmWidth = 40217
        BandType = 0
      end
      object ppShape180: TppShape
        UserName = 'Shape180'
        mmHeight = 6879
        mmLeft = 1588
        mmTop = 182034
        mmWidth = 41804
        BandType = 0
      end
      object ppShape168: TppShape
        UserName = 'Shape168'
        mmHeight = 6879
        mmLeft = 1588
        mmTop = 168805
        mmWidth = 41804
        BandType = 0
      end
      object ppShape158: TppShape
        UserName = 'Shape158'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 139171
        mmWidth = 53181
        BandType = 0
      end
      object ppShape152: TppShape
        UserName = 'Shape152'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 111125
        mmWidth = 53181
        BandType = 0
      end
      object ppShape147: TppShape
        UserName = 'Shape147'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 1323
        mmTop = 90223
        mmWidth = 195263
        BandType = 0
      end
      object ppShape108: TppShape
        UserName = 'Shape108'
        mmHeight = 6879
        mmLeft = 139171
        mmTop = 64029
        mmWidth = 32015
        BandType = 0
      end
      object ppShape107: TppShape
        UserName = 'Shape107'
        mmHeight = 6879
        mmLeft = 85725
        mmTop = 64029
        mmWidth = 22225
        BandType = 0
      end
      object ppShape97: TppShape
        UserName = 'Shape97'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 64029
        mmWidth = 47096
        BandType = 0
      end
      object ppShape112: TppShape
        UserName = 'Shape112'
        mmHeight = 6879
        mmLeft = 85725
        mmTop = 70644
        mmWidth = 40481
        BandType = 0
      end
      object ppShape103: TppShape
        UserName = 'Shape103'
        mmHeight = 6879
        mmLeft = 128059
        mmTop = 50800
        mmWidth = 29633
        BandType = 0
      end
      object ppShape93: TppShape
        UserName = 'Shape92'
        mmHeight = 6879
        mmLeft = 148432
        mmTop = 44186
        mmWidth = 14288
        BandType = 0
      end
      object ppShape94: TppShape
        UserName = 'Shape91'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 44186
        mmWidth = 47096
        BandType = 0
      end
      object ppShape95: TppShape
        UserName = 'Shape87'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 1323
        mmTop = 37835
        mmWidth = 195527
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'SOLICITUD-CONTRATO DE OPERACION DE REFINANCIAMIENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 26988
        mmTop = 15875
        mmWidth = 150548
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = '1. DATOS PERSONALES '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 38629
        mmWidth = 43921
        BandType = 0
      end
      object ppShape96: TppShape
        UserName = 'Shape88'
        mmHeight = 5821
        mmLeft = 41804
        mmTop = 31485
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'CREDITO A REFINANCIAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 32544
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 75406
        mmTop = 32279
        mmWidth = 11906
        BandType = 0
      end
      object ppShape98: TppShape
        UserName = 'Shape89'
        mmHeight = 5821
        mmLeft = 87577
        mmTop = 31221
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'OFICINA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 32279
        mmWidth = 13758
        BandType = 0
      end
      object ppShape99: TppShape
        UserName = 'Shape90'
        mmHeight = 5821
        mmLeft = 127794
        mmTop = 31221
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = '(NUEVOS SOLES)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 21960
        mmWidth = 150548
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 45773
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'D.N.I.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 46038
        mmWidth = 10054
        BandType = 0
      end
      object ppShape100: TppShape
        UserName = 'Shape95'
        mmHeight = 6879
        mmLeft = 48154
        mmTop = 44186
        mmWidth = 100542
        BandType = 0
      end
      object ppShape101: TppShape
        UserName = 'Shape93'
        mmHeight = 6879
        mmLeft = 162454
        mmTop = 44186
        mmWidth = 34396
        BandType = 0
      end
      object ppShape102: TppShape
        UserName = 'Shape94'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 50800
        mmWidth = 47096
        BandType = 0
      end
      object ppShape104: TppShape
        UserName = 'Shape96'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 57415
        mmWidth = 47096
        BandType = 0
      end
      object ppShape105: TppShape
        UserName = 'Shape98'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 70644
        mmWidth = 47096
        BandType = 0
      end
      object ppShape106: TppShape
        UserName = 'Shape99'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 77258
        mmWidth = 84931
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'FECHA DE NACIMIENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 52652
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'DIRECCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 59002
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label134'
        AutoSize = False
        Caption = 'CODIGO MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 71967
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label135'
        AutoSize = False
        Caption = 'CUENTA DE AHORROS BANCO DE LA NACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 78581
        mmWidth = 79640
        BandType = 0
      end
      object ppShape109: TppShape
        UserName = 'Shape100'
        mmHeight = 6879
        mmLeft = 48154
        mmTop = 50800
        mmWidth = 29898
        BandType = 0
      end
      object ppShape110: TppShape
        UserName = 'Shape1'
        mmHeight = 6879
        mmLeft = 96573
        mmTop = 50800
        mmWidth = 31750
        BandType = 0
      end
      object ppShape111: TppShape
        UserName = 'Shape102'
        mmHeight = 6879
        mmLeft = 77788
        mmTop = 50800
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label136'
        AutoSize = False
        Caption = 'SEXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 81227
        mmTop = 52652
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label137'
        AutoSize = False
        Caption = 'ESTADO CIVIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 52652
        mmWidth = 25400
        BandType = 0
      end
      object ppShape113: TppShape
        UserName = 'Shape104'
        mmHeight = 6879
        mmLeft = 157427
        mmTop = 50800
        mmWidth = 39423
        BandType = 0
      end
      object ppShape114: TppShape
        UserName = 'Shape1001'
        mmHeight = 6879
        mmLeft = 48154
        mmTop = 57415
        mmWidth = 148696
        BandType = 0
      end
      object ppShape117: TppShape
        UserName = 'Shape111'
        mmHeight = 6879
        mmLeft = 48154
        mmTop = 70644
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label140'
        AutoSize = False
        Caption = 'TIPO DE DOCENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 72231
        mmWidth = 33602
        BandType = 0
      end
      object ppShape119: TppShape
        UserName = 'Shape113'
        mmHeight = 6879
        mmLeft = 125942
        mmTop = 70644
        mmWidth = 70908
        BandType = 0
      end
      object ppShape121: TppShape
        UserName = 'Shape114'
        mmHeight = 6879
        mmLeft = 85725
        mmTop = 77258
        mmWidth = 111125
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'DISTRITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 65617
        mmWidth = 43921
        BandType = 0
      end
      object ppShape123: TppShape
        UserName = 'Shape1002'
        mmHeight = 6879
        mmLeft = 48154
        mmTop = 64029
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label138'
        AutoSize = False
        Caption = 'PROVINCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 65352
        mmWidth = 20108
        BandType = 0
      end
      object ppShape125: TppShape
        UserName = 'Shape110'
        mmHeight = 6879
        mmLeft = 107686
        mmTop = 64029
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label139'
        AutoSize = False
        Caption = 'DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 140229
        mmTop = 65352
        mmWidth = 30163
        BandType = 0
      end
      object ppShape127: TppShape
        UserName = 'Shape109'
        mmHeight = 6879
        mmLeft = 170921
        mmTop = 64029
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        AutoSize = False
        Caption = '2. DATOS DE CREDITO ANTERIOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 91017
        mmWidth = 60325
        BandType = 0
      end
      object ppShape148: TppShape
        UserName = 'Shape148'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 104511
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Caption = 'TIPO DE CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 106098
        mmWidth = 33867
        BandType = 0
      end
      object ppShape149: TppShape
        UserName = 'Shape149'
        mmHeight = 6879
        mmLeft = 54240
        mmTop = 104511
        mmWidth = 75142
        BandType = 0
      end
      object ppShape151: TppShape
        UserName = 'Shape151'
        mmHeight = 6879
        mmLeft = 126471
        mmTop = 104511
        mmWidth = 70115
        BandType = 0
      end
      object ppShape155: TppShape
        UserName = 'Shape155'
        mmHeight = 6879
        mmLeft = 54240
        mmTop = 111125
        mmWidth = 75142
        BandType = 0
      end
      object ppShape157: TppShape
        UserName = 'Shape157'
        mmHeight = 6879
        mmLeft = 126471
        mmTop = 111125
        mmWidth = 70115
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label210'
        AutoSize = False
        Caption = 'TOTAL PAGADO/CANCELADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 140759
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel211: TppLabel
        UserName = 'Label2101'
        Caption = 'SALDO DE LA DEUDA TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 112713
        mmWidth = 43921
        BandType = 0
      end
      object ppShape159: TppShape
        UserName = 'Shape159'
        mmHeight = 6879
        mmLeft = 54240
        mmTop = 139171
        mmWidth = 33867
        BandType = 0
      end
      object ppShape160: TppShape
        UserName = 'Shape160'
        mmHeight = 6879
        mmLeft = 87842
        mmTop = 139171
        mmWidth = 108744
        BandType = 0
      end
      object ppShape164: TppShape
        UserName = 'Shape164'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 1323
        mmTop = 154782
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel213: TppLabel
        UserName = 'Label213'
        AutoSize = False
        Caption = '3. DATOS DEL CREDITO EVALUADO Y APROBADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 155575
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel214: TppLabel
        UserName = 'Label202'
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 162719
        mmWidth = 17727
        BandType = 0
      end
      object ppShape165: TppShape
        UserName = 'Shape165'
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 161661
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel215: TppLabel
        UserName = 'Label215'
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71173
        mmTop = 162454
        mmWidth = 17727
        BandType = 0
      end
      object ppShape166: TppShape
        UserName = 'Shape166'
        mmHeight = 5821
        mmLeft = 90223
        mmTop = 161396
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel216: TppLabel
        UserName = 'Label216'
        AutoSize = False
        Caption = 'CONDICION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 123825
        mmTop = 162454
        mmWidth = 20108
        BandType = 0
      end
      object Shape: TppShape
        UserName = 'Shape902'
        mmHeight = 5821
        mmLeft = 147109
        mmTop = 161396
        mmWidth = 49477
        BandType = 0
      end
      object ppLabel217: TppLabel
        UserName = 'Label2103'
        AutoSize = False
        Caption = 'TOTAL AMORTIZACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 69586
        mmTop = 183886
        mmWidth = 35454
        BandType = 0
      end
      object ppShape169: TppShape
        UserName = 'Shape169'
        mmHeight = 6879
        mmLeft = 43127
        mmTop = 168805
        mmWidth = 24342
        BandType = 0
      end
      object ppShape170: TppShape
        UserName = 'Shape170'
        mmHeight = 6879
        mmLeft = 67204
        mmTop = 168805
        mmWidth = 40217
        BandType = 0
      end
      object ppLabel218: TppLabel
        UserName = 'Label218'
        AutoSize = False
        Caption = 'N'#176' DE CUOTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 170657
        mmWidth = 32279
        BandType = 0
      end
      object ppShape172: TppShape
        UserName = 'Shape1202'
        mmHeight = 6879
        mmLeft = 132027
        mmTop = 168805
        mmWidth = 42598
        BandType = 0
      end
      object ppLabel219: TppLabel
        UserName = 'Label219'
        AutoSize = False
        Caption = 'CUOTA MENSUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 177007
        mmWidth = 32279
        BandType = 0
      end
      object ppShape173: TppShape
        UserName = 'Shape173'
        mmHeight = 6879
        mmLeft = 174361
        mmTop = 168805
        mmWidth = 22225
        BandType = 0
      end
      object ppShape175: TppShape
        UserName = 'Shape175'
        mmHeight = 6879
        mmLeft = 43127
        mmTop = 175419
        mmWidth = 24342
        BandType = 0
      end
      object ppShape176: TppShape
        UserName = 'Shape1701'
        mmHeight = 6879
        mmLeft = 67204
        mmTop = 175419
        mmWidth = 40217
        BandType = 0
      end
      object ppShape177: TppShape
        UserName = 'Shape177'
        mmHeight = 6879
        mmLeft = 107156
        mmTop = 175419
        mmWidth = 25135
        BandType = 0
      end
      object ppShape178: TppShape
        UserName = 'Shape178'
        mmHeight = 6879
        mmLeft = 132027
        mmTop = 175419
        mmWidth = 42598
        BandType = 0
      end
      object ppShape179: TppShape
        UserName = 'Shape179'
        mmHeight = 6879
        mmLeft = 174361
        mmTop = 175419
        mmWidth = 22225
        BandType = 0
      end
      object ppShape181: TppShape
        UserName = 'Shape181'
        mmHeight = 6879
        mmLeft = 43127
        mmTop = 182034
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel224: TppLabel
        UserName = 'Label224'
        AutoSize = False
        Caption = 'TOTAL INTERES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 69586
        mmTop = 177007
        mmWidth = 34660
        BandType = 0
      end
      object ppShape183: TppShape
        UserName = 'Shape183'
        mmHeight = 6879
        mmLeft = 107156
        mmTop = 182034
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel225: TppLabel
        UserName = 'Label225'
        AutoSize = False
        Caption = 'TOTAL GASTOS / REF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 69586
        mmTop = 170657
        mmWidth = 34660
        BandType = 0
      end
      object ppShape185: TppShape
        UserName = 'Shape185'
        mmHeight = 6879
        mmLeft = 174361
        mmTop = 182034
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel226: TppLabel
        UserName = 'Label226'
        AutoSize = False
        Caption = 'TOTAL A PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 183886
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel227: TppLabel
        UserName = 'Label227'
        AutoSize = False
        Caption = 'FECHA INICIAL DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 170657
        mmWidth = 39158
        BandType = 0
      end
      object ppShape192: TppShape
        UserName = 'Shape192'
        mmHeight = 6879
        mmLeft = 1588
        mmTop = 192882
        mmWidth = 47096
        BandType = 0
      end
      object ppLabel229: TppLabel
        UserName = 'Label229'
        AutoSize = False
        Caption = 'TOTAL A PAGAR (EN LETRAS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 194469
        mmWidth = 44715
        BandType = 0
      end
      object ppShape193: TppShape
        UserName = 'Shape193'
        mmHeight = 6879
        mmLeft = 48419
        mmTop = 192882
        mmWidth = 148167
        BandType = 0
      end
      object ppShape194: TppShape
        UserName = 'Shape194'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 1323
        mmTop = 202407
        mmWidth = 87048
        BandType = 0
      end
      object ppShape195: TppShape
        UserName = 'Shape195'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 88106
        mmTop = 202407
        mmWidth = 108744
        BandType = 0
      end
      object ppShape196: TppShape
        UserName = 'Shape196'
        mmHeight = 21960
        mmLeft = 1588
        mmTop = 208492
        mmWidth = 86784
        BandType = 0
      end
      object ppShape197: TppShape
        UserName = 'Shape197'
        mmHeight = 6350
        mmLeft = 1588
        mmTop = 230188
        mmWidth = 86784
        BandType = 0
      end
      object ppShape198: TppShape
        UserName = 'Shape198'
        mmHeight = 28046
        mmLeft = 88106
        mmTop = 208492
        mmWidth = 108744
        BandType = 0
      end
      object ppShape199: TppShape
        UserName = 'Shape199'
        Brush.Color = 15658734
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 236273
        mmWidth = 86784
        BandType = 0
      end
      object ppShape200: TppShape
        UserName = 'Shape200'
        Brush.Color = 15658734
        mmHeight = 5821
        mmLeft = 88106
        mmTop = 236273
        mmWidth = 108744
        BandType = 0
      end
      object ppShape201: TppShape
        UserName = 'Shape201'
        mmHeight = 24871
        mmLeft = 1588
        mmTop = 241830
        mmWidth = 86784
        BandType = 0
      end
      object ppShape202: TppShape
        UserName = 'Shape202'
        mmHeight = 24871
        mmLeft = 88106
        mmTop = 241830
        mmWidth = 76200
        BandType = 0
      end
      object ppLabel230: TppLabel
        UserName = 'Label230'
        AutoSize = False
        Caption = 'CUOTA(S) EN PROCESO DE COBRANZA (A SER DESCONTADA(S) EN EL MES)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 89165
        mmTop = 203465
        mmWidth = 105304
        BandType = 0
      end
      object ppLabel231: TppLabel
        UserName = 'Label231'
        AutoSize = False
        Caption = 'FIRMA Y SELLO DEL PERSONAL AUTORIZADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 203200
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel232: TppLabel
        UserName = 'Label232'
        AutoSize = False
        Caption = 'EVALUACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 237067
        mmWidth = 82815
        BandType = 0
      end
      object ppShape203: TppShape
        UserName = 'Shape203'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 1588
        mmTop = 272521
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel233: TppLabel
        UserName = 'Label233'
        AutoSize = False
        Caption = 'APROBACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 273315
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel234: TppLabel
        UserName = 'Label2301'
        AutoSize = False
        Caption = 'FIRMA Y HUELLA DACTILAR DEL SOLICITANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 237332
        mmWidth = 103981
        BandType = 0
      end
      object ppShape204: TppShape
        UserName = 'Shape204'
        mmHeight = 24871
        mmLeft = 163777
        mmTop = 241830
        mmWidth = 33073
        BandType = 0
      end
      object ppShape206: TppShape
        UserName = 'Shape206'
        Brush.Color = 15658734
        mmHeight = 11642
        mmLeft = 88106
        mmTop = 266436
        mmWidth = 109009
        BandType = 0
      end
      object ppLabel235: TppLabel
        UserName = 'Label235'
        AutoSize = False
        Caption = 'ACEPTO LAS CONDICIONES Y CLAUSULAS QUE FORMAN PARTE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 88900
        mmTop = 268553
        mmWidth = 106627
        BandType = 0
      end
      object ppLabel236: TppLabel
        UserName = 'Label236'
        AutoSize = False
        Caption = 'DE LA PRESENTE SOLICITUD Y CONTRATO ANEXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 88900
        mmTop = 272786
        mmWidth = 106627
        BandType = 0
      end
      object lblEstV: TppLabel
        UserName = 'lblEstV'
        AutoSize = False
        Caption = 'APROBADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 162454
        mmWidth = 42598
        BandType = 0
      end
      object lblNroCon: TppLabel
        UserName = 'lblEstV1'
        AutoSize = False
        Caption = '01200924R000198'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 23813
        mmTop = 162719
        mmWidth = 42598
        BandType = 0
      end
      object lblFecEval: TppLabel
        UserName = 'lblFecEval'
        AutoSize = False
        Caption = '21/07/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 88900
        mmTop = 32279
        mmWidth = 20638
        BandType = 0
      end
      object lblOrigenN: TppLabel
        UserName = 'lblOrigenN'
        AutoSize = False
        Caption = 'SEDE CENTRAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 128852
        mmTop = 32279
        mmWidth = 66940
        BandType = 0
      end
      object lblNroSol: TppLabel
        UserName = 'lblFecEval1'
        AutoSize = False
        Caption = '01200924R000283'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 42598
        mmTop = 32544
        mmWidth = 29369
        BandType = 0
      end
      object lblAsoApenom: TppLabel
        UserName = 'lblAsoApenom'
        AutoSize = False
        Caption = 'LOPEZ ZAMORA DE SALINAS TERESA ELIZABETH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 49742
        mmTop = 45773
        mmWidth = 94986
        BandType = 0
      end
      object lblDNIN: TppLabel
        UserName = 'lblDNIN'
        AutoSize = False
        Caption = '08000950'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165100
        mmTop = 46038
        mmWidth = 28046
        BandType = 0
      end
      object lblFecOto: TppLabel
        UserName = 'lblFecOto'
        AutoSize = False
        Caption = '21/07/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 91811
        mmTop = 162454
        mmWidth = 25665
        BandType = 0
      end
      object lblFecNac: TppLabel
        UserName = 'lblDNIN1'
        AutoSize = False
        Caption = '05/01/1946'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 50006
        mmTop = 52652
        mmWidth = 24342
        BandType = 0
      end
      object lblSexo: TppLabel
        UserName = 'lblSexo'
        AutoSize = False
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 97896
        mmTop = 52652
        mmWidth = 27517
        BandType = 0
      end
      object lblEstCiv: TppLabel
        UserName = 'lblEstCiv'
        AutoSize = False
        Caption = 'Casado(a)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 52652
        mmWidth = 37042
        BandType = 0
      end
      object lblAsoDir: TppLabel
        UserName = 'lblAsoApenom1'
        AutoSize = False
        Caption = 'JIRON LOS CORREGIDORES # 101 URBANIZACION VILLA DE FATIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 49742
        mmTop = 59267
        mmWidth = 145521
        BandType = 0
      end
      object lblCodModN: TppLabel
        UserName = 'lblCodModN'
        AutoSize = False
        Caption = '8000032082'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 49477
        mmTop = 71967
        mmWidth = 24342
        BandType = 0
      end
      object lblDist: TppLabel
        UserName = 'lblDist'
        AutoSize = False
        Caption = 'RIMAC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 49477
        mmTop = 65617
        mmWidth = 35719
        BandType = 0
      end
      object lblProv: TppLabel
        UserName = 'lblProv'
        AutoSize = False
        Caption = 'LIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 108744
        mmTop = 65352
        mmWidth = 29104
        BandType = 0
      end
      object lblDep: TppLabel
        UserName = 'lblDep'
        AutoSize = False
        Caption = 'LIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171980
        mmTop = 65352
        mmWidth = 24077
        BandType = 0
      end
      object lblTipAsoN: TppLabel
        UserName = 'lblTipAsoN'
        AutoSize = False
        Caption = 'DO - ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 71967
        mmWidth = 68263
        BandType = 0
      end
      object lblCtaAho: TppLabel
        UserName = 'lblCtaAho'
        AutoSize = False
        Caption = '4098582687 - ACTIVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 78846
        mmWidth = 108215
        BandType = 0
      end
      object lblTipPre: TppLabel
        UserName = 'lblTipPre'
        AutoSize = False
        Caption = 'EXTRAORDINARIO (CONSUMO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 106098
        mmWidth = 70115
        BandType = 0
      end
      object lblNotaAbn: TppLabel
        UserName = 'lblMtoFin1'
        AutoSize = False
        Caption = '1,615.08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 59796
        mmTop = 141023
        mmWidth = 21696
        BandType = 0
      end
      object mCuotasProceso: TppMemo
        UserName = 'mDetCred1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 25400
        mmLeft = 89694
        mmTop = 209815
        mmWidth = 106098
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblTotInt: TppLabel
        UserName = 'lblTotInt'
        AutoSize = False
        Caption = '266.16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 177007
        mmWidth = 18785
        BandType = 0
      end
      object lblTotGas: TppLabel
        UserName = 'lblTotGas'
        AutoSize = False
        Caption = '251.37'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 170657
        mmWidth = 18785
        BandType = 0
      end
      object lblTasIntN: TppLabel
        UserName = 'lblTotInt1'
        AutoSize = False
        Caption = '1.85 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 177007
        mmWidth = 16140
        BandType = 0
      end
      object lblMonOto: TppLabel
        UserName = 'lblMonOto'
        AutoSize = False
        Caption = '1,363.66'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 183886
        mmWidth = 18785
        BandType = 0
      end
      object lblSalTot: TppLabel
        UserName = 'lblSalTot'
        AutoSize = False
        Caption = '1,881.19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 183886
        mmWidth = 18785
        BandType = 0
      end
      object lblNumCuo: TppLabel
        UserName = 'lblNumCuo'
        AutoSize = False
        Caption = '19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 170657
        mmWidth = 18785
        BandType = 0
      end
      object lblFecIni: TppLabel
        UserName = 'lblFecIni'
        AutoSize = False
        Caption = '31/08/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 170657
        mmWidth = 17463
        BandType = 0
      end
      object lblCuota: TppLabel
        UserName = 'lblCuota'
        AutoSize = False
        Caption = '99.01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 177007
        mmWidth = 18785
        BandType = 0
      end
      object lblNumLetra: TppLabel
        UserName = 'lblFecIni1'
        AutoSize = False
        Caption = 'Son (MIL OCHOCIENTOS  OCHENTA Y UN y 19/100 Nuevos Soles)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 50006
        mmTop = 194469
        mmWidth = 144992
        BandType = 0
      end
      object lblUsuarioC: TppLabel
        UserName = 'lblUsuarioC'
        AutoSize = False
        Caption = 'Hugo Noriega - 10:56:12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 231511
        mmWidth = 83873
        BandType = 0
      end
      object lblAutorizadoC: TppLabel
        UserName = 'lblAutorizadoC'
        AutoSize = False
        Caption = 'Hugo Noriega - 02:20:54'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 268023
        mmWidth = 83873
        BandType = 0
      end
      object lblCopia: TppLabel
        UserName = 'lblCopia'
        AutoSize = False
        Caption = '(Copia)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 159279
        mmTop = 25929
        mmWidth = 32808
        BandType = 0
      end
      object pplTotDes: TppLabel
        UserName = 'lblNroFin1'
        AutoSize = False
        Caption = '1,853.16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 112713
        mmWidth = 18785
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 15658734
        mmHeight = 5556
        mmLeft = 1323
        mmTop = 119327
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'DETALLE DE PAGOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 120121
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 57150
        mmTop = 112713
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel221: TppLabel
        UserName = 'Label221'
        AutoSize = False
        Caption = 'TASA DE INTERES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 177007
        mmWidth = 31750
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 132557
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label2102'
        AutoSize = False
        Caption = 'DOCUMENTO DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 134144
        mmWidth = 39423
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6879
        mmLeft = 54240
        mmTop = 132557
        mmWidth = 33867
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape1604'
        mmHeight = 6879
        mmLeft = 87842
        mmTop = 132557
        mmWidth = 108744
        BandType = 0
      end
      object pplDocPag: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = '2360'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 59796
        mmTop = 134409
        mmWidth = 21696
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 125942
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label2104'
        AutoSize = False
        Caption = 'FORMA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 127529
        mmWidth = 39423
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 6879
        mmLeft = 54240
        mmTop = 125942
        mmWidth = 33867
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape1605'
        mmHeight = 6879
        mmLeft = 87842
        mmTop = 125942
        mmWidth = 108744
        BandType = 0
      end
      object pplFPago: TppLabel
        UserName = 'lFPago'
        AutoSize = False
        Caption = 'REF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 59796
        mmTop = 127794
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 98425
        mmWidth = 17727
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 97367
        mmWidth = 47625
        BandType = 0
      end
      object pplCreAnt: TppLabel
        UserName = 'lCreAnt'
        AutoSize = False
        Caption = '01200924R000198'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 23813
        mmTop = 98425
        mmWidth = 42598
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        AutoSize = False
        Caption = 'TASA DE COSTO EFECTIVA ANUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 133086
        mmTop = 184415
        mmWidth = 41010
        BandType = 0
      end
      object lblTasEfeAnnual: TppLabel
        UserName = 'lblTasEfeAnnual'
        AutoSize = False
        Caption = '1.85 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 183886
        mmWidth = 16140
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        ShiftWithParent = True
        Stretch = True
        Picture.Data = {
          0A544A504547496D616765451C0000FFD8FFE000104A46494600010101006000
          600000FFE100164578696600004D4D002A00000008000000000000FFEC001144
          75636B7900010004000000640000FFE10380687474703A2F2F6E732E61646F62
          652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22
          EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
          64223F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A
          6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
          6520352E332D633031312036362E3134353636312C20323031322F30322F3036
          2D31343A35363A32372020202020202020223E0D0A093C7264663A5244462078
          6D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F31393939
          2F30322F32322D7264662D73796E7461782D6E7323223E0D0A09093C7264663A
          4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A78
          6D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F73547970652F5265736F757263655265
          66232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E63
          6F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F63756D
          656E7449443D22786D702E6469643A3838424232313941384536394533313139
          3530364335414333303344354330382220786D704D4D3A446F63756D656E7449
          443D22786D702E6469643A344245303343444136393938313145333832354638
          46314639373642313741362220786D704D4D3A496E7374616E636549443D2278
          6D702E6969643A34424530334344393639393831314533383235463846314639
          373642313741362220786D703A43726561746F72546F6F6C3D2241646F626520
          50686F746F73686F7020435336202857696E646F777329223E0D0A0909093C78
          6D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549
          443D22786D702E6969643A384642423231394138453639453331313935303643
          3541433330334435433038222073745265663A646F63756D656E7449443D2278
          6D702E6469643A38384242323139413845363945333131393530364335414333
          30334435433038222F3E0D0A09093C2F7264663A4465736372697074696F6E3E
          0D0A093C2F7264663A5244463E0D0A3C2F783A786D706D6574613E0D0A3C3F78
          7061636B657420656E643D2777273F3EFFDB0043000201010201010202020202
          020202030503030303030604040305070607070706070708090B0908080A0807
          070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303
          060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800
          2A010403012200021101031101FFC4001F000001050101010101010000000000
          0000000102030405060708090A0BFFC400B51000020103030204030505040400
          00017D01020300041105122131410613516107227114328191A1082342B1C115
          52D1F02433627282090A161718191A25262728292A3435363738393A43444546
          4748494A535455565758595A636465666768696A737475767778797A83848586
          8788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2
          C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5
          F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405
          060708090A0BFFC400B511000201020404030407050404000102770001020311
          04052131061241510761711322328108144291A1B1C109233352F0156272D10A
          162434E125F11718191A262728292A35363738393A434445464748494A535455
          565758595A636465666768696A737475767778797A82838485868788898A9293
          9495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8
          C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA00
          0C03010002110311003F00F9ABFE0E1FFF0082967C41FDA93F6E5F1EFC396D73
          52D2BE1B7C36D626D02C341B79DA3B6BA9ED98C535DDC2A902691A557D858109
          1ED0A012ECFF009DC667ECCFF9D7D01FF0563FF949E7ED05FF0065075BFF00D2
          D96B4F4AFF00823CFED39AD7C0D1F11ED3E0BF8CE5F0A3DA7DBD26F2231792DB
          1008992CCB7DA9E32A7707588A95F987CBCD4DF503E6CF35F19DEDF9D2F9ADFD
          F7AFB4BF6A2FF82737883E2FFED73E16F017C01F86FA8EAF737BF0D7C31E22BD
          B2D3D99A2864BAD26DA6B8BA9A699F642AF34A725DD53738031902BCCFC3DFF0
          49AFDA3BC53F1FB53F85D65F087C5CDE36D16DD6F2F6CA5863860B6B762C1276
          BA765B7F29CAB849049B1CA90A5882286070DFB277ED8FF11BF623F8B9A778DB
          E1B789B51F0FEB1612A3C91C5337D97518C364C17310216685B1CA37D460E08F
          EC6BF663F8D317ED1FFB38F807E214366DA745E38F0F586BCB68CFBCDAFDA6DD
          26F2F7606EDBBF19C0CE2BF8C5F8E7F00FC67FB32FC4CD4BC1BE3EF0DEADE13F
          13E9440B9D3F5084C52A06195707A3A30C15752558104120D7F5F5FF0004B1FF
          009468FECFFF00F64F342FFD20868881EF545799FED23FB647C2BFD90345B3D4
          3E27F8FF00C2DE08B7D498A598D56F9219AF0A901BCA8FEFC81772EE2AA42E46
          715F9B9FF0516FF82B37C42F0C7FC1537F657F0CFC18F89DA45EFC1CF8B0DA3F
          DB9B4CB5B1D4AD357136B525ADC05B868DDD4F96A10847528C0F46CD55C0FD6F
          A2BCA7F690FDB83E107EC7E2C47C4EF88FE12F04CDA902F696FA9EA0915CDCA0
          382E9172EC80F0582E01EA6B6744FDA8FE1BF897E095C7C4AD3BC79E13D43E1F
          DA4125D4FE22B7D521974D8238FF00D633CEAC5176F4604820F071401DED15E3
          FA7FEDFBF04F57D3BC1F7967F153C0D796BF102F27D3FC392DBEAD14A9ACCF06
          44E909527708C8C337DD562A09058034E0FF00828EFC05BBF8751F8BADFE2F7C
          3FBAF0CCBAD47E1C8F52B7D6619ADE5D4A45564B456563BA528C1F68C9099638
          504800F6CA2BC37E2BFF00C14CBF67BF819E329BC3BE2EF8D1F0DB41D7AD6630
          5CE9F73AFDB8B8B4901C149503131303D43E0D765E2BFDAAFE19F81BE0DDBFC4
          5D5FC7FE0EB0F00DDF97E4788A5D5A01A5CFE636D4D9701BCB6DCDC0C1393401
          E814578578EBFE0A6FFB3DFC33D43C2B6BAF7C65F879A4CDE36B38B51D17ED1A
          CC2A97D6B2E7CAB90D9DA90B9042C8E5558A9C1383573E34FF00C1453E04FECE
          5F12AD3C1DE3BF8B5E03F0AF89EF7632E9DA8EAD1453C2AE0146941388558105
          5A42A08E4645007B4D15C2FC63FDA6FE1CFECF3E15B5D77C77E3BF08F83F48BE
          CFD96EF58D5A0B38AEFE50D888C8C3CC3820E172706B13F67AFDB83E0FFED617
          7796DF0D7E25F82FC6D7BA7C7E75CDA693AAC571736F1EE0BE63C40EF54DC40D
          C57193D6803D568AA9AAEB365A1C514B7B776B671CF3476D1B4F2AC6B24B2384
          8E3049E59988551D49200E4D721E13FDA7BE1AF8F7E276A5E09D0BE21781F5AF
          19E8C6417FA0D8EBB6B71A9D918D82C825B6473226D62036E51827071401DD51
          5C1FFC3527C32FF85C1FF0AF3FE162F817FE13FCEDFF00846BFB7AD7FB5F3B3C
          CC7D977F9B9D9F3E36FDDE7A735AFF0014BE32F843E06F865B5BF1B78AFC37E0
          FD151C46D7FADEA7069F6C18F45F326655C9F4CD0074B4573FF0D3E2B785FE33
          F84A0D7FC1DE24D07C59A0DD332C3A8E8FA8437F692953860B2C4CC8483C100F
          15CE78FF00F6B9F853F0A3C7D6BE14F14FC4DF87BE1AF145F797F67D1F55F115
          9D9DFCFE61C47B20924591B71E170393D33401E879A01CF4AF3CF8F9AB6ABAE7
          C30F1058F82BC7DE1AF0478A74FB9B385B56D4ADA3D46DF4A669A0768A681A48
          FE69A06D881994E664619E01B9F18BF695F873FB3BC7A7BF8FFC7DE0AF0326AC
          CC9627C41ADDB6982F5971B847E73AEF2372E42E7191EB401DBD15F367EDC1FF
          000510F0EFEC8D79F06D575AF04CD0FC4DF19D86897326A3ACC56E2D7499E1B8
          797528CEEC3471B4712EF3FBBFDE8C91915ECDE16F8F7E05F1D7816FFC53A1F8
          D3C27ACF85F4A328BDD62C757B7B8B0B3F294349E64E8E634D8A4336E2368393
          8A00EB68271D6B8BF83BFB45FC3EFDA26C2F2EFE1FF8EFC1DE39B4D3A458AEA6
          F0FEB36DA9C76CEC32AAED0BB05247201C671577C49F19FC1FE0EF0F43ABEAFE
          2CF0D695A45CDE8D321BDBCD4E082DA5BB329885BAC8CC14CBE62B26C0776E05
          71918A00E9F70F514138EB5E77F0BB5DD47C0BF0EB5ED4FC7BE3DF0CEBD0D86A
          FA94EDABC30C5A6D9E9766B7327976B31F31943DBA0F2DE4620968C9600E6AEF
          C1EFDA57E1CFED0F1DF3F803C7FE0AF1CA696CAB78DE1FD72DB531685B3B449E
          43B6C270719C6706803B7A2BE73FD80FE3B78AFE34EB9F1FA1F13EAA9A947E0A
          F8B5AB78674602DA387EC7A7416B6324507C806FDAD34877B658EEE4F0305007
          E067C3BF0A784FC6FF00F07416BFA5F8D6DF4CBCD1AE7E2CEBC61B5D40E2D2F3
          50592EDF4F8641FC4B25EADB2143C36EDA7209AF8E7C7DF1CFE345D7ED8BA8F8
          C75BD7FC6D6DF1B61D79D67BAF3268758B5D4965319811570F1B238F2C44A005
          002050005AE9FF00E0AB1712597FC150FE3FCD0BBC5345F10F5A747462AC8C2F
          A52083D88EB9AEDED3FE0B7DF1DEDB4C86E5EEBC0579E3AB6B75B383E20DD783
          F4E9BC63142B0F92146A4D1194BF97C79CD99BBEFCF352D81F63FF00C16EBE22
          78866FD95BE2AEAF75796DA678A3C5FF0014FC2BE1EF1C0D26E0795797363E0A
          B59A7D3A468D8ABC56D7D2CC7CB390B2E7F8901AF95BE31FED03E38D73FE0855
          F083C3179E2BD66E7C3E3E256BFA71B07B8631B5B5AD969B35B40DDDA38A5BBB
          8754276A99781F2AEDF9BF5FFDAC3C6DE2AFD9DEE3E186A7A926A3E1BBCF184B
          E3AB896E63F36FEE75596D85B4934970C4BB868C64827963BBAD666B7F1FFC43
          AF7ECFBA0FC31B896CCF85BC39ADDEF882C904004E2EAEE1B78662D27565296D
          1617B1CFAF05C0FA63F6E6D5AEBC71FF0004A9FD8D3C43ACCF36A9AF2AF8C342
          FED2BA632DD369F67A85AFD92D4C87E66860134A234271187217038AFE96BFE0
          965FF28D2FD9FF00FEC9EE85FF00A6F86BF915F1E7ED29E28F893F017C01F0DF
          549EC9FC2FF0D26D4E7D1238ED9639A36D4258E5B9F324EB265E24C67EE8AFEB
          ABFE0963FF0028D1FD9FFF00EC9E685FFA410D34C0FC7CF853F00BC39FF0574F
          F8391FE37E83F1DAEAF356F0FF00C3CFED38348F0F3DEC96D1DE416175159DBD
          B2956574882CAF72CB1152EFB98F0CF9E53F6E9FD817E1AFEC17FF000707FECC
          BE19F86493695E1BF13F88BC35ADCBA1B5E49729A3CCFAC792CB1348CCE12410
          870ACC4862D8C2ED51FA07FF000527FF00837D21FDAD7F6A9B7F8E9F093E28EB
          1F057E28BEC6D46F6CA091E2BD9523112DCC6F14B1496F3794363952CB20032A
          AC5D9FCE7C23FF0006C3EA9A1FED55F0B3E30EAFFB42788BC5DE34F096B563E2
          0F13DFEBBA5BDEDC788AEAD6ED26458A47B8DD046228E3886F3291B7770308A5
          80FCFAFD9EBC6B6BFB5DFF00C141FF00685F88BF167F66CF8A7FB506B69AC3DA
          DAE8BA24B31B5F0C46D71711A4770B1297F922852284676A88A4C866DACBDE7E
          CE5F05BE297ECEBF0B7F6E0D20FC24F8B9F0A3F67DF18FC31D5B58D1F4CF17D9
          CA12C2FE27805B47E7BA2A993CB96E1300976444DE5CC61ABF40FF006BCFF837
          DB56F15FED69ADFC6CFD9D7E367887E0278CFC5AD249E2082CA2964B5BF96560
          F3488D14B1B2091C091E36122349F30D9802BA9F80FF00F0448F15FC3AFD8EBE
          3AF807C5FF00B4178D3E2178BFE3C593DBEA5AC6AF1C93E9DA64A6329F688AD6
          4999DA665215E4328DC9142A15446322407C07FF000412FF008256685F10FF00
          63DBEFDA8BC61AFEBFA86B9E064D5C781F468AEB6E9DA72DAC13334B329059B7
          5C492B0894A27CA59B7F9842F9E7FC1B99FF00049CF0B7EDE5A17893E247C4BF
          13F886D3C1BF0B75D89F48D1B4DBE36B136A2122B89AE66720EC458E3817F77B
          5DBBBA88C06FD97FF827DFFC1346E3F61CFF0082765FFC079BC6A9E249AF63D5
          506B71E97F6410FDB43F22132BEED9BF3CBF3ED581FF00047AFF008248FF00C3
          AD3E0178DBC09A9F8D2DFE215AF8CB563A8C920D20E9C9121B6481A22A669776
          42939C8EBD28480FCC5D4E1F809FF0527F8EBF18BC53F08BF610F889F19B48D4
          359BABAD67C716FE3CB8D0A517330DD24F6768C0C3E6B3933AC2C59CF980BA28
          6D83E5DFD9FBC5FABDD7FC10ABF6AEF075E5C5F0D13C27E38F0B5E69B63743F7
          9633DCDD4F15C647F0B32DB45B80C0DCA4F739FD51F821FF0006ECFC50FD953C
          69E27D0BE147ED65E35F00FC1CF17DF9B9D4343D3F4B51AB2424E36457464291
          5C796153ED51A2B10AA4A10A16B33E18FF00C1B0173F0D7F632F8D5F0862F8D1
          1DD47F16357D175183527F0C90DA647A6CD3C811D3ED3FBD6904C012190294CE
          0E700480F8D3F688FF008247FC1FF00FFC1BA7E14FDA02CECF5A7F8AB3D9E95A
          BDCEAF2EA32C8974977791DB9B43016312C51C728DA5555F744B96209531FC41
          FF00824FFC23B7FF00836FACFF0068C7B6D76EBE2F4B15B6AF2EB72EA533ACC9
          26AAB63F6468198C5E4AC2C0821449BD01DFB7295FACDF17FF00E092377F153F
          E08EDA3FECAA3C7F158DCE97A669BA7B7894E8C64497EC77515C67ECDE702037
          97B7FD664673CF4A8BC53FF0485BAF127FC118ADFF0064B1F10628AE60B0B7B3
          FF00849FFB1B28DE56A4B7D9FB2F9C0E0EDF2FFD6E7F8BDA8B01F99B7BFB4DFC
          1CF177FC130FF62EF863F147E0EF8AFF0068EF8B379637B75E19F0DE9FABCFA5
          C91599D42EEC208E4BA8834A6375B68D5228C118B352C5155437974DF0F2FF00
          F633FF0082D27ECC77FE19F807E2DFD976EFC43E23D32C6EF42BCF141F10596A
          114F7A96B70D6D75CB14782729246588524602E79FD01F1E7FC1B4FAA3FC23F8
          152F827E385FF84BE2F7C0EB0974CB5F1541A3B2C3A8C0D7F737B08F244FBA16
          85AEA540DBDC3A1C32E0F1A37FFF0006F178FBE227ED6BF08FE35FC44FDA6BC4
          1E3FF1B780757B1D57546D4FC3E82DAED2D2F12E62B5B28E39956D2221595B87
          0CEECF8192B4580FA5FF00E0B41E125F1FFEC85A2787CEA3A968FF00DBFF0011
          3C23A77F6869D39B7BDB0F375CB34334128E63954312AE3953CD723FF0542FD8
          BBE187C1BFF826D78DF5CF02F83B41F01788FE13E8AFE20F08EB9E1EB28AC353
          D0EF6D4078E58EE1009097DBB64DCC4C8AEDBB24E6BE90FDADFF0067093F6A1F
          87BA1E851EB23426D1BC57A2789BCF36BF68F3469DA84179E4EDDCB8F33C9D9B
          B276EECE0E3153FED91FB3E3FED61FB2B78FFE1AC7AB8D05FC6FA2DC69035136
          DF69167E6A15F33CBDCBBF19E9B87D6981E27F1BFF00E09C5F06BC25FF0004FE
          F15F8674DF04E8760FA37866EF51B3D752D233AE5B6A515BBCC9AA0BD204C6F4
          4CA25F38BEE2E3938245793F877F683D2FF69FF87FF05615F805A17ED23F1D2D
          7E19687E23D7AF3561A7D969BE158B53B48E4DD3DE5CC7208A6BA92391D60822
          77288CC42260B7DD5F127C00DF107E116BFE151786CDF5CD1EE34AFB508F7F91
          E6C0D1799B33CE376719ED8CD7CB1E02FF0082727C48FD94DBC33AE7C17F88FE
          17B5F12C1E07D0BC17E2CB1F15787E5BBD1BC52DA4DB0B7B4D45041711CF6772
          B19950859248DD19032EE8C3900F9B3C77E3FF001E7EC81FB4478DBC59A1FC0D
          D33F67BD7358F81FE31D5E4D3F47D6ACB56D07C53A968E96B71617296F6A910F
          B5DBF9F286926855A48A7D8376DE3EBFFD903F602F81D6FF00B2A7858B782BC1
          BF108F8C346B6D5F59F12EBDA6C1AC5FF8BEE2EA159A5BEBAB99D5DE7699A467
          CB31501C2A8550A052F879FB0FFC42D33F6ABD07E3AFC49F8A47C6BE26D0FC37
          AA6853F86F47D0458E8705B5C9B69122B081E6924493CC818C92CD24AF3EE897
          F7491AAD7CC7E10F883FB36F84BC25E20D37C2FF00B587C52FD9A7C3570F2CDA
          AFC2ED46FAD343D4BC2B33AEF9AD6C2D750B492F2C8798CEDE5D9BBC7BD9BC9C
          0DB401E5FF001B7E0EF86FE06FECD7FB7B7837C2D7B77AAF86F40F1E7812D6C4
          DEDF3EA1258461F4561A7895C96315A13E446AC498D234427E4CD7D55F1DBE09
          EB5F02BF6CDF897F143C55F0047ED21E08F1F59D89B5BFD361B3D4FC45E0A82D
          2D1607D323D3AF64559AD2597CCB906CC890C93CA248E4211AB86FD9BFFE09D9
          6BFB4BFECAFF001FACBC3565AB7C25F027C67F16E8BA878463D574D965D45F4D
          D24E9E4EA57114EEB3997509ED6E26DD7044C44EB2BEE66C1FA87E257C19FDA2
          740F89DAF6B3F0D7E2FF00836E3C3DE2099664F0FF008EBC2926A09A0B840ADF
          63B9B3B9B690C4C406F2A612608387193401F23FED21E14FD9F3E2E7C27FD94E
          F7E167827C270F8547ED0165A3DDE913787D6D27D167913519350D32E2D2640F
          6A44EA1A4B62AA995460A57613D17ED9F6DE13F0EFEDF7F0F7E0A41F06358F14
          FC28D07C2379F12EFBC13E04D1AC12D3C43AB9BF86CADE6D46D6478229ADEDC0
          7902EE21E6922675611AE3D7F58FF825ADDDFF00ECFF00169EBF10AE25F8B70F
          C438BE2CFF00C26371A52B59CDE238D56205AC16400597D9545B0804BB9630A7
          7971B8ECF8CBF635F8ABF19BC3FE16F16F897E247857C35F1DBC03A95D4FE1BF
          127853C3B3C7A3C5A7DCA42971A5DED8DCDD48D796F3888339F362747585A328
          D16E7480F12F1B59DD78B3F68DF847E32F845FB337C55F84FE38D07C516161AC
          EB12E81A5695A6EA9E19B89562D4ECEFCDBDE912C51C245C45BA391926B68CC6
          1773137FFE094FFB0FF853C7FE1DD77E2578EECEC3C7571A4FC40F165A7802CF
          55B58EE2CBC17A7C7E21BC2CD6B0B2EC5BC9AE925964BA20CA54429B82C6057B
          B7C3FF0081FF00B4278CBE25787B58F8A5F167C2761E1FF0C5C7DAD740F87DA0
          4FA626BF301B57EDF7377717121B75F98FD9E10818B0DCEC1003DEFEC81FB3A3
          FECAFF0005878464D67FB79FFB7359D67ED62D7ECDFF00210D52EAFF00CBD9B9
          BFD5FDA76673F36CCE0670181F117C2BF893E03D1BF66793C15E25F85717C6EF
          1778E3E35F8E6E7C25E0A6B5B591751BAB3D6AFA596F247BB220861811FE795C
          9DA65550ACCC0565FC76D17C6BF0C7E2C7C17F1B1FD95BC39F03B58D27E23681
          A3FF00C25FE0EF14E997709D3B51BF8ACAEEC6FE18ADA096682649F6AA856093
          18E4DC9B486F7D9BFE0983AFF84F44F0F6BBE0BF8931E8BF143C0FE30F13F8A3
          41D5EEF47373A5CB6DAEDEC97377A5DED98994CB030312F9892248AF0AC89B79
          429E3FFD83BE347ED51AD782B56F8B9F177C37663E1F78BF47F15E93A0782BC3
          B2D9E91732D8DE24CED7AF733CB3DC33C41D1155E28E266121599954000BDFF0
          4B2FF9197F6A7FFB2EFAEFFE90E99457ABFECA9FB2BBFECD1A9FC56B97D786B5
          FF000B33C7B7FE3655FB2080E9C2E60B5885B6773799B3ECD9DFF2E77E368C64
          9401FCE07FC1C35FF04EAF1F7ECADFB7A78FFC7777A2EA57FF000F7E25EB536B
          FA5EBF0DBB3DA24D74ED2CB672B8C88E6490C802B105D00619E42FE7EF94FF00
          DC6FCABFB9E9A14B8568E44492371F32B0041FA8AABFF08B699FF40DB0E3FE9D
          D3FC2803F86BF29FFB8DF951E53FF71BF2AFEE53FE117D33FE81D61FF80E9FE1
          47FC22FA67FD03AC3FF01D3FC2803F8ADFD993F652F881FB62FC5BD33C11F0EF
          C33A9F8935FD525588476F0B18AD51980334F2636C512E72CEE42802BFB23FD9
          6FE0AAFECDDFB357C3FF0087A97A7521E07F0ED86826EF695FB49B6B6484C983
          9C06284E32719AEDACB4DB6D3908B7B78200DC911C6141FCAA7A4900514514C0
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A9DE681
          63A95F5BDD5CD95A5C5CDA12609A4895E4849EEAC4657F0AB945001451450014
          51450014514500146E1EA28A2800A28A2803FFD9}
        mmHeight = 13229
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 67733
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object cdsCronograma: TwwClientDataSet
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DM1.DCOM1
    StoreDefs = True
    PictureMasks.Strings = (
      
        'TRES'#9'{{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]' +
        ',({{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]),[-' +
        ']{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 24
    Top = 340
  end
  object ppHojRes: TppReport
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
    Left = 146
    Top = 360
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 295805
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
          'Tasa Costo Efectiva Anual'
          'Gastos/ REF.'
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
        mmHeight = 284692
        mmLeft = 794
        mmTop = 9790
        mmWidth = 95250
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object mDat01: TppMemo
        UserName = 'mDat01'
        Caption = '\baa\b0'#13#10
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Lines.Strings = (
          ''
          ' 3 31/10/09   109.91    70.27    23.95  15.69'
          ' 4 30/11/09   109.91    71.57    22.65  15.69'
          ' 5 31/12/09   109.91    72.89    21.33  15.69'
          ' 6 31/01/10   109.91    74.24    19.98  15.69'
          ' 7 28/02/10   109.91    75.61    18.61  15.69'
          ' 8 31/03/10   109.91    77.01    17.21  15.69'
          ' 9 30/04/10   109.91    78.44    15.78  15.69'
          '10 31/05/10   109.91    79.89    14.33  15.69'
          '11 30/06/10   109.91    81.37    12.85  15.69'
          '12 31/07/10   109.91    82.87    11.35  15.69'
          '13 31/08/10   109.91    84.41     9.81  15.69'
          '14 30/09/10   109.91    85.97     8.25  15.69'
          '15 31/10/10   109.91    87.56     6.66  15.69'
          '16 30/11/10   109.91    89.18     5.04  15.69'
          '17 31/12/10   109.91    90.83     3.39  15.69'
          '18 31/01/11   109.91    92.56     1.66  15.69'
          '______________________________________________'
          '  TOTAL :   1,758.56 1,294.67   212.85  251.04')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 287338
        mmLeft = 97367
        mmTop = 7673
        mmWidth = 101071
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'HOJA RESUMEN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 20373
        mmTop = 3440
        mmWidth = 51329
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
        Visible = False
        mmHeight = 4763
        mmLeft = 75406
        mmTop = 3704
        mmWidth = 19844
        BandType = 4
      end
      object ppLabel67: TppLabel
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
      object ppLabel69: TppLabel
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
      object ppLabel83: TppLabel
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
      object ppLabel76: TppLabel
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
      object ppLabel72: TppLabel
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
      object ppLabel77: TppLabel
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
      object ppLabel78: TppLabel
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
      object ppLabel79: TppLabel
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
      object lblNomGen: TppLabel
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
        mmLeft = 2381
        mmTop = 269082
        mmWidth = 92869
        BandType = 4
      end
      object lblDni: TppLabel
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
        mmLeft = 13758
        mmTop = 274109
        mmWidth = 24077
        BandType = 4
      end
      object lblFecCre: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = '10/07/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 14817
        mmWidth = 30692
        BandType = 4
      end
      object lblTipCre: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'EXTRAORDINARIO (CONSUMO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 27781
        mmWidth = 40217
        BandType = 4
      end
      object lblTipDes: TppLabel
        UserName = 'lblTotGas1'
        AutoSize = False
        Caption = 'REFINANCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 32544
        mmWidth = 31485
        BandType = 4
      end
      object lblNumCredito: TppLabel
        UserName = 'lblNumCre'
        AutoSize = False
        Caption = '24-00283-2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 52652
        mmTop = 10319
        mmWidth = 32279
        BandType = 4
      end
      object lblMonto: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = '1,431.40'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 19315
        mmWidth = 20373
        BandType = 4
      end
      object lblTasEfe: TppLabel
        UserName = 'lblTasEfe'
        AutoSize = False
        Caption = '24.60 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 37042
        mmWidth = 20373
        BandType = 4
      end
      object lblTasGas: TppLabel
        UserName = 'lblTasGas'
        AutoSize = False
        Caption = 'S/.15.69'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 52917
        mmTop = 45773
        mmWidth = 20373
        BandType = 4
      end
      object lblPlazo: TppLabel
        UserName = 'lblPlazo'
        AutoSize = False
        Caption = '18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 23548
        mmWidth = 19844
        BandType = 4
      end
      object ppLabel1: TppLabel
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
      object ppLabel2: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'N'#176'   Vcto     Cuota  Capital  Interes  Gastos/Ref.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 98690
        mmTop = 3704
        mmWidth = 96044
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
        mmLeft = 2381
        mmTop = 264584
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
        mmLeft = 2381
        mmTop = 273844
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel66: TppLabel
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
        mmLeft = 57150
        mmTop = 288661
        mmWidth = 12171
        BandType = 4
      end
      object lblFrmDes: TppLabel
        UserName = 'lblTasGas1'
        AutoSize = False
        Caption = 'PLANILLA MINISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 52917
        mmTop = 50271
        mmWidth = 41540
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 32015
        mmTop = 287867
        mmWidth = 61119
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
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
        mmTop = 50536
        mmWidth = 2646
        BandType = 4
      end
      object lblTasEfeAnu: TppLabel
        UserName = 'lblTasEfe1'
        AutoSize = False
        Caption = '24.60 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 52652
        mmTop = 41540
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rpCheGer: TppReport
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
    Left = 224
    Top = 320
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 253471
      mmPrintPosition = 0
      object ppMemo4: TppMemo
        UserName = 'Memo1'
        Caption = 'mDatos'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          ''
          'Estimado Cliente: '
          ''
          'Sr(a)'
          ''
          'DNI'
          ''
          'Fecha  '
          ''
          ''
          
            'Usted podr'#225' cobrar su cr'#233'dito aprobado N'#176'                       ' +
            '            por S/.                    a trav'#233's de un Cheque de ' +
            'Gerencia para Personas Naturales emitidos a su nombre utilizando' +
            ' la red de oficinas del Banco de Cr'#233'dito BCP.'
          ''
          
            'Cuando realicemos un desembolso a su nombre a trav'#233's de un chequ' +
            'e de gerencia, usted deber'#225' realizar los siguiente pasos:'
          ''
          
            '1) Acercarse a cualquiera de las oficinas del Banco de Cr'#233'dito B' +
            'CP a nivel nacional y mencionar que viene a cobrar un Cheque de ' +
            'Gerencia para Persona Natural. Asimismo, deber'#225' indicar la moned' +
            'a  en nuevo soles.'
          ''
          '2) Indicar en ventanilla su RUC de Recojo N'#176' : '
          ''
          '3) Presentar el original de su Documento de Identidad (s'#243'lo DNI)'
          ''
          
            'Estos 3 pasos son indispensables para que el Banco pueda emitir ' +
            'y entregar el cheque. De esta manera usted podr'#225' cobrarlo de man' +
            'era r'#225'pida y eficiente.'
          ''
          
            'Todo este esfuerzo, refleja nuestro inter'#233's de brindarle el mejo' +
            'r servicio y trato diferenciado.'
          ''
          ''
          ''
          'Cordialmente, '
          ''
          ''
          ''
          ''
          ''
          ''
          
            'V'#225'lido para ser cobrado al d'#237'a siguiente de su aprobaci'#243'n  a par' +
            'tir de las 3 p.m.'
          
            'Recomendable cobrarlo en 48 horas. Es personal, intransferible y' +
            ' no negociable.'
          'Consultas al 219-0202 anexo 1108.')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 202936
        mmLeft = 16140
        mmTop = 50536
        mmWidth = 181505
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblAsoCG: TppLabel
        UserName = 'lblAsoCG'
        AutoSize = False
        Caption = 'lblAsoCG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 35190
        mmTop = 65881
        mmWidth = 119856
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'lblAsoCG1'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 29898
        mmTop = 65881
        mmWidth = 3704
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 29633
        mmTop = 74348
        mmWidth = 3704
        BandType = 4
      end
      object lblDniCG: TppLabel
        UserName = 'lblAsoCG2'
        AutoSize = False
        Caption = 'lblDniCG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 35190
        mmTop = 74348
        mmWidth = 48154
        BandType = 4
      end
      object lblNroCG: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'lblNroCG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 98161
        mmTop = 97896
        mmWidth = 37306
        BandType = 4
      end
      object lblMonCG: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = '99,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 153194
        mmTop = 97896
        mmWidth = 21167
        BandType = 4
      end
      object lblRucDni: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = '00000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 105569
        mmTop = 150019
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 29633
        mmTop = 83608
        mmWidth = 3704
        BandType = 4
      end
      object CodBarCG: TppBarCode
        UserName = 'CodBarCG'
        AutoEncode = True
        BarCodeType = bcInt2of5
        BarColor = clWindowText
        Data = '0123456789'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 17463
        mmLeft = 134673
        mmTop = 22490
        mmWidth = 39952
        BandType = 4
        mmBarWidth = 381
        mmWideBarRatio = 76200
      end
      object lblFechaCG: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'lblFechaCG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 35190
        mmTop = 83873
        mmWidth = 48154
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'lblAsoCG3'
        AutoSize = False
        Caption = 'CARTA DE RECOJO DE CHEQUE DE GERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5027
        mmLeft = 15875
        mmTop = 43656
        mmWidth = 101600
        BandType = 4
      end
      object lblCopia02: TppLabel
        UserName = 'lblCopia02'
        AutoSize = False
        Caption = '(Copia)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 169598
        mmTop = 42598
        mmWidth = 24606
        BandType = 4
      end
      object ppImage2: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        ShiftWithParent = True
        Stretch = True
        Picture.Data = {
          07544269746D61703E990000424D3E9900000000000036000000280000009D00
          000053000000010018000000000008990000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFEEEEEEEFF5F8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EDE600498C527E9BF0
          F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFECF8F100478A527E9BF0F3EEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFECF8F10043875892ADF4FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          F50042875892ADF4FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFB6CBCA759EA09DB1B395AEB4659CD56395D090
          C9C7D3DCF5E8F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8DBD98FA4A9659CD5
          6EA0D0699CD86FA096FDFFFF98BCB34789C1E1D8D1FFFFFFFBFFFF73A39A5E93
          CEC6D3CECADADE91A6AB639A99FFFFFFFFFFFFADBBB55F97D4679DC0749993E7
          F2F7FFFFFFFFFFFFFFFFFFB7E1D7568FCA87AA9DEDE7F85E99A0E4DEDCFFFFFF
          96BDBBA1BDD5FFFFFFECEEE86695BA769AABFFFFFF739398CFDADCFFFFFFFFFF
          FFFFFFFFD5EEE566A0C95E94CCFEF4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF518D8DB3C1C5FFFFFFFFFFFFFFFFFF99B9C984A1C3FFFFFFFFFFFFFFFBFB
          8FACAB87A6AA5F9696FFFFFF91B9B59DBAD2FFFFFFFFFFFFFFFFFFFFFFFF6298
          955791C5B3CCC4FFFFFFFEFFFF80A09D46869C5B5D9579A9D9225B93527E9BFD
          FCF3DDE6FF498A8691ACACFFFFFCD6E2FB83A1A75F9AD988A2B393CAC6FFFFFF
          FFFFFFFFFFFFA4D6CE4F88CAA1BCD8FFFFFDFFFFFFFEFFFFB1C3CF729EBE6A9E
          D26EA0D0679DD4759AABFFFFFF789BA96595BDE5E9E3FFFFFFF9F9F47299B64F
          8FA5E5E1D9D3E7F04A8AB39EADA5FFFFFF448888CDEBEBFFFFFFFFFFFFFFFFFF
          DFE3E56B989A4D8A8AFEFFFFEBF9F270A8C86397D770A195FAFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A943A6EA03A6EA03A6EA03A6EA03A6EA03A69A0227798
          8FBBB4FFFFFFFFFFFFFFFFFFD0D9D3336899356B9E78A9A077A0A02C9C9C78A1
          A0FDFFFF7296C10B4E8EA9BBB6FFFFFFB3CFC52965942B6298E2E1DA9EDDD31A
          639135679DFFFFFFFCFFFF4576A72B62965083B43C76ACA6BDDDFFFFFFFFFFFF
          FFFFFF5682AC1B58927693B7F7FFF0005B98DDECC8FFFFFF5788AD007583FFFF
          FFE5EFE937748E03478BFFFFFF296E8195ABC9FFFFFFFFFFFFFFFFFF90AAC41B
          5892296298FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F518D94BBB2
          FFFFFFFFFFFFFFFFFF5982926A92C2FFFFFFFFFFFFF5F7F256809B29629B245E
          95FFFFFF95B5D4256783FFFFFFFFFFFFFFFFFFCAEEE4255E942C67A1C5DCF0FF
          FFFF2A639929629A6487A3BEE4D5346A9F2A629C527E9BFFFFF9B2E1DA0E488C
          5792ADFFFFFFA5B5B52662987FB0A0487BA02A619B4B7CA6FFFFFFFFFFFF72A4
          9D124F93799FBBFFFFFFFFFFFFADC4E31C508F2F91A06EA3A070A0A0679D9C76
          9A9DFFFFFF08868A1A4C8FB9D1E2FFFFFFB0C5E51B508F0C7C8BFFFFFFB9CAEA
          0B4D8C64899DFFFFFF347881769AC4FFFFFFFFFFFFFFFFFF98B7C91F5A94074C
          8AFFFFFF77AFA704618C36979E3FA3A1FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A941B5997B1C1BAFFFFFFFEFBF7E3E9FF538E8B2F639F24599580BDC0FFFF
          FFFFFFFFAFCDC42360903A6DA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B92BD08
          4788B8E6DBFFFFFF6C93BD1F519238A89FFFFFFF8DD0C61A629136679DFFFFFF
          B6D3C928649230659BFFFEEE80A1C55C8494FFFFFFFFFFFFF9FCFF4876A81D5C
          917EC9BFFAFFFC135C93EADEDAEEF9F137738F07498CF9FFF9EDF4EE37748E00
          4588FFFFFF93ADD54687A2FAFFFCFFFFFFF5FFF95994AE1B5396699E98FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F518D94BBB2FFFFFFFFFFFFF9F5
          F004498D38758EE8F1ECFFFFFFF8FFFB5C97AF285E97235D95FFFFFFCADCD800
          497FFFFFFFFFFFFFFFFFFF68C0B51D5A914D7AABFFFFFF71C5B71D5A914C79AB
          FAFDFFFFFFFFA7DAD4114C90527E9BFFFFF9B2E1DA0E488C5792ADF3FFF9FFFF
          FFFFFFFFFFFFFFFFFFFF2E659C276390B6D2C8FFFFFF72A49D124F93799FBBFF
          FFFFFFFFFFADC4E30848876EAAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF028387
          164C8FC7D5E3FFFFFF024887205C9294B1D4FFFFFFB3C8E60B4D8C64899DFFFF
          FF76B4C052819BFFFFF1FFFFFFFFFFFF67A2B5145194809CA1FFFFFF67A2B508
          4887B7CBE9FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1
          BAFFFFFFFFFFFFFFFFFFFFFFFF6AA5B5295E980F508AEAF1FFFFFFFFAFCDC424
          6090396DA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B92BD084788C5ECE1DAF3ED
          16728F114B8AE4EDFFFFFFFF8DD0C61A62903F6DA2FFFFFF578FAC1A529674A6
          9DFFFFFFB5D1C8225C9473A4A075A1A0509EA0306E9F2C6198D2D7D1ECFFF915
          5A8CE6EEFFCFE1EB18558F1E5B98ABBCB9F9FFF837748E004488FFFFFFD4D9EA
          096F8E65A5A075A0A062A5A03185A0124E92DED8D2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0F518D94BBB2FFFFFFFFFFFF94ACAC205C991B5792B1
          CBD4FFFFFFF9FFFC5C8EAF289097235D95FFFFFFE8FCF44272A32A9C9C79A1A0
          76A7A04678A0265C986AC1B5FFFFFF447EA41E579491BAAFFFFFFFFFFFFFECF8
          F100478A527E9BFFFFF9B2E1DA0E488C5792ADF3FFF9FFFFFFFFFFFFFFFFFFCD
          F0E62C65991D589291ADC8FFFFFF72A49D124F93799FBBFFFFFFFFFFFFADC4E3
          0848876EAAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF028387164C8FDADFEDC5EF
          E10F4B8F4E7A9AECEFEAFFFFFFB1C6E50B4D8C63899CFFFFFFE5E3EC08668E5D
          A6A075A0A06AA4A02F8DA01A4F8EBECFEDFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFF
          FFFFFFFFFFD6E6E03571902A579B3FADA1FFFFFFAFCDC4246090396DA1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6B92BD0D498ABCECDE83B4C215519473949EFFFF
          FFFFFFFF8DD0C61B63914774A4CDE0E31D5993074A87FFFFFFFFFFFFDAF5ED3B
          75A033679C3A6EA03A67A033919D30639BFFFFFFE1F9F0135C93F8EDE4AAB5C1
          1E5D97335E9C3CA9A2FFFFFB37748E004488FFFFFFE6F0FB3774AD3367993A6E
          A03A6EA03A6EA0094B88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0F518D94BBB2FFFFFFFFFFFF245E95356A9D28629C6C8F9DFFFFFFFAFFFD
          5C8EAF289097235D95FFFFFFFFFFFF5F87AD2A63993A6EA03A6EA0386C9F255F
          97D4D6CFB8E9E01B6A91245895C5EDE2FFFFFFFFFFFFECF8F100478A527E9BFF
          FFF9B2E1DA0E488C5792ADF3FFF9FFFFFFFFFFFFA0C1CA3A73943266A02F6994
          B6D2C8FFFFFF72A49D124F93799FBBFFFFFFFFFFFFADC4E30B4E8C668A9DFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0283871F4C8FC2F1F6497CA81B57908AA8C5FF
          FFFFFFFFFFB1C6E50B4D8C63899CFFFFFFFDFFFA3B798C3266A03A6EA03A6EA0
          3A6EA00C4E8BFDFCFEFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFE9EEE8
          4C799A286199386CA0FFFFFF8FD3C52367953A6BA03A6EA03A6EA80C4D51FEFF
          FFFFFFFF6B92BD1E578C78A9D92F63953266A03F7B8AE0E8FFFFFFFF8DD0C61F
          66943D6EA06A9CA03165A01B5391AFE0D7FFFFFFFFFFFF2F689F9DB2B1FFFFFF
          7AA0BB1E599332689CFFFFFFDBF6ED1B5E90E1EAFD4E878E3165A033699C3B6E
          A2FDFFFB3A748E004488FFFFFFFFFFFA6581A469ABB8FFFFFF74B0BA1D538E42
          80BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11518D61BBB2
          FFFFFFC7EEE3265F96376B9E3A6EA00B4C89FFFFFFFFFFFE5C97AF285E97235D
          95FFFFFDFFFFFF95BCB20D4F8BFFFFFFA3DAD21A6991205794FFFFFFACC0D61A
          58911F5C95F7ECE1FFFFFFFFFFFFF4EDED4A878774ADADFFFFFFB1DFD80E488C
          5792ADF5FFFAFFFFFF4281883064A0396DA0275F9989B6ACFFFFFFFFFFFF72A4
          9D124F93799FBBFFFFFFFFFFFFADC4E31C588F3A6EA03A6EA22F66924F7B74EE
          F1F2FFFFFF0283873A5CA03A9BA03A6FA0306E9D4EA19AECE9EAFFFFFFB1C6E5
          0B4D8C63899CFFFFFFFFFFFF4F91A784A1CCFFFFFF83BFC1144F9262889CFFFF
          FFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7199B7235B95326B
          9CEEFFF696D4CB1E62933B6DA0B3E2D9A0D0D089C6C6FFFCFAFFFFFF6B92BD08
          4788B5E3D9FFFFFFA1C3C5245F90356A9FFFFFFF8FD0C61A629036689EFFFFFF
          FBFCFF4274A6245E93C6D3CCFFFFFF4CA7A7309B9BFFFFFF5690AC114F92A1B6
          B3FFFFFFDBF6ED276297ACDCD5245295268096A4E1D230619DADDDCD497C9700
          4488FFFFFFFFFFFF7F9EC05D8496FFFFFF42808B135190A5BEDFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11518D63BCB2FFFFFF5D89B22B62
          983367A05D8FA0316693A1D4D3FFFFFF5C97AF285E97235D95FFFFFDFFFFFFC6
          EDE212518CFFFFFFA3BFD41B57901D5A92FFFFFFA5DAD31B6A91245895C5EDE2
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9DBD40E488C5792ADFFFFFFA8B9
          B51E5B983A6EA020579492CBC9FFFFFFFFFFFFFFFFFF72A49D124F93799FBBFF
          FFFFFFFFFFADC4E31350875487C2A4D4D49DD0CCA8CDDAF7F6FFFFFFFF028387
          164C8FC6D4E2FFFFFF7EBBBF134A8E6CA8B6FFFFFFB5C8E70B4D8C63899CFFFF
          FFFFFFFF9FB2C42268ABFFFFFF4B878916529290AED3FFFFFFFFFFFF67A2B513
          4A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1
          BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B9AB8205D96316798E0E3DDBFD9D023
          60903A6DA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B92BD084788B4E2D9FFFFFF
          D8F4EC356E9D296298EAFEF49DD7CE1A629136679DFFFFFFFFFFFF527FAA1957
          907397BAFFFFFFB4C2BD26619DD9FFF93F738F07488CF0FBF4FFFFFFDBF6ED3C
          6CA133A29C2C5A9D5A839CFFFFFF205A9636AE9E3A85A0044488FFFFFFFFFFFF
          98CCCC008280ECFFFF194E8B12528DDFE6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0F518DA0C1B7F8FFFF427BA22A619A407199F2F8ED68
          87BA1C9291FFFFFF5C97AF285E97235D95FFFFFDFFFFFFFFFFFC1D579189BBDE
          79AAB81350938FA8AAFFFFFFDDE3DE3F71991C5996BCCAC4FFFFFFFFFFFFFFFF
          FFEDEFF0F7FEFFFFFFFFA9DBD40E488C5792ADFFFFFF39A69F2652965691ACF2
          FFF9FFFFFFFFFFFFFFFFFFFFFFFF72A49D124F93799FBBFFFFFFFFFFFFADC4E3
          0848876EAAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0283871A4C8FB9D1E2FFFF
          FFDFE2E7084B8F3E7C8BFFFFFFB6CAEA0B4D8C63899CFFFFFFFFFFFFB6C2DB00
          667DFFFFFF114D8B185690C0D0E0FFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF6890BB255D94326B9CEEFFF696D4CB1960903D6DA1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6B92BD084788B4E2D9FFFFFFB3CFC52763913166
          9EFFFFFF96D5C91A629036689EFFFFFFFBFCFF4374A7205D91A1C5BAFFFFFFFF
          FFFA1C5993689BCC275C97438287FFFFFFFFFFFFDBF6ED3C76A133679C235C95
          8CAFC4FFFFFF5C94922B619E3A6EA0044A88FFFFFFFFFFFFDDF7EE346EA171A2
          9C225B9D58829BF8F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0F518DACCDBEB6C7DF1E5B932A63995F87AEFFFFFF95BDB31B5691EBF9FF
          669FB2285E97235D95FFFFFDFFFFFFFFFFFF285D9734799D3A90A0124A8EDFEE
          EBFFFFFFFFFFFF658BB11B59925883ABFFFFFFFFFFFFFFFFFF003B807EA2BDFF
          FFFFACDDD60E488C5792ADFFFFFF77A39F0D599093D3C9FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF72A4D60F4F8885A1BCFFFFFFFFFFFFB2B7BD074A8E6EAAB7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF028387164C8FC6D4E2FFFFFF7EBBBF144F9364
          899CFFFFFFB5CAE90B4D8C63899CFFFFFFFFFFFFE5EAE53D6C9A6FA29E255C9D
          4C799AE9EEE8FFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFEEFDF6
          518AAA275E96386CA0FFFFFFB7D3ED2A659E386C9D78A9A06EA0A0679B9B74A3
          A1FFFFFF6B92BD2755963EAEA06991A03165A0265D9B77A89FFFFFFF8DD0C61F
          66943D6AA06AB0A03183A033639D33699CFFFFFEFFFFFFFFFFFF138F8E37619E
          1C598FABC2E1FFFFFFFFFFFFFAFCFF4978A927619843739ADFE5E0FFFFFF95CD
          CA2057943A64A0048188FFFFFFFFFFFFFFFFFF5885AF2B63981F5A929BB9D3FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1454919CBDAD
          96A6BF24609928619897BEB3FFFFFFF2F7FF1C579287B5B278A9BF285E97235D
          95FFFFFDFFFFFFFFFFFFA2D7D11D55923165A03F7F89FFFFFFFFFFFFFFFFFFFF
          FFFD2A639828629B678DA8ABBCB92C659D386C98D6DFD8FFFFFFA9DBD40E488C
          5792ADFDFFFFF7FEF70E4E8C3A6EA02F63A0679B9990B7B7D2E4E8669D92386C
          A03266A05083A05F9B94D9D4D0CDE2E8194D912F91A06EA3A070A0A05E9692A5
          C1D6FFFFFF064A883165A0699BA03E72A0376BA01B5993B3C2D0FFFFFFB2C7E6
          0B4D8C63899CFFFFFFFFFFFFFFFFFF6993B4296198255E957EA2C3FFFFFFFFFF
          FFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFE9EEE84C799A2660993E71
          A1FFFFFFFFFFFFA9B8BD5E97976D9F9F6EA0A0679B9B74A3A1FFFFFF89B0BD63
          99966EA0A06EA0A05B948FB4C9E4FFFFFFFFFFFFAAC6C65D94946EA0A06EA0A0
          64969682BEBEFFFFFFFFFFFFFFFFFFFFFFFFEDEEEA00788B5B7B9CFAFBF7FFFF
          FFFFFFFFFFFFFFC4EBE10E508C6ABEB5FFFFFFFFFFFFFFFFFF387789387391C5
          DED8FFFFFFFFFFFFFFFFFFFFFFFC12539050789FF9F1EAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22589535AD9D3A87A035649D255F
          96FFFFFFFFFFFFFFFFFF548A962C729D3A8FA036649E235D95FFFFFDFFFFFFFF
          FFFFFFFFFF678A9D286B8DD8E2DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F919D
          28619C255F99809DA9FFFFFFFFFFFFFFFFFFDDD3D3408C8C4EADADF3F9F9FFFF
          FFF7FDFD80B2B235999961999994B7B7E3E8E82792926BA0A06FA0A076A0A026
          9494C6C8C8FFFFFFA5C6C65E95956EA0A073A0A040969290C1D6FFFFFF3F8988
          45A0A075A0A06B9F9E669899C7D1D4FFFFFFFFFFFFC2DDDD0488886BB6B6FFFF
          FFFFFFFFFFFFFFF7FAFF30679D386A9AFCF3EAFFFFFFFFFFFFFFFFFF67A2B513
          4A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1
          BAFFFFFFFFFFFFFFFFFFFFFFFFB5C5D41A58921A5291B7E6DBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF225D95356A9D3A6EA0295F9D649B96FFFFFFFFFFFFFF
          FFFFD8D4CF1355933A6EA0366B9E235D95FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A94195290BAE8DDFFFFFFFFFFFFFF
          FFFFEEFBFB407C8B275CA0448487FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF225995357B9D3A8EA011498DE5F3EEFFFFFFFFFFFFFFFFFFFFFFFF064B88
          3A6EA0366B9E235D95FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF7BB6B7C0C8CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF8FEFD7AAFB1D2D5D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFF1F6F6B6E6DA1C549232669F
          3F7A8BE9F9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF225D95356A9D
          3A65A0068088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76ACBB277E97367C9E2359
          95FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DA1D4285892
          15738FCEEDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBBC0
          2552960C7B8BFBFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A943A6EA03A6EA03A6EA03A6EA03A6BA02A699763B6B8FFF9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF225D95356A9D1E5A90A2BCDDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCBE0ED15538E366B9E235D95FFFFFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FB4B11E559815738FCEEDE6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAEB31C54980C7B8BFBFF
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A2B513
          4A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFBCCDCD5A93936EA0A06EA0
          A0679D9D87A2A592C7C8E8F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF5D9595659B9B6F989BEFF1F2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEFF1F26F989B659C9B5D9595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF7DBFBFCAE4E4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EB5C9CADCDEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF9F9F9EEEEEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
          3232000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF3F3F3FB1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C70D0D0DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD
          343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD9D9D9090909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4000000C9C9C9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B
          2B2B000000F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7FFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000008E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD6D6D6000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F000000E9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF434343000000303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0000000000006E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          909090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000DADADAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          000000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000424242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADA000000C4
          C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2323230000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292000000D5D5D5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000008A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000838383FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000242424FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7D7D7D0000000000000000000000000000000000000000000000000000000000
          003E3E3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3000000000000000000000000
          000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000797979FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000454545
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000D8D8D8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0000000000007D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDCDCDC000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000909090FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          949494000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF777777000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000000000CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          878787000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4545450000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000DE
          DEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4000000DADADAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38383800000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B2B2B0000
          002E2E2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000777777FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000474747FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000929292FFFFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF000000B2B2B25B5B5B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000008E8E8EFFFFFF0000007B7B7BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C1C1C1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF1D1D1D000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7979790000000000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFDADADA000000C4C4C4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF969696000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2000000000000000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF929292000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF474747000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFF000000000000969494FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF6C6C6CC5C5C5000000242424FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF20201F000000FFFFFF
          F9FDFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A8
          A8A8FFFFFF0000005C5C5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          717171000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF4545450000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F
          1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF4545450000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F
          1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFF777777000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF4949490000
          00292929FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF272727000000000000000000FF
          FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF111111FFFFFF00000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEFFAFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5F5FFFFFFFFFFFFF1FBFFFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFF0D0D0DF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5
          F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5F5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF929292000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090900000000000
          00000000000000C4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232310000
          00FFFFFF898787000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF858585000000FFFFFFFFFFFFFFFFFF35
          393A000000383838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCDCDCD000000D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          858585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D10000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00}
        mmHeight = 20373
        mmLeft = 15875
        mmTop = 17463
        mmWidth = 38100
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object lblDatosUser: TppLabel
        UserName = 'lblDatosUser'
        AutoSize = False
        Caption = 'lblDatosUser'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 17198
        mmTop = 3440
        mmWidth = 179652
        BandType = 8
      end
    end
  end
  object rpCartaAutDes: TppReport
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
    Left = 339
    Top = 244
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 258234
      mmPrintPosition = 0
      object lblFechaCarta: TppLabel
        UserName = 'lblFechaCarta'
        AutoSize = False
        Caption = 'Lima,     de                               del 2,007'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 94192
        mmTop = 30427
        mmWidth = 91281
        BandType = 0
      end
      object ppMemo6: TppMemo
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Lines.Strings = (
          'SE'#209'ORES :'
          ''
          'PRESENTE.-')
        Transparent = True
        mmHeight = 14552
        mmLeft = 11377
        mmTop = 43656
        mmWidth = 180446
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'De mi mayor consideraci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11377
        mmTop = 71967
        mmWidth = 138907
        BandType = 0
      end
      object ppMemo7: TppMemo
        UserName = 'Memo3'
        Caption = 
          'Por la presente, en mi condici'#243'n de obligado principal del '#8220'Conv' +
          'enio de Pr'#233'stamo Personal'#8221', suscrito con Derrama Magisterial y d' +
          'entro del marco del '#8220'Convenio de Servicio de Otorgamiento de Pr'#233 +
          'stamo Personal con Descuento por Planilla'#8221', celebrado entre Derr' +
          'ama Magisterial y la                                            ' +
          '                         , autorizo a la                        ' +
          '                                              , en forma expresa' +
          ' e irrevocable, para que se descuente en forma mensual de mi (s)' +
          '  remuneraci'#243'n (es) , liquidaci'#243'n de beneficios sociales, libera' +
          'lidades, indemnizaciones u otros conceptos similares, en caso co' +
          'rresponda, el importe de las cuotas de capital, inter'#233's y dem'#225's ' +
          'conceptos que se deriven del (los) cr'#233'ditos(s) que a la fecha, m' +
          'e ha otorgado Derrama Magisterial, por la suma total de S/      ' +
          '     (                                                     00/10' +
          '0 Nuevos Soles), en un plazo de     meses, por un importe de S/ ' +
          '             c/u.'#13#10#13#10'La presente, sustituye, de ser el caso, a c' +
          'ualquier autorizaci'#243'n anterior y s'#243'lo podr'#225' ser revocada, por EL' +
          ' TITULAR, previa autorizaci'#243'n escrita y remitida por la Derrama ' +
          'Magisterial a la                                                ' +
          '  '#13#10#13#10'Muy atentamente,'#13#10#13#10'NOMBRE Y APELLIDOS :'#13#10'DNI N'#186':  '#13#10'CARGO' +
          ': '#13#10'DOMICILIO:    '#13#10'TELEFONO: '#13#10'FIRMA:                '#13#10'02 ORIGI' +
          'NALES:'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          
            'Por la presente, en mi condici'#243'n de obligado principal del '#8220'Conv' +
            'enio de Pr'#233'stamo Personal'#8221', suscrito con Derrama Magisterial y d' +
            'entro del marco del '#8220'Convenio de Servicio de Otorgamiento de Pr'#233 +
            'stamo Personal con Descuento por Planilla'#8221', celebrado entre Derr' +
            'ama Magisterial y la                                            ' +
            '                         , autorizo a la                        ' +
            '                                              , en forma expresa' +
            ' e irrevocable, para que se descuente en forma mensual de mi (s)' +
            '  remuneraci'#243'n (es) , liquidaci'#243'n de beneficios sociales, libera' +
            'lidades, indemnizaciones u otros conceptos similares, en caso co' +
            'rresponda, el importe de las cuotas de capital, inter'#233's y dem'#225's ' +
            'conceptos que se deriven del (los) cr'#233'ditos(s) que a la fecha, m' +
            'e ha otorgado Derrama Magisterial, por la suma total de       S/' +
            '.                  (                                            ' +
            '                                             ), en un plazo de  ' +
            '      meses, por un importe de S/              c/u.'
          ''
          
            'Igualmente autorizo, en forma expresa e irrevocable, que tambi'#233'n' +
            ' se descuente en los meses de marzo, julio y diciembre, meses en' +
            ' los que percibo las bonificaciones por escolaridad, fiestas pat' +
            'rias y navidad, respectivamente. La presente sustituye, de ser e' +
            'l caso, a cualquier autorizaci'#243'n anterior.'
          ''
          'Muy atentamente,'
          ''
          ''
          ''
          ''
          'NOMBRE Y APELLIDOS :'
          'DNI N'#186':  '
          'CARGO: '
          'DOMICILIO:    '
          'TELEFONO: '
          'FIRMA:                '
          ''
          ''
          ''
          ''
          '02 ORIGINALES:')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 177007
        mmLeft = 11642
        mmTop = 80169
        mmWidth = 188648
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblNombresC: TppLabel
        UserName = 'lblNombres2'
        AutoSize = False
        Caption = 'Nombre y Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61383
        mmTop = 180182
        mmWidth = 87577
        BandType = 0
      end
      object lblAsoDniC: TppLabel
        UserName = 'lblAsoDnia'
        AutoSize = False
        Caption = 'XXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 185209
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'CARTA DE AUTORIZACION DE DESCUENTO POR PLANILLA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 30692
        mmTop = 9260
        mmWidth = 141552
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'SEGUN CONVENIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 30692
        mmTop = 15610
        mmWidth = 141552
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'REFERENCIA: AUTORIZACI'#211'N PARA DESCUENTO POR PLANILLA  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 11377
        mmTop = 62971
        mmWidth = 141552
        BandType = 0
      end
      object lblDirReg01: TppLabel
        UserName = 'lblAsoDnia2'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 48683
        mmWidth = 173567
        BandType = 0
      end
      object lblDirReg02: TppLabel
        UserName = 'lblDirReg02'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 94456
        mmWidth = 109273
        BandType = 0
      end
      object lblDirReg03: TppLabel
        UserName = 'lblDirReg03'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 94986
        mmWidth = 45508
        BandType = 0
      end
      object lblCargo: TppLabel
        UserName = 'lblAsoDnia3'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 190236
        mmWidth = 21431
        BandType = 0
      end
      object lblDireccion: TppLabel
        UserName = 'lblDireccion'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 194734
        mmWidth = 120915
        BandType = 0
      end
      object lblTelefono: TppLabel
        UserName = 'lblDireccion1'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 199232
        mmWidth = 47625
        BandType = 0
      end
      object lblDirReg04: TppLabel
        UserName = 'lblDirReg04'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 228071
        mmWidth = 88106
        BandType = 0
      end
      object lblDirReg05: TppLabel
        UserName = 'lblDirReg05'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 239448
        mmWidth = 88106
        BandType = 0
      end
      object lblMontoC: TppLabel
        UserName = 'lblMonto'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 17727
        mmTop = 118534
        mmWidth = 19050
        BandType = 0
      end
      object lblMonCuo: TppLabel
        UserName = 'lblMonto1'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 50536
        mmTop = 123561
        mmWidth = 11377
        BandType = 0
      end
      object lblPlazoC: TppLabel
        UserName = 'lblMonto2'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 178065
        mmTop = 118798
        mmWidth = 4233
        BandType = 0
      end
      object lblNunLetras: TppLabel
        UserName = 'lblNunLetras'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 39423
        mmTop = 118798
        mmWidth = 102659
        BandType = 0
      end
      object lblDirReg06: TppLabel
        UserName = 'lblDirReg06'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 163777
        mmWidth = 109273
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rpPagare: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 8890
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
    Left = 224
    Top = 368
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 50271
      mmPrintPosition = 0
      object ppLabel89: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Caption = 'PAGARE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 61119
        mmTop = 16140
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = 'Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 102129
        mmTop = 44186
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label902'
        AutoSize = False
        Caption = 'N'#176' Pagar'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 10054
        mmTop = 43921
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 117211
        mmTop = 33338
        mmWidth = 15875
        BandType = 0
      end
      object ppShape85: TppShape
        UserName = 'Shape85'
        mmHeight = 6615
        mmLeft = 147638
        mmTop = 32015
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 135467
        mmTop = 33338
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 30163
        mmTop = 43921
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 128588
        mmTop = 44186
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 140494
        mmTop = 33338
        mmWidth = 5821
        BandType = 0
      end
      object lblCreDid: TppLabel
        UserName = 'lblCModular1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 35454
        mmTop = 43921
        mmWidth = 58208
        BandType = 0
      end
      object lblFecPag: TppLabel
        UserName = 'lblFecPag'
        AutoSize = False
        Caption = '.....de.......................del  20.....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 134144
        mmTop = 43921
        mmWidth = 50271
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'lblCopia'
        AutoSize = False
        Caption = '(Copia)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 83079
        mmTop = 23548
        mmWidth = 24606
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        ShiftWithParent = True
        Stretch = True
        Picture.Data = {
          07544269746D61703E990000424D3E9900000000000036000000280000009D00
          000053000000010018000000000008990000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFEEEEEEEFF5F8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EDE600498C527E9BF0
          F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFECF8F100478A527E9BF0F3EEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFECF8F10043875892ADF4FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          F50042875892ADF4FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFB6CBCA759EA09DB1B395AEB4659CD56395D090
          C9C7D3DCF5E8F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8DBD98FA4A9659CD5
          6EA0D0699CD86FA096FDFFFF98BCB34789C1E1D8D1FFFFFFFBFFFF73A39A5E93
          CEC6D3CECADADE91A6AB639A99FFFFFFFFFFFFADBBB55F97D4679DC0749993E7
          F2F7FFFFFFFFFFFFFFFFFFB7E1D7568FCA87AA9DEDE7F85E99A0E4DEDCFFFFFF
          96BDBBA1BDD5FFFFFFECEEE86695BA769AABFFFFFF739398CFDADCFFFFFFFFFF
          FFFFFFFFD5EEE566A0C95E94CCFEF4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF518D8DB3C1C5FFFFFFFFFFFFFFFFFF99B9C984A1C3FFFFFFFFFFFFFFFBFB
          8FACAB87A6AA5F9696FFFFFF91B9B59DBAD2FFFFFFFFFFFFFFFFFFFFFFFF6298
          955791C5B3CCC4FFFFFFFEFFFF80A09D46869C5B5D9579A9D9225B93527E9BFD
          FCF3DDE6FF498A8691ACACFFFFFCD6E2FB83A1A75F9AD988A2B393CAC6FFFFFF
          FFFFFFFFFFFFA4D6CE4F88CAA1BCD8FFFFFDFFFFFFFEFFFFB1C3CF729EBE6A9E
          D26EA0D0679DD4759AABFFFFFF789BA96595BDE5E9E3FFFFFFF9F9F47299B64F
          8FA5E5E1D9D3E7F04A8AB39EADA5FFFFFF448888CDEBEBFFFFFFFFFFFFFFFFFF
          DFE3E56B989A4D8A8AFEFFFFEBF9F270A8C86397D770A195FAFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A943A6EA03A6EA03A6EA03A6EA03A6EA03A69A0227798
          8FBBB4FFFFFFFFFFFFFFFFFFD0D9D3336899356B9E78A9A077A0A02C9C9C78A1
          A0FDFFFF7296C10B4E8EA9BBB6FFFFFFB3CFC52965942B6298E2E1DA9EDDD31A
          639135679DFFFFFFFCFFFF4576A72B62965083B43C76ACA6BDDDFFFFFFFFFFFF
          FFFFFF5682AC1B58927693B7F7FFF0005B98DDECC8FFFFFF5788AD007583FFFF
          FFE5EFE937748E03478BFFFFFF296E8195ABC9FFFFFFFFFFFFFFFFFF90AAC41B
          5892296298FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F518D94BBB2
          FFFFFFFFFFFFFFFFFF5982926A92C2FFFFFFFFFFFFF5F7F256809B29629B245E
          95FFFFFF95B5D4256783FFFFFFFFFFFFFFFFFFCAEEE4255E942C67A1C5DCF0FF
          FFFF2A639929629A6487A3BEE4D5346A9F2A629C527E9BFFFFF9B2E1DA0E488C
          5792ADFFFFFFA5B5B52662987FB0A0487BA02A619B4B7CA6FFFFFFFFFFFF72A4
          9D124F93799FBBFFFFFFFFFFFFADC4E31C508F2F91A06EA3A070A0A0679D9C76
          9A9DFFFFFF08868A1A4C8FB9D1E2FFFFFFB0C5E51B508F0C7C8BFFFFFFB9CAEA
          0B4D8C64899DFFFFFF347881769AC4FFFFFFFFFFFFFFFFFF98B7C91F5A94074C
          8AFFFFFF77AFA704618C36979E3FA3A1FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A941B5997B1C1BAFFFFFFFEFBF7E3E9FF538E8B2F639F24599580BDC0FFFF
          FFFFFFFFAFCDC42360903A6DA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B92BD08
          4788B8E6DBFFFFFF6C93BD1F519238A89FFFFFFF8DD0C61A629136679DFFFFFF
          B6D3C928649230659BFFFEEE80A1C55C8494FFFFFFFFFFFFF9FCFF4876A81D5C
          917EC9BFFAFFFC135C93EADEDAEEF9F137738F07498CF9FFF9EDF4EE37748E00
          4588FFFFFF93ADD54687A2FAFFFCFFFFFFF5FFF95994AE1B5396699E98FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F518D94BBB2FFFFFFFFFFFFF9F5
          F004498D38758EE8F1ECFFFFFFF8FFFB5C97AF285E97235D95FFFFFFCADCD800
          497FFFFFFFFFFFFFFFFFFF68C0B51D5A914D7AABFFFFFF71C5B71D5A914C79AB
          FAFDFFFFFFFFA7DAD4114C90527E9BFFFFF9B2E1DA0E488C5792ADF3FFF9FFFF
          FFFFFFFFFFFFFFFFFFFF2E659C276390B6D2C8FFFFFF72A49D124F93799FBBFF
          FFFFFFFFFFADC4E30848876EAAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF028387
          164C8FC7D5E3FFFFFF024887205C9294B1D4FFFFFFB3C8E60B4D8C64899DFFFF
          FF76B4C052819BFFFFF1FFFFFFFFFFFF67A2B5145194809CA1FFFFFF67A2B508
          4887B7CBE9FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1
          BAFFFFFFFFFFFFFFFFFFFFFFFF6AA5B5295E980F508AEAF1FFFFFFFFAFCDC424
          6090396DA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B92BD084788C5ECE1DAF3ED
          16728F114B8AE4EDFFFFFFFF8DD0C61A62903F6DA2FFFFFF578FAC1A529674A6
          9DFFFFFFB5D1C8225C9473A4A075A1A0509EA0306E9F2C6198D2D7D1ECFFF915
          5A8CE6EEFFCFE1EB18558F1E5B98ABBCB9F9FFF837748E004488FFFFFFD4D9EA
          096F8E65A5A075A0A062A5A03185A0124E92DED8D2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0F518D94BBB2FFFFFFFFFFFF94ACAC205C991B5792B1
          CBD4FFFFFFF9FFFC5C8EAF289097235D95FFFFFFE8FCF44272A32A9C9C79A1A0
          76A7A04678A0265C986AC1B5FFFFFF447EA41E579491BAAFFFFFFFFFFFFFECF8
          F100478A527E9BFFFFF9B2E1DA0E488C5792ADF3FFF9FFFFFFFFFFFFFFFFFFCD
          F0E62C65991D589291ADC8FFFFFF72A49D124F93799FBBFFFFFFFFFFFFADC4E3
          0848876EAAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF028387164C8FDADFEDC5EF
          E10F4B8F4E7A9AECEFEAFFFFFFB1C6E50B4D8C63899CFFFFFFE5E3EC08668E5D
          A6A075A0A06AA4A02F8DA01A4F8EBECFEDFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFF
          FFFFFFFFFFD6E6E03571902A579B3FADA1FFFFFFAFCDC4246090396DA1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6B92BD0D498ABCECDE83B4C215519473949EFFFF
          FFFFFFFF8DD0C61B63914774A4CDE0E31D5993074A87FFFFFFFFFFFFDAF5ED3B
          75A033679C3A6EA03A67A033919D30639BFFFFFFE1F9F0135C93F8EDE4AAB5C1
          1E5D97335E9C3CA9A2FFFFFB37748E004488FFFFFFE6F0FB3774AD3367993A6E
          A03A6EA03A6EA0094B88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0F518D94BBB2FFFFFFFFFFFF245E95356A9D28629C6C8F9DFFFFFFFAFFFD
          5C8EAF289097235D95FFFFFFFFFFFF5F87AD2A63993A6EA03A6EA0386C9F255F
          97D4D6CFB8E9E01B6A91245895C5EDE2FFFFFFFFFFFFECF8F100478A527E9BFF
          FFF9B2E1DA0E488C5792ADF3FFF9FFFFFFFFFFFFA0C1CA3A73943266A02F6994
          B6D2C8FFFFFF72A49D124F93799FBBFFFFFFFFFFFFADC4E30B4E8C668A9DFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0283871F4C8FC2F1F6497CA81B57908AA8C5FF
          FFFFFFFFFFB1C6E50B4D8C63899CFFFFFFFDFFFA3B798C3266A03A6EA03A6EA0
          3A6EA00C4E8BFDFCFEFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFE9EEE8
          4C799A286199386CA0FFFFFF8FD3C52367953A6BA03A6EA03A6EA80C4D51FEFF
          FFFFFFFF6B92BD1E578C78A9D92F63953266A03F7B8AE0E8FFFFFFFF8DD0C61F
          66943D6EA06A9CA03165A01B5391AFE0D7FFFFFFFFFFFF2F689F9DB2B1FFFFFF
          7AA0BB1E599332689CFFFFFFDBF6ED1B5E90E1EAFD4E878E3165A033699C3B6E
          A2FDFFFB3A748E004488FFFFFFFFFFFA6581A469ABB8FFFFFF74B0BA1D538E42
          80BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11518D61BBB2
          FFFFFFC7EEE3265F96376B9E3A6EA00B4C89FFFFFFFFFFFE5C97AF285E97235D
          95FFFFFDFFFFFF95BCB20D4F8BFFFFFFA3DAD21A6991205794FFFFFFACC0D61A
          58911F5C95F7ECE1FFFFFFFFFFFFF4EDED4A878774ADADFFFFFFB1DFD80E488C
          5792ADF5FFFAFFFFFF4281883064A0396DA0275F9989B6ACFFFFFFFFFFFF72A4
          9D124F93799FBBFFFFFFFFFFFFADC4E31C588F3A6EA03A6EA22F66924F7B74EE
          F1F2FFFFFF0283873A5CA03A9BA03A6FA0306E9D4EA19AECE9EAFFFFFFB1C6E5
          0B4D8C63899CFFFFFFFFFFFF4F91A784A1CCFFFFFF83BFC1144F9262889CFFFF
          FFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7199B7235B95326B
          9CEEFFF696D4CB1E62933B6DA0B3E2D9A0D0D089C6C6FFFCFAFFFFFF6B92BD08
          4788B5E3D9FFFFFFA1C3C5245F90356A9FFFFFFF8FD0C61A629036689EFFFFFF
          FBFCFF4274A6245E93C6D3CCFFFFFF4CA7A7309B9BFFFFFF5690AC114F92A1B6
          B3FFFFFFDBF6ED276297ACDCD5245295268096A4E1D230619DADDDCD497C9700
          4488FFFFFFFFFFFF7F9EC05D8496FFFFFF42808B135190A5BEDFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11518D63BCB2FFFFFF5D89B22B62
          983367A05D8FA0316693A1D4D3FFFFFF5C97AF285E97235D95FFFFFDFFFFFFC6
          EDE212518CFFFFFFA3BFD41B57901D5A92FFFFFFA5DAD31B6A91245895C5EDE2
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9DBD40E488C5792ADFFFFFFA8B9
          B51E5B983A6EA020579492CBC9FFFFFFFFFFFFFFFFFF72A49D124F93799FBBFF
          FFFFFFFFFFADC4E31350875487C2A4D4D49DD0CCA8CDDAF7F6FFFFFFFF028387
          164C8FC6D4E2FFFFFF7EBBBF134A8E6CA8B6FFFFFFB5C8E70B4D8C63899CFFFF
          FFFFFFFF9FB2C42268ABFFFFFF4B878916529290AED3FFFFFFFFFFFF67A2B513
          4A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1
          BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B9AB8205D96316798E0E3DDBFD9D023
          60903A6DA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B92BD084788B4E2D9FFFFFF
          D8F4EC356E9D296298EAFEF49DD7CE1A629136679DFFFFFFFFFFFF527FAA1957
          907397BAFFFFFFB4C2BD26619DD9FFF93F738F07488CF0FBF4FFFFFFDBF6ED3C
          6CA133A29C2C5A9D5A839CFFFFFF205A9636AE9E3A85A0044488FFFFFFFFFFFF
          98CCCC008280ECFFFF194E8B12528DDFE6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0F518DA0C1B7F8FFFF427BA22A619A407199F2F8ED68
          87BA1C9291FFFFFF5C97AF285E97235D95FFFFFDFFFFFFFFFFFC1D579189BBDE
          79AAB81350938FA8AAFFFFFFDDE3DE3F71991C5996BCCAC4FFFFFFFFFFFFFFFF
          FFEDEFF0F7FEFFFFFFFFA9DBD40E488C5792ADFFFFFF39A69F2652965691ACF2
          FFF9FFFFFFFFFFFFFFFFFFFFFFFF72A49D124F93799FBBFFFFFFFFFFFFADC4E3
          0848876EAAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0283871A4C8FB9D1E2FFFF
          FFDFE2E7084B8F3E7C8BFFFFFFB6CAEA0B4D8C63899CFFFFFFFFFFFFB6C2DB00
          667DFFFFFF114D8B185690C0D0E0FFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF6890BB255D94326B9CEEFFF696D4CB1960903D6DA1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6B92BD084788B4E2D9FFFFFFB3CFC52763913166
          9EFFFFFF96D5C91A629036689EFFFFFFFBFCFF4374A7205D91A1C5BAFFFFFFFF
          FFFA1C5993689BCC275C97438287FFFFFFFFFFFFDBF6ED3C76A133679C235C95
          8CAFC4FFFFFF5C94922B619E3A6EA0044A88FFFFFFFFFFFFDDF7EE346EA171A2
          9C225B9D58829BF8F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0F518DACCDBEB6C7DF1E5B932A63995F87AEFFFFFF95BDB31B5691EBF9FF
          669FB2285E97235D95FFFFFDFFFFFFFFFFFF285D9734799D3A90A0124A8EDFEE
          EBFFFFFFFFFFFF658BB11B59925883ABFFFFFFFFFFFFFFFFFF003B807EA2BDFF
          FFFFACDDD60E488C5792ADFFFFFF77A39F0D599093D3C9FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF72A4D60F4F8885A1BCFFFFFFFFFFFFB2B7BD074A8E6EAAB7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF028387164C8FC6D4E2FFFFFF7EBBBF144F9364
          899CFFFFFFB5CAE90B4D8C63899CFFFFFFFFFFFFE5EAE53D6C9A6FA29E255C9D
          4C799AE9EEE8FFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFEEFDF6
          518AAA275E96386CA0FFFFFFB7D3ED2A659E386C9D78A9A06EA0A0679B9B74A3
          A1FFFFFF6B92BD2755963EAEA06991A03165A0265D9B77A89FFFFFFF8DD0C61F
          66943D6AA06AB0A03183A033639D33699CFFFFFEFFFFFFFFFFFF138F8E37619E
          1C598FABC2E1FFFFFFFFFFFFFAFCFF4978A927619843739ADFE5E0FFFFFF95CD
          CA2057943A64A0048188FFFFFFFFFFFFFFFFFF5885AF2B63981F5A929BB9D3FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1454919CBDAD
          96A6BF24609928619897BEB3FFFFFFF2F7FF1C579287B5B278A9BF285E97235D
          95FFFFFDFFFFFFFFFFFFA2D7D11D55923165A03F7F89FFFFFFFFFFFFFFFFFFFF
          FFFD2A639828629B678DA8ABBCB92C659D386C98D6DFD8FFFFFFA9DBD40E488C
          5792ADFDFFFFF7FEF70E4E8C3A6EA02F63A0679B9990B7B7D2E4E8669D92386C
          A03266A05083A05F9B94D9D4D0CDE2E8194D912F91A06EA3A070A0A05E9692A5
          C1D6FFFFFF064A883165A0699BA03E72A0376BA01B5993B3C2D0FFFFFFB2C7E6
          0B4D8C63899CFFFFFFFFFFFFFFFFFF6993B4296198255E957EA2C3FFFFFFFFFF
          FFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A941B5997B1C1BAFFFFFFFFFFFFFFFFFFFFFFFFE9EEE84C799A2660993E71
          A1FFFFFFFFFFFFA9B8BD5E97976D9F9F6EA0A0679B9B74A3A1FFFFFF89B0BD63
          99966EA0A06EA0A05B948FB4C9E4FFFFFFFFFFFFAAC6C65D94946EA0A06EA0A0
          64969682BEBEFFFFFFFFFFFFFFFFFFFFFFFFEDEEEA00788B5B7B9CFAFBF7FFFF
          FFFFFFFFFFFFFFC4EBE10E508C6ABEB5FFFFFFFFFFFFFFFFFF387789387391C5
          DED8FFFFFFFFFFFFFFFFFFFFFFFC12539050789FF9F1EAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22589535AD9D3A87A035649D255F
          96FFFFFFFFFFFFFFFFFF548A962C729D3A8FA036649E235D95FFFFFDFFFFFFFF
          FFFFFFFFFF678A9D286B8DD8E2DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F919D
          28619C255F99809DA9FFFFFFFFFFFFFFFFFFDDD3D3408C8C4EADADF3F9F9FFFF
          FFF7FDFD80B2B235999961999994B7B7E3E8E82792926BA0A06FA0A076A0A026
          9494C6C8C8FFFFFFA5C6C65E95956EA0A073A0A040969290C1D6FFFFFF3F8988
          45A0A075A0A06B9F9E669899C7D1D4FFFFFFFFFFFFC2DDDD0488886BB6B6FFFF
          FFFFFFFFFFFFFFF7FAFF30679D386A9AFCF3EAFFFFFFFFFFFFFFFFFF67A2B513
          4A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A941B5997B1C1
          BAFFFFFFFFFFFFFFFFFFFFFFFFB5C5D41A58921A5291B7E6DBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF225D95356A9D3A6EA0295F9D649B96FFFFFFFFFFFFFF
          FFFFD8D4CF1355933A6EA0366B9E235D95FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF9CBACB1F5A94195290BAE8DDFFFFFFFFFFFFFF
          FFFFEEFBFB407C8B275CA0448487FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF225995357B9D3A8EA011498DE5F3EEFFFFFFFFFFFFFFFFFFFFFFFF064B88
          3A6EA0366B9E235D95FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF7BB6B7C0C8CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF8FEFD7AAFB1D2D5D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFF9CBACB1F5A941B5997B1C1BAFFFFFFF1F6F6B6E6DA1C549232669F
          3F7A8BE9F9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF225D95356A9D
          3A65A0068088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76ACBB277E97367C9E2359
          95FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DA1D4285892
          15738FCEEDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBBC0
          2552960C7B8BFBFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF9CBACB
          1F5A943A6EA03A6EA03A6EA03A6EA03A6BA02A699763B6B8FFF9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF225D95356A9D1E5A90A2BCDDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCBE0ED15538E366B9E235D95FFFFFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FB4B11E559815738FCEEDE6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAEB31C54980C7B8BFBFF
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A2B513
          4A8E84C0C2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFBCCDCD5A93936EA0A06EA0
          A0679D9D87A2A592C7C8E8F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF5D9595659B9B6F989BEFF1F2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEFF1F26F989B659C9B5D9595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF7DBFBFCAE4E4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EB5C9CADCDEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF67A2B5134A8E84C0C2FFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF9F9F9EEEEEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32
          3232000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF3F3F3FB1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C70D0D0DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD
          343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD9D9D9090909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4000000C9C9C9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B
          2B2B000000F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7FFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000008E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD6D6D6000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F000000E9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF434343000000303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0000000000006E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          909090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000DADADAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          000000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000424242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADA000000C4
          C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2323230000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292000000D5D5D5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000008A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000838383FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000242424FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7D7D7D0000000000000000000000000000000000000000000000000000000000
          003E3E3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3000000000000000000000000
          000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000797979FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000454545
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000D8D8D8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0000000000007D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDCDCDC000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000909090FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          949494000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF777777000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000000000CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          878787000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4545450000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000DE
          DEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4000000DADADAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38383800000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B2B2B0000
          002E2E2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000777777FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000474747FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000929292FFFFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF000000B2B2B25B5B5B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000008E8E8EFFFFFF0000007B7B7BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C1C1C1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF1D1D1D000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7979790000000000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFDADADA000000C4C4C4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF969696000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2000000000000000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF929292000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF474747000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFF000000000000969494FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF6C6C6CC5C5C5000000242424FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF20201F000000FFFFFF
          F9FDFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A8
          A8A8FFFFFF0000005C5C5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          717171000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF4545450000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F
          1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF4545450000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F
          1F1F000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF1F1F1F000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFF454545000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFF777777000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF4949490000
          00292929FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF272727000000000000000000FF
          FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF111111FFFFFF00000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEFFAFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5F5FFFFFFFFFFFFF1FBFFFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFF0D0D0DF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5
          F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5F5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFF0D0D0DF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF929292000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4
          A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFF686868A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090900000000000
          00000000000000C4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000878787FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232310000
          00FFFFFF898787000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          666666A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF858585000000FFFFFFFFFFFFFFFFFF35
          393A000000383838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCDCDCD000000D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          858585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A6A6A6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D10000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00}
        mmHeight = 18785
        mmLeft = 2646
        mmTop = 6350
        mmWidth = 37835
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 213784
      mmPrintPosition = 0
      object ppShape87: TppShape
        UserName = 'Shape87'
        mmHeight = 39423
        mmLeft = 10583
        mmTop = 170921
        mmWidth = 173832
        BandType = 4
      end
      object mTexto01: TppMemo
        UserName = 'mTexto01'
        Caption = 'mTexto01'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Por este pagar'#233' prometo (temos) pagar incondicionalmente a la or' +
            'den de Derrama Magisterial (RUC N'#186' 20136424867), en sus oficinas' +
            ' de esta ciudad o donde se presente este documento para su cobro' +
            ' al vencimiento al ....................................., la can' +
            'tidad de .......................................................' +
            '................................................................' +
            '............ nuevos soles, valor recibido de la instituci'#243'n a mi' +
            ' entera satisfacci'#243'n mediante pago en efectivo y/o abono en la c' +
            'uenta de ahorros N'#186' .................................... que man' +
            'tengo a mi nombre en el Banco de la Naci'#243'n, giro bancario, chequ' +
            'e de gerencia y/o por bienes o servicios recibidos.'
          ''
          
            'El importe recibido devengar'#225' un inter'#233's mensual del ...........' +
            '.. % y una comisi'#243'n por gastos administrativos del ............ ' +
            '%, hasta la total cancelaci'#243'n del saldo adeudado. Estas tasas po' +
            'dr'#225'n ser reajustadas por Derrama Magisterial de acuerdo a las va' +
            'riaciones aprobadas, sin necesidad de aviso previo o confirmaci'#243 +
            'n posterior.'
          ''
          
            'Es expresamente establecido que si no cumpliera con pagar este p' +
            'agar'#233' a su vencimiento, Derrama Magisterial podr'#225' cobrar, adem'#225's' +
            ' de los intereses compensatorios y la comisi'#243'n establecida, inte' +
            'reses moratorios a las tasas fijadas por el BCR, desde la fecha ' +
            'de su vencimiento hasta su total cancelaci'#243'n.'
          ''
          
            'Al amparo de lo dispuesto por el Art'#237'culo 1233 del C'#243'digo Civil,' +
            ' el emitente declara que en la eventualidad de que el presente t' +
            #237'tulo se perjudicara por cualquier causa, tal hecho no extinguir' +
            #225' la obligaci'#243'n primitiva original. Asimismo acepto las renovaci' +
            'ones totales o parciales que se anoten en este documento, aun cu' +
            'ando no est'#233'n suscritas por m'#237'.'
          ''
          
            'Derrama Magisterial podr'#225' iniciar las acciones notariales y judi' +
            'ciales donde lo tuviere por conveniente, para cuyo efecto renunc' +
            'io el fuero del propio domicilio y me someto a los jueces y trib' +
            'unales de ......................................................' +
            '................................................................' +
            '........, fijando mi domicilio en ..............................' +
            '................................................................' +
            '................................................................' +
            '..')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 128323
        mmLeft = 9790
        mmTop = 3704
        mmWidth = 175155
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 10583
        mmTop = 143140
        mmWidth = 38629
        BandType = 4
      end
      object lblNombres: TppLabel
        UserName = 'lblNombres'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 56886
        mmTop = 143140
        mmWidth = 87577
        BandType = 4
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 51329
        mmTop = 143140
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 51329
        mmTop = 148696
        mmWidth = 4498
        BandType = 4
      end
      object lblAsoDni: TppLabel
        UserName = 'lblNombres1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 57150
        mmTop = 148696
        mmWidth = 21431
        BandType = 4
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        AutoSize = False
        Caption = 'Firma y Huella Dactilar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 85990
        mmTop = 157957
        mmWidth = 42333
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 131763
        mmTop = 157957
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Caption = '...........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 136790
        mmTop = 157957
        mmWidth = 46567
        BandType = 4
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        AutoSize = False
        Caption = 'Datos del Garante (Fiador Solidario) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 11642
        mmTop = 176742
        mmWidth = 69321
        BandType = 4
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11906
        mmTop = 187590
        mmWidth = 37835
        BandType = 4
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 51594
        mmTop = 187590
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        AutoSize = False
        Caption = 
          '................................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 57150
        mmTop = 187590
        mmWidth = 87577
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        AutoSize = False
        Caption = 'D.N.I.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 10583
        mmTop = 148696
        mmWidth = 36248
        BandType = 4
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        AutoSize = False
        Caption = 'D.N.I.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11906
        mmTop = 193675
        mmWidth = 38365
        BandType = 4
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 51858
        mmTop = 193675
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        AutoSize = False
        Caption = '......................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 57415
        mmTop = 193675
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 130704
        mmTop = 204259
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        AutoSize = False
        Caption = '...........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 135732
        mmTop = 204259
        mmWidth = 46567
        BandType = 4
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        AutoSize = False
        Caption = 
          'Lugar y Fecha de Emisi'#243'n :  ....................................' +
          '...,   .............  de  ...............................  del  ' +
          ' 20........ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 10583
        mmTop = 136790
        mmWidth = 173302
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Firma y Huella Dactilar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 85725
        mmTop = 204259
        mmWidth = 42333
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
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
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 395
    Top = 316
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 258234
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'lblFechaCarta'
        AutoSize = False
        Caption = 'Lima,     de                               del 2,007'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 94192
        mmTop = 30427
        mmWidth = 91281
        BandType = 0
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Lines.Strings = (
          'SE'#209'ORES :'
          ''
          'PRESENTE.-')
        Transparent = True
        mmHeight = 14552
        mmLeft = 11377
        mmTop = 43656
        mmWidth = 180446
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'De mi mayor consideraci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11377
        mmTop = 71967
        mmWidth = 138907
        BandType = 0
      end
      object ppMemo2: TppMemo
        UserName = 'Memo3'
        Caption = 
          'Por la presente, en mi condici'#243'n de obligado principal del '#8220'Conv' +
          'enio de Pr'#233'stamo Personal'#8221', suscrito con Derrama Magisterial y d' +
          'entro del marco del '#8220'Convenio de Servicio de Otorgamiento de Pr'#233 +
          'stamo Personal con Descuento por Planilla'#8221', celebrado entre Derr' +
          'ama Magisterial y la  '#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230',autorizo a est' +
          'a UGEL, en forma expresa e irrevocable, para que se descuente en' +
          ' forma mensual de mi (s)  remuneraci'#243'n (es) , liquidaci'#243'n de ben' +
          'eficios sociales, liberalidades, indemnizaciones u otros concept' +
          'os similares, en caso corresponda, el importe de las cuotas de c' +
          'apital, inter'#233's y dem'#225's conceptos que se deriven del (los) cr'#233'di' +
          'tos(s) que a la fecha, me ha otorgado Derrama Magisterial, por l' +
          'a suma total de S/'#8230#8230#8230#8230#8230'..(                                      ' +
          '               ), en un plazo de     meses, por un importe de S/' +
          #8230#8230#8230#8230'c/u.'#13#10#13#10'La presente, sustituye, de ser el caso, a cualquier ' +
          'autorizaci'#243'n anterior y s'#243'lo podr'#225' ser revocada, por EL TITULAR,' +
          ' previa autorizaci'#243'n escrita y remitida por la Derrama Magisteri' +
          'al a la                                                  '#13#10#13#10'Muy' +
          ' atentamente,'#13#10#13#10'NOMBRE Y APELLIDOS :'#13#10'DNI N'#186':  '#13#10'CARGO: '#13#10'DOMIC' +
          'ILIO:    '#13#10'TELEFONO: '#13#10'FIRMA:                '#13#10'02 ORIGINALES:'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          
            'Por la presente, en mi condici'#243'n de obligado principal del '#8220'Conv' +
            'enio de Pr'#233'stamo Personal'#8221', suscrito con Derrama Magisterial y d' +
            'entro del marco del '#8220'Convenio de Servicio de Otorgamiento de Pr'#233 +
            'stamo Personal con Descuento por Planilla'#8221', celebrado entre Derr' +
            'ama Magisterial y la  '#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230#8230',autorizo a est' +
            'a UGEL, en forma expresa e irrevocable, para que se descuente en' +
            ' forma mensual de mi (s)  remuneraci'#243'n (es) , liquidaci'#243'n de ben' +
            'eficios sociales, liberalidades, indemnizaciones u otros concept' +
            'os similares, en caso corresponda, el importe de las cuotas de c' +
            'apital, inter'#233's y dem'#225's conceptos que se deriven del cr'#233'dito que' +
            ' a la fecha, me ha otorgado Derrama Magisterial, por el monto de' +
            ' S/'#8230#8230#8230#8230#8230#8230'..'
          
            '(                                                               ' +
            '      ), en un plazo de     meses, por un importe de S/'#8230#8230#8230#8230'c/u.'
          ''
          
            'La presente autorizaci'#243'n s'#243'lo podr'#225' ser revocada, por EL TITULAR' +
            ', previa autorizaci'#243'n escrita y remitida por Derrama Magisterial' +
            ' a la                                                  '
          ''
          ''
          
            '                                                                ' +
            '        Muy atentamente,'
          ''
          ''
          ''
          ''
          ''
          'FIRMA Y HUELLA DIGITAL :                '
          ''
          'NOMBRE Y APELLIDOS :'
          'DNI N'#186':  '
          'CARGO: '
          'DOMICILIO:    '
          'TELEFONO: '
          ''
          ''
          ''
          '02 ORIGINALES:')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 177007
        mmLeft = 11642
        mmTop = 80169
        mmWidth = 189442
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblNombresa: TppLabel
        UserName = 'lblNombres2'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 62706
        mmTop = 189971
        mmWidth = 134938
        BandType = 0
      end
      object lblAsoDnia: TppLabel
        UserName = 'lblAsoDnia'
        AutoSize = False
        Caption = 'XXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 46302
        mmTop = 195527
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'CARTA DE AUTORIZACION DE DESCUENTO POR PLANILLA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 30692
        mmTop = 9260
        mmWidth = 141552
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'SEGUN CONVENIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 30692
        mmTop = 15610
        mmWidth = 141552
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'REFERENCIA: AUTORIZACI'#211'N PARA DESCUENTO POR PLANILLA  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 11377
        mmTop = 62971
        mmWidth = 141552
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'lblAsoDnia2'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 48683
        mmWidth = 173567
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'lblDirReg02'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 93927
        mmWidth = 106098
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'lblDirReg03'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 46567
        mmTop = 227807
        mmWidth = 152400
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'lblAsoDnia3'
        AutoSize = False
        Caption = 'XXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 46302
        mmTop = 200290
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'lblDireccion'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 46302
        mmTop = 204523
        mmWidth = 152400
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'lblDireccion1'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 46302
        mmTop = 209021
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'lblDirReg04'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 11906
        mmTop = 143404
        mmWidth = 187855
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'lblMonto'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 113506
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'lblMonto1'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 123031
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'lblMonto2'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 146315
        mmTop = 118798
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'lblNunLetras'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 14552
        mmTop = 118798
        mmWidth = 96573
        BandType = 0
      end
      object ppShape86: TppShape
        UserName = 'Shape86'
        mmHeight = 21960
        mmLeft = 144727
        mmTop = 162454
        mmWidth = 20108
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 69850
        mmTop = 183886
        mmWidth = 71967
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'lblDatosUser'
        AutoSize = False
        Caption = 'lblDatosUser'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12965
        mmTop = 0
        mmWidth = 147109
        BandType = 8
      end
      object lblNumCar: TppLabel
        UserName = 'lblNumCar'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3683
        mmLeft = 171450
        mmTop = 0
        mmWidth = 27517
        BandType = 8
      end
    end
  end
  object ppTitCCred: TppReport
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
    Left = 176
    Top = 224
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'N'#176' CONTRATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 138907
        mmTop = 13229
        mmWidth = 24606
        BandType = 0
      end
      object lblNCredito: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = '23-03046-2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 166688
        mmTop = 13229
        mmWidth = 27252
        BandType = 0
      end
      object lblFecOtor: TppLabel
        UserName = 'lblFecOtor'
        AutoSize = False
        Caption = '12/07/2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 41275
        mmTop = 12965
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 17992
        mmTop = 12965
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4064
        mmLeft = 38629
        mmTop = 12965
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 164836
        mmTop = 13229
        mmWidth = 1058
        BandType = 0
      end
      object lblDNI2: TppLabel
        UserName = 'lblDNI2'
        AutoSize = False
        Caption = '12345678'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object lblNombreAso: TppLabel
        UserName = 'lblNombreAso'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 41275
        mmTop = 0
        mmWidth = 121179
        BandType = 0
      end
      object ppLabel237: TppLabel
        UserName = 'Label237'
        AutoSize = False
        Caption = 'TITULAR  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 0
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel238: TppLabel
        UserName = 'Label238'
        AutoSize = False
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 163777
        mmTop = 0
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label239'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 38629
        mmTop = 0
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel240: TppLabel
        UserName = 'Label240'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 173832
        mmTop = 0
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label241'
        AutoSize = False
        Caption = 'DIRECCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 17727
        mmTop = 4233
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel242: TppLabel
        UserName = 'Label242'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 38629
        mmTop = 4233
        mmWidth = 2381
        BandType = 0
      end
      object lblDirTitular: TppLabel
        UserName = 'lblNombreAso1'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 41540
        mmTop = 4233
        mmWidth = 153194
        BandType = 0
      end
      object ppLabel243: TppLabel
        UserName = 'Label243'
        AutoSize = False
        Caption = 'AVAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 8467
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel244: TppLabel
        UserName = 'Label244'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 38629
        mmTop = 8467
        mmWidth = 2381
        BandType = 0
      end
      object lblAval: TppLabel
        UserName = 'lblNombreAso2'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 41540
        mmTop = 8467
        mmWidth = 121179
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label246'
        AutoSize = False
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 163513
        mmTop = 8467
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel247: TppLabel
        UserName = 'Label2401'
        AutoSize = False
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 8467
        mmWidth = 2381
        BandType = 0
      end
      object lblDNIAval: TppLabel
        UserName = 'lblDNIAval'
        AutoSize = False
        Caption = '12345678'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 177271
        mmTop = 8467
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 46567
      mmPrintPosition = 0
      object lblGerente: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 11642
        mmWidth = 77258
        BandType = 4
      end
      object lblDniGer: TppLabel
        UserName = 'lblDniGer'
        AutoSize = False
        Caption = '12345678'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 15875
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rpDeclaracionJurada: TppReport
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 284
    Top = 367
    Version = '7.02'
    mmColumnWidth = 197379
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 193411
      mmPrintPosition = 0
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Declaraci'#243'n Jurada Domiciliaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 38365
        mmTop = 17727
        mmWidth = 96309
        BandType = 0
      end
      object pplAsoApeNomDni: TppLabel
        UserName = 'lAsoApeNomDni'
        Caption = 'Yo, '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 6350
        mmTop = 46831
        mmWidth = 6181
        BandType = 0
      end
      object pplAsoDni: TppLabel
        UserName = 'Label2'
        Caption = 'Identificado(a) con DNI N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 6615
        mmTop = 52388
        mmWidth = 40725
        BandType = 0
      end
      object myCheckBox1: TmyCheckBox
        UserName = 'CheckBox1'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 6615
        mmTop = 57944
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label5'
        Caption = 'Asociado (Activo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 13229
        mmTop = 59002
        mmWidth = 27252
        BandType = 0
      end
      object myCheckBox2: TmyCheckBox
        UserName = 'CheckBox2'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 42598
        mmTop = 57944
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label6'
        Caption = 'Asociado (Nuevo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 49477
        mmTop = 59002
        mmWidth = 27781
        BandType = 0
      end
      object myCheckBox3: TmyCheckBox
        UserName = 'CheckBox3'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 79375
        mmTop = 57944
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label7'
        Caption = 'Cesante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 86784
        mmTop = 59002
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label8'
        Caption = 'Contratado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 59002
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 
          'que en la actualidad mi domicilio se encuentra ubicado en la Av/' +
          'Calle/Jr/Psje/Etc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 28046
        mmTop = 67733
        mmWidth = 127529
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Declaro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 6615
        mmTop = 65881
        mmWidth = 19844
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6615
        mmTop = 76729
        mmWidth = 176213
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Del Distrito de :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 7673
        mmTop = 79904
        mmWidth = 23961
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 33602
        mmTop = 83608
        mmWidth = 149490
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'de la Provincia de :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 85196
        mmWidth = 29633
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 39158
        mmTop = 88900
        mmWidth = 143669
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'del Departamento de :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 90752
        mmWidth = 34660
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 44450
        mmTop = 94456
        mmWidth = 138377
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 
          'Asimismo declaro que ante cualquier eventualidad, mi(s) n'#250'mero(s' +
          ') de tel'#233'fono(s) actualmente es/son:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 7673
        mmTop = 96309
        mmWidth = 160359
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Fijo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 101336
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 80433
        mmTop = 101336
        mmWidth = 12171
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 16933
        mmTop = 105040
        mmWidth = 61383
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 96044
        mmTop = 105040
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 
          'Finalmente manifiesto que ante cualquier falsedad a lo manifesta' +
          'do, me someto a las sanciones legales que '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 7673
        mmTop = 106892
        mmWidth = 169842
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        Caption = 'indiquen en el C'#243'digo Civil y la Legislaci'#243'n Peruana.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 112184
        mmWidth = 81492
        BandType = 0
      end
      object pplFecha: TppLabel
        UserName = 'lFecha'
        Caption = 'Jes'#250's Mar'#237'a, '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 68263
        mmTop = 130440
        mmWidth = 21124
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 112448
        mmTop = 173832
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Firma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 136261
        mmTop = 174890
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label801'
        Caption = 'DNI N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112448
        mmTop = 179123
        mmWidth = 10848
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 124619
        mmTop = 182827
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'Huella digital'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 174625
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = '(Indice Derecho)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 16404
        mmTop = 179123
        mmWidth = 25993
        BandType = 0
      end
      object myCheckBox4: TmyCheckBox
        UserName = 'CheckBox4'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 101600
        mmTop = 57944
        mmWidth = 7144
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 25135
        mmLeft = 17727
        mmTop = 148432
        mmWidth = 23283
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpContratoN
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 620
    Top = 311
  end
  object ppCartaONP: TppReport
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
    Left = 520
    Top = 329
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand10: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand10: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 288926
      mmPrintPosition = 0
      object ppShape154: TppShape
        UserName = 'Shape154'
        mmHeight = 7144
        mmLeft = 49477
        mmTop = 36777
        mmWidth = 63236
        BandType = 4
      end
      object ppLabel255: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'AUTORIZACI'#211'N DE DESCUENTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 3440
        mmTop = 15610
        mmWidth = 194205
        BandType = 4
      end
      object ppLabel280: TppLabel
        UserName = 'Label501'
        AutoSize = False
        Caption = 'FIRMA Y HUELLA DIGITAL______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 23813
        mmTop = 187061
        mmWidth = 111125
        BandType = 4
      end
      object lblRegSolOnp: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 
          'F.I. :  XX/XX/XXXX   XX:XX:XX      /      U.I.: EALVA       /   ' +
          '      O.O.: SEDE CENTRAL        /          N.C.: 012320120000000' +
          '12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 2910
        mmTop = 283634
        mmWidth = 191559
        BandType = 4
      end
      object ppLabel273: TppLabel
        UserName = 'lblNumCre1'
        AutoSize = False
        Caption = 'N'#250'mero de Autorizaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 39158
        mmWidth = 55827
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape155'
        mmHeight = 7144
        mmLeft = 49477
        mmTop = 43656
        mmWidth = 63236
        BandType = 4
      end
      object ppShape156: TppShape
        UserName = 'Shape156'
        mmHeight = 7144
        mmLeft = 49477
        mmTop = 50536
        mmWidth = 63236
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape157'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 36777
        mmWidth = 63236
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape158'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 43656
        mmWidth = 63236
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape159'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 50536
        mmWidth = 63236
        BandType = 4
      end
      object ppLabel286: TppLabel
        UserName = 'Label286'
        AutoSize = False
        Caption = 'Fecha de Autorizaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 45508
        mmWidth = 55827
        BandType = 4
      end
      object ppLabel287: TppLabel
        UserName = 'Label287'
        AutoSize = False
        Caption = 'C'#243'digo de Pensionista :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 51858
        mmWidth = 55827
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape160'
        mmHeight = 29898
        mmLeft = 137848
        mmTop = 164307
        mmWidth = 27252
        BandType = 4
      end
      object lblNumCarOnp: TppLabel
        UserName = 'lblNumCarOnp'
        AutoSize = False
        Caption = '2012-000005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 38894
        mmWidth = 55827
        BandType = 4
      end
      object lblFecCarOnp: TppLabel
        UserName = 'lblFecCarOnp'
        AutoSize = False
        Caption = '18/10/2012'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 45773
        mmWidth = 55827
        BandType = 4
      end
      object lblCodPenOnp: TppLabel
        UserName = 'lblCodPenOnp'
        AutoSize = False
        Caption = 'N'#250'mero de Autorizaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 51858
        mmWidth = 55827
        BandType = 4
      end
      object ppMemo18: TppMemo
        UserName = 'Memo18'
        Caption = 'Memo18'
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          'Yo,')
        Transparent = True
        mmHeight = 4498
        mmLeft = 16933
        mmTop = 64823
        mmWidth = 8202
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblAsoOnp: TppLabel
        UserName = 'lblNomGen1'
        AutoSize = False
        Caption = 'A'#209'I ELIAS EUGENIO ENRIQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 25665
        mmTop = 64823
        mmWidth = 93134
        BandType = 4
      end
      object ppMemo8: TppMemo
        UserName = 'Memo8'
        Caption = 'Memo8'
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          'En mi calidad de pensionista por')
        Transparent = True
        mmHeight = 4498
        mmLeft = 16933
        mmTop = 70115
        mmWidth = 57415
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblDesPreONP: TppLabel
        UserName = 'lblDesPreONP'
        Caption = 'JUBILACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 70115
        mmWidth = 22225
        BandType = 4
      end
      object ppMemo11: TppMemo
        UserName = 'Memo1'
        Caption = ', '
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          'bajo el r'#233'gimen del Decreto Ley N'#186' 19990, con')
        Transparent = True
        mmHeight = 4498
        mmLeft = 97367
        mmTop = 70115
        mmWidth = 85990
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo10: TppMemo
        UserName = 'Memo10'
        Caption = 'Memo10'
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          'DNI N'#186' ')
        Transparent = True
        mmHeight = 4498
        mmLeft = 16933
        mmTop = 75142
        mmWidth = 12171
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblDniOnp: TppLabel
        UserName = 'Label1'
        Caption = '08037809'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 29369
        mmTop = 75142
        mmWidth = 16669
        BandType = 4
      end
      object ppMemo19: TppMemo
        UserName = 'Memo101'
        Caption = 'Memo101'
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            ', afiliado a la DERRAMA MAGISTERIAL, autorizo a la Oficina de No' +
            'rmalizaci'#243'n')
        Transparent = True
        mmHeight = 4498
        mmLeft = 46302
        mmTop = 75142
        mmWidth = 137319
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo9: TppMemo
        UserName = 'Memo2'
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
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Previsional - ONP   a  que  realice  descuentos sobre el  monto ' +
            ' de  mi  pensi'#243'n   habitual mensual,  de acuerdo  a  los  requer' +
            'imientos  que efect'#250'e  la  DERRAMA MAGISTERIAL   y  dentro  de  ' +
            'los l'#237'mites se'#241'alados por Ley.'
          ''
          
            'Asimismo,   acepto   que  cualquier  solicitud,  reclamo  o  inf' +
            'ormaci'#243'n  sobre  mis descuentos los solicitar'#233' directamente a la' +
            '  DERRAMA MAGISTERIAL  y  no a la  ONP.'
          ''
          ''
          'Atentamente;')
        Stretch = True
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 72231
        mmLeft = 16933
        mmTop = 80169
        mmWidth = 166688
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object pprPlaAutDesUni: TppReport
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
      'D:\Desarrollo DM\COBRANZAS\FUENTES_HPC_2011710_COB_NEW\rpCartaAu' +
      'tDes.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 648
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 276490
      mmPrintPosition = 0
      object ppShape289: TppShape
        UserName = 'Shape289'
        mmHeight = 127529
        mmLeft = 10583
        mmTop = 54504
        mmWidth = 180446
        BandType = 0
      end
      object ppShape263: TppShape
        UserName = 'Shape263'
        mmHeight = 5555
        mmLeft = 56621
        mmTop = 76729
        mmWidth = 131763
        BandType = 0
      end
      object ppMemo26: TppMemo
        UserName = 'Memo1'
        Caption = 'E'#209'ORES :'#13#10#13#10'PRESENTE.-'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Autorizo de manera expresa para que a trav'#233's de la planilla '#250'nic' +
            'a de pago (Sistema '#218'nico de Planillas - SUP) se descuente de mis' +
            ' remuneraciones y/o pensiones mensuales, el compromiso adquirido' +
            '  con la entidad regulada por el D.S. N'#186' 010-2014-EF y Oficio M'#250 +
            'ltiple N'#186' 061-2016-MINEDU / VMGP-DIGEDD-DITEM, seg'#250'n el siguient' +
            'e detalle:')
        Transparent = True
        mmHeight = 20109
        mmLeft = 11377
        mmTop = 33602
        mmWidth = 180447
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'AUTORIZACI'#211'N DE DESCUENTO MEDIANTE LA PLANILLA '#218'NICA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 11377
        mmTop = 14817
        mmWidth = 180446
        BandType = 0
      end
      object pplApeNomDNI: TppLabel
        UserName = 'lApeNomDNI'
        AutoSize = False
        Caption = 
          'Yo, __________________________________________ identificado con ' +
          'DNI N'#186'  ____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11377
        mmTop = 26723
        mmWidth = 143404
        BandType = 0
      end
      object ppLabel310: TppLabel
        UserName = 'Label310'
        AutoSize = False
        Caption = '1. DATOS LABORALES DEL QUE AUTORIZA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 56092
        mmWidth = 116152
        BandType = 0
      end
      object ppLabel312: TppLabel
        UserName = 'Label312'
        Caption = '(marcar):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 66411
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel311: TppLabel
        UserName = 'Label311'
        Caption = 'Condici'#243'n laboral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 61383
        mmWidth = 29898
        BandType = 0
      end
      object pplconlabnom1: TppLabel
        UserName = 'Label1'
        Caption = 'Nombrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 61383
        mmWidth = 22753
        BandType = 0
      end
      object pplconlabcon1: TppLabel
        UserName = 'Label2'
        Caption = 'Contratado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 66411
        mmWidth = 22753
        BandType = 0
      end
      object pplconlabpen1: TppLabel
        UserName = 'Label3'
        Caption = 'Pensionista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 71438
        mmWidth = 22753
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label317'
        Caption = 'IGED (DRE/UGEL)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5555
        mmLeft = 16669
        mmTop = 76729
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel313: TppLabel
        UserName = 'Label3101'
        AutoSize = False
        Caption = '2. DATOS DE LA ENTIDAD CON QUIEN SE ASUME EL COMPROMISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 85990
        mmWidth = 151342
        BandType = 0
      end
      object ppLabel314: TppLabel
        UserName = 'Label314'
        Caption = 'Raz'#243'n Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 94456
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label315'
        Caption = 'RUC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 99484
        mmWidth = 9525
        BandType = 0
      end
      object pplUGEL: TppLabel
        UserName = 'lconlabpen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56621
        mmTop = 77258
        mmWidth = 130980
        BandType = 0
      end
      object ppLabel318: TppLabel
        UserName = 'Label318'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 44715
        mmTop = 94456
        mmWidth = 46302
        BandType = 0
      end
      object ppLabel319: TppLabel
        UserName = 'Label319'
        Caption = '20136424867'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 44715
        mmTop = 99484
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel320: TppLabel
        UserName = 'Label320'
        Caption = 'Marcar grupo de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 104775
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel321: TppLabel
        UserName = 'Label3201'
        Caption = 'descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 17198
        mmTop = 109538
        mmWidth = 17992
        BandType = 0
      end
      object ppShape264: TppShape
        UserName = 'Shape264'
        mmHeight = 13229
        mmLeft = 47361
        mmTop = 104511
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel322: TppLabel
        UserName = 'Label322'
        Caption = 'Sindicales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 48154
        mmTop = 106363
        mmWidth = 19315
        BandType = 0
      end
      object ppShape265: TppShape
        UserName = 'Shape265'
        mmHeight = 13229
        mmLeft = 74348
        mmTop = 104511
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel323: TppLabel
        UserName = 'Label323'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 74877
        mmTop = 105569
        mmWidth = 7144
        BandType = 0
      end
      object ppShape266: TppShape
        UserName = 'Shape266'
        mmHeight = 13229
        mmLeft = 82550
        mmTop = 104511
        mmWidth = 27252
        BandType = 0
      end
      object ppShape267: TppShape
        UserName = 'Shape267'
        mmHeight = 13229
        mmLeft = 109538
        mmTop = 104511
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel324: TppLabel
        UserName = 'Label324'
        Caption = 'Fondo de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 83344
        mmTop = 106363
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel325: TppLabel
        UserName = 'Label325'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 110067
        mmTop = 106363
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel326: TppLabel
        UserName = 'Label326'
        Caption = 'Bienestar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 83344
        mmTop = 111125
        mmWidth = 16404
        BandType = 0
      end
      object ppShape268: TppShape
        UserName = 'Shape268'
        mmHeight = 13229
        mmLeft = 117740
        mmTop = 104511
        mmWidth = 27252
        BandType = 0
      end
      object ppShape269: TppShape
        UserName = 'Shape269'
        mmHeight = 13229
        mmLeft = 143140
        mmTop = 104511
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel328: TppLabel
        UserName = 'Label328'
        Caption = 'Cooperativa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 119327
        mmTop = 106363
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel329: TppLabel
        UserName = 'Label329'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 106363
        mmWidth = 7144
        BandType = 0
      end
      object ppShape270: TppShape
        UserName = 'Shape270'
        mmHeight = 13229
        mmLeft = 151342
        mmTop = 104511
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel327: TppLabel
        UserName = 'Label327'
        Caption = 'Superv. SBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 151342
        mmTop = 106363
        mmWidth = 23813
        BandType = 0
      end
      object ppShape271: TppShape
        UserName = 'Shape271'
        mmHeight = 13229
        mmLeft = 178330
        mmTop = 104511
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel331: TppLabel
        UserName = 'Label331'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 178859
        mmTop = 106363
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel330: TppLabel
        UserName = 'Label3202'
        Caption = 
          'En caso de ser Fondo de Bienestar, marcar el concepto de atenci'#243 +
          'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 17198
        mmTop = 118269
        mmWidth = 118534
        BandType = 0
      end
      object ppShape272: TppShape
        UserName = 'Shape272'
        mmHeight = 5556
        mmLeft = 47361
        mmTop = 123296
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel332: TppLabel
        UserName = 'Label332'
        Caption = 'Alimentaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 47890
        mmTop = 123825
        mmWidth = 24077
        BandType = 0
      end
      object ppShape273: TppShape
        UserName = 'Shape273'
        mmHeight = 5556
        mmLeft = 82021
        mmTop = 123296
        mmWidth = 26723
        BandType = 0
      end
      object ppShape274: TppShape
        UserName = 'Shape274'
        mmHeight = 5556
        mmLeft = 108479
        mmTop = 128588
        mmWidth = 8467
        BandType = 0
      end
      object ppShape275: TppShape
        UserName = 'Shape275'
        mmHeight = 5556
        mmLeft = 73819
        mmTop = 123296
        mmWidth = 8467
        BandType = 0
      end
      object ppShape276: TppShape
        UserName = 'Shape276'
        mmHeight = 5556
        mmLeft = 116681
        mmTop = 123296
        mmWidth = 26723
        BandType = 0
      end
      object ppShape277: TppShape
        UserName = 'Shape277'
        mmHeight = 5556
        mmLeft = 73819
        mmTop = 128588
        mmWidth = 8467
        BandType = 0
      end
      object ppShape278: TppShape
        UserName = 'Shape278'
        mmHeight = 5556
        mmLeft = 151342
        mmTop = 123296
        mmWidth = 27252
        BandType = 0
      end
      object ppShape262: TppShape
        UserName = 'Shape262'
        mmHeight = 5556
        mmLeft = 47361
        mmTop = 128588
        mmWidth = 26723
        BandType = 0
      end
      object ppShape279: TppShape
        UserName = 'Shape279'
        mmHeight = 5556
        mmLeft = 143140
        mmTop = 123296
        mmWidth = 8467
        BandType = 0
      end
      object ppShape280: TppShape
        UserName = 'Shape280'
        mmHeight = 5556
        mmLeft = 82021
        mmTop = 128588
        mmWidth = 26723
        BandType = 0
      end
      object ppShape281: TppShape
        UserName = 'Shape281'
        mmHeight = 5556
        mmLeft = 108479
        mmTop = 123296
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel333: TppLabel
        UserName = 'Label333'
        Caption = 'Salud'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82550
        mmTop = 123825
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel334: TppLabel
        UserName = 'Label334'
        Caption = 'Educaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 117211
        mmTop = 123825
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel335: TppLabel
        UserName = 'Label335'
        Caption = 'Vivienda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 151871
        mmTop = 123825
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel336: TppLabel
        UserName = 'Label336'
        Caption = 'Esparcimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 47890
        mmTop = 129117
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel337: TppLabel
        UserName = 'Label337'
        Caption = 'Sepelio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82550
        mmTop = 129117
        mmWidth = 16669
        BandType = 0
      end
      object ppShape282: TppShape
        UserName = 'Shape282'
        mmHeight = 5556
        mmLeft = 178330
        mmTop = 123296
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel338: TppLabel
        UserName = 'Label338'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 123825
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel339: TppLabel
        UserName = 'Label339'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 109009
        mmTop = 129117
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel340: TppLabel
        UserName = 'Label340'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 109273
        mmTop = 123825
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel341: TppLabel
        UserName = 'Label3401'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 129117
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel342: TppLabel
        UserName = 'Label342'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 123825
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel343: TppLabel
        UserName = 'Label343'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 179123
        mmTop = 123825
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel344: TppLabel
        UserName = 'Label344'
        AutoSize = False
        Caption = '3. DETALLE DEL COMPROMISO Y DESCUENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 137848
        mmWidth = 124354
        BandType = 0
      end
      object TppLabel
        UserName = 'Label4'
        Caption = 
          'Aportes obligatorios mensuales (sindicales, socios cooperativos,' +
          ' asociaciones, etc.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 25665
        mmTop = 146315
        mmWidth = 144526
        BandType = 0
      end
      object ppLabel346: TppLabel
        UserName = 'Label346'
        Caption = 'Inicio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 23548
        mmTop = 151871
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel347: TppLabel
        UserName = 'Label347'
        Caption = 'Mes _____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 34396
        mmTop = 151871
        mmWidth = 36449
        BandType = 0
      end
      object ppLabel348: TppLabel
        UserName = 'Label348'
        Caption = 'A'#241'o ______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 72496
        mmTop = 151871
        mmWidth = 20955
        BandType = 0
      end
      object ppShape283: TppShape
        UserName = 'Shape2801'
        mmHeight = 5556
        mmLeft = 102129
        mmTop = 151871
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel349: TppLabel
        UserName = 'Label349'
        Caption = 'Aporte mensual S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 102659
        mmTop = 152400
        mmWidth = 33147
        BandType = 0
      end
      object ppShape284: TppShape
        UserName = 'Shape284'
        mmHeight = 5556
        mmLeft = 137054
        mmTop = 151871
        mmWidth = 40481
        BandType = 0
      end
      object pplApomen: TppLabel
        UserName = 'lApomen'
        Caption = '0.5% de la UIT vigente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 137584
        mmTop = 152400
        mmWidth = 39370
        BandType = 0
      end
      object ppLabel351: TppLabel
        UserName = 'Label351'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 158486
        mmWidth = 7451
        BandType = 0
      end
      object ppLabel352: TppLabel
        UserName = 'Label352'
        Caption = 'Inicio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 164042
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel355: TppLabel
        UserName = 'Label355'
        Caption = 'T'#233'rmino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 96044
        mmTop = 164042
        mmWidth = 15081
        BandType = 0
      end
      object ppShape285: TppShape
        UserName = 'Shape285'
        mmHeight = 5555
        mmLeft = 18521
        mmTop = 169863
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel358: TppLabel
        UserName = 'Label358'
        Caption = 'Dscto. Mensual S/:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 170658
        mmWidth = 29369
        BandType = 0
      end
      object ppShape286: TppShape
        UserName = 'Shape286'
        mmHeight = 5555
        mmLeft = 54769
        mmTop = 169863
        mmWidth = 16934
        BandType = 0
      end
      object ppLabel359: TppLabel
        UserName = 'Label359'
        Caption = 'Nro. Cuotas: ____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 74348
        mmTop = 170658
        mmWidth = 28490
        BandType = 0
      end
      object ppShape287: TppShape
        UserName = 'Shape287'
        mmHeight = 5555
        mmLeft = 106098
        mmTop = 169863
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel360: TppLabel
        UserName = 'Label360'
        Caption = 'Total a descontar S/:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 107686
        mmTop = 170658
        mmWidth = 32046
        BandType = 0
      end
      object ppShape288: TppShape
        UserName = 'Shape288'
        mmHeight = 5555
        mmLeft = 142346
        mmTop = 169863
        mmWidth = 16934
        BandType = 0
      end
      object ppMemo21: TppMemo
        UserName = 'Memo21'
        Caption = 
          'Autorizo de manera expresa para que a trav'#233's de la planilla '#250'nic' +
          'a de pago (Sistema '#218'nico de Planillas - SUP) se descuente de mis' +
          ' remuneraciones y/o pensiones mensuales, el compromiso adquirido' +
          '  con la entidad regulada por el D.S. N'#186' 010-2014-EF y Oficio M'#250 +
          'ltiple N'#186' 061-2016-MINEDU / VMGP-DIGEDD-DITEM, seg'#250'n el siguient' +
          'e detalle:'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            '(   ) Se ha verificado del promedio de las 3 '#250'ltimas remuneracio' +
            'nes mensuales y el presente compromiso est'#225' dentro de los alcanc' +
            'es del 50% del monto neto.')
        Transparent = True
        mmHeight = 10848
        mmLeft = 11377
        mmTop = 183357
        mmWidth = 180446
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShape290: TppShape
        UserName = 'Shape290'
        mmHeight = 30692
        mmLeft = 11642
        mmTop = 195527
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel361: TppLabel
        UserName = 'Label361'
        Caption = 'Huella'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 17992
        mmTop = 226748
        mmWidth = 13229
        BandType = 0
      end
      object pplLugyFec: TppLabel
        UserName = 'lLugyFec'
        AutoSize = False
        Caption = 'Lugar y Fecha : ____________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 38629
        mmTop = 195527
        mmWidth = 125677
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 75142
        mmTop = 220134
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel363: TppLabel
        UserName = 'Label363'
        AutoSize = False
        Caption = 'Firma del que autoriza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 84931
        mmTop = 220663
        mmWidth = 41275
        BandType = 0
      end
      object pplapenomaut: TppLabel
        UserName = 'lapenomaut'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 60325
        mmTop = 225425
        mmWidth = 90752
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16404
        mmTop = 248180
        mmWidth = 61120
        BandType = 0
      end
      object pplUsuOto: TppLabel
        UserName = 'lUsuOto'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 16404
        mmTop = 248709
        mmWidth = 61120
        BandType = 0
      end
      object ppLabel366: TppLabel
        UserName = 'Label366'
        AutoSize = False
        Caption = 'V'#186'B'#186' del Rep. de la Entidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 16404
        mmTop = 253471
        mmWidth = 61119
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 105834
        mmTop = 248180
        mmWidth = 61120
        BandType = 0
      end
      object ppLabel367: TppLabel
        UserName = 'Label367'
        AutoSize = False
        Caption = 'V'#186'B'#186' del Administrador de la IGED'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 105834
        mmTop = 248709
        mmWidth = 61119
        BandType = 0
      end
      object ppMemo22: TppMemo
        UserName = 'Memo22'
        Caption = 
          'Autorizo de manera expresa para que a trav'#233's de la planilla '#250'nic' +
          'a de pago (Sistema '#218'nico de Planillas - SUP) se descuente de mis' +
          ' remuneraciones y/o pensiones mensuales, el compromiso adquirido' +
          '  con la entidad regulada por el D.S. N'#186' 010-2014-EF y Oficio M'#250 +
          'ltiple N'#186' 061-2016-MINEDU / VMGP-DIGEDD-DITEM, seg'#250'n el siguient' +
          'e detalle:'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Para contar con el V'#186'B'#186' del Administrador de la IGED, el formato' +
            ' debe estar debidamente llenado y con la firma del servidor que ' +
            'autoriza  y la entidad con quien asume el compromiso.')
        Transparent = True
        mmHeight = 10848
        mmLeft = 11377
        mmTop = 261673
        mmWidth = 180446
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object pplasoapenomdni2: TppLabel
        UserName = 'lasoapenomdni'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 18785
        mmTop = 26194
        mmWidth = 86254
        BandType = 0
      end
      object pplasodni2: TppLabel
        UserName = 'lasodni'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 157957
        mmTop = 26723
        mmWidth = 23548
        BandType = 0
      end
      object pplMesCAPADS: TppLabel
        UserName = 'lMesCAPADS'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 43392
        mmTop = 151342
        mmWidth = 24077
        BandType = 0
      end
      object pplAnoCADAPS: TppLabel
        UserName = 'lMesCAPADS1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 151342
        mmWidth = 12965
        BandType = 0
      end
      object pplconlabnom: TppLabel
        UserName = 'lconlabnom1'
        Caption = '(   )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 56886
        mmTop = 61383
        mmWidth = 5821
        BandType = 0
      end
      object pplconlabcon: TppLabel
        UserName = 'lconlabcon1'
        Caption = '(   )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56886
        mmTop = 66411
        mmWidth = 5927
        BandType = 0
      end
      object pplconlabpen: TppLabel
        UserName = 'lconlabpen2'
        Caption = '(   )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56886
        mmTop = 71438
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel353: TppLabel
        UserName = 'Label353'
        Caption = 'Mes _____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 34396
        mmTop = 164042
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel354: TppLabel
        UserName = 'Label354'
        Caption = 'A'#241'o ______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 72496
        mmTop = 164042
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel356: TppLabel
        UserName = 'Label356'
        Caption = 'Mes _____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 111919
        mmTop = 164042
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel357: TppLabel
        UserName = 'Label357'
        Caption = 'A'#241'o ______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 150019
        mmTop = 164042
        mmWidth = 20902
        BandType = 0
      end
      object pplMesIniCrono: TppLabel
        UserName = 'lMesCAPADS2'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 43392
        mmTop = 163513
        mmWidth = 24077
        BandType = 0
      end
      object pplAnoIniCrono: TppLabel
        UserName = 'lAnoIniCrono'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 163513
        mmWidth = 12964
        BandType = 0
      end
      object pplMesFinCrono: TppLabel
        UserName = 'lMesFinCrono'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 121179
        mmTop = 163513
        mmWidth = 24077
        BandType = 0
      end
      object pplAnoFinCrono: TppLabel
        UserName = 'Label3701'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 159544
        mmTop = 163513
        mmWidth = 12964
        BandType = 0
      end
      object pplDesMen: TppLabel
        UserName = 'lDesMen'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 170657
        mmWidth = 15346
        BandType = 0
      end
      object pplTotDes2: TppLabel
        UserName = 'lTotDes'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 170657
        mmWidth = 15346
        BandType = 0
      end
      object pplNumcuo: TppLabel
        UserName = 'Label3702'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 94986
        mmTop = 170127
        mmWidth = 6879
        BandType = 0
      end
      object ppldniaut: TppLabel
        UserName = 'ldniaut'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 71173
        mmTop = 230188
        mmWidth = 69056
        BandType = 0
      end
      object pplUsuImpPlaUniPag: TppLabel
        UserName = 'lUsuImpPlaUniPag'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 273051
        mmWidth = 179917
        BandType = 0
      end
      object pplApoObli: TppLabel
        UserName = 'lTituloApoObli1'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 146315
        mmWidth = 7451
        BandType = 0
      end
      object ppLabel350: TppLabel
        UserName = 'Label350'
        Caption = ' Compromiso por cr'#233'ditos, alimentos, servicios y otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 25665
        mmTop = 158486
        mmWidth = 93398
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList3: TppParameterList
    end
  end
end
