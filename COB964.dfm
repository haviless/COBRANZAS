object fGenDesPla: TfGenDesPla
  Left = 75
  Top = 86
  ActiveControl = dblUpro2
  BorderStyle = bsDialog
  Caption = 'Generacion de Descuento por Planilla'
  ClientHeight = 498
  ClientWidth = 792
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
  object GroupBox1: TGroupBox
    Left = 9
    Top = 78
    Width = 775
    Height = 268
    Caption = 'Descuento por Planilla  :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbgCabDesPla: TwwDBGrid
      Left = 16
      Top = 31
      Width = 747
      Height = 220
      DisableThemesInTitle = False
      Selected.Strings = (
        'UPROID'#9'4'#9'U.PRO.'
        'PERIODO'#9'6'#9'Periodo'
        'FECGEN'#9'10'#9'Informaci'#243'n~Generada El'
        'NOFID'#9'15'#9'Numero~Oficio'
        'NUMASO'#9'8'#9'N'#176'Asociados'
        'MONCUOENV'#9'15'#9'Mnt.Cuot~Enviada'
        'MONAPOENV'#9'10'#9'Mnt.Apo.~Enviado'
        'MONCUOAPL'#9'15'#9'Monto Cuo.~Aplicado'
        'MONAPOAPL'#9'10'#9'Monto Apo.~Aplicado'
        'SALCUO'#9'10'#9'Saldo'
        'CREUSER'#9'15'#9'Hecho~Por'
        'HREG'#9'15'#9'Fecha')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = dbgCabDesPlaDrawDataCell
      OnDblClick = dbgCabDesPlaDblClick
    end
    object PnlGenerDesc: TPanel
      Left = 169
      Top = 64
      Width = 404
      Height = 167
      BevelInner = bvRaised
      Color = 10207162
      TabOrder = 1
      Visible = False
      object Shape1: TShape
        Left = 2
        Top = 2
        Width = 400
        Height = 22
        Align = alTop
        Brush.Color = clBackground
      end
      object btnProcesa: TSpeedButton
        Left = 304
        Top = 126
        Width = 85
        Height = 28
        Caption = 'Procesa'
        OnClick = btnProcesaClick
      end
      object Label7: TLabel
        Left = 8
        Top = 3
        Width = 181
        Height = 16
        Caption = 'Generaci'#243'n de Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object gbGeneracion: TGroupBox
        Left = 16
        Top = 22
        Width = 371
        Height = 87
        TabOrder = 0
        object lblMsg: TLabel
          Left = 16
          Top = 55
          Width = 5
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 64
          Top = 27
          Width = 88
          Height = 13
          Caption = 'Numero de Oficio :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtNumOficio: TEdit
          Left = 159
          Top = 24
          Width = 108
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = edtNumOficioExit
        end
      end
      object btnX: TButton
        Left = 386
        Top = 4
        Width = 17
        Height = 20
        Caption = 'x'
        TabOrder = 1
        OnClick = btnXClick
      end
      object prbavance: TProgressBar
        Left = 23
        Top = 98
        Width = 358
        Height = 16
        Step = 1
        TabOrder = 2
      end
      object rbIncAportes: TRadioButton
        Left = 14
        Top = 122
        Width = 137
        Height = 17
        Caption = 'Inc. Aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object rbIncAportAutDes: TRadioButton
        Left = 14
        Top = 141
        Width = 123
        Height = 17
        Caption = 'Inc. Aport.Aut.Desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 6
    Width = 772
    Height = 65
    Caption = 'Filtrar por :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 30
      Width = 70
      Height = 16
      Caption = 'U.Proceso :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 154
      Top = 28
      Width = 54
      Height = 16
      Caption = 'Periodo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 322
      Top = 28
      Width = 53
      Height = 16
      Caption = 'Usuario :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnFiltra: TSpeedButton
      Left = 494
      Top = 20
      Width = 37
      Height = 32
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005F5F00000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000BFBF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FBFBF60606000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FFF
        FF7FDFDF60A0A060606000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000BFBF7FFFFF7FFFFF7FDFDF60A0A060A0A0606060000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FBFBF7F7F7F3F7F
        7F3F6F6F30505030505030707030606000000000FFFFFFFFFFFFFFFFFFFFFFFF
        0000002020002020009F9F9FBFBFBFBFBFBFBFBFBFDFDFDF5050502020004040
        00404000000000FFFFFFFFFFFF0000006060008080005F5F3FBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF707070505050808000808000606000000000FFFFFF000000
        8080006060009F9F9FBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FB0B0B0A0A0A04040
        00808000808000000000FFFFFFFFFFFF2020005F5F3FBFBFBFBFBFBFBFBFBFBF
        BFBFDFDFDF7F7F7FDFDFDFA0A0A0505050606000202000FFFFFFFFFFFFFFFFFF
        0000009F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6FDFDFDFB0B0B0A0A0
        A0000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3FBFBFBFBFBFBFFFFFFF7F7F7F7F
        7F7F3F3F3FEFEFEFDFDFDFDFDFDFB0B0B0202020FFFFFFFFFFFFFFFFFFFFFFFF
        3F3F3F404040505050505050CFCFCF7F7F7FFFFFFFBFBFBF6F6F6F7F7F7F7F7F
        7F303030000000FFFFFFFFFFFF000000808080909090A0A0A0B0B0B0CFCFCF6F
        6F6F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        000000505050A0A0A0B0B0B0DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFF7F7F
        7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003030306F6F6F6F
        6F6F6F6F6F7F7F7F000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnFiltraClick
    end
    object Image1: TImage
      Left = 743
      Top = 14
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
    object rdgResumen: TRadioGroup
      Left = 537
      Top = 2
      Width = 177
      Height = 63
      Caption = 'Resumen de :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Efectividad de Cobranza'
        'Cobranza no Efectuada ')
      ParentFont = False
      TabOrder = 4
    end
    object dblUpro: TwwDBLookupCombo
      Left = 88
      Top = 23
      Width = 56
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'4'#9'ID'#9'F'
        'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblUproExit
    end
    object dblUsuario: TwwDBLookupCombo
      Left = 376
      Top = 22
      Width = 113
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsUser
      LookupField = 'USERID'
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object perano: TwwDBSpinEdit
      Left = 210
      Top = 24
      Width = 58
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2004.000000000000000000
      Value = 2004.000000000000000000
      AutoFillDate = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object permes: TwwDBSpinEdit
      Left = 271
      Top = 24
      Width = 39
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      OnExit = permesExit
    end
    object BitBtn9: TBitBtn
      Left = 726
      Top = 31
      Width = 35
      Height = 30
      TabOrder = 5
      OnClick = BitBtn9Click
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
    end
    object chkExcel: TCheckBox
      Left = 726
      Top = 13
      Width = 16
      Height = 17
      TabOrder = 6
    end
  end
  object GroupBox4: TGroupBox
    Left = 9
    Top = 354
    Width = 775
    Height = 121
    Caption = 'Procesar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 18
      Top = 27
      Width = 56
      Height = 13
      Caption = 'U.Proceso :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 18
      Top = 97
      Width = 42
      Height = 13
      Caption = 'Periodo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 18
      Top = 50
      Width = 42
      Height = 13
      Caption = 'U.Pago :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 18
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Ugel :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dblUpro2: TwwDBLookupCombo
      Left = 81
      Top = 23
      Width = 57
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'4'#9'ID'#9'F'
        'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUpro2Change
    end
    object perano2: TwwDBSpinEdit
      Left = 81
      Top = 93
      Width = 58
      Height = 23
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 2010.000000000000000000
      MinValue = 2007.000000000000000000
      Value = 2007.000000000000000000
      AutoFillDate = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
    end
    object permes2: TwwDBSpinEdit
      Left = 144
      Top = 93
      Width = 39
      Height = 23
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      UsePictureMask = False
      OnChange = permes2Change
      OnExit = permes2Exit
    end
    object chkDesPeriodicos: TCheckBox
      Left = 324
      Top = 94
      Width = 221
      Height = 19
      Caption = 'Asociados con descuentos periodicos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edtupro: TEdit
      Left = 144
      Top = 23
      Width = 173
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 323
      Top = 19
      Width = 91
      Height = 28
      Caption = 'Marc.Proc.Cob. Cuo.Periodo'
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = False
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Spacing = 1
      TabOrder = 7
      TextOptions.Alignment = taCenter
      TextOptions.LineSpacing = 1
      TextOptions.Style = fclsLowered
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      OnClick = fcShapeBtn1Click
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 418
      Top = 18
      Width = 87
      Height = 29
      Caption = 'Genera Descuento'
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = False
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Spacing = 1
      TabOrder = 8
      TextOptions.Alignment = taCenter
      TextOptions.LineSpacing = 1
      TextOptions.Style = fclsLowered
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      OnClick = fcShapeBtn2Click
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 509
      Top = 18
      Width = 85
      Height = 29
      Caption = 'Descuento % Perdida'
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = False
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Spacing = 1
      TabOrder = 9
      TextOptions.Alignment = taCenter
      TextOptions.LineSpacing = 1
      TextOptions.Style = fclsLowered
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      OnClick = fcShapeBtn3Click
    end
    object fcShapeBtn4: TfcShapeBtn
      Left = 681
      Top = 18
      Width = 88
      Height = 29
      Caption = 'Marc.Proc.Cob.   Por Descuento'
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = False
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Spacing = 1
      TabOrder = 10
      TextOptions.Alignment = taCenter
      TextOptions.LineSpacing = 1
      TextOptions.Style = fclsLowered
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      OnClick = fcShapeBtn4Click
    end
    object fcShapeBtn6: TfcShapeBtn
      Left = 599
      Top = 18
      Width = 79
      Height = 29
      Caption = 'Descuento % Normal'
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = False
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Spacing = 1
      TabOrder = 11
      TextOptions.Alignment = taCenter
      TextOptions.LineSpacing = 1
      TextOptions.Style = fclsLowered
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      OnClick = fcShapeBtn6Click
    end
    object BitBtn10: TBitBtn
      Left = 510
      Top = 54
      Width = 33
      Height = 28
      Hint = 'Cierre del Periodo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BitBtn10Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object dblupagoid2: TwwDBLookupCombo
      Left = 81
      Top = 46
      Width = 46
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Upagoid'#9'4'#9'ID'#9'F'
        'Upagonom'#9'65'#9'DESCRIPCION'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'upagoid'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblupagoid2Change
    end
    object edtupago: TEdit
      Left = 144
      Top = 46
      Width = 173
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object dbluseid2: TwwDBLookupCombo
      Left = 81
      Top = 69
      Width = 46
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USEID'#9'3'#9'ID'#9'F'
        'USENOM'#9'65'#9'DESCRIPCION'#9'F')
      LookupTable = DM1.cdsUSES
      LookupField = 'USEID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dbluseid2Change
    end
    object edtuse: TEdit
      Left = 144
      Top = 69
      Width = 173
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object rbDocente: TRadioButton
      Left = 324
      Top = 50
      Width = 93
      Height = 17
      Caption = 'DO - Activos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = rbDocenteClick
    end
    object rbCesante: TRadioButton
      Left = 324
      Top = 68
      Width = 93
      Height = 17
      Caption = 'CE - Cesante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = rbCesanteClick
    end
    object rgtiparc: TRadioGroup
      Left = 557
      Top = 54
      Width = 119
      Height = 54
      Caption = 'Tipo de Archivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Planillas TXT'
        'Otros')
      ParentFont = False
      TabOrder = 17
    end
    object fcShapeBtn5: TfcShapeBtn
      Left = 682
      Top = 59
      Width = 84
      Height = 28
      Caption = 'Genera Diskette'
      Color = clBtnFace
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = False
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Spacing = 1
      TabOrder = 18
      TextOptions.Alignment = taCenter
      TextOptions.LineSpacing = 1
      TextOptions.Style = fclsLowered
      TextOptions.VAlignment = vaVCenter
      TextOptions.WordWrap = True
      OnClick = fcShapeBtn5Click
    end
  end
  object pnlDescPorcentual: TPanel
    Left = 669
    Top = -166
    Width = 780
    Height = 492
    Color = 10207162
    TabOrder = 3
    Visible = False
    object Shape2: TShape
      Left = 1
      Top = 1
      Width = 778
      Height = 22
      Align = alTop
      Brush.Color = clBackground
    end
    object Label8: TLabel
      Left = 8
      Top = 2
      Width = 179
      Height = 20
      Caption = 'Descuento Porcentual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 761
      Top = 2
      Width = 17
      Height = 19
      Caption = 'X'
      TabOrder = 0
      OnClick = Button1Click
    end
    object dbgDescPorcentual: TwwDBGrid
      Left = 4
      Top = 31
      Width = 770
      Height = 347
      DisableThemesInTitle = False
      ControlType.Strings = (
        'Flag;CheckBox;1;')
      Selected.Strings = (
        'FLAG'#9'1'#9'Mrc'#9#9
        'UPAGOID'#9'4'#9'Un.Pag.'
        'ASOAPENOM'#9'40'#9'Apellidos y Nombres'
        'NUMCUOENVPER'#9'3'#9'Ct.P'
        'NUMCUOENVVEN'#9'3'#9'Ct.V'
        'MONCUOMASANT'#9'10'#9'Sal.Ven+Ant'
        'MONCUOENVPER'#9'10'#9'Sal.Periodo'
        'MONCUOENVVEN'#9'12'#9'Sal.Vencido'
        'CREMTOCUO'#9'12'#9'Tot.Cobro'
        'PORENVCUO'#9'3'#9'(%)'
        'MONCUOENV'#9'10'#9'Tot.Envio')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      OnTitleButtonClick = dbgDescPorcentualTitleButtonClick
      OnDrawDataCell = dbgDescPorcentualDrawDataCell
      OnDblClick = dbgDescPorcentualDblClick
    end
    object pnlDscPorcRang: TPanel
      Left = 160
      Top = 59
      Width = 457
      Height = 297
      Color = 10207162
      TabOrder = 2
      Visible = False
      object Shape3: TShape
        Left = 1
        Top = 1
        Width = 455
        Height = 22
        Align = alTop
        Brush.Color = clBackground
      end
      object Label11: TLabel
        Left = 8
        Top = 0
        Width = 277
        Height = 20
        Caption = 'Descuento Porcentual por Rangos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object grb1: TGroupBox
        Left = 24
        Top = 26
        Width = 185
        Height = 105
        Caption = '1)  '
        Enabled = False
        TabOrder = 0
        object TLabel
          Left = 43
          Top = 21
          Width = 16
          Height = 13
          Caption = 'Del'
        end
        object TLabel
          Left = 47
          Top = 51
          Width = 9
          Height = 13
          Caption = 'Al'
        end
        object TLabel
          Left = 47
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Porcentaje'
        end
        object curredtDel1: TCurrencyEdit
          Left = 68
          Top = 17
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 0
        end
        object curredtAl1: TCurrencyEdit
          Left = 68
          Top = 48
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 1
        end
        object curredtPorc1: TCurrencyEdit
          Left = 110
          Top = 77
          Width = 52
          Height = 22
          AutoSize = False
          DisplayFormat = '%'#39'.'#39' 000;-%'#39'.'#39' ,000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 100.000000000000000000
          ParentFont = False
          TabOrder = 2
        end
      end
      object grb2: TGroupBox
        Left = 240
        Top = 26
        Width = 185
        Height = 105
        Caption = '2)  '
        Enabled = False
        TabOrder = 1
        object TLabel
          Left = 43
          Top = 21
          Width = 16
          Height = 13
          Caption = 'Del'
        end
        object TLabel
          Left = 47
          Top = 51
          Width = 9
          Height = 13
          Caption = 'Al'
        end
        object TLabel
          Left = 47
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Porcentaje'
        end
        object curredtdel2: TCurrencyEdit
          Left = 68
          Top = 17
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 0
        end
        object curredtal2: TCurrencyEdit
          Left = 68
          Top = 48
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 1
        end
        object curredtPorc2: TCurrencyEdit
          Left = 110
          Top = 77
          Width = 52
          Height = 22
          AutoSize = False
          DisplayFormat = '%'#39'.'#39' 000;-%'#39'.'#39' ,000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 100.000000000000000000
          ParentFont = False
          TabOrder = 2
        end
      end
      object grb3: TGroupBox
        Left = 25
        Top = 138
        Width = 185
        Height = 105
        Caption = '3)  '
        Enabled = False
        TabOrder = 2
        object TLabel
          Left = 43
          Top = 21
          Width = 16
          Height = 13
          Caption = 'Del'
        end
        object TLabel
          Left = 47
          Top = 51
          Width = 9
          Height = 13
          Caption = 'Al'
        end
        object TLabel
          Left = 47
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Porcentaje'
        end
        object curredtdel3: TCurrencyEdit
          Left = 68
          Top = 17
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 0
        end
        object curredtal3: TCurrencyEdit
          Left = 68
          Top = 48
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 1
        end
        object curredtporc3: TCurrencyEdit
          Left = 110
          Top = 77
          Width = 52
          Height = 22
          AutoSize = False
          DisplayFormat = '%'#39'.'#39' 000;-%'#39'.'#39' ,000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 100.000000000000000000
          ParentFont = False
          TabOrder = 2
        end
      end
      object grb4: TGroupBox
        Left = 240
        Top = 138
        Width = 185
        Height = 105
        Caption = '4)  '
        Enabled = False
        TabOrder = 3
        object TLabel
          Left = 43
          Top = 21
          Width = 16
          Height = 13
          Caption = 'Del'
        end
        object TLabel
          Left = 47
          Top = 51
          Width = 9
          Height = 13
          Caption = 'Al'
        end
        object TLabel
          Left = 47
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Porcentaje'
        end
        object curredtdel4: TCurrencyEdit
          Left = 68
          Top = 17
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 0
        end
        object curredtal4: TCurrencyEdit
          Left = 68
          Top = 48
          Width = 97
          Height = 21
          AutoSize = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 1
        end
        object curredtporc4: TCurrencyEdit
          Left = 110
          Top = 77
          Width = 52
          Height = 22
          AutoSize = False
          DisplayFormat = '%'#39'.'#39' 000;-%'#39'.'#39' ,000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 100.000000000000000000
          ParentFont = False
          TabOrder = 2
        end
      end
      object BtnDscPorcRang: TBitBtn
        Left = 400
        Top = 260
        Width = 22
        Height = 25
        TabOrder = 4
        OnClick = BtnDscPorcRangClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
          73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
          0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
          0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
          0333337F777777737F333308888888880333337F333333337F33330888888888
          03333373FFFFFFFF733333700000000073333337777777773333}
        NumGlyphs = 2
      end
      object Button2: TButton
        Left = 440
        Top = 2
        Width = 17
        Height = 19
        Caption = 'X'
        TabOrder = 5
        OnClick = Button2Click
      end
      object chk1: TCheckBox
        Left = 47
        Top = 23
        Width = 17
        Height = 17
        TabOrder = 6
        OnClick = chk1Click
      end
      object chk2: TCheckBox
        Left = 263
        Top = 23
        Width = 17
        Height = 17
        TabOrder = 7
        OnClick = chk2Click
      end
      object chk3: TCheckBox
        Left = 48
        Top = 135
        Width = 17
        Height = 17
        TabOrder = 8
        OnClick = chk3Click
      end
      object chk4: TCheckBox
        Left = 263
        Top = 134
        Width = 17
        Height = 17
        TabOrder = 9
        OnClick = chk4Click
      end
    end
    object pnlProcesos: TPanel
      Left = 15
      Top = 389
      Width = 745
      Height = 96
      BevelInner = bvLowered
      Color = 10207162
      TabOrder = 3
      object GroupBox5: TGroupBox
        Left = 433
        Top = 4
        Width = 116
        Height = 42
        Caption = '(%)  Marcados'
        TabOrder = 0
        object btnCalcula: TBitBtn
          Left = 84
          Top = 12
          Width = 23
          Height = 26
          TabOrder = 0
          OnClick = btnCalculaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
        object cedtPorcentaje: TCurrencyEdit
          Left = 16
          Top = 14
          Width = 52
          Height = 22
          AutoSize = False
          DisplayFormat = '%'#39'.'#39' 000;-%'#39'.'#39' ,000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 100.000000000000000000
          ParentFont = False
          TabOrder = 1
          OnExit = cedtPorcentajeExit
        end
      end
      object GroupBox7: TGroupBox
        Left = 562
        Top = 4
        Width = 86
        Height = 42
        Caption = '(%) Por Rangos'
        TabOrder = 1
        object BtnPorRango: TBitBtn
          Left = 29
          Top = 14
          Width = 25
          Height = 25
          TabOrder = 0
          OnClick = BtnPorRangoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
      end
      object GroupBox6: TGroupBox
        Left = 7
        Top = 49
        Width = 400
        Height = 39
        Caption = 'Ver :'
        TabOrder = 2
        object rdbVer1: TRadioButton
          Left = 6
          Top = 16
          Width = 87
          Height = 17
          Caption = 'Tot.Envio <='
          TabOrder = 0
          OnClick = rdbVer1Click
        end
        object BitBtn6: TBitBtn
          Left = 362
          Top = 10
          Width = 27
          Height = 25
          TabOrder = 5
          OnClick = BitBtn6Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005F5F00000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000BFBF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FBFBF60606000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FFF
            FF7FDFDF60A0A060606000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF000000BFBF7FFFFF7FFFFF7FDFDF60A0A060A0A0606060000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBF7FBFBF7F7F7F3F7F
            7F3F6F6F30505030505030707030606000000000FFFFFFFFFFFFFFFFFFFFFFFF
            0000002020002020009F9F9FBFBFBFBFBFBFBFBFBFDFDFDF5050502020004040
            00404000000000FFFFFFFFFFFF0000006060008080005F5F3FBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF707070505050808000808000606000000000FFFFFF000000
            8080006060009F9F9FBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FB0B0B0A0A0A04040
            00808000808000000000FFFFFFFFFFFF2020005F5F3FBFBFBFBFBFBFBFBFBFBF
            BFBFDFDFDF7F7F7FDFDFDFA0A0A0505050606000202000FFFFFFFFFFFFFFFFFF
            0000009F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF6F6F6FDFDFDFB0B0B0A0A0
            A0000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F3FBFBFBFBFBFBFFFFFFF7F7F7F7F
            7F7F3F3F3FEFEFEFDFDFDFDFDFDFB0B0B0202020FFFFFFFFFFFFFFFFFFFFFFFF
            3F3F3F404040505050505050CFCFCF7F7F7FFFFFFFBFBFBF6F6F6F7F7F7F7F7F
            7F303030000000FFFFFFFFFFFF000000808080909090A0A0A0B0B0B0CFCFCF6F
            6F6F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
            000000505050A0A0A0B0B0B0DFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFF7F7F
            7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003030306F6F6F6F
            6F6F6F6F6F7F7F7F000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object rdbVer3: TRadioButton
          Left = 305
          Top = 16
          Width = 52
          Height = 17
          Caption = 'Todos'
          TabOrder = 4
        end
        object curredtVal: TCurrencyEdit
          Left = 87
          Top = 12
          Width = 57
          Height = 21
          AutoSize = False
          Enabled = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 1
        end
        object rdbVer2: TRadioButton
          Left = 155
          Top = 16
          Width = 81
          Height = 17
          Caption = 'Tot.Envio >='
          TabOrder = 2
          OnClick = rdbVer2Click
        end
        object curredtVal2: TCurrencyEdit
          Left = 235
          Top = 12
          Width = 57
          Height = 21
          AutoSize = False
          Enabled = False
          MaxValue = 1000000.000000000000000000
          TabOrder = 3
        end
      end
      object BitBtn3: TBitBtn
        Left = 688
        Top = 10
        Width = 37
        Height = 37
        TabOrder = 3
        OnClick = BitBtn3Click
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
      end
      object BitBtn1: TBitBtn
        Left = 576
        Top = 59
        Width = 75
        Height = 25
        Caption = 'Grabar'
        TabOrder = 4
        OnClick = BitBtn1Click
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
      object BitBtn2: TBitBtn
        Left = 660
        Top = 60
        Width = 75
        Height = 25
        Caption = 'Salir'
        TabOrder = 5
        OnClick = BitBtn2Click
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
        NumGlyphs = 2
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 5
        Width = 405
        Height = 41
        Caption = 'Calcular en funci'#243'n a :'
        TabOrder = 6
        object rdbCalc1: TRadioButton
          Left = 6
          Top = 17
          Width = 88
          Height = 17
          Caption = '(Sal.Ven+Ant)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object rdbCalc2: TRadioButton
          Left = 98
          Top = 17
          Width = 82
          Height = 17
          Caption = '(Sal.Periodo)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object rdbCalc3: TRadioButton
          Left = 182
          Top = 11
          Width = 91
          Height = 28
          Caption = '(Sal.Periodo)+(Sal.Vencido)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          WordWrap = True
        end
        object BitBtn5: TBitBtn
          Left = 368
          Top = 9
          Width = 33
          Height = 29
          TabOrder = 3
          OnClick = BitBtn5Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
            00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
            70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
            70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
            70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
            70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
            70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
            00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
          NumGlyphs = 2
        end
        object rdbCalc4: TRadioButton
          Left = 272
          Top = 11
          Width = 95
          Height = 28
          Caption = '(Sal.Ven+Ant)+(Sal.Periodo)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          WordWrap = True
        end
      end
    end
    object btnMarca: TBitBtn
      Left = 19
      Top = 357
      Width = 66
      Height = 20
      Caption = 'Mrc.Tod.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnMarcaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF9F9F9FDF
        DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9F9F9F3F3FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF5F5FDF0000FF7F
        7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8080800000FF0000FF5F5FDFBFBFBFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FDF0000FF7F7FFF00
        00FF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3F3FFFBFBFFFBFBFFF0000FF5F5FDF9F9F9FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFFFFFFFFFFFFF00
        00FF0000FF7F7FBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFF0000FF3F3FFF9F9F9FDFDFDFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F
        7FFF0000FF0000FF3F3FFFBFBFBF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF9F9F
        DFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBFBFFF0000FF0000FF0000FF0000FFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FFF0000FF3F3FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBFBFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object pnlBusca: TPanel
      Left = 281
      Top = 144
      Width = 212
      Height = 73
      BevelInner = bvLowered
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      object Shape5: TShape
        Left = 2
        Top = 2
        Width = 208
        Height = 22
        Align = alTop
        Brush.Color = clBackground
      end
      object lbBusca: TLabel
        Left = 6
        Top = 6
        Width = 46
        Height = 13
        Caption = 'lbBusca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtBusca: TwwIncrementalSearch
        Left = 11
        Top = 37
        Width = 192
        Height = 19
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        DataSource = DM1.dsQry1
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        TabOrder = 0
        OnKeyPress = edtBuscaKeyPress
      end
      object bbtnClosePnl: TButton
        Left = 195
        Top = 3
        Width = 15
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bbtnClosePnlClick
      end
    end
    object pnlMsgSave: TPanel
      Left = 280
      Top = 352
      Width = 217
      Height = 25
      BevelInner = bvLowered
      Color = 10207162
      TabOrder = 6
      Visible = False
      object Label10: TLabel
        Left = 10
        Top = 6
        Width = 200
        Height = 13
        Caption = 'Actualizando cambios anteriores ...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object PnlDetalleEnvio: TPanel
    Left = 643
    Top = -144
    Width = 697
    Height = 475
    Color = 10207162
    TabOrder = 4
    Visible = False
    object Shape4: TShape
      Left = 1
      Top = 1
      Width = 695
      Height = 22
      Align = alTop
      Brush.Color = clBackground
    end
    object Label14: TLabel
      Left = 8
      Top = 2
      Width = 132
      Height = 20
      Caption = 'Detalle de Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Button3: TButton
      Left = 678
      Top = 3
      Width = 17
      Height = 19
      Caption = 'X'
      TabOrder = 0
      OnClick = Button3Click
    end
    object PageControl1: TPageControl
      Left = 9
      Top = 28
      Width = 679
      Height = 433
      ActivePage = TabSheet1
      TabOrder = 1
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Detalle de Envio'
        object Image2: TImage
          Left = 6
          Top = 372
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
        object dbgDetalleEnvio: TwwDBGrid
          Left = 1
          Top = 8
          Width = 669
          Height = 341
          DisableThemesInTitle = False
          Selected.Strings = (
            'UPROID'#9'5'#9'U.Pro'
            'UPAGOID'#9'5'#9'U.Pag'
            'USEID'#9'4'#9'Ugel'
            'ASOAPENOM'#9'36'#9'Apellidos y Nombres'
            'MONAPOENV'#9'10'#9'Mon.Aporte~a Enviar'
            'MONCUOENV'#9'10'#9'Mon.Cuota~a Enviar'
            'MONTOTENV'#9'10'#9'Tot.Envio'
            'MONAPOAPL'#9'10'#9'Mon.Aporte~Aplicado'
            'MONCUOAPL'#9'10'#9'Mon.Cuota~Aplicado'
            'SALDO'#9'10'#9'Saldo'
            'CALCART'#9'09'#9'Cal.Cart.')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 4
          ShowHorzScrollBar = True
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFixedProportionalResize]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          OnDrawDataCell = dbgDetalleEnvioDrawDataCell
        end
        object BitBtn7: TBitBtn
          Left = 593
          Top = 365
          Width = 39
          Height = 29
          TabOrder = 1
          OnClick = BitBtn7Click
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
        end
        object BitBtn4: TBitBtn
          Left = 551
          Top = 365
          Width = 37
          Height = 29
          TabOrder = 2
          OnClick = BitBtn4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
            0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
            0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
            0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
            0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
            0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
            5555557FFFFF7755555555500000005555555577777775555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object pnlRepOfico: TPanel
          Left = 175
          Top = 104
          Width = 329
          Height = 161
          Color = 10207162
          TabOrder = 3
          Visible = False
          object Shape6: TShape
            Left = 1
            Top = 1
            Width = 327
            Height = 22
            Align = alTop
            Brush.Color = clBackground
          end
          object Label12: TLabel
            Left = 10
            Top = 28
            Width = 45
            Height = 13
            Caption = 'Se'#241'ores :'
          end
          object Label13: TLabel
            Left = 11
            Top = 74
            Width = 74
            Height = 13
            Caption = 'Pie de pagina  :'
          end
          object Button4: TButton
            Left = 310
            Top = 3
            Width = 17
            Height = 19
            Caption = 'X'
            TabOrder = 0
            OnClick = Button4Click
          end
          object EdtSenores: TEdit
            Left = 9
            Top = 44
            Width = 312
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object BitBtn8: TBitBtn
            Left = 282
            Top = 125
            Width = 39
            Height = 28
            TabOrder = 2
            OnClick = BitBtn8Click
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
          end
          object memoPie: TMemo
            Left = 9
            Top = 88
            Width = 128
            Height = 63
            Lines.Strings = (
              'SAB/aiv.'
              'c.c.Representantes'
              'Archivo.')
            TabOrder = 3
          end
        end
        object gbfiltro: TGroupBox
          Left = 55
          Top = 360
          Width = 468
          Height = 32
          Enabled = False
          TabOrder = 4
          object rdTodos: TRadioButton
            Left = 7
            Top = 11
            Width = 58
            Height = 17
            Caption = 'Todo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object rdCobrados: TRadioButton
            Left = 70
            Top = 11
            Width = 83
            Height = 17
            Caption = 'Cobrados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object rdNoCobrados: TRadioButton
            Left = 161
            Top = 11
            Width = 109
            Height = 17
            Caption = 'No Cobrados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object rdEnviados: TRadioButton
            Left = 271
            Top = 11
            Width = 80
            Height = 17
            Caption = ' Enviados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object rdNoEnviados: TRadioButton
            Left = 363
            Top = 11
            Width = 104
            Height = 17
            Caption = 'No Enviados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object chkExcel2: TCheckBox
          Left = 26
          Top = 371
          Width = 16
          Height = 17
          TabOrder = 5
          OnClick = chkExcel2Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Resume de Envio'
        ImageIndex = 1
        object dbgResumen: TwwDBGrid
          Left = 44
          Top = 72
          Width = 601
          Height = 169
          DisableThemesInTitle = False
          Selected.Strings = (
            'DESCRIPCION'#9'70'#9'Resumen por :'
            'TOTALES'#9'10'#9'Totales')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DSRESUMEN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
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
    end
  end
  object DTGDATA: TDBGrid
    Left = 560
    Top = 80
    Width = 25
    Height = 17
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ppbDescPorc: TppBDEPipeline
    UserName = 'bDescPorc'
    Left = 700
    Top = 72
  end
  object pprDescPorc: TppReport
    AutoStop = False
    DataPipeline = ppbDescPorc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Universal 8 1/2 x 14 in'
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
    Left = 703
    Top = 79
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbDescPorc'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43127
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Departamento de cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 5292
        mmWidth = 42598
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'SALDO PARA DESCUENTO PORCENTUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 75142
        mmTop = 14552
        mmWidth = 71247
        BandType = 0
      end
      object pplUpro1: TppLabel
        UserName = 'lblUpro'
        Caption = 'Uproid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 24077
        mmWidth = 11377
        BandType = 0
      end
      object pplPeriodo1: TppLabel
        UserName = 'lblPeriodo'
        Caption = 'XXXX XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 29104
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cod.Mod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 2646
        mmTop = 36777
        mmWidth = 12869
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cod.Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 39952
        mmTop = 37042
        mmWidth = 14182
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 57679
        mmTop = 37042
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Deuda al Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 140759
        mmTop = 36777
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = '(%).Desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 168011
        mmTop = 36777
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Desc. Envio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 183092
        mmTop = 36777
        mmWidth = 17198
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 529
        mmTop = 34925
        mmWidth = 202671
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 42069
        mmWidth = 202671
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 11377
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 162190
        mmTop = 1852
        mmWidth = 11726
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 164307
        mmTop = 6615
        mmWidth = 9567
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
        mmLeft = 175155
        mmTop = 2117
        mmWidth = 17463
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
        mmHeight = 4022
        mmLeft = 175155
        mmTop = 6615
        mmWidth = 21505
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 175419
        mmTop = 11377
        mmWidth = 1947
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label11'
        Caption = 'Un. Proceso :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 794
        mmTop = 24077
        mmWidth = 22648
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label12'
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 794
        mmTop = 29104
        mmWidth = 14266
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'U.Pag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 19315
        mmTop = 36777
        mmWidth = 8848
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 29369
        mmTop = 36777
        mmWidth = 8636
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 0
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 36777
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 57415
        mmTop = 265
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CREMTOCUO'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 143140
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'PORENVCUO'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 170127
        mmTop = 265
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'MONCUOENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 181240
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Upagoid'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 21960
        mmTop = 265
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Useid'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 29369
        mmTop = 265
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREMTOCUO'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 143934
        mmTop = 1323
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONCUOENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3598
        mmLeft = 181505
        mmTop = 1323
        mmWidth = 18256
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label4'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 11747
        mmTop = 1323
        mmWidth = 26882
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 6350
        mmWidth = 202936
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 265
        mmWidth = 202936
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'asocodmod'
        DataPipeline = ppbDescPorc
        DisplayFormat = '####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 118004
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText9'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText9: TppDBText
          OnPrint = ppDBText9Print
          UserName = 'DBText9'
          DataField = 'asositid'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          Visible = False
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 4233
          mmLeft = 30956
          mmTop = 0
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label13'
          Caption = 'Tipo de Asociado :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 0
          mmTop = 0
          mmWidth = 29083
          BandType = 3
          GroupNo = 0
        end
        object pplTipAso: TppLabel
          UserName = 'Label19'
          Caption = 'Label19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 42069
          mmTop = 0
          mmWidth = 71438
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREMTOCUO'
          DataPipeline = ppbDescPorc
          DisplayFormat = '##,###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3969
          mmLeft = 143404
          mmTop = 265
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'MONCUOENV'
          DataPipeline = ppbDescPorc
          DisplayFormat = '##,###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3969
          mmLeft = 180975
          mmTop = 0
          mmWidth = 19315
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'asocodmod'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 117475
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label18'
          Caption = 'Total Tipo de Asociado -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4191
          mmLeft = 0
          mmTop = 529
          mmWidth = 40852
          BandType = 5
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          OnPrint = ppDBText10Print
          UserName = 'DBText10'
          DataField = 'asositid'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          Visible = False
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 4233
          mmLeft = 41804
          mmTop = 529
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
        end
        object pplTipAso2: TppLabel
          UserName = 'lTipAso2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 52917
          mmTop = 529
          mmWidth = 61383
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DSRESUMEN: TDataSource
    DataSet = CDSRESUMEN
    Left = 604
    Top = 80
  end
  object CDSRESUMEN: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TOTALES'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 604
    Top = 75
    Data = {
      5E0000009619E0BD0100000018000000020000000000030000005E000B444553
      4352495043494F4E010049000000010005574944544802000200280007544F54
      414C4553080004000000010007535542545950450200490006004D6F6E657900
      0000}
  end
  object ppRepDescuento: TppReport
    AutoStop = False
    DataPipeline = ppbDescPorc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Universal 8 1/2 x 14 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\rep.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 672
    Top = 78
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbDescPorc'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 46831
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Departamento de cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 5292
        mmWidth = 42598
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'DESCUENTO POR PLANILLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 15610
        mmWidth = 49742
        BandType = 0
      end
      object pplUpro2: TppLabel
        UserName = 'lblUpro1'
        Caption = 'Uproid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 29633
        mmWidth = 11377
        BandType = 0
      end
      object pplPeriodo2: TppLabel
        UserName = 'lblPeriodo1'
        Caption = 'XXXX XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 99484
        mmTop = 20108
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Cod.Mod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 1852
        mmTop = 39688
        mmWidth = 12869
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Cod.Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 22225
        mmTop = 39688
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 39952
        mmTop = 39688
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Desc. Env.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 133086
        mmTop = 35719
        mmWidth = 15409
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label102'
        Caption = 'Desc.Env.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 154782
        mmTop = 35719
        mmWidth = 14520
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Total Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 39158
        mmWidth = 23283
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 34925
        mmWidth = 202671
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 43921
        mmWidth = 202671
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 11377
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 162190
        mmTop = 1852
        mmWidth = 11726
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 164307
        mmTop = 6615
        mmWidth = 9567
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175155
        mmTop = 2117
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 175155
        mmTop = 6615
        mmWidth = 21505
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 175419
        mmTop = 11377
        mmWidth = 1947
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Un. Proceso :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 29633
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 39952
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 136525
        mmTop = 39952
        mmWidth = 8509
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 529
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 21167
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Asoapenom'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 39158
        mmTop = 0
        mmWidth = 86254
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'moncuoenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'monapoenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 154782
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'montotenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'moncuoenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 794
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'monapoenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 794
        mmWidth = 19050
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'montotenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '##,###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 794
        mmWidth = 19844
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 1058
        mmWidth = 8509
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'asoid'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object pplUpro3: TppLabel
        UserName = 'lUpro3'
        Caption = 'Uproid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 14817
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText14'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'Useid'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 10848
          mmTop = 1323
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'UGEL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 529
          mmTop = 1323
          mmWidth = 9821
          BandType = 3
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'Usenom'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 18256
          mmTop = 1323
          mmWidth = 108479
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 529
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 5821
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'Useid'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 8731
          mmTop = 1323
          mmWidth = 6350
          BandType = 5
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'Usenom'
          DataPipeline = ppbDescPorc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 16404
          mmTop = 1323
          mmWidth = 76994
          BandType = 5
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 265
          mmTop = 1323
          mmWidth = 7620
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'moncuoenv'
          DataPipeline = ppbDescPorc
          DisplayFormat = '##,###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 133350
          mmTop = 1323
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'monapoenv'
          DataPipeline = ppbDescPorc
          DisplayFormat = '##,###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 155311
          mmTop = 1323
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'montotenv'
          DataPipeline = ppbDescPorc
          DisplayFormat = '##,###,###.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3704
          mmLeft = 179652
          mmTop = 1323
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'asoid'
          DataPipeline = ppbDescPorc
          DisplayFormat = '###,##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbDescPorc'
          mmHeight = 3810
          mmLeft = 100277
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppROfico: TppReport
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 640
    Top = 78
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 71438
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'OFICIO N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18521
        mmTop = 42863
        mmWidth = 21696
        BandType = 0
      end
      object pplblnOficio: TppLabel
        UserName = 'lblnOficio'
        Caption = '99999-AAAA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 40746
        mmTop = 42863
        mmWidth = 24172
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = '-DM-COB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 64558
        mmTop = 42863
        mmWidth = 18288
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'Se'#241'ores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 18256
        mmTop = 58208
        mmWidth = 13377
        BandType = 0
      end
      object pplblSenores: TppLabel
        UserName = 'lblSenores'
        Caption = 'AAAAAAAAAAAAAAAAAAAAAAAA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18256
        mmTop = 63765
        mmWidth = 71438
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'Lima, 30 de Enero del 2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 117211
        mmTop = 16404
        mmWidth = 47890
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 164571
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'De nuestra consideraci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 18256
        mmTop = 794
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 
          'Dentro de sus m'#250'ltiples servicios  DERRAMA MAGISTERIAL, otorga c' +
          'r'#233'ditos y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 12965
        mmWidth = 133350
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 
          'pr'#233'stamos a nivel nacional, a los docentes nombrados activos del' +
          ' Servicio Estatal y Escuela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 19050
        mmWidth = 146579
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 
          'Fiscalizada, los mismos que son descontados directamente por pla' +
          'nilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 25400
        mmWidth = 112713
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 
          'de los maestros atendidos por nuestra instituci'#243'n por un total d' +
          'e :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17463
        mmTop = 41010
        mmWidth = 108215
        BandType = 4
      end
      object pplblMtoDesc: TppLabel
        UserName = 'lblMtoDesc'
        Caption = '99,999,999.99'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 84402
        mmTop = 52123
        mmWidth = 24342
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'S/.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 78846
        mmTop = 52123
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 
          'listado   mencionado   que  nuestro    representante  gestionar'#225 +
          '  ante  la  direcci'#243'n  que  Ud.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 73554
        mmWidth = 145786
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 
          'Agradecemos se sirva autorizar el procedimiento de los descuento' +
          's por planilla del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 30956
        mmTop = 66940
        mmWidth = 131763
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label501'
        Caption = 
          'dignamente  dirige. Asimismo, solicito que se entregue a nuestro' +
          ' representante el listado de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 17727
        mmTop = 80169
        mmWidth = 154517
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'descuento por pr'#233'stamos y aportes descontados a los docente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 17727
        mmTop = 86519
        mmWidth = 103971
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Atentamente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 100013
        mmTop = 102659
        mmWidth = 22754
        BandType = 4
      end
      object ppMPie: TppMemo
        UserName = 'MPie'
        Caption = 'MPie'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 23548
        mmLeft = 18256
        mmTop = 140494
        mmWidth = 48948
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppmLinea: TppMemo
        UserName = 'mLinea'
        ForceJustifyLastLine = True
        Caption = #13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          '')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 34925
        mmWidth = 144727
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppmTotLetras: TppMemo
        UserName = 'mTotLetras'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 17198
        mmTop = 57944
        mmWidth = 159544
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object RepResumenTotal: TppReport
    AutoStop = False
    DataPipeline = ppbDescPorc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Universal 8 1/2 x 14 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 750
    Top = 77
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbDescPorc'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 1323
        mmTop = 40746
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Monto Procesado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 103188
        mmTop = 38629
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = 'Monto Enviado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 125942
        mmTop = 38629
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = 'Monto Recuperado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 141288
        mmTop = 38629
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        CharWrap = True
        Caption = 'Registros Totales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 162454
        mmTop = 38629
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        CharWrap = True
        Caption = 'Registros Cobrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 182563
        mmTop = 38629
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        CharWrap = True
        Caption = 'Monto No Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 202407
        mmTop = 38365
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        CharWrap = True
        Caption = 'Registro No Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 221192
        mmTop = 38365
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        CharWrap = True
        Caption = 'Efectiv. De Recup(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 243682
        mmTop = 38629
        mmWidth = 15081
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 37042
        mmWidth = 265113
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 46831
        mmWidth = 265378
        BandType = 0
      end
      object ppltitulo: TppLabel
        UserName = 'ltitulo'
        Caption = 
          'RESUMEN DE COBRANZA NO EFECTUADA POR TELEAHORROS XXXX-9999 (ACTI' +
          'VOS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 55827
        mmTop = 21696
        mmWidth = 147617
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 265
        mmTop = 529
        mmWidth = 37931
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Sistema de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 5027
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Fecha   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 229394
        mmTop = 0
        mmWidth = 12446
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'Hora   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 231246
        mmTop = 4233
        mmWidth = 10456
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'Pag.   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 231775
        mmTop = 8731
        mmWidth = 10118
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 242888
        mmTop = 0
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 243153
        mmTop = 4233
        mmWidth = 12446
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 243153
        mmTop = 8996
        mmWidth = 1778
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'UPRONOM'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 529
        mmWidth = 98425
        BandType = 4
      end
      object ppDBDET1: TppDBText
        UserName = 'DBDET1'
        DataField = 'Moncuoenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 102659
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBDET2: TppDBText
        UserName = 'DBDET2'
        DataField = 'Moncuoenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 123031
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBDET3: TppDBText
        UserName = 'DBDET3'
        DataField = 'Transcuo'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 142346
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBDET4: TppDBText
        UserName = 'DBDET4'
        DataField = 'Regenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBDET5: TppDBText
        UserName = 'DBDET5'
        DataField = 'Regcob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBDET6: TppDBText
        UserName = 'DBDET6'
        DataField = 'MonNocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 200290
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBDET7: TppDBText
        UserName = 'DBDET7'
        DataField = 'RegNocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 221986
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBDET8: TppDBText
        UserName = 'DBDET8'
        DataField = 'Porc'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 247121
        mmTop = 265
        mmWidth = 10319
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'MoncuoEnv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 102129
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'MoncuoEnv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 122767
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'transcuo'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'Regenv'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'RegCob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'monnocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 200819
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'Regnocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 221457
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 529
        mmWidth = 265113
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 7408
        mmWidth = 265113
        BandType = 7
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 2646
        mmWidth = 20902
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppbResumen'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 13494
        mmWidth = 266701
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppbResumen
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Universal 8 1/2 x 14 in'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppbResumen'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 24342
            mmPrintPosition = 0
            object ppLabel62: TppLabel
              UserName = 'Label62'
              Caption = 'Descripci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 17198
              mmWidth = 21696
              BandType = 1
            end
            object ppLabel69: TppLabel
              UserName = 'Label69'
              AutoSize = False
              Caption = 'Monto Procesado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 105304
              mmTop = 15346
              mmWidth = 15875
              BandType = 1
            end
            object ppLabel70: TppLabel
              UserName = 'Label70'
              AutoSize = False
              Caption = 'Monto Enviado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 128059
              mmTop = 15346
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel71: TppLabel
              UserName = 'Label71'
              AutoSize = False
              Caption = 'Monto Recuperado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 143404
              mmTop = 15346
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label72'
              CharWrap = True
              Caption = 'Registros Totales'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 164571
              mmTop = 15346
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel73: TppLabel
              UserName = 'Label73'
              CharWrap = True
              Caption = 'Registros Cobrados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 183886
              mmTop = 15346
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel74: TppLabel
              UserName = 'Label74'
              CharWrap = True
              Caption = 'Monto No Cobrado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7673
              mmLeft = 203730
              mmTop = 15081
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel75: TppLabel
              UserName = 'Label75'
              CharWrap = True
              Caption = 'Registro No Cobrado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7938
              mmLeft = 223309
              mmTop = 14817
              mmWidth = 17463
              BandType = 1
            end
            object ppLabel76: TppLabel
              UserName = 'Label76'
              CharWrap = True
              Caption = 'Efectiv. De Recup(%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7673
              mmLeft = 245798
              mmTop = 15081
              mmWidth = 15081
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 24077
              mmTop = 23283
              mmWidth = 242888
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line101'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 24077
              mmTop = 12965
              mmWidth = 242888
              BandType = 1
            end
            object ppLabel77: TppLabel
              UserName = 'Label77'
              Caption = 'POR TIPO DE DESCUENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 28840
              mmTop = 7408
              mmWidth = 41233
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              DataField = 'DES'
              DataPipeline = ppbResumen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3440
              mmLeft = 30427
              mmTop = 794
              mmWidth = 70379
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              DataField = 'Moncuoenv'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 103981
              mmTop = 529
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText32'
              DataField = 'Moncuoenv'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 124354
              mmTop = 529
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText33'
              DataField = 'Transcuo'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 143669
              mmTop = 529
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              DataField = 'Regenv'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 162719
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              DataField = 'Regcob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 182563
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              DataField = 'MonNocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 201613
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              DataField = 'RegNocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 223309
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              DataField = 'Porc'
              DataPipeline = ppbResumen
              DisplayFormat = '###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 248444
              mmTop = 529
              mmWidth = 10319
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine15: TppLine
              UserName = 'Line15'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 24077
              mmTop = 2646
              mmWidth = 242888
              BandType = 7
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 23813
              mmTop = 9525
              mmWidth = 243153
              BandType = 7
            end
            object ppLabel78: TppLabel
              UserName = 'Label78'
              Caption = 'Total General'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 38100
              mmTop = 4763
              mmWidth = 20902
              BandType = 7
            end
            object ppDBCalc22: TppDBCalc
              UserName = 'DBCalc22'
              DataField = 'MoncuoEnv'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 104246
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc23: TppDBCalc
              UserName = 'DBCalc23'
              DataField = 'MoncuoEnv'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc24: TppDBCalc
              UserName = 'DBCalc24'
              DataField = 'transcuo'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 143140
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc25: TppDBCalc
              UserName = 'DBCalc25'
              DataField = 'Regenv'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 162454
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc26: TppDBCalc
              UserName = 'DBCalc26'
              DataField = 'RegCob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 182563
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc27: TppDBCalc
              UserName = 'DBCalc202'
              DataField = 'monnocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 201613
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc28: TppDBCalc
              UserName = 'DBCalc28'
              DataField = 'Regnocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 222515
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
          end
        end
      end
    end
  end
  object ppbResumen: TppBDEPipeline
    UserName = 'bResumen'
    Left = 739
    Top = 80
  end
  object RepResuCobNoEfect: TppReport
    AutoStop = False
    DataPipeline = ppbDescPorc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Universal 8 1/2 x 14 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 750
    Top = 101
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbDescPorc'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object ppLabel79: TppLabel
        UserName = 'Label36'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 1323
        mmTop = 40746
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Monto Procesado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 103188
        mmTop = 38629
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = 'Monto Enviado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 125942
        mmTop = 38629
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = 'Monto Recuperado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 141288
        mmTop = 38629
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label48'
        CharWrap = True
        Caption = 'Registros Totales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 162454
        mmTop = 38629
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label55'
        CharWrap = True
        Caption = 'Registros Cobrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 182563
        mmTop = 38629
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label56'
        CharWrap = True
        Caption = 'Monto No Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 202407
        mmTop = 38365
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label57'
        CharWrap = True
        Caption = 'Registro No Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 221192
        mmTop = 38365
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label59'
        CharWrap = True
        Caption = 'Efectiv. De Recup(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 243682
        mmTop = 38629
        mmWidth = 15081
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 37042
        mmWidth = 265113
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 46831
        mmWidth = 265378
        BandType = 0
      end
      object ppltitulo2: TppLabel
        UserName = 'ltitulo'
        Caption = 
          'RESUMEN DE COBRANZA NO EFECTUADA POR TELEAHORROS XXXX-9999 (ACTI' +
          'VOS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 55827
        mmTop = 21696
        mmWidth = 147617
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label63'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 265
        mmTop = 529
        mmWidth = 37931
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label64'
        Caption = 'Sistema de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 5027
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label65'
        Caption = 'Fecha   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 229394
        mmTop = 0
        mmWidth = 12446
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label66'
        Caption = 'Hora   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 231246
        mmTop = 4233
        mmWidth = 10456
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label67'
        Caption = 'Pag.   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 231775
        mmTop = 8731
        mmWidth = 10118
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 242888
        mmTop = 0
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 243153
        mmTop = 4233
        mmWidth = 12446
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 243153
        mmTop = 8996
        mmWidth = 1778
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText21'
        DataField = 'UPRONOM'
        DataPipeline = ppbDescPorc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 529
        mmWidth = 98425
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBDET1'
        DataField = 'MONCUOENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 102659
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBDET2'
        DataField = 'MONCUOENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 121973
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBDET3'
        DataField = 'TRANSCUO'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 142346
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBDET4'
        DataField = 'REGENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBDET5'
        DataField = 'REGCOB'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBDET6'
        DataField = 'MonNocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 200290
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBDET7'
        DataField = 'RegNocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 221986
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBDET8'
        DataField = 'PORC'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 247121
        mmTop = 265
        mmWidth = 10319
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'MONCUOENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 102129
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'MONCUOENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 122502
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'TRANSCUO'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'REGENV'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'REGCOB'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 181240
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'monnocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,###.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 200819
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'Regnocob'
        DataPipeline = ppbDescPorc
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbDescPorc'
        mmHeight = 3704
        mmLeft = 221457
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 529
        mmWidth = 265113
        BandType = 7
      end
      object ppLine20: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 7408
        mmWidth = 265113
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label68'
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 35983
        mmTop = 2646
        mmWidth = 20902
        BandType = 7
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppbResumen'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 13494
        mmWidth = 266701
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppbResumen
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Universal 8 1/2 x 14 in'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppbResumen'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 24342
            mmPrintPosition = 0
            object ppLabel95: TppLabel
              UserName = 'Label62'
              Caption = 'Descripci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 17198
              mmWidth = 21696
              BandType = 1
            end
            object ppLabel96: TppLabel
              UserName = 'Label69'
              AutoSize = False
              Caption = 'Monto Procesado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 105304
              mmTop = 15346
              mmWidth = 15875
              BandType = 1
            end
            object ppLabel97: TppLabel
              UserName = 'Label70'
              AutoSize = False
              Caption = 'Monto Enviado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 128059
              mmTop = 15346
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel98: TppLabel
              UserName = 'Label71'
              AutoSize = False
              Caption = 'Monto Recuperado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 143404
              mmTop = 15346
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel99: TppLabel
              UserName = 'Label72'
              CharWrap = True
              Caption = 'Registros Totales'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 164571
              mmTop = 15346
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel100: TppLabel
              UserName = 'Label73'
              CharWrap = True
              Caption = 'Registros Cobrados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 183886
              mmTop = 15346
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel101: TppLabel
              UserName = 'Label74'
              CharWrap = True
              Caption = 'Monto No Cobrado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7673
              mmLeft = 203730
              mmTop = 15081
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel102: TppLabel
              UserName = 'Label75'
              CharWrap = True
              Caption = 'Registro No Cobrado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7938
              mmLeft = 223309
              mmTop = 14817
              mmWidth = 17463
              BandType = 1
            end
            object ppLabel103: TppLabel
              UserName = 'Label76'
              CharWrap = True
              Caption = 'Efectiv. De Recup(%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7673
              mmLeft = 245798
              mmTop = 15081
              mmWidth = 15081
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line13'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 24077
              mmTop = 23283
              mmWidth = 242888
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line101'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 24077
              mmTop = 12965
              mmWidth = 242888
              BandType = 1
            end
            object ppLabel104: TppLabel
              UserName = 'Label77'
              Caption = 'POR TIPO DE DESCUENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 28840
              mmTop = 7408
              mmWidth = 41233
              BandType = 1
            end
          end
          object ppDetailBand7: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText40: TppDBText
              UserName = 'DBText30'
              DataField = 'DES'
              DataPipeline = ppbResumen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3440
              mmLeft = 30427
              mmTop = 794
              mmWidth = 70379
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText31'
              DataField = 'MONCUOENV'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 103981
              mmTop = 529
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText42: TppDBText
              UserName = 'DBText32'
              DataField = 'MONCUOENV'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 124354
              mmTop = 529
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText43: TppDBText
              UserName = 'DBText33'
              DataField = 'TRANSCUO'
              DataPipeline = ppbResumen
              DisplayFormat = '###,#00.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 143669
              mmTop = 529
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText34'
              DataField = 'REGENV'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 162719
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText45: TppDBText
              UserName = 'DBText35'
              DataField = 'REGCOB'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 182563
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText36'
              DataField = 'MonNocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 201613
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText37'
              DataField = 'RegNocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 223309
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText38'
              DataField = 'PORC'
              DataPipeline = ppbResumen
              DisplayFormat = '###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 248444
              mmTop = 529
              mmWidth = 10319
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine23: TppLine
              UserName = 'Line15'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 24606
              mmTop = 2646
              mmWidth = 242359
              BandType = 7
            end
            object ppLine24: TppLine
              UserName = 'Line16'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 24606
              mmTop = 9525
              mmWidth = 242359
              BandType = 7
            end
            object ppLabel105: TppLabel
              UserName = 'Label78'
              Caption = 'Total General'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 38100
              mmTop = 4763
              mmWidth = 20902
              BandType = 7
            end
            object ppDBCalc36: TppDBCalc
              UserName = 'DBCalc22'
              DataField = 'MONCUOENV'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 104246
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc37: TppDBCalc
              UserName = 'DBCalc23'
              DataField = 'MONCUOENV'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc38: TppDBCalc
              UserName = 'DBCalc24'
              DataField = 'TRANSCUO'
              DataPipeline = ppbResumen
              DisplayFormat = '###,#00.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 143140
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc39: TppDBCalc
              UserName = 'DBCalc25'
              DataField = 'REGENV'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 162454
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc40: TppDBCalc
              UserName = 'DBCalc26'
              DataField = 'REGCOB'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 182563
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc41: TppDBCalc
              UserName = 'DBCalc202'
              DataField = 'monnocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 201613
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc42: TppDBCalc
              UserName = 'DBCalc28'
              DataField = 'Regnocob'
              DataPipeline = ppbResumen
              DisplayFormat = '###,##0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbResumen'
              mmHeight = 3704
              mmLeft = 222515
              mmTop = 4498
              mmWidth = 17198
              BandType = 7
            end
          end
        end
      end
    end
  end
end
