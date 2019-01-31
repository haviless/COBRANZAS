object fCanstigaFSC: TfCanstigaFSC
  Left = 435
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Aplicaci'#243'n con Fondo Solidario de Contingencia'
  ClientHeight = 531
  ClientWidth = 670
  Color = 9090478
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object grbAsociados: TGroupBox
    Left = 8
    Top = 7
    Width = 648
    Height = 54
    Caption = 'Asociado: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
      OnExit = EdtCodModExit
    end
    object BitBuscar: TBitBtn
      Left = 113
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
    object Panel3: TPanel
      Left = 143
      Top = 18
      Width = 436
      Height = 29
      Enabled = False
      TabOrder = 2
      object edtNomGen: TEdit
        Left = 1
        Top = 2
        Width = 433
        Height = 24
        Color = 12975869
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
  object grbDatosRequeridos: TGroupBox
    Left = 8
    Top = 329
    Width = 649
    Height = 139
    Caption = 'Datos requeridos para aplicar: '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label9: TLabel
      Left = 8
      Top = 64
      Width = 187
      Height = 16
      Caption = 'NOTA: (max 150 carateres)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 18
      Width = 108
      Height = 16
      Caption = 'Forma de Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 515
      Top = 19
      Width = 87
      Height = 16
      Caption = 'Nro. de Acta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 402
      Top = 19
      Width = 101
      Height = 16
      Caption = 'Fecha de Acta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblkForPago: TwwDBLookupCombo
      Left = 10
      Top = 34
      Width = 49
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblkForPagoChange
    end
    object EdtTipDes: TEdit
      Left = 63
      Top = 34
      Width = 306
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
    object MotDevo: TMemo
      Left = 8
      Top = 81
      Width = 553
      Height = 49
      MaxLength = 150
      TabOrder = 4
      OnExit = MotDevoExit
      OnKeyPress = MotDevoKeyPress
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 584
      Top = 82
      Width = 50
      Height = 49
      Cancel = True
      Caption = 'Aplicar'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000303030404040
        4040404040404040404040404040404040404040404040404040404040404040
        404040404040402020207F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060DF
        DFDF404040A0A0A0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C0505050404040A0A0A03030306F6F6F2020206060608080804040406060
        60C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C06F6F6F404040A0A0A07F7F7FDF
        DFDFA0A0A0404040606060AFAFAF404040C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C0303030202020B0B0B07F7F7FDFDFDFA0A0A04040406060605050504040
        40C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C030303020202040404020202040
        4040404040202020404040000000707070C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C06F6F6FA0A0A0BFBFBFBFBFBFA0A0A0BFBFBFBFBFBFA0A0A0AFAFAF4040
        40C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C07F7F7FC0C0C0DFDFDFDFDFDFC0
        C0C0DFDFDFDFDFDFC0C0C0BFBFBF404040C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C07F7F7FC0C0C0DFDFDFDFDFDFC0C0C0DFDFDFDFDFDFC0C0C0BFBFBF4040
        40C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C07F7F7FC0C0C0DFDFDFDFDFDFC0
        C0C0DFDFDFDFDFDFC0C0C0BFBFBF404040C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C03F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F8080
        80C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C0606060EFEFEFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFCFCFCF303030B0B0B0C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C0C0C0C03F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5F5F5F404040C0C0
        C0C0C0C0C0C0C04040407F7F7FC0C0C0C0C0C0C0C0C03030303F3F3F3F3F3F3F
        3F3F3F3F3F3F3F3F3F3F3F909090C0C0C0C0C0C0C0C0C04040407F7F7FC0C0C0
        C0C0C0C0C0C09090909F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FC0C0C0C0C0
        C0C0C0C0C0C0C04040403F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F303030}
      Layout = blGlyphTop
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 5
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object DtpFecAct: TDateTimePicker
      Left = 401
      Top = 35
      Width = 104
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = DtpFecActExit
    end
    object Panel4: TPanel
      Left = 515
      Top = 35
      Width = 119
      Height = 27
      Caption = 'PnlNroacta'
      Enabled = False
      TabOrder = 3
      object edtNroOperacion: TEdit
        Left = 2
        Top = 1
        Width = 115
        Height = 24
        CharCase = ecUpperCase
        Color = 12975869
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object grbCronoaplicar: TGroupBox
    Left = 8
    Top = 152
    Width = 649
    Height = 173
    Caption = 'Cronogramas pendientes de pago: '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object dbgCastigaFSC: TwwDBGrid
      Left = 8
      Top = 21
      Width = 632
      Height = 141
      HelpType = htKeyword
      DisableThemesInTitle = False
      ControlInfoInDataset = False
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 1
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = [dgAllowInsert]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 66
    Width = 649
    Height = 79
    Caption = 'Datos de Asociado: '
    TabOrder = 4
    object Label1: TLabel
      Left = 178
      Top = 23
      Width = 73
      Height = 16
      Caption = 'U. Proceso :'
    end
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 59
      Height = 16
      Caption = 'Tip. Aso. :'
    end
    object Label3: TLabel
      Left = 215
      Top = 51
      Width = 38
      Height = 16
      Caption = 'Ugel : '
    end
    object lblfallecido: TLabel
      Left = 14
      Top = 52
      Width = 113
      Height = 24
      Caption = 'FALLECIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblInvalidez: TLabel
      Left = 42
      Top = 52
      Width = 106
      Height = 24
      Caption = 'INVALIDEZ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Panel1: TPanel
      Left = 71
      Top = 18
      Width = 102
      Height = 28
      Enabled = False
      TabOrder = 0
      object edtTipAso: TEdit
        Left = 1
        Top = 2
        Width = 101
        Height = 24
        Color = 12975869
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 254
      Top = 16
      Width = 383
      Height = 27
      Enabled = False
      TabOrder = 1
      object edtUProceso: TEdit
        Left = 2
        Top = 2
        Width = 378
        Height = 24
        Color = 12975869
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 254
      Top = 46
      Width = 383
      Height = 30
      Enabled = False
      TabOrder = 2
      object edtUgel: TEdit
        Left = 2
        Top = 3
        Width = 378
        Height = 24
        Color = 12975869
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
  object pnlSeleccion: TPanel
    Left = 630
    Top = 126
    Width = 673
    Height = 243
    Color = 9090478
    TabOrder = 1
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
      Width = 134
      Height = 13
      Caption = 'Selecci'#243'n del Asociado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object GbAsociados: TGroupBox
      Left = 7
      Top = 25
      Width = 656
      Height = 209
      Caption = 'Buscar'
      Color = 10207162
      ParentColor = False
      TabOrder = 0
      object BitMostrar: TBitBtn
        Left = 449
        Top = 40
        Width = 99
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
        Width = 133
        Height = 40
        TabOrder = 0
        object edtBuscar: TEdit
          Left = 9
          Top = 11
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
        Width = 634
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
        Left = 555
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
        Left = 217
        Top = 12
        Width = 152
        Height = 17
        Caption = 'Apellidos y Nombres(D.N.I.)'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = rbtApeNomClick
      end
      object rbtDni: TRadioButton
        Left = 383
        Top = 12
        Width = 57
        Height = 17
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rbtDniClick
      end
      object rbtCuenta: TRadioButton
        Left = 438
        Top = 12
        Width = 96
        Height = 17
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rbtCuentaClick
      end
      object rbtCodMod: TRadioButton
        Left = 547
        Top = 13
        Width = 89
        Height = 17
        Caption = 'Codigo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
  object fcShapeBtn3: TfcShapeBtn
    Left = 616
    Top = 478
    Width = 40
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
    TabOrder = 5
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = fcShapeBtn3Click
  end
  object BitBtn1: TBitBtn
    Left = 511
    Top = 478
    Width = 44
    Height = 41
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7F7F7F7F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F0000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      7F7F7F7F7F7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF7F7F7F
      7F7F7F000000000000000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF7F7F7F7F7F7F
      7F7F7F0000007F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFF7F7F7F7F7F7F
      7F7F7F0000007F7F7F0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000FFFFFFFFFFFF7F7F7F7F7F7F
      0000007F7F7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBFBFFFFFFF000000
      7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000FFFFFF000000
      7F7F7F0000007F7F7FBFBFBF000000BFBFBF000000BFBFBF000000BFBFBF0000
      00BFBFBF000000BFBFBF000000BFBFBF000000BFBFBF000000BFBFBF000000BF
      BFBF000000BFBFBF000000BFBFBF000000BFBFBFFFFFFF000000FFFFFF000000
      7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000FFFFFF000000
      7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBFFFFFFF000000FFFFFF000000
      7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFFFFFFF000000FFFFFF000000
      7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000FFFFFFFFFFFF
      000000000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
      FFFFFF000000BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BFBFBFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000BFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF000000BFBFBFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000BFBFBFBFBFBF7F7F7F000000BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F
      7FBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7FBFBFBFFF
      FFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000BFBFBFBFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF
      FFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      BFBFBFBFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF7F7F7FBFBFBF7F7F7F7F7F
      7F7F7F7FBFBFBF7F7F7F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFF
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFF7F7F7F7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      000000000000000000000000FFFFFFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFFFFF
      FFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF00
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBF
      BFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBF
      BFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000FFFFFFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFFFFF
      FFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBF
      BFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object grbReimpresion: TGroupBox
    Left = 8
    Top = 469
    Width = 249
    Height = 61
    TabOrder = 7
    Visible = False
    object Label8: TLabel
      Left = 127
      Top = 15
      Width = 60
      Height = 16
      Caption = 'Nro. Act.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 11
      Top = 16
      Width = 62
      Height = 16
      Caption = 'Fec,Acta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DFecActa: TDateTimePicker
      Left = 10
      Top = 30
      Width = 104
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtActa: TEdit
      Left = 124
      Top = 28
      Width = 115
      Height = 24
      CharCase = ecUpperCase
      Color = 12975869
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      TabOrder = 1
    end
  end
  object chkReimp: TCheckBox
    Left = 8
    Top = 470
    Width = 129
    Height = 17
    Caption = 'Para Reimpresi'#243'n'
    TabOrder = 8
    OnClick = chkReimpClick
  end
  object ppRepDevol: TppReport
    DataPipeline = DBPi1
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
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\SRC_200937_COB\RepAplFSC.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 232
    Top = 433
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPi1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 62971
      mmPrintPosition = 0
      object ppLabel27: TppLabel
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
      object ppLabel30: TppLabel
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
      object ppLabel31: TppLabel
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
      object ppLabel32: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha  Impresi'#243'n  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 141552
        mmTop = 529
        mmWidth = 26501
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label5'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 5027
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel34: TppLabel
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
      object ppLabel35: TppLabel
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
      object ppSystemVariable4: TppSystemVariable
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
      object ppSystemVariable5: TppSystemVariable
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
        Caption = 'APLICACION CON EL FONDO SOLIDARIO DE CONTINGENCIAN'#176' 2009000001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 21431
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label8'
        Caption = 'FECHA APLICACION      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 43921
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label9'
        Caption = 'DEPARTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1588
        mmTop = 39158
        mmWidth = 29337
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label10'
        Caption = 'SE'#209'OR(A)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 65881
        mmTop = 29369
        mmWidth = 17187
        BandType = 0
      end
      object xxx: TppLabel
        UserName = 'xxx'
        Caption = 'CODIGO MODULAR     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 29369
        mmWidth = 32015
        BandType = 0
      end
      object ppp: TppLabel
        UserName = 'p'
        Caption = 'COD. PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65881
        mmTop = 34131
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label13'
        Caption = 'U. PROCESO         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65881
        mmTop = 39158
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 29369
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label15'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 29369
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label16'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 43921
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 34131
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label19'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppLblNomGen: TppLabel
        UserName = 'lblSenor'
        Caption = 'LEVANO TASAYCO JAIME SANTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 29369
        mmWidth = 58738
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        Caption = '1021810634'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 29369
        mmWidth = 19579
        BandType = 0
      end
      object ppLblFecDoc: TppLabel
        UserName = 'LblFecDoc'
        Caption = '12/07/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 43921
        mmWidth = 17463
        BandType = 0
      end
      object ppLblDpto: TppLabel
        UserName = 'LblDpto'
        Caption = 'ICA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 39158
        mmWidth = 5821
        BandType = 0
      end
      object ppLblCodPag: TppLabel
        UserName = 'LblCodPag'
        Caption = '2A063210'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 34131
        mmWidth = 15875
        BandType = 0
      end
      object ppLblUproc: TppLabel
        UserName = 'LblUproc'
        Caption = 'D.R.E.ICA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 39158
        mmWidth = 16140
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 56356
        mmWidth = 192882
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 62706
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label26'
        Caption = 'APLICACION       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1852
        mmTop = 57415
        mmWidth = 31242
        BandType = 0
      end
      object ppLabel47: TppLabel
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
        Caption = 'CON EL FONDO SOLIDARIO DE CONTINGENCIA SEGUN ACTA - AC333333'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 48683
        mmTop = 57415
        mmWidth = 137584
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'p1'
        Caption = 'D.N.I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 34131
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label20'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 34131
        mmWidth = 1058
        BandType = 0
      end
      object PPLblDni: TppLabel
        UserName = 'LblDNI'
        Caption = '21810634'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 34131
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label12'
        Caption = 'FORMA DE PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65881
        mmTop = 43656
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label21'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 43656
        mmWidth = 1058
        BandType = 0
      end
      object pplbFormapago: TppLabel
        UserName = 'LblDpto1'
        Caption = 'F.S.C POR INCOBRABILIDAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 43656
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label22'
        Caption = 'NUMERO DE ACTA     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 48683
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label23'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 36777
        mmTop = 48683
        mmWidth = 1058
        BandType = 0
      end
      object ppLbNumActa: TppLabel
        UserName = 'LblFecDoc1'
        Caption = 'AC20100301DO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 38894
        mmTop = 48683
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label24'
        Caption = 'FEC. DE ACTA  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 65881
        mmTop = 48683
        mmWidth = 26162
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label25'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 48419
        mmWidth = 1058
        BandType = 0
      end
      object pplbFecActa: TppLabel
        UserName = 'Label28'
        Caption = '12/02/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 99484
        mmTop = 48419
        mmWidth = 17526
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 40481
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
          'CONCEPTO : APLICACION CON EL FONDO SOLIDARIO DE CONTINGENCIA'
          ''
          'A LOS CR'#201'DITOS QUE SE DETALLA ;  (En Nuevos Soles)'
          '----------------------------------------------------'
          ''
          
            'Cr'#233'dito:0000175  Fecha Otorg.:28/06/2002  D'#237'as Atraso:2554  Tota' +
            'l Aplicado:383.78'#13'Cr'#233'dito:0007093  Fecha Otorg.:30/06/2002  D'#237'as' +
            ' Atraso:2523  Total Aplicado:132.44'#13'Cr'#233'dito:0016820  Fecha Otorg' +
            '.:31/12/2002  D'#237'as Atraso:2492  Total Aplicado:2580.63'#13'Cr'#233'dito:0' +
            '000140  Fecha Otorg.:05/09/2007  D'#237'as Atraso:666  Total Aplicado' +
            ':355.77'
          ''
          ''
          'Nota :de prueba')
        Transparent = True
        mmHeight = 39952
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
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLblUsuario: TppLabel
        UserName = 'LblUsuario'
        AutoSize = False
        Caption = 'Hecho Por :DB2ADMIN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 147109
        mmTop = 0
        mmWidth = 52123
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 163777
      mmPrintPosition = 0
      object ppLTotal: TppLabel
        UserName = 'Label11'
        Caption = 'TOTAL APLICADO CON EL FONDO SOLIDARIO DE CONTINGENCIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 137499
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 191030
        BandType = 7
      end
      object ppLine9: TppLine
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
        Caption = '3,452.62'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 165640
        mmTop = 2117
        mmWidth = 19304
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPi2'
        mmHeight = 5556
        mmLeft = 0
        mmTop = 9525
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          Columns = 4
          ColumnPositions.Strings = (
            '6350'
            '57150'
            '107950'
            '158750')
          DataPipeline = ppDBPi2
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
          Version = '7.02'
          mmColumnWidth = 50800
          DataPipelineName = 'ppDBPi2'
          object ppTitleBand1: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppLabel50: TppLabel
              UserName = 'Label50'
              Caption = 'CUOTAS APLICADAS :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3387
              mmLeft = 6879
              mmTop = 794
              mmWidth = 34290
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 6350
              mmTop = 4498
              mmWidth = 36248
              BandType = 1
            end
          end
          object ppColumnHeaderBand1: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 4763
              mmLeft = 1058
              mmTop = 0
              mmWidth = 37306
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'CRECUOTA'
              DataPipeline = ppDBPi2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPi2'
              mmHeight = 2910
              mmLeft = 9525
              mmTop = 794
              mmWidth = 5821
              BandType = 4
            end
            object ppdbCREMTOCOBNEW: TppDBText
              UserName = 'dbCREMTOCOBNEW'
              DataField = 'CREMTOCOBNEW'
              DataPipeline = ppDBPi2
              DisplayFormat = '###,###.0#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPi2'
              mmHeight = 2910
              mmLeft = 23813
              mmTop = 794
              mmWidth = 12965
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 7938
              mmTop = 2381
              mmWidth = 1323
              BandType = 4
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 20108
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5821
              mmLeft = 6350
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataPipeline = ppDBPi2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ResetGroup = ppGroup2
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPi2'
              mmHeight = 3006
              mmLeft = 2117
              mmTop = 1058
              mmWidth = 3440
              BandType = 4
            end
          end
          object ppColumnFooterBand1: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppGroup1: TppGroup
            BreakName = 'ASOID'
            DataPipeline = ppDBPi2
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPi2'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 3440
              mmPrintPosition = 0
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6615
              mmPrintPosition = 0
              object ppShape6: TppShape
                UserName = 'Shape6'
                Brush.Color = clSilver
                mmHeight = 4763
                mmLeft = 1058
                mmTop = 265
                mmWidth = 37306
                BandType = 5
                GroupNo = 0
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                Caption = 'Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3217
                mmLeft = 4498
                mmTop = 794
                mmWidth = 10160
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                DataField = 'CREMTOCOBNEW'
                DataPipeline = ppDBPi2
                DisplayFormat = '###,###.0#'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPi2'
                mmHeight = 3175
                mmLeft = 22754
                mmTop = 1058
                mmWidth = 14817
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'CREDID'
            DataPipeline = ppDBPi2
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPi2'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 17198
              mmPrintPosition = 0
              object ppShape5: TppShape
                UserName = 'Shape5'
                Brush.Color = clSilver
                mmHeight = 6085
                mmLeft = 1058
                mmTop = 11113
                mmWidth = 37306
                BandType = 3
                GroupNo = 1
              end
              object ppShape4: TppShape
                UserName = 'Shape4'
                Brush.Style = bsClear
                mmHeight = 5821
                mmLeft = 1058
                mmTop = 5556
                mmWidth = 37306
                BandType = 3
                GroupNo = 1
              end
              object ppShape1: TppShape
                UserName = 'Shape1'
                Brush.Color = clSilver
                mmHeight = 5821
                mmLeft = 1058
                mmTop = 0
                mmWidth = 37306
                BandType = 3
                GroupNo = 1
              end
              object ppDBText10: TppDBText
                UserName = 'DBText10'
                DataField = 'CREDID'
                DataPipeline = ppDBPi2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = [fsBold]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBPi2'
                mmHeight = 3175
                mmLeft = 5556
                mmTop = 6615
                mmWidth = 13494
                BandType = 3
                GroupNo = 1
              end
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                DataField = 'NROOPE'
                DataPipeline = ppDBPi2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = [fsBold]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBPi2'
                mmHeight = 3175
                mmLeft = 21167
                mmTop = 6615
                mmWidth = 16140
                BandType = 3
                GroupNo = 1
              end
              object ppLabel2: TppLabel
                UserName = 'Label2'
                Caption = 'Cr'#232'dito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 5556
                mmTop = 1323
                mmWidth = 12965
                BandType = 3
                GroupNo = 1
              end
              object ppLabel3: TppLabel
                UserName = 'Label3'
                Caption = 'Acta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3969
                mmLeft = 25665
                mmTop = 1323
                mmWidth = 7673
                BandType = 3
                GroupNo = 1
              end
              object ppLine11: TppLine
                UserName = 'Line11'
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 16933
                mmLeft = 20108
                mmTop = 0
                mmWidth = 265
                BandType = 3
                GroupNo = 1
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                Caption = 'Cuota'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3440
                mmLeft = 7938
                mmTop = 12171
                mmWidth = 9790
                BandType = 3
                GroupNo = 1
              end
              object ppLabel5: TppLabel
                UserName = 'Label5'
                Caption = 'Aplicado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 21696
                mmTop = 11906
                mmWidth = 14288
                BandType = 3
                GroupNo = 1
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 5821
                mmLeft = 6350
                mmTop = 11377
                mmWidth = 265
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 8996
              mmPrintPosition = 0
              object ppShape3: TppShape
                UserName = 'Shape3'
                Brush.Color = clSilver
                mmHeight = 4763
                mmLeft = 1058
                mmTop = 0
                mmWidth = 37306
                BandType = 5
                GroupNo = 1
              end
              object ppLabel1: TppLabel
                UserName = 'Label1'
                Caption = 'Subtotal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 4498
                mmTop = 529
                mmWidth = 16404
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                DataField = 'CREMTOCOBNEW'
                DataPipeline = ppDBPi2
                DisplayFormat = '###,###.0#'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Courier New'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPi2'
                mmHeight = 3175
                mmLeft = 22754
                mmTop = 794
                mmWidth = 14817
                BandType = 5
                GroupNo = 1
              end
            end
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object CDSAPLICADOS: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
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
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NROOPE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CREMTOCOB'
        DataType = ftCurrency
      end
      item
        Name = 'CREMTOCOBNEW'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 344
    Top = 427
    Data = {
      D60000009619E0BD010000001800000006000000000003000000D6000541534F
      49440100490000000100055749445448020002000A0006435245444944010049
      0000000100055749445448020002000F000843524543554F5441010049000000
      0100055749445448020002000300064E524F4F50450100490000000100055749
      445448020002000F00094352454D544F434F4208000400000001000753554254
      5950450200490006004D6F6E6579000C4352454D544F434F424E455708000400
      0000010007535542545950450200490006004D6F6E6579000000}
  end
  object DSAPLICADOS: TDataSource
    DataSet = CDSAPLICADOS
    Left = 360
    Top = 428
  end
  object ppDBPi2: TppDBPipeline
    DataSource = DSAPLICADOS
    UserName = 'DBPi2'
    Left = 206
    Top = 432
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CRECUOTA'
      FieldName = 'CRECUOTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'NROOPE'
      FieldName = 'NROOPE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'CREMTOCOB'
      FieldName = 'CREMTOCOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
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
    Left = 256
    Top = 431
  end
  object DBPi1: TppDBPipeline
    DataSource = DM1.dsQry6
    UserName = 'DBPi1'
    Left = 181
    Top = 432
  end
end
