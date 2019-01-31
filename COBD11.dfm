object fRefiSeleAso: TfRefiSeleAso
  Left = 306
  Top = 143
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Registro Individual de Cuotas'
  ClientHeight = 520
  ClientWidth = 790
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
  PixelsPerInch = 96
  TextHeight = 13
  object gpbDatos: TGroupBox
    Left = 2
    Top = -4
    Width = 786
    Height = 199
    TabOrder = 0
    object bFirma: TBevel
      Left = 7
      Top = 139
      Width = 146
      Height = 51
    end
    object Label1: TLabel
      Left = 164
      Top = 15
      Width = 74
      Height = 13
      Caption = 'Codigo Modular'
    end
    object bFoto: TBevel
      Left = 7
      Top = 14
      Width = 146
      Height = 122
    end
    object ImagAso: TImage
      Left = 12
      Top = 18
      Width = 137
      Height = 114
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      OnClick = ImagAsoClick
    end
    object ImaFirma: TImage
      Left = 12
      Top = 143
      Width = 137
      Height = 43
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      OnClick = ImaFirmaClick
    end
    object EdtCodMod: TEdit
      Left = 164
      Top = 28
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
      OnKeyPress = EdtCodModKeyPress
    end
    object BitBuscar: TBitBtn
      Left = 260
      Top = 29
      Width = 23
      Height = 22
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
    object Panel2: TPanel
      Left = 286
      Top = 14
      Width = 497
      Height = 45
      BevelOuter = bvNone
      Color = 10207162
      Enabled = False
      TabOrder = 2
      object Label2: TLabel
        Left = 5
        Top = 1
        Width = 95
        Height = 13
        Caption = 'Apellidos y Nombres'
      end
      object EdtNomGen: TEdit
        Left = 4
        Top = 15
        Width = 389
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
        OnKeyPress = EdtCodModKeyPress
      end
    end
    object Panel1: TPanel
      Left = 156
      Top = 58
      Width = 621
      Height = 95
      BevelOuter = bvNone
      Color = 10207162
      Enabled = False
      TabOrder = 3
      object Label3: TLabel
        Left = 11
        Top = 6
        Width = 28
        Height = 13
        Caption = 'D.N.I.'
      end
      object Label5: TLabel
        Left = 119
        Top = 6
        Width = 90
        Height = 13
        Caption = 'Cuenta De Ahorros'
      end
      object Label9: TLabel
        Left = 247
        Top = 7
        Width = 44
        Height = 13
        Caption = 'Situaci'#243'n'
      end
      object Label6: TLabel
        Left = 426
        Top = 7
        Width = 141
        Height = 13
        Caption = 'Resoluci'#243'n De Nombramiento'
      end
      object Label7: TLabel
        Left = 11
        Top = 48
        Width = 19
        Height = 13
        Caption = 'Use'
      end
      object Label8: TLabel
        Left = 278
        Top = 49
        Width = 86
        Height = 13
        Caption = 'Lugar De Proceso'
      end
      object EdtDNI: TEdit
        Left = 8
        Top = 20
        Width = 106
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtCtaAho: TEdit
        Left = 117
        Top = 20
        Width = 125
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtSitCta: TEdit
        Left = 246
        Top = 20
        Width = 28
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtSitDes: TEdit
        Left = 274
        Top = 20
        Width = 150
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtNumRes: TEdit
        Left = 426
        Top = 20
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
        TabOrder = 4
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtFecRes: TEdit
        Left = 510
        Top = 20
        Width = 111
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtCodUse: TEdit
        Left = 8
        Top = 63
        Width = 32
        Height = 25
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtDesUse: TEdit
        Left = 40
        Top = 63
        Width = 233
        Height = 25
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtCodLug: TEdit
        Left = 275
        Top = 63
        Width = 43
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
        TabOrder = 8
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtDesLug: TEdit
        Left = 318
        Top = 63
        Width = 303
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
        TabOrder = 9
        OnKeyPress = EdtCodModKeyPress
      end
    end
    object Panel3: TPanel
      Left = 160
      Top = 150
      Width = 283
      Height = 45
      BevelOuter = bvNone
      Color = 10207162
      Enabled = False
      TabOrder = 4
      object Label10: TLabel
        Left = 132
        Top = 2
        Width = 86
        Height = 13
        AutoSize = False
        Caption = 'Tipo De Beneficio '
      end
      object Label4: TLabel
        Left = 5
        Top = 2
        Width = 85
        Height = 13
        Caption = 'Tipo De Asociado'
      end
      object edtLiquidado: TEdit
        Left = 132
        Top = 15
        Width = 139
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtTipAso: TEdit
        Left = 5
        Top = 15
        Width = 33
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
        OnKeyPress = EdtCodModKeyPress
      end
      object EdtDesAso: TEdit
        Left = 38
        Top = 15
        Width = 91
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
        OnKeyPress = EdtCodModKeyPress
      end
    end
    object BitAsociado: TBitBtn
      Left = 647
      Top = 163
      Width = 129
      Height = 30
      Cursor = crHandPoint
      Caption = 'Asociado'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitAsociadoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
    object BitAutDes: TBitBtn
      Left = 723
      Top = 15
      Width = 22
      Height = 30
      Cursor = crHandPoint
      Hint = 'Autorizaci'#243'n de Descuentos'
      Caption = 'Aut.Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
      OnClick = BitAutDesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 193
    Width = 786
    Height = 323
    Color = 10207162
    ParentColor = False
    TabOrder = 1
    object BitSalir: TBitBtn
      Left = 656
      Top = 288
      Width = 91
      Height = 27
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object BitReprograma: TBitBtn
      Left = 254
      Top = 288
      Width = 95
      Height = 27
      Caption = 'Refinanciar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitReprogramaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F77777FFF333333009999900
        3333333777777777FF33330998FFF899033333777333F3777FF33099FFFCFFF9
        903337773337333777F3309FFFFFFFCF9033377333F3337377FF098FF0FFFFFF
        890377F3373F3333377F09FFFF0FFFFFF90377F3F373FFFFF77F09FCFFF90000
        F90377F733377777377F09FFFFFFFFFFF90377F333333333377F098FFFFFFFFF
        890377FF3F33333F3773309FCFFFFFCF9033377F7333F37377F33099FFFCFFF9
        90333777FF37F3377733330998FCF899033333777FF7FF777333333009999900
        3333333777777777333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitGenCrono: TBitBtn
      Left = 47
      Top = 288
      Width = 90
      Height = 27
      Caption = 'Cronograma'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = BitGenCronoClick
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
    object PageControl1: TPageControl
      Left = 8
      Top = 8
      Width = 769
      Height = 273
      ActivePage = TabSheet1
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Saldos    '
        object BitBtn1: TBitBtn
          Left = 616
          Top = 202
          Width = 121
          Height = 27
          Caption = 'Cronogras En Bloque'
          Enabled = False
          TabOrder = 1
          Visible = False
        end
        object dtgPrestamos: TwwDBGrid
          Left = 1
          Top = 5
          Width = 758
          Height = 230
          Cursor = crHandPoint
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          OnDrawDataCell = dtgPrestamosDrawDataCell
          OnDblClick = dtgPrestamosDblClick
          OnKeyPress = dtgPrestamosKeyPress
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Historico     '
        ImageIndex = 1
        object dtgHistoricos: TwwDBGrid
          Left = 1
          Top = 5
          Width = 758
          Height = 230
          Cursor = crHandPoint
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
          DataSource = DM1.dsSolicitudA
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          OnDrawDataCell = dtgHistoricosDrawDataCell
          OnDblClick = dtgHistoricosDblClick
        end
      end
    end
    object BitAnulaRep: TBitBtn
      Left = 469
      Top = 288
      Width = 89
      Height = 27
      Hint = 'Anular Reprogramados'
      Caption = 'Anular'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = BitAnulaRepClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object BitMstApo: TfcShapeBtn
      Left = 364
      Top = 288
      Width = 89
      Height = 27
      Cursor = crHandPoint
      Hint = 'Mostrar Aportes'
      Caption = 'Aportes'
      Color = clScrollBar
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FEFEFE3229293E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E
        2E3E2E2E3A29296F6F6FFFFFFFF7F7F7372F2F3B848497FFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF97FFFF3B2A2AFEFEFE2F2F2F
        FFFFFF2668688FFFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F2A2222928A8A7F6F6F2F70708FFFFF8FFFFF87FFFF87
        FFFF87FFFF8FFFFF87FFFF8FFFFF87FFFF8FFFFF8FFFFF3F2F2F3F878797E1E1
        8FD3D397D3D38FFFFF2FB5B597FFFF8FB5B58FFFFF2FB5B597FFFF37676797C4
        C42F5F5F9FD3D33F3737488F8F481D1D3F87873F14149FD3D34878783F70703F
        70709FFFFF3768689FFFFF000B0B9FFFFF48D3D337D3D3483737508787007878
        50D3D300707048CBCB00686850D3D300828248E1E13700009FD3D3000B0BA6D3
        D3000000A6DADA3F37373F78789FFFFF8FFFFF97FFFF8FFFFF97FFFF99FFFF2A
        06064A282897FFFF87FFFF97FFFF87FFFF97FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF87FFFF8FFFFF8FFFFF9BFFFF827262000000A6FFFF8FFFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF8FFFFF3FDAD33F1D0000007300
        008A00009A00001448877397FFFF87FFFF87FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF97FFFF000000A6A6FF0000FF00006F0000B800009100005B3F786C8FFF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF97FFFF000000FFF8FF3F3F3300
        00E100004F00006700005F3F786C8FFFFF87FFFF8FFFFF3F2F2F48808097FFFF
        8FFFFF8FFFFFA6E1DA26776FB0A8890000E100008B605033488E839FFFFF8FFF
        FF8FFFFF97FFFF372626001D1D2F6F6F266767266767266F6F4A98942F263700
        001350486F004A2C488E8E2667672667672667671D6767878080FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1D14005A5AFF0000FF0000FF0000B1807864FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1D300006F00
        007700007B3F3F48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitMstApoClick
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
    Left = 507
    Top = 356
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
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
      object ppMemo3: TppMemo
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
            'apital, inter'#233's y dem'#225's conceptos que se deriven del (los) cr'#233'di' +
            'tos(s) que a la fecha, me ha otorgado Derrama Magisterial, por l' +
            'a suma total de S/'#8230#8230#8230#8230#8230'..(                                      ' +
            '               ), en un plazo de     meses, por un importe de S/' +
            #8230#8230#8230#8230'c/u.'
          ''
          
            'La presente, sustituye, de ser el caso, a cualquier autorizaci'#243'n' +
            ' anterior y s'#243'lo podr'#225' ser revocada, por EL TITULAR, previa auto' +
            'rizaci'#243'n escrita y remitida por la Derrama Magisterial a la     ' +
            '                                             '
          ''
          ''
          
            '                                                                ' +
            '        Muy atentamente,'
          ''
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
        mmHeight = 4657
        mmLeft = 62706
        mmTop = 184944
        mmWidth = 87577
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
        mmTop = 190500
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
      object lblDirReg03: TppLabel
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
      object lblCargo: TppLabel
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
        mmTop = 194998
        mmWidth = 21167
        BandType = 0
      end
      object lblDireccion: TppLabel
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
        mmTop = 199496
        mmWidth = 152400
        BandType = 0
      end
      object lblTelefono: TppLabel
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
        mmTop = 203994
        mmWidth = 47625
        BandType = 0
      end
      object lblDirReg04: TppLabel
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
      object lblDirReg05: TppLabel
        UserName = 'lblDirReg05'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 14288
        mmTop = 249767
        mmWidth = 88106
        BandType = 0
      end
      object lblMonto: TppLabel
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
        mmLeft = 17198
        mmTop = 118269
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
        mmLeft = 19315
        mmTop = 123031
        mmWidth = 11377
        BandType = 0
      end
      object lblPlazo: TppLabel
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
      object lblNunLetras: TppLabel
        UserName = 'lblNunLetras'
        AutoSize = False
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 40217
        mmTop = 118798
        mmWidth = 73819
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
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '10.10.10.41'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 292
    Top = 23
  end
end
