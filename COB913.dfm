object fRepCronog: TfRepCronog
  Left = 218
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reprogramaci'#243'n De Cronogramas'
  ClientHeight = 353
  ClientWidth = 690
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
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
  object GroupBox2: TGroupBox
    Left = 6
    Top = 304
    Width = 684
    Height = 45
    TabOrder = 1
    object BitSalir: TBitBtn
      Left = 522
      Top = 14
      Width = 94
      Height = 27
      Caption = '&Salir'
      TabOrder = 0
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object BitGrabar: TBitBtn
      Left = 404
      Top = 16
      Width = 94
      Height = 25
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
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 156
    Width = 683
    Height = 147
    TabOrder = 0
    object dtgNotaAbono: TwwDBGrid
      Left = 24
      Top = 12
      Width = 639
      Height = 125
      DisableThemesInTitle = False
      Selected.Strings = (
        'NUMPRE'#9'8'#9'N'#176'Credito  '#9#9
        'ANOPRE'#9'6'#9'A'#241'o Credito'#9'F'#9
        'TIPPRE'#9'6'#9'Tip.Credito'#9#9
        'CRECUOTA'#9'10'#9'N'#176'Cuota'#9#9
        'CREFVEN'#9'10'#9'Fec.Venct.'#9#9
        'ABONO'#9'12'#9'Importe Por Reprogramar'#9#9
        'CREESTADO'#9'28'#9'Estado'#9#9)
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
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 7
    Top = -1
    Width = 682
    Height = 158
    TabOrder = 2
    object lblAsociado: TLabel
      Left = 97
      Top = 7
      Width = 393
      Height = 21
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
      Left = 8
      Top = 7
      Width = 82
      Height = 21
      AutoSize = False
      Caption = 'Asociado  : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 30
      Width = 82
      Height = 21
      AutoSize = False
      Caption = 'Credito   :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCreditos: TLabel
      Left = 97
      Top = 30
      Width = 393
      Height = 21
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
      Left = 12
      Top = 61
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
      Top = 108
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
    object lblCuo01: TLabel
      Left = 295
      Top = 123
      Width = 40
      Height = 15
      Caption = 'Numero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblCuo02: TLabel
      Left = 295
      Top = 136
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
    object Panel1: TPanel
      Left = 507
      Top = 14
      Width = 158
      Height = 41
      Color = clWindow
      TabOrder = 0
      object lblSaldo: TLabel
        Left = 20
        Top = 6
        Width = 129
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
      Left = 12
      Top = 78
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
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
    end
    object Panel2: TPanel
      Left = 59
      Top = 76
      Width = 328
      Height = 28
      Enabled = False
      TabOrder = 2
      object EdtForPago: TEdit
        Left = 1
        Top = 1
        Width = 325
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
      Top = 124
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
      Top = 123
      Width = 228
      Height = 28
      Enabled = False
      TabOrder = 4
      object EdtTipCob: TEdit
        Left = 1
        Top = 1
        Width = 225
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
    object dbsNumCuotas: TwwDBSpinEdit
      Left = 351
      Top = 126
      Width = 43
      Height = 25
      Increment = 1.000000000000000000
      MaxValue = 48.000000000000000000
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
      TabOrder = 5
      UnboundDataType = wwDefault
      UsePictureMask = False
      OnChange = dbsNumCuotasChange
    end
    object BitCalcular: TBitBtn
      Left = 400
      Top = 125
      Width = 99
      Height = 27
      Caption = 'Pre-&Calculo'
      TabOrder = 6
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
      Top = 98
      Width = 78
      Height = 53
      Enabled = False
      TabOrder = 7
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
      Left = 396
      Top = 83
      Width = 96
      Height = 14
      Caption = 'Inicia Este Mes'
      TabOrder = 8
    end
    object GroupBox5: TGroupBox
      Left = 585
      Top = 98
      Width = 93
      Height = 53
      Enabled = False
      TabOrder = 9
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
  end
end
