object FRegNAbono: TFRegNAbono
  Left = 103
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registro Nota Abono'
  ClientHeight = 536
  ClientWidth = 689
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCabecera: TPanel
    Left = 5
    Top = 4
    Width = 677
    Height = 524
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 7
      Width = 221
      Height = 27
      Caption = 'Registro Nota de Abono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 296
      Top = 16
      Width = 73
      Height = 17
      DataField = 'NAITEM'
      DataSource = DM1.dsRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlDocumentos: TPanel
      Left = 222
      Top = 235
      Width = 668
      Height = 307
      BorderStyle = bsSingle
      Color = 10207162
      TabOrder = 2
      Visible = False
      object Panel3: TPanel
        Left = 1
        Top = 22
        Width = 662
        Height = 280
        Align = alBottom
        BevelOuter = bvNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object TLabel
          Left = 10
          Top = 59
          Width = 51
          Height = 15
          Caption = 'Unid Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 322
          Top = 7
          Width = 99
          Height = 15
          Caption = 'Forma Recaudaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblUnidadProceso: TLabel
          Left = 8
          Top = 10
          Width = 51
          Height = 30
          Caption = 'Unidad de Proceso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object gbComprobante: TGroupBox
          Left = 3
          Top = 83
          Width = 327
          Height = 194
          Caption = 'Comprobante de Pago'
          TabOrder = 6
          object TLabel
            Left = 5
            Top = 21
            Width = 95
            Height = 15
            Caption = 'Nro Comp. de Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 118
            Top = 21
            Width = 30
            Height = 15
            Caption = 'Fecha'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 8
            Top = 64
            Width = 40
            Height = 15
            Caption = 'Moneda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 7
            Top = 108
            Width = 61
            Height = 15
            Caption = 'Monto Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 112
            Top = 108
            Width = 54
            Height = 15
            Caption = 'Deducci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 103
            Top = 150
            Width = 107
            Height = 15
            AutoSize = False
            Caption = 'Concepto Comp. Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object MtoLiq: TLabel
            Left = 6
            Top = 152
            Width = 73
            Height = 15
            Caption = 'Monto L'#237'quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 217
            Top = 108
            Width = 100
            Height = 15
            Caption = 'Nro Doc.Deducci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 209
            Top = 64
            Width = 20
            Height = 15
            Caption = 'A'#241'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 288
            Top = 64
            Width = 21
            Height = 15
            Caption = 'Mes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dbeCPagoNum: TwwDBEdit
            Left = 9
            Top = 40
            Width = 89
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbdtpCPagoFecha: TwwDBDateTimePicker
            Left = 116
            Top = 38
            Width = 94
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ShowButton = True
            TabOrder = 1
          end
          object edtMonedaC: TEdit
            Left = 51
            Top = 83
            Width = 148
            Height = 21
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dblcdMonedaC: TwwDBLookupCombo
            Left = 8
            Top = 83
            Width = 40
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'TMONID'#9'2'#9'ID'#9'F'
              'TMONDES'#9'30'#9'Moneda'#9'F')
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsTMoneda
            LookupField = 'TMONID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object dbeCPagoTotal: TwwDBEdit
            Left = 6
            Top = 125
            Width = 92
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeDeduccion: TwwDBEdit
            Left = 109
            Top = 125
            Width = 93
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeCPagoConcepto: TwwDBEdit
            Left = 103
            Top = 166
            Width = 214
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeMtoLiq: TwwDBEdit
            Left = 8
            Top = 168
            Width = 89
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeNroDocDeduccion: TwwDBEdit
            Left = 216
            Top = 125
            Width = 101
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeAno: TwwDBEdit
            Left = 206
            Top = 81
            Width = 61
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dbeMes: TwwDBEdit
            Left = 283
            Top = 81
            Width = 33
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object dblcdUPago: TwwDBLookupComboDlg
          Left = 69
          Top = 56
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Unidad de Pago'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'UPAGOID'#9'3'#9'ID'#9'F'
            'UPAGONOM'#9'65'#9'UNIDAD DE PAGO'#9'F')
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsUPago
          LookupField = 'UPAGOID'
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          UseTFields = False
        end
        object edtUPago: TEdit
          Left = 127
          Top = 56
          Width = 184
          Height = 21
          CharCase = ecUpperCase
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dblcFRecaudacion: TwwDBLookupCombo
          Left = 425
          Top = 4
          Width = 52
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FORPAGOABR'#9'4'#9'ID'#9'F'
            'FORPAGODES'#9'35'#9'DESCRIPCION'#9'F')
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsFormaPago
          LookupField = 'FORPAGOABR'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 4
          AutoDropDown = True
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object edtFRecaudacion: TEdit
          Left = 477
          Top = 4
          Width = 178
          Height = 21
          CharCase = ecUpperCase
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object gbCheque: TGroupBox
          Left = 333
          Top = 33
          Width = 325
          Height = 200
          Caption = 'Datos del Documento'
          TabOrder = 7
          object TLabel
            Left = 6
            Top = 21
            Width = 104
            Height = 15
            Caption = 'Tipo de Transacci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 6
            Top = 62
            Width = 31
            Height = 15
            Caption = 'Banco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblNCta: TLabel
            Left = 247
            Top = 101
            Width = 40
            Height = 15
            Caption = 'Nro Cta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            Visible = False
          end
          object TLabel
            Left = 159
            Top = 107
            Width = 33
            Height = 15
            Caption = 'Fecha '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 8
            Top = 106
            Width = 88
            Height = 15
            Caption = 'N'#176' de Documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object TLabel
            Left = 6
            Top = 149
            Width = 40
            Height = 15
            Caption = 'Moneda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 221
            Top = 149
            Width = 32
            Height = 15
            Caption = 'Monto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object edtFPago: TEdit
            Left = 51
            Top = 38
            Width = 261
            Height = 21
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dblcFPago: TwwDBLookupCombo
            Left = 14
            Top = 38
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'FPAGOID'#9'2'#9'Id'#9'F'
              'FPAGODES'#9'30'#9'Descripci'#243'n'#9'F')
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsFPago
            LookupField = 'FPAGOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object dblcChqBanco: TwwDBLookupCombo
            Left = 6
            Top = 79
            Width = 42
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'BANCOID'#9'2'#9'ID'#9'F'
              'BANCONOM'#9'40'#9'Banco'#9'F')
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsBcos
            LookupField = 'BANCOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object edtChqBanco: TEdit
            Left = 52
            Top = 79
            Width = 262
            Height = 21
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dbeChqCuenta: TwwDBEdit
            Left = 256
            Top = 124
            Width = 93
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 4
            UnboundDataType = wwDefault
            Visible = False
            WantReturns = False
            WordWrap = False
          end
          object dbdtpChqFecha: TwwDBDateTimePicker
            Left = 162
            Top = 125
            Width = 91
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ShowButton = True
            TabOrder = 6
          end
          object dbeChqNum: TwwDBEdit
            Left = 8
            Top = 126
            Width = 145
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dblcChqMoneda: TwwDBLookupCombo
            Left = 6
            Top = 166
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'TMONID'#9'2'#9'ID'#9'F'
              'TMONDES'#9'30'#9'Moneda'#9'F')
            DataSource = DM1.dsDetRegCob
            LookupTable = DM1.cdsTMoneda
            LookupField = 'TMONID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object edtChqMoneda: TEdit
            Left = 50
            Top = 166
            Width = 150
            Height = 21
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object dbeChqMonto: TwwDBEdit
            Left = 220
            Top = 166
            Width = 85
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataSource = DM1.dsDetRegCob
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object bbtnAceptar: TfcShapeBtn
          Left = 570
          Top = 242
          Width = 32
          Height = 31
          Hint = 'Graba Aporte'
          Color = 10207162
          Default = True
          DitherColor = clWhite
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
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsRoundRect
          ShowHint = True
          TabOrder = 8
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
        end
        object bbtnCancelar: TfcShapeBtn
          Left = 612
          Top = 241
          Width = 32
          Height = 31
          Hint = 'Cierra Panel'
          Color = 10207162
          DitherColor = clWhite
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
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsHighlight
          Shape = bsRoundRect
          ShowHint = True
          TabOrder = 9
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
        end
        object dblcUProceso: TwwDBLookupCombo
          Left = 71
          Top = 14
          Width = 51
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'UPROID'#9'4'#9'ID'#9'F'
            'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
          DataSource = DM1.dsDetRegCob
          LookupTable = DM1.cdsUPro
          LookupField = 'UPROID'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SearchDelay = 2
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object edtUProceso: TEdit
          Left = 127
          Top = 14
          Width = 187
          Height = 23
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 662
        Height = 18
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'Detalle'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlInicio: TPanel
      Left = 9
      Top = 44
      Width = 659
      Height = 206
      BorderWidth = 1
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Bevel1: TBevel
        Left = 5
        Top = 76
        Width = 642
        Height = 59
      end
      object TLabel
        Left = 7
        Top = 286
        Width = 76
        Height = 15
        Caption = 'Observaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblNOpera: TLabel
        Left = 448
        Top = 46
        Width = 71
        Height = 15
        Caption = 'N'#176' Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblFORecepDoc: TLabel
        Left = 213
        Top = 15
        Width = 81
        Height = 15
        Caption = 'Fec. Recep. Doc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 530
        Top = 273
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblFOpera: TLabel
        Left = 9
        Top = 15
        Width = 78
        Height = 15
        Caption = 'Fec. Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 299
        Top = 272
        Width = 40
        Height = 15
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblMonto: TLabel
        Left = 281
        Top = 46
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblNOpeCargo: TLabel
        Left = 372
        Top = 99
        Width = 71
        Height = 15
        Caption = 'N'#176' Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblMontoCargo: TLabel
        Left = 213
        Top = 99
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblTitCargo: TLabel
        Left = 12
        Top = 78
        Width = 78
        Height = 16
        Alignment = taCenter
        Caption = 'Nota de Cargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFOpeCargo: TLabel
        Left = 13
        Top = 99
        Width = 78
        Height = 15
        Caption = 'Fec. Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblMon: TLabel
        Left = 9
        Top = 46
        Width = 40
        Height = 15
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbdtpFOpe: TwwDBDateTimePicker
        Left = 304
        Top = 15
        Width = 99
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'NAFREGDOC'
        DataSource = DM1.dsRegCob
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 1
      end
      object dbdtpFRecepcion: TwwDBDateTimePicker
        Left = 98
        Top = 15
        Width = 106
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'NAFDOC'
        DataSource = DM1.dsRegCob
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 0
        OnExit = dbdtpFRecepcionExit
      end
      object dbeNumOpe: TwwDBEdit
        Left = 525
        Top = 46
        Width = 121
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'NANRO'
        DataSource = DM1.dsRegCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 10
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeMonto: TwwDBEdit
        Left = 322
        Top = 46
        Width = 111
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'NAMONTO'
        DataSource = DM1.dsRegCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object bbtnClear: TfcShapeBtn
        Left = 611
        Top = 156
        Width = 32
        Height = 31
        Hint = 'Registrar Aportes'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        Layout = blGlyphTop
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 12
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        Visible = False
        OnClick = bbtnClearClick
      end
      object bbtnSigue: TfcShapeBtn
        Left = 568
        Top = 155
        Width = 32
        Height = 31
        Hint = 'Registrar Aportes'
        Color = 10207162
        DitherColor = clWhite
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
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 11
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnSigueClick
      end
      object dbeNOpeCar: TwwDBEdit
        Left = 450
        Top = 99
        Width = 101
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'CANRO'
        DataSource = DM1.dsRegCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 10
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeMontoCar: TwwDBEdit
        Left = 256
        Top = 99
        Width = 100
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'CAMONTO'
        DataSource = DM1.dsRegCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbdtpFRecCar: TwwDBDateTimePicker
        Left = 99
        Top = 99
        Width = 102
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'CAFDOC'
        DataSource = DM1.dsRegCob
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 7
      end
      object dblctmoneda: TwwDBLookupCombo
        Left = 58
        Top = 46
        Width = 45
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TMONID'#9'3'#9'Id'#9'F'
          'TMONDES'#9'25'#9'Tipo Moneda'#9'F')
        DataField = 'TMONID'
        DataSource = DM1.dsRegCob
        LookupTable = DM1.cdsTMoneda
        LookupField = 'TMONID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblctmonedaExit
      end
      object dbemoneda: TwwDBEdit
        Left = 111
        Top = 46
        Width = 143
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbObs: TDBMemo
        Left = 10
        Top = 144
        Width = 543
        Height = 52
        DataField = 'NAOBS'
        DataSource = DM1.dsRegCob
        TabOrder = 10
      end
      object rgTipo: TRadioGroup
        Left = 414
        Top = 1
        Width = 232
        Height = 36
        Caption = 'Tipo de Nota  Abono'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Provisional'
          'Banco')
        TabOrder = 2
        OnClick = rgTipoClick
      end
    end
    object Z2bbtnSalir: TfcShapeBtn
      Left = 635
      Top = 472
      Width = 31
      Height = 31
      Hint = 'Salir'
      Color = 13165023
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnSalirClick
    end
    object dbgDetRegGlobal: TwwDBGrid
      Left = 6
      Top = 258
      Width = 666
      Height = 214
      DisableThemesInTitle = False
      Selected.Strings = (
        'UPAGOID'#9'6'#9'Unidad~Pago'#9'F'
        'FORPAGOID'#9'6'#9'Forma~Recaud.'#9'F'
        'CPAGOID'#9'11'#9'Comprobante ~de Pago'#9'F'
        'CPAGOFECHA'#9'12'#9'Comprob. Pago~Fecha'#9'F'
        'CPAGOTMON'#9'7'#9'Comprob.~T. Mon.'#9'F'
        'CPAGOMTO'#9'12'#9'Comprob. Pago~Monto'#9'F'
        'CPAGODEDUC'#9'12'#9'Comprob. Pago~Deduccci'#243'n'#9'F'
        'CPAGOLIQ'#9'12'#9'Comprob. Pago~Monto Liquido'#9'F'
        'DOCMTO'#9'12'#9'Documento~Monto'#9'F'
        'CPAGOCPTO'#9'15'#9'Comprob. Pago~Concepto'#9'F'
        'FPAGOID'#9'12'#9'Docuemnto~Forma de Pago'#9'F'
        'BANCOID'#9'9'#9'Documento~Banco'#9'F'
        'CCBCO'#9'18'#9'Documento~Cuenta Corriente'#9'F'
        'DOCID'#9'13'#9'N'#176' Documento '#9'F'
        'DOCFECHA'#9'10'#9'Documento~Fecha'#9'F'
        'TMONID'#9'9'#9'Documento~Moneda'#9'F'
        'USUARIO'#9'12'#9'Usuario'#9'F'
        'FREG'#9'11'#9'Fecha ~de Registro'#9'F'
        'HREG'#9'20'#9'Hora ~de Registro'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsDetRegCob
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      object bbtnNuevo: TwwIButton
        Left = 0
        Top = 0
        Width = 36
        Height = 36
        AllowAllUp = True
        Enabled = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object pnlTop: TPanel
      Left = 389
      Top = 5
      Width = 280
      Height = 36
      BorderWidth = 1
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TLabel
        Left = 530
        Top = 273
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblPeriodo: TLabel
        Left = 4
        Top = 9
        Width = 39
        Height = 15
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblMes: TLabel
        Left = 194
        Top = 9
        Width = 21
        Height = 15
        Caption = 'Mes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object llblAno: TLabel
        Left = 66
        Top = 9
        Width = 20
        Height = 15
        Caption = 'A'#241'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object sbAno: TwwDBSpinEdit
        Left = 95
        Top = 5
        Width = 66
        Height = 21
        TabStop = False
        Increment = 1.000000000000000000
        MaxValue = 3000.000000000000000000
        MinValue = 1900.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'NAANO'
        DataSource = DM1.dsRegCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 4
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object sbMes: TwwDBSpinEdit
        Left = 232
        Top = 5
        Width = 36
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'NAMES'
        DataSource = DM1.dsRegCob
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        TabOrder = 1
        UnboundDataType = wwDefault
        OnExit = sbMesExit
      end
    end
    object gbReemplazo: TGroupBox
      Left = 6
      Top = 472
      Width = 227
      Height = 48
      Caption = 'Reemplazo de Nota Provisional'
      TabOrder = 5
      object Z2bbtnCierra: TfcShapeBtn
        Left = 171
        Top = 13
        Width = 31
        Height = 31
        Hint = 'Reemplazar Nota de Abono Provisional'
        Color = 13165023
        DitherColor = clWhite
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
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsRoundRect
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        Visible = False
        OnClick = Z2bbtnCierraClick
      end
    end
  end
end
