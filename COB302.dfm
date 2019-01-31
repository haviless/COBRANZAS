object FLiquidRep: TFLiquidRep
  Left = 205
  Top = 83
  Width = 808
  Height = 608
  Caption = 'Cobranzas'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 16
    Width = 766
    Height = 513
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 14
      Top = 3
      Width = 277
      Height = 27
      Caption = 'Liquidaci'#243'n de Representantes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pcDatos: TPageControl
      Left = 7
      Top = 133
      Width = 745
      Height = 337
      ActivePage = TabSheet1
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Conceptos de la Liquidaci'#243'n'
        ImageIndex = 4
        object wwDBGrid3: TwwDBGrid
          Left = 4
          Top = 3
          Width = 717
          Height = 299
          DisableThemesInTitle = False
          Selected.Strings = (
            'TDIARID'#9'3'#9'TD'#9'F'
            'CPANOMES'#9'7'#9'Periodo'#9'F'
            'CPNOREG'#9'7'#9'No.Reg'#9'F'
            'lkDocID'#9'4'#9'Doc'#9'F'
            'CPSERIE'#9'5'#9'Serie'#9'F'
            'CPNODOC'#9'13'#9'No.Documento'#9'F'
            'CPFEMIS'#9'10'#9'Fecha~Emisi'#243'n'#9'F'
            'CPFVCMTO'#9'10'#9'Fecha~Vcmto'#9'F'
            'CPTCAMPR'#9'9'#9'T.Cambio~Provisi'#243'n'#9'F'
            'lkTMonID'#9'4'#9'TM'#9'F'
            'CPMTOORI'#9'8'#9'Total'#9'F'
            'CPSALLOC'#9'12'#9'Saldo Mon.~Local'#9'F'
            'CPSALEXT'#9'12'#9'Saldo Mon.~Extranjera'#9'F')
          MemoAttributes = [mSizeable, mWordWrap, mGridShow]
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete]
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          object wwIButton3: TwwIButton
            Left = 0
            Top = 0
            Width = 28
            Height = 28
            AllowAllUp = True
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
            OnClick = wwIButton3Click
          end
        end
        object pnlDocumentos: TPanel
          Left = 141
          Top = 82
          Width = 524
          Height = 169
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 1
          Visible = False
          object StaticText1: TStaticText
            Left = 1
            Top = 1
            Width = 518
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Conceptos'
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
          object Panel3: TPanel
            Left = 1
            Top = 20
            Width = 518
            Height = 144
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
              Left = 7
              Top = 9
              Width = 47
              Height = 15
              Caption = 'Concepto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              OnClick = bbtnCancelClick
            end
            object TLabel
              Left = 6
              Top = 37
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
              Left = 127
              Top = 37
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
              Left = 307
              Top = 39
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
            object TLabel
              Left = 7
              Top = 71
              Width = 65
              Height = 15
              Caption = 'Observaci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object bbtnAceptar: TfcShapeBtn
              Left = 430
              Top = 93
              Width = 28
              Height = 26
              Hint = 'Graba Aporte'
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
              NumGlyphs = 2
              Options = [boFocusable]
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsRaised
              Shape = bsRoundRect
              ShowHint = True
              TabOrder = 6
              TabStop = True
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
            end
            object bbtnCancelar: TfcShapeBtn
              Left = 472
              Top = 93
              Width = 28
              Height = 26
              Hint = 'Acepta Cabecera'
              Cancel = True
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
              TabOrder = 7
              TabStop = True
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
            end
            object dblcFPago: TwwDBLookupCombo
              Left = 55
              Top = 6
              Width = 41
              Height = 21
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'FPAGOID'#9'2'#9'ID'#9'F'
                'FPAGODES'#9'30'#9'Forma de Pago'#9'F')
              DataField = 'FPAGOID'
              DataSource = DM1.dsDetRegCob
              LookupTable = DM1.cdsFPago
              LookupField = 'FPAGOID'
              Options = [loColLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object edtFPago: TEdit
              Left = 96
              Top = 6
              Width = 135
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
            object dbdtpChqFecha: TwwDBDateTimePicker
              Left = 39
              Top = 34
              Width = 83
              Height = 21
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = 13165023
              DataField = 'DOCFECHA'
              DataSource = DM1.dsDetRegCob
              Epoch = 1950
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ShowButton = True
              TabOrder = 2
            end
            object dblcChqMoneda: TwwDBLookupCombo
              Left = 172
              Top = 34
              Width = 37
              Height = 21
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TMONID'#9'2'#9'ID'#9'F'
                'TMONDES'#9'30'#9'Moneda'#9'F')
              DataField = 'TMONID'
              DataSource = DM1.dsDetRegCob
              LookupTable = DM1.cdsTMoneda
              LookupField = 'TMONID'
              Options = [loColLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 3
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object edtChqMoneda: TEdit
              Left = 210
              Top = 34
              Width = 90
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
              Left = 343
              Top = 36
              Width = 65
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'DOCMTO'
              DataSource = DM1.dsDetRegCob
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeCPagoConcepto: TwwDBEdit
              Left = 76
              Top = 69
              Width = 414
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'CPAGOCPTO'
              DataSource = DM1.dsDetRegCob
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Documentos Enviados'
        ImageIndex = 3
        object Label1: TLabel
          Left = 360
          Top = 48
          Width = 108
          Height = 15
          Caption = 'Comprobante de Pago'
        end
        object Label2: TLabel
          Left = 360
          Top = 66
          Width = 95
          Height = 15
          Caption = 'Boleta de Deposito'
        end
        object Label3: TLabel
          Left = 360
          Top = 83
          Width = 105
          Height = 15
          Caption = 'Fotocopia de Cheque'
        end
        object Label4: TLabel
          Left = 360
          Top = 101
          Width = 48
          Height = 15
          Caption = 'Diskettes'
        end
        object Label5: TLabel
          Left = 360
          Top = 118
          Width = 37
          Height = 15
          Caption = 'Listado'
        end
        object wwDBGrid2: TwwDBGrid
          Left = 4
          Top = 3
          Width = 349
          Height = 299
          DisableThemesInTitle = False
          Selected.Strings = (
            'TDIARID'#9'3'#9'TD'#9'F'
            'CPANOMES'#9'7'#9'Periodo'#9'F'
            'CPNOREG'#9'7'#9'No.Reg'#9'F'
            'lkDocID'#9'4'#9'Doc'#9'F'
            'CPSERIE'#9'5'#9'Serie'#9'F'
            'CPNODOC'#9'13'#9'No.Documento'#9'F'
            'CPFEMIS'#9'10'#9'Fecha~Emisi'#243'n'#9'F'
            'CPFVCMTO'#9'10'#9'Fecha~Vcmto'#9'F'
            'CPTCAMPR'#9'9'#9'T.Cambio~Provisi'#243'n'#9'F'
            'lkTMonID'#9'4'#9'TM'#9'F'
            'CPMTOORI'#9'8'#9'Total'#9'F'
            'CPSALLOC'#9'12'#9'Saldo Mon.~Local'#9'F'
            'CPSALEXT'#9'12'#9'Saldo Mon.~Extranjera'#9'F')
          MemoAttributes = [mSizeable, mWordWrap, mGridShow]
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete]
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
        end
      end
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 387
      Top = 477
      Width = 32
      Height = 31
      Hint = 'Calcular Liquidaci'#243'n'
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
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object bbtnCancel: TfcShapeBtn
      Left = 428
      Top = 477
      Width = 32
      Height = 31
      Hint = 'Cancelar y Salir'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancelClick
    end
    object fcShapeBtn4: TfcShapeBtn
      Left = 323
      Top = 477
      Width = 53
      Height = 31
      Hint = 'Liquidaci'#243'n del Representante'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
        DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF00008F
        FF000073FF002557FF000055FF0000C9DC000089FF0000ABFF000074FF000076
        DD00D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002560FF0000A5FE00004A
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B9007400D1009700ED0032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000FFFBEF00E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600006648000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DB90000FF990000C98300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0032E1FF00D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000326400236E82003296C80028C2F00091F0FF0082FF
        FF00F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00FFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00FFFF0000FFFFFFFFFFFFFFFFFFEEF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        FFFFFFFF0000FFFFFFFFFFFFEEEEE4EAEA0000FFFFFFFFFFFFFFFFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFEEEEE4E4F8F2F2EAEA0000FFFFFFFFFFFFFFFFFFFF00
        000000000000FFFFFFEEE4E4F8F8E4E8EAF2F2EAEA0000FFFFFFFFFFFF000000
        00000000000000FFFFEAEAEAE4E4E4E8EAEAEAF2F2EA00FFFFFFFFFFFF000000
        00000000000000FFEAEAE4E4E4E4E2E8EAEAEAEAEAF2F2FFFFFFFFFF00000000
        00000000000000FFEAFFE4E4E2E2FFE8E8EAEAEAEAEAEA00FFFFFF0000000000
        00000000000000FFEAFFE2E2FFFFE4E4E4E8E8EAEAEAEAF2FFFFFFFF0000FF00
        000000000000FFFFEA00FFFFE4E4F9F9E4E4E4E8E8EAEAF2FFFFFFFFFF0000FF
        0000000000000000000000E4FAFAE4E4E4EEEEEB07E8E8F2FFFFFFFFFFFF0000
        00000000000000FFFF0000FFE4E4E4EEEEE7E7EE07F2F2FFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFEAEAFFEEE7E7E5E5E5EDFFFFEEEEFFFFFFFFFFFFFF
        FFFF0000000000FFFFFFFFFFFFEAEEE7E5E5E5E3E3EDEDE8EEFFFFFFFFFFFFFF
        FF00000000000000FFFFFFFFFFFFFFEDE5E3E3E3E7E7EBEDFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFFFFEDE3E7E7EBEBFFFFFFFFFFFFFFFF00FF
        00000000000000FFFFFFFFFFFFFFFFFFFFEBEBEBFFFFFFFFFFFFFFFFFFFFFF00
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn4Click
    end
    object Panel4: TPanel
      Left = 7
      Top = 35
      Width = 746
      Height = 86
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object TLabel
        Left = 7
        Top = 47
        Width = 113
        Height = 15
        Caption = 'Forma Representacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 107
        Top = 14
        Width = 84
        Height = 15
        Caption = 'Apellido Paterno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 320
        Top = 14
        Width = 88
        Height = 15
        Caption = 'Apellido Materno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label56: TLabel
        Left = 540
        Top = 14
        Width = 45
        Height = 15
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 283
        Top = 47
        Width = 35
        Height = 15
        Caption = 'Sueldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 410
        Top = 47
        Width = 63
        Height = 15
        Caption = 'Comisi'#243'n(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 8
        Top = 16
        Width = 35
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcFormaRepr: TwwDBLookupCombo
        Left = 123
        Top = 44
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FORREPRID'#9'2'#9'ID'#9'F'
          'FORREPRDES'#9'30'#9'Forma de Representaci'#243'n'#9'F')
        DataField = 'FORREPRID'
        DataSource = DM1.dsRepresentante
        LookupTable = DM1.cdsFRepr
        LookupField = 'FORREPRID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object edtFormaRepr: TEdit
        Left = 164
        Top = 44
        Width = 113
        Height = 23
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object wwDBEdit1: TwwDBEdit
        Left = 194
        Top = 12
        Width = 121
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'REPRAPEPAT'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 413
        Top = 12
        Width = 124
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'REPRAPEMAT'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNombres: TwwDBEdit
        Left = 587
        Top = 12
        Width = 150
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'REPRNOMBRES'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeSueldo: TwwDBEdit
        Left = 320
        Top = 45
        Width = 83
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRSUELDO'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeComision: TwwDBEdit
        Left = 479
        Top = 45
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRCOMIS'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object bbtnClear: TfcShapeBtn
        Left = 645
        Top = 43
        Width = 30
        Height = 28
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
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
      object bbtnSigue: TfcShapeBtn
        Left = 690
        Top = 43
        Width = 30
        Height = 28
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
        TabOrder = 8
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 46
        Top = 11
        Width = 56
        Height = 21
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        WordWrap = False
        UnboundDataType = wwDefault
      end
    end
  end
  object ppRepLiqRep: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepLiqRep'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm) '
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 37
    Top = 496
    Version = '7.02'
    mmColumnWidth = 0
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 102306
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 6703
        mmWidth = 10231
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 10936
        mmWidth = 7761
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 15169
        mmWidth = 11994
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'LIQUIDACION POR PAGO DE COMISION Y GASTOS A REPRESENTANTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 13406
        mmLeft = 38100
        mmTop = 37042
        mmWidth = 137584
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 6703
        mmWidth = 22578
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        AutoSize = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 10936
        mmWidth = 27164
        BandType = 1
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 159456
        mmTop = 15169
        mmWidth = 7761
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 3881
        mmTop = 67028
        mmWidth = 16933
        BandType = 1
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 45508
        mmTop = 67028
        mmWidth = 16933
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 22225
        mmTop = 67028
        mmWidth = 17286
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 66322
        mmTop = 67028
        mmWidth = 75142
        BandType = 1
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        AutoSize = True
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765D70D0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108005C009103012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A2B0BC47E32D03C25F66FEDCBFF00B27DAB7793FB9924DDB7
          1BBEE29C6370EBEB5C8689E1A5F19D84BE218FC65E298A1BDBCBA6852D350314
          42213C8A9B50AE546D55E0D007A6515C2FFC2B3FFA9DFC69FF00836FFEC28974
          0BFF0005D84FACD9F8A35ABF82D71717B6BAACCB72B2DBA063208CED051F6925
          482012A0371C800EEA8AF33D2743D63C7A92F89351F126BBA558DDB7FC4B2C74
          E98DA98EDC13B5A5041DCEDD72323182090405D2FF008567FF0053BF8D3FF06D
          FF00D850077545799F88BC072E91E19D5752B7F1AF8C5A6B4B39AE2359355254
          B221600E141C647AD775A7F88B44D5EE1ADF4DD634FBD99577B476D7492305C8
          19214938C91CFBD0069514514005145140051451400514514005145140051457
          11E31D4B5D8BC67E12D1F46D512C13506BA69CC96CB32B88915C29070707E61F
          2B29F9BAF02803C87E3678C74FF126AF6BA6D9C3751CDA3CF756F70D32A8566D
          C8B94C3124650F503B57ADFC1BFF009253A2FF00DB7FFD1F257CD3E2F12AF8D7
          5E5B8749261A8DC091E3428ACDE636485249033DB271EA6BE96F837FF24A745F
          FB6FFF00A3E4A00EEAB0BC6DFF00221788BFEC1973FF00A29AB76B0BC6DFF221
          788BFEC1973FFA29A800F04FFC885E1DFF00B065B7FE8A5ADDAC2F04FF00C885
          E1DFFB065B7FE8A5ADDA00C2F1B7FC885E22FF00B065CFFE8A6AF9D7E0EF8974
          8F0AF8BAEEFB5ABBFB2DB4960F0ABF96EF97324640C2827A29FCABE8AF1B7FC8
          85E22FFB065CFF00E8A6AF8CE803EE2B2BCB7D46C2DAFAD24F32DAE6259A27C1
          1B918020E0F23823AD4F5E5FE15D63C57A25C7823C3FACC3A625B6A36B246B1C
          50CAB3C31C36EACBBCB3603E4E186DC0C1E79E3D42800A28A2800A28A2800A28
          A2800A28A2800AE17C53FF00255BC01FF711FF00D10B5DD564F88744FEDCB08E
          38AF26B1BCB7945C59DDC27E68650080C57A3A90CCA54F04311EE003E5BF895E
          1FD5745F1AEA771A8D9BC10EA17971716B212196543231041048CE08C83C8C8C
          81915F407C1BFF009253A2FF00DB7FFD1F2569681AA45E2DD3750D2B5ED3AD7E
          DF613FD9B50B29103C4EC30CB2AABF3E5BF0CA58763D71938569A668DA25CDFE
          9335B7892DECAD2709A7C7A7FF006898842D1A3B7CD0F0C7CD79B9625BB74000
          00F45AC2F1B7FC885E22FF00B065CFFE8A6AE7A6B8F095B2092EEEFC55690EE5
          433DD4FAB4312162146E77215464819240A5F1C7852287C15AC5CD86ABABDB4D
          0594F23799A8CF711CA9E53068D925765C104F20020E083C7201D07827FE442F
          0EFF00D832DBFF00452D6ED799F863C21AAEBBE0AD0A7D4FC55ABD9016711B6B
          7D1A716F1C70F9681431DA59DC850C493805885007279EBDBBF04E9D7F736377
          F14BC691DCDB4AD0CA9F6B98ED75241191160F20F4A00F50F1B7FC885E22FF00
          B065CFFE8A6AF8FB4CD32F759D4ADF4ED3AD9EE6EEE1B647127527F900064927
          8001278AF5BD6AE7C39A968B7965E1DF1F78D358D56688AC1605E7985C7F7959
          0A2E576EECF3C0C9C36307D52CF4CF0AFC2CF0D5C4D04696D16DDD23C920335D
          C8A84850588DCE70D841819270064D0073FF0064B9D37C51F09EC2E90C5716F6
          1750CC9B81C32DAA0232383823B57A7D727E1CD22EF51BB87C55E214FF00899C
          B17FA1D91076699138FB801009948C6F7201FE11851CF5940051451400514514
          00514514005145140051451401CF788BC30DAB5C43A9699A83E91ADDBA98E2BF
          8A25933113F347221E244EE01FBAD823BE68CBE2BBFF000EDEC56BE2AB144B59
          5B09ACD92B7D9572C401306C980F318C92CA4B1F980071D7D14011C13C5736F1
          DC5BCA92C32A878E48D832BA9190411C10477AC6F1B7FC885E22FF00B065CFFE
          8A6AC2D1BC3DE21F0DF8835EB8D2F4ED146957F2C4D6D64B7D240906C4D85822
          C05433E149C7A632D8CD5ED6E0F15EB1A0EA3A5FF6568B0FDB2D65B7F33FB565
          6D9BD4AE71F6719C6738C8A00BFE09FF00910BC3BFF60CB6FF00D14B5BB5C9E8
          9078AF47D074ED2FFB2B459BEC76B15BF99FDAB2AEFD8A1738FB39C6719C64D5
          1F14F87FC49E30B4B0D32FAD34CB4D356FE19EF561D4E673710A93BA3C0853AE
          411CF551F50005F7C498E7D58E95E13D227F12DD47B4CD2DACCA96B102ACC019
          8E5777CA3DB9233B86DA346F046A777AF41E22F1A6A50EA7A85B6EFB159C11ED
          B5B22589DCB9C176C6DC330C8C72588523B3B3B2B4D3AD12D2C6D61B5B68F3B2
          1823088B9393851C0E493F8D4F40051451400514514005145140051451401E77
          A9472EABF1B1747B8BED4934F5F0E0BA16F6B7F35BAF9BF692BBCF96EB93B4E3
          F2F415C35FF8F3C5B6315B787AC2FEFA4920D6750D385E5BE9EB7D7D2C36CB19
          4CA315576FDE1DCD8070A0F5CEEF5FD5FC17E1ED7B554D4F53D3C5C5D24490E5
          A69023C6AFE62A3A060AEBBF0D86041207A0A8B57F0178575DD32D74DBFD0ED1
          ACED599EDE2854C2222DCB6D31952012724742704F205007947827E2178EEFFC
          4769A6C9749A90B8D4E4B69E2D4AC12CE5B782131F98C9B5955A5DB212D18DEC
          9E5E7041C9D1F84DF13B54D6E3BF1E21D512E63B2B296F6EE492D6389E10ACA1
          42796F9913687627CB054903272B5E8167F0E3C2361059C36FA346AB657BF6FB
          72D2C8CD1CDF2FCC18B138F9132B9DA768C8E293FE15BF8516C21B28F4B68608
          6DE4B55F22EA68D9A1918BBC6CCAE19D0B1276B12064E3AD0079A597C5EF104D
          F0E7C45797526929ADDAC30DCD9BDBCF1C9FBA9E5D9CC618ED68B70186E794DC
          3392DD3F87FE25EA9AFF0088FC3BA6C7A6C11452C463D699F892DAEF64F88826
          ECA7CD6CE7E6DC76B2E769C67ACD67C07E19D7D615D43498D961B716AAB0C8F0
          0F24306119F2CAEE40CA08539008C8C5493782BC373B5F3BE93006BF95A6BA68
          F28657689E1624A91D524718E99766FBC49A00E3BE1B7C4AB8F18789B54B2B97
          81EDE789AFF4E485407B681653098E7E4E243847C73F7C9CE0A81CB78BB5DF11
          68FF001375DD7ADF56D48E8BA05E69DF6CD3E29731B5BCF16242119829390000
          0757DD918CD7B0A7863474B8D1A75B4C4BA2C4D0E9EDE6BFEE5190211D7E6F95
          40F9B3D3D6A44F0F69297DAADE7D8A379B56448EFBCC25D6754528AA5492B8DA
          48C01CE79CD007905A7C41D6B4FF0019EADE21D76E1C68D27871B53D334D0E55
          444D3A2401C2EE0257EEDF363CCEC06D16348F8C1AE6ABE17431DBE8CDE20B8D
          5ED6C22405FECF0C7709BE377C3316395914A860548E402307D335AF05F87FC4
          37735D6A9A7F9F34D6AB6723F9D226E85641285F9587F1A839EBDB38E2A6B8F0
          B68577A85EDEDCE9904D2DF4490DDAC8374770A87285E33F23329E8C41603807
          1401C2C5E2BD44F8B3C37A3C5A9D9EB7762E351B2B99D639EC57CF82DD1B63A0
          7646258F2FB19467E5504735DBC4FE28BAF0A789BED7AD368FE24D36DCDFA591
          D2923DB1C68448137BC826859948120C10DCFDD2AB5D4689F0B7C2BA16D10D93
          CEB1DC5C4F025CC9BD6113C6B1C9185E032144030FB8F5E79AB9A5FC3DF0A68D
          A7DE58D868B0430DEC4F05C36E6691E3700327984970A70380400791CD007935
          DF8D3C7D1CDE1FD3D75ABEB97BBD163D59E6D23408AE6E1BCD6E11D0B85DA98C
          0750BD4654939A9BC3FF00127C5DACE8B773492D9DE249A6DF6A3751B5BB5ABD
          A46AB2AC4B0BACAAF2A6F8C02EA095DD82FBBEEFA7EABF0DBC21ADC1610EA1A2
          C732585BADADB112C8AC912E36A16560580C71B89C64FA9C89F0DBC211DB5A5B
          A68B1AA5A5BCF6B0912C9B84530612216DD9607CC7C649C6E24633401C3F8A7E
          25EA3A17843C229A6CDA741A8EA1A62EA13BDE4CCE1238E2593CBC33176329DC
          8ACCC49208CEE3B977F4AF104DABFC5DB26B7B9BB5D2EF3C251DFC7692390A19
          E718628095DFB4E33F866BACD33C31A3E8F762EAC6CF64EB6B1D9A48F23C8638
          23002C69B89DABC0240C64F27279AC88BE18783A0B9D2EE63D1F13695B4D9B9B
          99898B6C8D28EAFF0037CEEC79CF5C74E2803AEA28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2803FFFD9}
        mmHeight = 32456
        mmLeft = 0
        mmTop = 706
        mmWidth = 51153
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1411
        mmTop = 28222
        mmWidth = 45156
        BandType = 1
      end
      object ppLabel22: TppLabel
        UserName = 'lblFInic1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6703
        mmLeft = 104070
        mmTop = 50095
        mmWidth = 12347
        BandType = 1
      end
      object ppLabel24: TppLabel
        UserName = 'lblFFin2'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6703
        mmLeft = 117122
        mmTop = 50095
        mmWidth = 13758
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = 'Provincia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 62089
        mmTop = 71614
        mmWidth = 33867
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = 'Departamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 3881
        mmTop = 71614
        mmWidth = 36336
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Tipo de Gastos/Descuentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 62795
        mmTop = 95956
        mmWidth = 44803
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Monto(S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4586
        mmLeft = 158750
        mmTop = 95603
        mmWidth = 17286
        BandType = 1
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 101600
        mmWidth = 175331
        BandType = 1
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 93839
        mmWidth = 175331
        BandType = 1
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6703
        mmLeft = 79375
        mmTop = 50095
        mmWidth = 23636
        BandType = 1
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 99131
        mmTop = 71614
        mmWidth = 30692
        BandType = 1
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 40922
        mmTop = 71614
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 10936
        mmTop = 95603
        mmWidth = 11994
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'N'#176' Oficio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 3881
        mmTop = 76200
        mmWidth = 15875
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Label4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 22578
        mmTop = 76200
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fecha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 44097
        mmTop = 76200
        mmWidth = 11642
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Label6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 56797
        mmTop = 76200
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label301'
        AutoSize = False
        Caption = 'Unidad de Proceso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 131586
        mmTop = 71614
        mmWidth = 33161
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Label8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 165453
        mmTop = 71614
        mmWidth = 19050
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 93134
        mmWidth = 175331
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Centro de Costo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 79375
        mmTop = 76200
        mmWidth = 28575
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Label10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 109361
        mmTop = 76200
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Label101'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 128411
        mmTop = 76200
        mmWidth = 41275
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Observaci'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 3881
        mmTop = 80786
        mmWidth = 22931
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Label13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 27164
        mmTop = 80786
        mmWidth = 68086
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 52564
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 0
        mmWidth = 175331
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 6350
        mmWidth = 175331
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 12700
        mmWidth = 175331
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Total Gastado + Comisi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 113947
        mmTop = 1058
        mmWidth = 43392
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Total Descuentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 128764
        mmTop = 7408
        mmWidth = 28575
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Neto a Pagar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 135467
        mmTop = 13758
        mmWidth = 21872
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = 'Hecho por:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 21519
        mmTop = 34925
        mmWidth = 20108
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label202'
        Caption = 'Autorizado por:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 124178
        mmTop = 34925
        mmWidth = 27517
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 18697
        mmTop = 33867
        mmWidth = 52211
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 119945
        mmTop = 33867
        mmWidth = 52211
        BandType = 7
      end
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepLiqRep'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm) '
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 69
    Top = 496
    Version = '7.02'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 94192
      mmPrintPosition = 0
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 6703
        mmWidth = 10231
        BandType = 1
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 10936
        mmWidth = 7761
        BandType = 1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 145345
        mmTop = 15169
        mmWidth = 11994
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'A N E X O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6703
        mmLeft = 93839
        mmTop = 37042
        mmWidth = 25753
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 6703
        mmWidth = 22578
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 159456
        mmTop = 10936
        mmWidth = 27164
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 159456
        mmTop = 15169
        mmWidth = 7761
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 3881
        mmTop = 67028
        mmWidth = 16933
        BandType = 1
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 45508
        mmTop = 67028
        mmWidth = 16933
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 22225
        mmTop = 67028
        mmWidth = 17286
        BandType = 1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 66322
        mmTop = 67028
        mmWidth = 75142
        BandType = 1
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        AutoSize = True
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765D70D0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108005C009103012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A2B0BC47E32D03C25F66FEDCBFF00B27DAB7793FB9924DDB7
          1BBEE29C6370EBEB5C8689E1A5F19D84BE218FC65E298A1BDBCBA6852D350314
          42213C8A9B50AE546D55E0D007A6515C2FFC2B3FFA9DFC69FF00836FFEC28974
          0BFF0005D84FACD9F8A35ABF82D71717B6BAACCB72B2DBA063208CED051F6925
          482012A0371C800EEA8AF33D2743D63C7A92F89351F126BBA558DDB7FC4B2C74
          E98DA98EDC13B5A5041DCEDD72323182090405D2FF008567FF0053BF8D3FF06D
          FF00D850077545799F88BC072E91E19D5752B7F1AF8C5A6B4B39AE2359355254
          B221600E141C647AD775A7F88B44D5EE1ADF4DD634FBD99577B476D7492305C8
          19214938C91CFBD0069514514005145140051451400514514005145140051457
          11E31D4B5D8BC67E12D1F46D512C13506BA69CC96CB32B88915C29070707E61F
          2B29F9BAF02803C87E3678C74FF126AF6BA6D9C3751CDA3CF756F70D32A8566D
          C8B94C3124650F503B57ADFC1BFF009253A2FF00DB7FFD1F257CD3E2F12AF8D7
          5E5B8749261A8DC091E3428ACDE636485249033DB271EA6BE96F837FF24A745F
          FB6FFF00A3E4A00EEAB0BC6DFF00221788BFEC1973FF00A29AB76B0BC6DFF221
          788BFEC1973FFA29A800F04FFC885E1DFF00B065B7FE8A5ADDAC2F04FF00C885
          E1DFFB065B7FE8A5ADDA00C2F1B7FC885E22FF00B065CFFE8A6AF9D7E0EF8974
          8F0AF8BAEEFB5ABBFB2DB4960F0ABF96EF97324640C2827A29FCABE8AF1B7FC8
          85E22FFB065CFF00E8A6AF8CE803EE2B2BCB7D46C2DAFAD24F32DAE6259A27C1
          1B918020E0F23823AD4F5E5FE15D63C57A25C7823C3FACC3A625B6A36B246B1C
          50CAB3C31C36EACBBCB3603E4E186DC0C1E79E3D42800A28A2800A28A2800A28
          A2800A28A2800AE17C53FF00255BC01FF711FF00D10B5DD564F88744FEDCB08E
          38AF26B1BCB7945C59DDC27E68650080C57A3A90CCA54F04311EE003E5BF895E
          1FD5745F1AEA771A8D9BC10EA17971716B212196543231041048CE08C83C8C8C
          81915F407C1BFF009253A2FF00DB7FFD1F2569681AA45E2DD3750D2B5ED3AD7E
          DF613FD9B50B29103C4EC30CB2AABF3E5BF0CA58763D71938569A668DA25CDFE
          9335B7892DECAD2709A7C7A7FF006898842D1A3B7CD0F0C7CD79B9625BB74000
          00F45AC2F1B7FC885E22FF00B065CFFE8A6AE7A6B8F095B2092EEEFC55690EE5
          433DD4FAB4312162146E77215464819240A5F1C7852287C15AC5CD86ABABDB4D
          0594F23799A8CF711CA9E53068D925765C104F20020E083C7201D07827FE442F
          0EFF00D832DBFF00452D6ED799F863C21AAEBBE0AD0A7D4FC55ABD9016711B6B
          7D1A716F1C70F9681431DA59DC850C493805885007279EBDBBF04E9D7F736377
          F14BC691DCDB4AD0CA9F6B98ED75241191160F20F4A00F50F1B7FC885E22FF00
          B065CFFE8A6AF8FB4CD32F759D4ADF4ED3AD9EE6EEE1B647127527F900064927
          8001278AF5BD6AE7C39A968B7965E1DF1F78D358D56688AC1605E7985C7F7959
          0A2E576EECF3C0C9C36307D52CF4CF0AFC2CF0D5C4D04696D16DDD23C920335D
          C8A84850588DCE70D841819270064D0073FF0064B9D37C51F09EC2E90C5716F6
          1750CC9B81C32DAA0232383823B57A7D727E1CD22EF51BB87C55E214FF00899C
          B17FA1D91076699138FB801009948C6F7201FE11851CF5940051451400514514
          00514514005145140051451401CF788BC30DAB5C43A9699A83E91ADDBA98E2BF
          8A25933113F347221E244EE01FBAD823BE68CBE2BBFF000EDEC56BE2AB144B59
          5B09ACD92B7D9572C401306C980F318C92CA4B1F980071D7D14011C13C5736F1
          DC5BCA92C32A878E48D832BA9190411C10477AC6F1B7FC885E22FF00B065CFFE
          8A6AC2D1BC3DE21F0DF8835EB8D2F4ED146957F2C4D6D64B7D240906C4D85822
          C05433E149C7A632D8CD5ED6E0F15EB1A0EA3A5FF6568B0FDB2D65B7F33FB565
          6D9BD4AE71F6719C6738C8A00BFE09FF00910BC3BFF60CB6FF00D14B5BB5C9E8
          9078AF47D074ED2FFB2B459BEC76B15BF99FDAB2AEFD8A1738FB39C6719C64D5
          1F14F87FC49E30B4B0D32FAD34CB4D356FE19EF561D4E673710A93BA3C0853AE
          411CF551F50005F7C498E7D58E95E13D227F12DD47B4CD2DACCA96B102ACC019
          8E5777CA3DB9233B86DA346F046A777AF41E22F1A6A50EA7A85B6EFB159C11ED
          B5B22589DCB9C176C6DC330C8C72588523B3B3B2B4D3AD12D2C6D61B5B68F3B2
          1823088B9393851C0E493F8D4F40051451400514514005145140051451401E77
          A9472EABF1B1747B8BED4934F5F0E0BA16F6B7F35BAF9BF692BBCF96EB93B4E3
          F2F415C35FF8F3C5B6315B787AC2FEFA4920D6750D385E5BE9EB7D7D2C36CB19
          4CA315576FDE1DCD8070A0F5CEEF5FD5FC17E1ED7B554D4F53D3C5C5D24490E5
          A69023C6AFE62A3A060AEBBF0D86041207A0A8B57F0178575DD32D74DBFD0ED1
          ACED599EDE2854C2222DCB6D31952012724742704F205007947827E2178EEFFC
          4769A6C9749A90B8D4E4B69E2D4AC12CE5B782131F98C9B5955A5DB212D18DEC
          9E5E7041C9D1F84DF13B54D6E3BF1E21D512E63B2B296F6EE492D6389E10ACA1
          42796F9913687627CB054903272B5E8167F0E3C2361059C36FA346AB657BF6FB
          72D2C8CD1CDF2FCC18B138F9132B9DA768C8E293FE15BF8516C21B28F4B68608
          6DE4B55F22EA68D9A1918BBC6CCAE19D0B1276B12064E3AD0079A597C5EF104D
          F0E7C45797526929ADDAC30DCD9BDBCF1C9FBA9E5D9CC618ED68B70186E794DC
          3392DD3F87FE25EA9AFF0088FC3BA6C7A6C11452C463D699F892DAEF64F88826
          ECA7CD6CE7E6DC76B2E769C67ACD67C07E19D7D615D43498D961B716AAB0C8F0
          0F24306119F2CAEE40CA08539008C8C5493782BC373B5F3BE93006BF95A6BA68
          F28657689E1624A91D524718E99766FBC49A00E3BE1B7C4AB8F18789B54B2B97
          81EDE789AFF4E485407B681653098E7E4E243847C73F7C9CE0A81CB78BB5DF11
          68FF001375DD7ADF56D48E8BA05E69DF6CD3E29731B5BCF16242119829390000
          0757DD918CD7B0A7863474B8D1A75B4C4BA2C4D0E9EDE6BFEE5190211D7E6F95
          40F9B3D3D6A44F0F69297DAADE7D8A379B56448EFBCC25D6754528AA5492B8DA
          48C01CE79CD007905A7C41D6B4FF0019EADE21D76E1C68D27871B53D334D0E55
          444D3A2401C2EE0257EEDF363CCEC06D16348F8C1AE6ABE17431DBE8CDE20B8D
          5ED6C22405FECF0C7709BE377C3316395914A860548E402307D335AF05F87FC4
          37735D6A9A7F9F34D6AB6723F9D226E85641285F9587F1A839EBDB38E2A6B8F0
          B68577A85EDEDCE9904D2DF4490DDAC8374770A87285E33F23329E8C41603807
          1401C2C5E2BD44F8B3C37A3C5A9D9EB7762E351B2B99D639EC57CF82DD1B63A0
          7646258F2FB19467E5504735DBC4FE28BAF0A789BED7AD368FE24D36DCDFA591
          D2923DB1C68448137BC826859948120C10DCFDD2AB5D4689F0B7C2BA16D10D93
          CEB1DC5C4F025CC9BD6113C6B1C9185E032144030FB8F5E79AB9A5FC3DF0A68D
          A7DE58D868B0430DEC4F05C36E6691E3700327984970A70380400791CD007935
          DF8D3C7D1CDE1FD3D75ABEB97BBD163D59E6D23408AE6E1BCD6E11D0B85DA98C
          0750BD4654939A9BC3FF00127C5DACE8B773492D9DE249A6DF6A3751B5BB5ABD
          A46AB2AC4B0BACAAF2A6F8C02EA095DD82FBBEEFA7EABF0DBC21ADC1610EA1A2
          C732585BADADB112C8AC912E36A16560580C71B89C64FA9C89F0DBC211DB5A5B
          A68B1AA5A5BCF6B0912C9B84530612216DD9607CC7C649C6E24633401C3F8A7E
          25EA3A17843C229A6CDA741A8EA1A62EA13BDE4CCE1238E2593CBC33176329DC
          8ACCC49208CEE3B977F4AF104DABFC5DB26B7B9BB5D2EF3C251DFC7692390A19
          E718628095DFB4E33F866BACD33C31A3E8F762EAC6CF64EB6B1D9A48F23C8638
          23002C69B89DABC0240C64F27279AC88BE18783A0B9D2EE63D1F13695B4D9B9B
          99898B6C8D28EAFF0037CEEC79CF5C74E2803AEA28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2803FFFD9}
        mmHeight = 32456
        mmLeft = 0
        mmTop = 706
        mmWidth = 51153
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1411
        mmTop = 28222
        mmWidth = 45156
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Label37'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6703
        mmLeft = 104070
        mmTop = 50095
        mmWidth = 12347
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = 'Label38'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6703
        mmLeft = 117122
        mmTop = 50095
        mmWidth = 13758
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label302'
        AutoSize = False
        Caption = 'Provincia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 62089
        mmTop = 71614
        mmWidth = 33867
        BandType = 1
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = 'Departamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 3881
        mmTop = 71614
        mmWidth = 36336
        BandType = 1
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'A'#241'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 62795
        mmTop = 86784
        mmWidth = 6703
        BandType = 1
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Importe(S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4586
        mmLeft = 158750
        mmTop = 86784
        mmWidth = 19403
        BandType = 1
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 93839
        mmWidth = 175331
        BandType = 1
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 83961
        mmWidth = 175331
        BandType = 1
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6703
        mmLeft = 79375
        mmTop = 50095
        mmWidth = 23636
        BandType = 1
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = 'Label48'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 99131
        mmTop = 71614
        mmWidth = 30692
        BandType = 1
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = 'Label49'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 40922
        mmTop = 71614
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'USES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 10936
        mmTop = 86784
        mmWidth = 9878
        BandType = 1
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = 'Unidad de Proceso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 131586
        mmTop = 71614
        mmWidth = 33161
        BandType = 1
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'Label8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 165453
        mmTop = 71614
        mmWidth = 19050
        BandType = 1
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 83256
        mmWidth = 175331
        BandType = 1
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'Liquidaci'#243'n de comisi'#243'n por Cobranza de Aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6703
        mmLeft = 41275
        mmTop = 43392
        mmWidth = 135114
        BandType = 1
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Mes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 73025
        mmTop = 86784
        mmWidth = 6703
        BandType = 1
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 85020
        mmTop = 86784
        mmWidth = 13053
        BandType = 1
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Fecha de Ingreso al Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9172
        mmLeft = 112536
        mmTop = 84314
        mmWidth = 28575
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 52564
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 353
        mmLeft = 8467
        mmTop = 0
        mmWidth = 175331
        BandType = 7
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'Total '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 113947
        mmTop = 1058
        mmWidth = 9878
        BandType = 7
      end
    end
  end
end
