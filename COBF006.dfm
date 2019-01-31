object fSolicDevExcFsc: TfSolicDevExcFsc
  Left = 337
  Top = 201
  BorderStyle = bsDialog
  Caption = 'Solicitud de Aprobaci'#243'n de Devoluciones de Excesos al FSC'
  ClientHeight = 368
  ClientWidth = 655
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grbAsociados: TGroupBox
    Left = 8
    Top = 7
    Width = 640
    Height = 59
    Caption = 'Asociado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object EdtCodMod: TEdit
      Left = 15
      Top = 19
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
      Left = 114
      Top = 20
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
      Left = 592
      Top = 14
      Width = 41
      Height = 41
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
      Top = 18
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
    Left = 8
    Top = 73
    Width = 641
    Height = 150
    Caption = 'Excesos de las Devoluciones al FSC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dtgPrestamo: TwwDBGrid
      Left = 13
      Top = 28
      Width = 617
      Height = 109
      DisableThemesInTitle = False
      Selected.Strings = (
        'NUM_DEU'#9'15'#9'Deuda'
        'COR_COB_DEU'#9'3'#9'Ing.'
        'CREFPAG'#9'10'#9'Fec.Cobranza'
        'NROOPE'#9'15'#9'Nro.Operac.'
        'FOPERAC'#9'10'#9'Fec.Operac.'
        'FORPAGABR'#9'4'#9'Pago'
        'IMP_EXC_DEU'#9'17'#9'Exceso'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsPlandet
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object grbacciones: TGroupBox
    Left = 8
    Top = 227
    Width = 640
    Height = 133
    TabOrder = 3
    object Label3: TLabel
      Left = 22
      Top = 7
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
    object Label9: TLabel
      Left = 18
      Top = 54
      Width = 291
      Height = 16
      Caption = 'Motivo de Devoluci'#243'n (max 450 carateres)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 132
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
    object fcShapeBtn1: TfcShapeBtn
      Left = 572
      Top = 14
      Width = 49
      Height = 44
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
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object BtnDesembolso: TBitBtn
      Left = 148
      Top = 26
      Width = 32
      Height = 25
      Caption = '....'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnDesembolsoClick
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 67
      Width = 613
      Height = 63
      TabOrder = 3
      object MotDevo: TMemo
        Left = 3
        Top = 9
        Width = 607
        Height = 49
        MaxLength = 450
        TabOrder = 0
      end
    end
  end
  object pnlTipodesembolso: TPanel
    Left = 11
    Top = 379
    Width = 561
    Height = 158
    Color = 10207162
    TabOrder = 4
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
  object pnlSeleccion: TPanel
    Left = 613
    Top = 497
    Width = 620
    Height = 253
    Color = 9090478
    TabOrder = 2
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 618
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
      Width = 601
      Height = 209
      Caption = 'Buscar'
      Color = 10207162
      ParentColor = False
      TabOrder = 0
      object BitMostrar: TBitBtn
        Left = 441
        Top = 40
        Width = 80
        Height = 27
        Caption = 'Resultado'
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
        Width = 582
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
        Left = 524
        Top = 40
        Width = 71
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
        Left = 188
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
        Left = 340
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
        Left = 409
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
        Left = 505
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
      Left = 600
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
end
