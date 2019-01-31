object fProcReversion100DiferidosDet: TfProcReversion100DiferidosDet
  Left = 219
  Top = 258
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Detalle de Reversi'#243'n de 100% Diferidas'
  ClientHeight = 447
  ClientWidth = 984
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 803
    Top = 11
    Width = 29
    Height = 29
    Caption = 'N'#176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblESTADO: TLabel
    Left = 10
    Top = 8
    Width = 85
    Height = 24
    Caption = 'ESTADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grbDetalle: TGroupBox
    Left = 9
    Top = 37
    Width = 968
    Height = 289
    Caption = 'Detalle Reversi'#243'n 100% Diferidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGDETREV100DIF: TwwDBGrid
      Left = 15
      Top = 21
      Width = 938
      Height = 256
      DisableThemesInTitle = False
      ControlType.Strings = (
        'FLAG;CheckBox;1;0')
      Selected.Strings = (
        'FLAG'#9'2'#9' '#9#9
        'REGID'#9'3'#9'N'#176#9#9
        'ASOCODMOD'#9'10'#9'Cod.Modular'#9#9
        'CALCAR'#9'10'#9'Calificaci'#243'n'#9#9
        'CAROFI'#9'1'#9'Cartera~Oficial'#9'F'#9
        'INTMAY65'#9'10'#9'Interinos~Mayores 65'#9#9
        'ASOAPENOM'#9'40'#9'Apellidos y Nombres'#9#9
        'ASOTIPID'#9'2'#9'Tip.~Asoc.~Cre.'#9#9
        'CREDID'#9'15'#9'Num.Cr'#233'dito'#9#9
        'CREESTADO'#9'15'#9'Estado'#9#9
        'MONPROV'#9'10'#9'Importe~Provisi'#243'n'#9#9
        'NUMCUOBLO'#9'10'#9'Cuotas~Bloqueadas'#9#9
        'MONSALCAP'#9'10'#9'Imp.~Saldo~Capital'#9#9
        'MONSALTOT'#9'10'#9'Imp.~Saldo~Total'#9#9
        'DIAATRANTREV'#9'10'#9'D'#237'as atraso~antes~reversi'#243'n'#9#9
        'MONVENANTREV'#9'10'#9'Imp. vencido~antes~reversi'#243'n'#9#9
        'DIAATRDESREV'#9'10'#9'D'#237'as atraso~despu'#233's~reversi'#243'n'#9#9
        'MONVENDESREV'#9'10'#9'Imp. vencido~despues~reversi'#243'n'#9#9
        'USUGENDAT'#9'15'#9'Usuario~genera~data'#9#9
        'FECGENDAT'#9'10'#9'Fecha~genera~data'#9#9
        'USUDEPDAT'#9'15'#9'Usuario~depura~data'#9#9
        'FECDEPDAT'#9'10'#9'Fecha~depura~data'#9#9
        'USUREVDIF'#9'20'#9'Usuario~revierte~difrido'#9#9
        'FECREVDIF'#9'10'#9'Fecha~revierte~diferido'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSDETREV100DIF
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = [fsBold]
      TitleLines = 3
      TitleButtons = False
      OnCalcCellColors = DBGDETREV100DIFCalcCellColors
      OnDblClick = DBGDETREV100DIFDblClick
      FooterColor = clSkyBlue
      FooterCellColor = clCream
    end
  end
  object dtgData: TDBGrid
    Left = 992
    Top = 154
    Width = 41
    Height = 135
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object Panel2: TPanel
    Left = 838
    Top = 5
    Width = 138
    Height = 36
    Enabled = False
    TabOrder = 2
    object edtNumeroReversion: TEdit
      Left = 1
      Top = 2
      Width = 133
      Height = 32
      Color = 11205108
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object grbPie: TGroupBox
    Left = 9
    Top = 329
    Width = 970
    Height = 106
    TabOrder = 3
    object Label8: TLabel
      Left = 740
      Top = 79
      Width = 125
      Height = 20
      Caption = 'Reg.a Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnImprime: TSpeedButton
      Left = 639
      Top = 30
      Width = 108
      Height = 28
      Caption = '&Cronograma'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFF202020
        6060606060606060608080808080808080808080808080808080808080808080
        80404040202020FFFFFF2020206060600000006F6F6F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F3F3F3FFFFFFF808080404040
        404040909090A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
        A0A0A0A0505050FFFFFF40404040404050505060606060606060606060606060
        60606060606060606060606060606060606060606060606F6F6F000000404040
        A0A0A09090909090909090909090909090909090909090909090909090909090
        909090909090907F7F7F000000404040A0A0A0C0C0C0C0C0C0C0C0C0C0C0C0BF
        9F60BF9F60C0C0C0C0C0C0C0C0C0C0C0C0BF7F00C0C0C07F7F7F000000202020
        BFBFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDF7F7F7FFFFFFF00000030303000000000000000000000000000
        00000000000000000000000000003030303F3F3F000000000000FFFFFF303030
        A0A0A0606060B0B0B0A0A0A0B0B0B0A0A0A0A0A0A0B0B0B0A0A0A0CFCFCF6F6F
        6F3F3F3FFFFFFFFFFFFF000000909090909090606060B0B0B0B0B0B0A0A0A0B0
        B0B0B0B0B0A0A0A0A0A0A0EFEFEF3F3F3F000000FFFFFFFFFFFF0000007F7F7F
        404040BFBFBFDFDFDFEFEFEFEFEFEFDFDFDFEFEFEFDFDFDFEFEFEF7F7F7F3F3F
        3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FEFEFEFEFEFEFDFDFDFEFEFEFDF
        DFDFEFEFEFDFDFDFFFFFFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        BFBFBFDFDFDFEFEFEFDFDFDFEFEFEFDFDFDFEFEFEFEFEFEFBFBFBF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEF
        EFEFDFDFDFFFFFFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        DFDFDFEFEFEFDFDFDFEFEFEFEFEFEFDFDFDFEFEFEFBFBFBF000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000060606060606060606060606060606060606060
        6060606060303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnImprimeClick
    end
    object Label9: TLabel
      Left = 14
      Top = 83
      Width = 123
      Height = 16
      Caption = 'Cr'#233'dito Revertido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnProcRev: TBitBtn
      Left = 13
      Top = 28
      Width = 141
      Height = 29
      Caption = 'Procesa Reversi'#243'n '
      TabOrder = 0
      OnClick = btnProcRevClick
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
    end
    object grbmarca: TGroupBox
      Left = 184
      Top = 14
      Width = 261
      Height = 47
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      object Label1: TLabel
        Left = 74
        Top = 16
        Width = 11
        Height = 24
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 145
        Top = 20
        Width = 33
        Height = 16
        Caption = 'AND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 77
        Top = -2
        Width = 70
        Height = 13
        Caption = 'D'#237'as de atraso'
      end
      object Label7: TLabel
        Left = 171
        Top = -2
        Width = 83
        Height = 13
        Caption = 'Tipo de Asociado'
      end
      object btnMarca: TBitBtn
        Left = 6
        Top = 14
        Width = 62
        Height = 28
        Caption = 'Marcar'
        TabOrder = 0
        OnClick = btnMarcaClick
      end
      object edtDias: TEdit
        Left = 94
        Top = 15
        Width = 41
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '720'
        OnKeyPress = edtDiasKeyPress
      end
      object cbTipoAso: TComboBox
        Left = 190
        Top = 16
        Width = 53
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Text = 'Todos'
        Items.Strings = (
          'Todos'
          'DO'
          'CE'
          'CO')
      end
    end
    object chkDesmarca: TCheckBox
      Left = 189
      Top = 9
      Width = 50
      Height = 17
      Caption = 'Desm.'
      TabOrder = 2
      OnClick = chkDesmarcaClick
    end
    object BitGrabar: TBitBtn
      Left = 757
      Top = 31
      Width = 98
      Height = 27
      Caption = '&Grabar'
      TabOrder = 3
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
    object BitSalir: TBitBtn
      Left = 866
      Top = 30
      Width = 88
      Height = 28
      Caption = '&Cerrar'
      TabOrder = 4
      OnClick = BitSalirClick
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
    object Panel4: TPanel
      Left = 870
      Top = 64
      Width = 84
      Height = 35
      Caption = 'Panel4'
      Enabled = False
      TabOrder = 5
      object edtmarca: TEdit
        Left = 3
        Top = 3
        Width = 77
        Height = 28
        Color = 11205108
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object btnExcel: TBitBtn
      Left = 524
      Top = 30
      Width = 103
      Height = 28
      Caption = '100% &Diferidos'
      TabOrder = 6
      OnClick = btnExcelClick
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
    object Panel1: TPanel
      Left = 138
      Top = 66
      Width = 84
      Height = 35
      Caption = 'Panel4'
      Enabled = False
      TabOrder = 7
      object edtcrerev: TEdit
        Left = 3
        Top = 3
        Width = 77
        Height = 28
        Color = 47545
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlDescripcion: TPanel
    Left = 328
    Top = 241
    Width = 361
    Height = 97
    TabOrder = 4
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 359
      Height = 20
      Align = alTop
      Brush.Color = clNavy
      Pen.Style = psClear
    end
    object Label4: TLabel
      Left = 9
      Top = 24
      Width = 257
      Height = 16
      Caption = 'Ingrese alg'#250'n motivo de la reversi'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 60
      Width = 97
      Height = 13
      Caption = 'max. 255 Caracteres'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtdescripcion: TEdit
      Left = 8
      Top = 40
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      Color = clCream
      MaxLength = 255
      TabOrder = 0
      OnKeyPress = edtdescripcionKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 252
      Top = 63
      Width = 98
      Height = 27
      Caption = '&Grabar'
      TabOrder = 1
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
    object btnSalirgrabacion: TButton
      Left = 340
      Top = 2
      Width = 18
      Height = 17
      Caption = 'X'
      TabOrder = 2
      OnClick = btnSalirgrabacionClick
    end
  end
  object chksolomarcados2: TCheckBox
    Left = 229
    Top = 36
    Width = 97
    Height = 17
    Caption = 'Solo Marcados'
    TabOrder = 5
    OnClick = chksolomarcados2Click
  end
  object chkRevertidos: TCheckBox
    Left = 336
    Top = 35
    Width = 74
    Height = 17
    Caption = 'Revertidos'
    TabOrder = 6
    OnClick = chkRevertidosClick
  end
  object CDSDETREV100DIF: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOCODMOD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CALCAR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INTMAY65'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOAPENOM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ASOTIPID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CREDID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CREESTADO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MONPROV'
        DataType = ftFloat
      end
      item
        Name = 'NUMCUOBLO'
        DataType = ftInteger
      end
      item
        Name = 'MONSALCAP'
        DataType = ftFloat
      end
      item
        Name = 'MONSALTOT'
        DataType = ftFloat
      end
      item
        Name = 'DIAATRANTREV'
        DataType = ftInteger
      end
      item
        Name = 'MONVENANTREV'
        DataType = ftFloat
      end
      item
        Name = 'MONPENANTREV'
        DataType = ftFloat
      end
      item
        Name = 'NUEESTCRE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DIAATRDESREV'
        DataType = ftInteger
      end
      item
        Name = 'MONVENDESREV'
        DataType = ftFloat
      end
      item
        Name = 'MONPENDESREV'
        DataType = ftFloat
      end
      item
        Name = 'USUGENDAT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECGENDAT'
        DataType = ftDate
      end
      item
        Name = 'USUDEPDAT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECDEPDAT'
        DataType = ftDate
      end
      item
        Name = 'USUREVDIF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECREVDIF'
        DataType = ftDate
      end
      item
        Name = 'REGID'
        DataType = ftInteger
      end
      item
        Name = 'FLAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CAROFI'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 988
    Top = 70
    Data = {
      B20200009619E0BD01000000180000001C000000000003000000B2020541534F
      49440100490000000100055749445448020002000A000941534F434F444D4F44
      0100490000000100055749445448020002000A000643414C4341520100490000
      000100055749445448020002000A0008494E544D415936350100490000000100
      055749445448020002000A000941534F4150454E4F4D01004900000001000557
      49445448020002003C000841534F544950494401004900000001000557494454
      4802000200020006435245444944010049000000010005574944544802000200
      0F000943524545535441444F0100490000000100055749445448020002001400
      074D4F4E50524F560800040000000000094E554D43554F424C4F040001000000
      0000094D4F4E53414C4341500800040000000000094D4F4E53414C544F540800
      0400000000000C444941415452414E5452455604000100000000000C4D4F4E56
      454E414E5452455608000400000000000C4D4F4E50454E414E54524556080004
      0000000000094E55454553544352450100490000000100055749445448020002
      0014000C44494141545244455352455604000100000000000C4D4F4E56454E44
      455352455608000400000000000C4D4F4E50454E444553524556080004000000
      00000955535547454E4441540100490000000100055749445448020002001400
      0946454347454E44415404000600000000000955535544455044415401004900
      0000010005574944544802000200140009464543444550444154040006000000
      0000095553555245564449460100490000000100055749445448020002001400
      0946454352455644494604000600000000000552454749440400010000000000
      04464C41470100490000000100055749445448020002000100064341524F4649
      01004900000001000557494454480200020001000000}
  end
  object DSDETREV100DIF: TDataSource
    DataSet = CDSDETREV100DIF
    Left = 988
    Top = 110
  end
end
