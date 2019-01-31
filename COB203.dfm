object FClientes: TFClientes
  Left = 137
  Top = 51
  Width = 655
  Height = 524
  Caption = 'Cobranzas'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 7
    Top = 4
    Width = 636
    Height = 483
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 17
      Top = 1
      Width = 185
      Height = 27
      Caption = 'Registro de Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object pcDatos: TPageControl
      Left = 4
      Top = 156
      Width = 625
      Height = 322
      ActivePage = tbDatosFamiliares
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object tbDatosGenerales: TTabSheet
        Caption = 'Datos Personales'
        object Panel2: TPanel
          Left = 0
          Top = 2
          Width = 612
          Height = 252
          BevelOuter = bvNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object TLabel
            Left = 187
            Top = 173
            Width = 3
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 223
            Top = 171
            Width = 34
            Height = 15
            Caption = 'E-Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 222
            Top = 207
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
          object wwDBEdit30: TwwDBEdit
            Left = 223
            Top = 185
            Width = 380
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'VENDEDABR'
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBRichEdit2: TwwDBRichEdit
            Left = 221
            Top = 224
            Width = 382
            Height = 21
            AutoURLDetect = False
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            PrintJobName = 'Delphi 5'
            TabOrder = 1
            EditorCaption = 'Edit Rich Text'
            EditorPosition.Left = 0
            EditorPosition.Top = 0
            EditorPosition.Width = 0
            EditorPosition.Height = 0
            MeasurementUnits = muInches
            PrintMargins.Top = 1.000000000000000000
            PrintMargins.Bottom = 1.000000000000000000
            PrintMargins.Left = 1.000000000000000000
            PrintMargins.Right = 1.000000000000000000
            PrintHeader.VertMargin = 0.500000000000000000
            PrintHeader.Font.Charset = DEFAULT_CHARSET
            PrintHeader.Font.Color = clWindowText
            PrintHeader.Font.Height = -11
            PrintHeader.Font.Name = 'MS Sans Serif'
            PrintHeader.Font.Style = []
            PrintFooter.VertMargin = 0.500000000000000000
            PrintFooter.Font.Charset = DEFAULT_CHARSET
            PrintFooter.Font.Color = clWindowText
            PrintFooter.Font.Height = -11
            PrintFooter.Font.Name = 'MS Sans Serif'
            PrintFooter.Font.Style = []
            RichEditVersion = 2
            Data = {
              B10000007B5C727466315C616E73695C616E7369637067313235325C64656666
              307B5C666F6E7474626C7B5C66305C666E696C5C66636861727365743020436F
              6D69632053616E73204D533B7D7D0D0A7B5C636F6C6F7274626C203B5C726564
              305C677265656E305C626C75653132383B7D0D0A5C766965776B696E64345C75
              63315C706172645C6366315C6C616E6731303235305C66305C66733136207777
              44425269636845646974315C7061720D0A7D0D0A00}
          end
          object GroupBox1: TGroupBox
            Left = 7
            Top = 179
            Width = 210
            Height = 58
            Caption = 'Tel'#233'fonos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object TLabel
              Left = 7
              Top = 15
              Width = 22
              Height = 15
              Caption = 'N'#176' 1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 105
              Top = 12
              Width = 24
              Height = 15
              Caption = 'N'#176' 2'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object wwDBEdit47: TwwDBEdit
              Left = 7
              Top = 28
              Width = 98
              Height = 22
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDABR'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit51: TwwDBEdit
              Left = 105
              Top = 28
              Width = 98
              Height = 22
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDABR'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
          object TGroupBox
            Left = 7
            Top = 6
            Width = 596
            Height = 163
            BiDiMode = bdLeftToRight
            Caption = 'Direcci'#243'n'
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            object TLabel
              Left = 399
              Top = 15
              Width = 14
              Height = 15
              Caption = 'N'#176
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 456
              Top = 15
              Width = 24
              Height = 15
              Caption = 'Dpto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 184
              Top = 86
              Width = 74
              Height = 15
              Caption = 'Departamento '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 12
              Top = 16
              Width = 58
              Height = 15
              Caption = 'Tipo de V'#237'a'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 165
              Top = 15
              Width = 60
              Height = 15
              Caption = 'Nombre V'#237'a'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label70: TLabel
              Left = 377
              Top = 51
              Width = 40
              Height = 15
              Caption = 'Distrito'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 12
              Top = 86
              Width = 35
              Height = 15
              Caption = 'Ciudad'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label66: TLabel
              Left = 12
              Top = 51
              Width = 67
              Height = 15
              Caption = 'Tipo de Zona'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label67: TLabel
              Left = 177
              Top = 51
              Width = 69
              Height = 15
              Caption = 'Nombre Zona'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label69: TLabel
              Left = 350
              Top = 86
              Width = 38
              Height = 15
              Caption = 'UbiGeo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object Label62: TLabel
              Left = 12
              Top = 120
              Width = 128
              Height = 15
              Caption = 'Referencia Domiciliaria '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object wwDBEdit22: TwwDBEdit
              Left = 52
              Top = 31
              Width = 112
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit23: TwwDBEdit
              Left = 399
              Top = 31
              Width = 55
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object DBCheckBox1: TDBCheckBox
              Left = 456
              Top = 31
              Width = 14
              Height = 19
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object wwDBEdit24: TwwDBEdit
              Left = 471
              Top = 31
              Width = 58
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit67: TwwDBEdit
              Left = 408
              Top = 101
              Width = 170
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcTipVia: TwwDBLookupCombo
              Left = 12
              Top = 31
              Width = 41
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TIPVIAID'#9'2'#9'Id'#9'F'
                'TIPVIADES'#9'30'#9'Tipo~Via'#9'F')
              DataField = 'TIPVIAID'
              LookupField = 'TIPVIAID'
              Options = [loColLines, loRowLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 5
              AutoDropDown = False
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
            end
            object dbeNomVia: TwwDBEdit
              Left = 165
              Top = 31
              Width = 234
              Height = 19
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 13165023
              DataField = 'TRABNOMVIA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcdZip: TwwDBLookupComboDlg
              Left = 377
              Top = 66
              Width = 52
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              BorderStyle = bsNone
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'ZIPID'#9'3'#9'Id'#9'F'
                'ZIPDES'#9'35'#9'C'#243'digo Postal'#9'F')
              DataField = 'ZIPID'
              LookupField = 'ZIPID'
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              Color = 13165023
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 7
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              ShowMatchText = True
            end
            object dblcdCiud: TwwDBLookupComboDlg
              Left = 183
              Top = 101
              Width = 41
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              BorderStyle = bsNone
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Ciudad'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'CIUDID'#9'3'#9'Id'#9'F'
                'CIUDDES'#9'30'#9'Ciudad'#9'F')
              DataField = 'CIUDID'
              LookupField = 'CIUDID'
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              Color = 13165023
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 8
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              ShowMatchText = True
            end
            object dblcTipZona: TwwDBLookupCombo
              Left = 12
              Top = 66
              Width = 41
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TIPZONAID'#9'2'#9'Id'#9'F'
                'TIPZONADES'#9'30'#9'Tipo~Zona'#9'F')
              DataField = 'TIPZONAID'
              LookupField = 'TIPZONAID'
              Options = [loColLines, loRowLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 9
              AutoDropDown = False
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
            end
            object dbeNomZona: TwwDBEdit
              Left = 176
              Top = 66
              Width = 201
              Height = 19
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 13165023
              DataField = 'TRABNOMZON'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcdUbigeo: TwwDBLookupComboDlg
              Left = 12
              Top = 101
              Width = 50
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              BorderStyle = bsNone
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'UBIGEOID'#9'6'#9'Id'#9'F'
                'UBIGEODES'#9'30'#9'Ubigeo'#9'F')
              DataField = 'UBIGEOID'
              LookupField = 'UBIGEOID'
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              Color = 13165023
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 11
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              ShowMatchText = True
            end
            object dbeTrabRefDom: TwwDBEdit
              Left = 12
              Top = 134
              Width = 567
              Height = 19
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 13165023
              DataField = 'TRABREFDOM'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 12
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit4: TwwDBEdit
              Left = 429
              Top = 66
              Width = 150
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 13
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit5: TwwDBEdit
              Left = 224
              Top = 101
              Width = 126
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 14
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit8: TwwDBEdit
              Left = 53
              Top = 66
              Width = 123
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 15
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit27: TwwDBEdit
              Left = 62
              Top = 101
              Width = 121
              Height = 19
              BorderStyle = bsNone
              Color = 13165023
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 16
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupComboDlg2: TwwDBLookupComboDlg
              Left = 350
              Top = 101
              Width = 58
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              BorderStyle = bsNone
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Ciudad'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'CIUDID'#9'3'#9'Id'#9'F'
                'CIUDDES'#9'30'#9'Ciudad'#9'F')
              DataField = 'CIUDID'
              LookupField = 'CIUDID'
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              Color = 13165023
              Frame.Enabled = True
              Frame.FocusBorders = [efRightBorder, efBottomBorder]
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              TabOrder = 17
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              ShowMatchText = True
            end
          end
        end
      end
      object tbDatosLaborales: TTabSheet
        Caption = 'Datos Socio-Econ'#243'micos y Laborales'
        ImageIndex = 1
        object Panel6: TPanel
          Left = 3
          Top = 72
          Width = 612
          Height = 170
          BevelOuter = bvNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object TLabel
            Left = 6
            Top = 4
            Width = 91
            Height = 15
            Caption = 'Situacion Laboral'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 185
            Top = 4
            Width = 91
            Height = 15
            Caption = 'Profesi'#243'n/Oficio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 372
            Top = 4
            Width = 43
            Height = 15
            Caption = 'Empresa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 6
            Top = 41
            Width = 79
            Height = 15
            Caption = 'Giro/Actividad'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 184
            Top = 41
            Width = 54
            Height = 15
            Caption = 'Direccion '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 452
            Top = 41
            Width = 40
            Height = 15
            Caption = 'Distrito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 6
            Top = 79
            Width = 49
            Height = 15
            Caption = 'Provincia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 174
            Top = 81
            Width = 71
            Height = 15
            Caption = 'Departamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 348
            Top = 81
            Width = 51
            Height = 15
            Caption = 'Tel'#233'fonos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 489
            Top = 81
            Width = 33
            Height = 15
            Caption = 'Anexo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 6
            Top = 119
            Width = 66
            Height = 15
            Caption = 'Cargo Actual'
          end
          object TLabel
            Left = 173
            Top = 120
            Width = 127
            Height = 15
            Caption = 'Antig'#252'edad(A'#241'os-Meses)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 304
            Top = 119
            Width = 113
            Height = 15
            Caption = 'Ingreso Neto Mensual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dblcZip: TwwDBLookupCombo
            Left = 6
            Top = 18
            Width = 51
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'ZIPID'#9'3'#9'ID'#9'F'
              'ZIPDES'#9'35'#9'ZIP'#9'F')
            DataField = 'ZIPID'
            LookupField = 'ZIPID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object dbeZip: TwwDBEdit
            Left = 57
            Top = 18
            Width = 127
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo11: TwwDBLookupCombo
            Left = 184
            Top = 18
            Width = 52
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'ZIPID'#9'3'#9'ID'#9'F'
              'ZIPDES'#9'35'#9'ZIP'#9'F')
            DataField = 'ZIPID'
            LookupField = 'ZIPID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object wwDBEdit25: TwwDBEdit
            Left = 236
            Top = 18
            Width = 135
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit6: TwwDBEdit
            Left = 371
            Top = 18
            Width = 231
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo16: TwwDBLookupCombo
            Left = 6
            Top = 56
            Width = 51
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'ZIPID'#9'3'#9'ID'#9'F'
              'ZIPDES'#9'35'#9'ZIP'#9'F')
            DataField = 'ZIPID'
            LookupField = 'ZIPID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 5
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object wwDBEdit13: TwwDBEdit
            Left = 59
            Top = 56
            Width = 125
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit7: TwwDBEdit
            Left = 184
            Top = 56
            Width = 268
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit12: TwwDBEdit
            Left = 497
            Top = 56
            Width = 105
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo6: TwwDBLookupCombo
            Left = 452
            Top = 56
            Width = 45
            Height = 21
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'URBID'#9'3'#9'ID'#9'F'
              'URBDES'#9'40'#9'Urbanizaci'#243'n'#9'F')
            DataField = 'URBID'
            LookupField = 'URBID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 9
            AutoDropDown = False
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
          end
          object wwDBLookupCombo5: TwwDBLookupCombo
            Left = 6
            Top = 96
            Width = 41
            Height = 21
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'URBID'#9'3'#9'ID'#9'F'
              'URBDES'#9'40'#9'Urbanizaci'#243'n'#9'F')
            DataField = 'URBID'
            LookupField = 'URBID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 10
            AutoDropDown = False
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
          end
          object wwDBEdit11: TwwDBEdit
            Left = 47
            Top = 96
            Width = 127
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo4: TwwDBLookupCombo
            Left = 174
            Top = 96
            Width = 41
            Height = 21
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'URBID'#9'3'#9'ID'#9'F'
              'URBDES'#9'40'#9'Urbanizaci'#243'n'#9'F')
            DataField = 'URBID'
            LookupField = 'URBID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 12
            AutoDropDown = False
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
          end
          object wwDBEdit9: TwwDBEdit
            Left = 215
            Top = 96
            Width = 130
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 13
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit10: TwwDBEdit
            Left = 345
            Top = 96
            Width = 143
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 14
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit14: TwwDBEdit
            Left = 488
            Top = 96
            Width = 64
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 15
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit21: TwwDBEdit
            Left = 6
            Top = 135
            Width = 167
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 16
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBSpinEdit4: TwwDBSpinEdit
            Left = 173
            Top = 135
            Width = 64
            Height = 21
            Increment = 1.000000000000000000
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 17
            UnboundDataType = wwDefault
          end
          object wwDBSpinEdit5: TwwDBSpinEdit
            Left = 237
            Top = 135
            Width = 66
            Height = 21
            Increment = 1.000000000000000000
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 18
            UnboundDataType = wwDefault
          end
          object wwDBEdit26: TwwDBEdit
            Left = 303
            Top = 135
            Width = 125
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 19
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object Panel4: TPanel
          Left = 3
          Top = 8
          Width = 612
          Height = 59
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
            Left = 515
            Top = 13
            Width = 86
            Height = 15
            Caption = 'N'#176' Dependientes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 7
            Top = 13
            Width = 89
            Height = 15
            Caption = 'Nivel de Estudios'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 175
            Top = 12
            Width = 125
            Height = 15
            Caption = 'Situacion de la Vivienda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 325
            Top = 12
            Width = 76
            Height = 15
            Caption = 'Monto Alquiler'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 411
            Top = 12
            Width = 96
            Height = 15
            Caption = 'Tiempo Residencia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object wwDBSpinEdit2: TwwDBSpinEdit
            Left = 514
            Top = 28
            Width = 83
            Height = 21
            Increment = 1.000000000000000000
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 0
            UnboundDataType = wwDefault
          end
          object wwDBLookupCombo3: TwwDBLookupCombo
            Left = 7
            Top = 28
            Width = 40
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'ZIPID'#9'3'#9'ID'#9'F'
              'ZIPDES'#9'35'#9'ZIP'#9'F')
            DataField = 'ZIPID'
            LookupField = 'ZIPID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object wwDBEdit31: TwwDBEdit
            Left = 47
            Top = 28
            Width = 128
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo12: TwwDBLookupCombo
            Left = 175
            Top = 28
            Width = 40
            Height = 21
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'ZIPID'#9'3'#9'ID'#9'F'
              'ZIPDES'#9'35'#9'ZIP'#9'F')
            DataField = 'ZIPID'
            LookupField = 'ZIPID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 3
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object wwDBEdit32: TwwDBEdit
            Left = 215
            Top = 28
            Width = 110
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
          object wwDBEdit33: TwwDBEdit
            Left = 325
            Top = 28
            Width = 88
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'VENDEDABR'
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBSpinEdit3: TwwDBSpinEdit
            Left = 413
            Top = 28
            Width = 101
            Height = 21
            Increment = 1.000000000000000000
            BorderStyle = bsNone
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 6
            UnboundDataType = wwDefault
          end
        end
      end
      object tbDatosFamiliares: TTabSheet
        Caption = 'Datos de Familiares'
        ImageIndex = 2
        object wwDBGrid1: TwwDBGrid
          Left = 3
          Top = 3
          Width = 606
          Height = 246
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
          object wwIButton1: TwwIButton
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
            OnClick = wwIButton1Click
          end
        end
        object pnlFamiliares: TPanel
          Left = 42
          Top = 50
          Width = 532
          Height = 192
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 1
          Visible = False
          object StaticText3: TStaticText
            Left = 1
            Top = 1
            Width = 526
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Familiares'
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
          object Panel7: TPanel
            Left = 5
            Top = 23
            Width = 516
            Height = 159
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
              Left = 5
              Top = 5
              Width = 85
              Height = 15
              Caption = 'Tipo de Relacion'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 4
              Top = 42
              Width = 107
              Height = 15
              Caption = 'Fecha de Nacimiento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 126
              Top = 42
              Width = 61
              Height = 15
              Caption = 'Estado Civil'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 5
              Top = 77
              Width = 61
              Height = 15
              Caption = 'Tipo Doc Id'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 151
              Top = 77
              Width = 78
              Height = 15
              Caption = 'N'#250'mero Doc Id'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 281
              Top = 79
              Width = 51
              Height = 15
              Caption = 'Tel'#233'fonos'
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
              Top = 114
              Width = 51
              Height = 15
              Caption = 'Direcci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 168
              Top = 6
              Width = 87
              Height = 15
              Caption = 'Apellido Paterno '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 279
              Top = 6
              Width = 91
              Height = 15
              Caption = 'Apellido Materno '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 391
              Top = 6
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
            object fcShapeBtn5: TfcShapeBtn
              Left = 426
              Top = 122
              Width = 33
              Height = 31
              Hint = 'Borra Cabecera'
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
              ShadeStyle = fbsHighlight
              Shape = bsRoundRect
              ShowHint = True
              TabOrder = 0
              TabStop = True
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
            end
            object fcShapeBtn6: TfcShapeBtn
              Left = 469
              Top = 122
              Width = 32
              Height = 31
              Hint = 'Acepta Cabecera'
              Color = 10207162
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
              TabOrder = 1
              TabStop = True
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn6Click
            end
            object dblcVendVisit: TwwDBLookupCombo
              Left = 5
              Top = 21
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'VENDEDID'#9'2'#9'ID'#9'F'
                'VENDEDNOM'#9'20'#9'Vendedor'#9'F')
              DataField = 'VENDEDID'
              LookupField = 'VENDEDID'
              Options = [loColLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 2
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBEdit15: TwwDBEdit
              Left = 51
              Top = 21
              Width = 117
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBDateTimePicker7: TwwDBDateTimePicker
              Left = 4
              Top = 56
              Width = 121
              Height = 21
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = 13165023
              Epoch = 1950
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ShowButton = True
              TabOrder = 4
            end
            object wwDBLookupCombo7: TwwDBLookupCombo
              Left = 125
              Top = 56
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'VENDEDID'#9'2'#9'ID'#9'F'
                'VENDEDNOM'#9'20'#9'Vendedor'#9'F')
              DataField = 'VENDEDID'
              LookupField = 'VENDEDID'
              Options = [loColLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBEdit16: TwwDBEdit
              Left = 171
              Top = 56
              Width = 97
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupCombo8: TwwDBLookupCombo
              Left = 5
              Top = 91
              Width = 46
              Height = 21
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'VENDEDID'#9'2'#9'ID'#9'F'
                'VENDEDNOM'#9'20'#9'Vendedor'#9'F')
              DataField = 'VENDEDID'
              LookupField = 'VENDEDID'
              Options = [loColLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 7
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBEdit17: TwwDBEdit
              Left = 54
              Top = 91
              Width = 97
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit18: TwwDBEdit
              Left = 151
              Top = 91
              Width = 130
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit20: TwwDBEdit
              Left = 281
              Top = 91
              Width = 220
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit19: TwwDBEdit
              Left = 7
              Top = 127
              Width = 378
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 11
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit48: TwwDBEdit
              Left = 168
              Top = 21
              Width = 111
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 12
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit49: TwwDBEdit
              Left = 279
              Top = 21
              Width = 111
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 13
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit50: TwwDBEdit
              Left = 390
              Top = 21
              Width = 111
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 14
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 288
              Top = 44
              Width = 189
              Height = 34
              Caption = 'Sexo'
              Columns = 2
              Items.Strings = (
                'Femenino'
                'Masculino')
              TabOrder = 15
              Values.Strings = (
                'F'
                'M')
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Estado de Cuenta Cr'#233'ditos'
        ImageIndex = 4
        object wwDBGrid3: TwwDBGrid
          Left = 4
          Top = 2
          Width = 605
          Height = 227
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
        object pnlCreditos: TPanel
          Left = 44
          Top = 39
          Width = 493
          Height = 156
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 1
          Visible = False
          object StaticText4: TStaticText
            Left = 1
            Top = 1
            Width = 487
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Cr'#233'ditos'
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
          object Panel9: TPanel
            Left = 3
            Top = 21
            Width = 478
            Height = 124
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
              Top = 4
              Width = 14
              Height = 15
              Caption = 'N'#176
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 211
              Top = 4
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
              Left = 361
              Top = 4
              Width = 118
              Height = 15
              Caption = 'Fecha de Otorgamiento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 268
              Top = 4
              Width = 34
              Height = 15
              Caption = 'Cuotas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 57
              Top = 4
              Width = 79
              Height = 15
              Caption = 'Tipo de Cr'#233'dito'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 312
              Top = 4
              Width = 29
              Height = 15
              Caption = 'Saldo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object fcShapeBtn8: TfcShapeBtn
              Left = 400
              Top = 51
              Width = 32
              Height = 31
              Hint = 'Borra Cabecera'
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
              ShadeStyle = fbsHighlight
              Shape = bsRoundRect
              ShowHint = True
              TabOrder = 0
              TabStop = True
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
            end
            object fcShapeBtn9: TfcShapeBtn
              Left = 436
              Top = 51
              Width = 32
              Height = 31
              Hint = 'Acepta Cabecera'
              Color = 10207162
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
              TabOrder = 1
              TabStop = True
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn9Click
            end
            object wwDBEdit35: TwwDBEdit
              Left = 211
              Top = 20
              Width = 57
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBDateTimePicker9: TwwDBDateTimePicker
              Left = 361
              Top = 20
              Width = 112
              Height = 21
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = 13165023
              Epoch = 1950
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ShowButton = True
              TabOrder = 3
            end
            object wwDBEdit36: TwwDBEdit
              Left = 268
              Top = 20
              Width = 44
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupCombo13: TwwDBLookupCombo
              Left = 57
              Top = 20
              Width = 47
              Height = 21
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'CONTNUM'#9'9'#9'ID'#9'F'
                'CONTACTO'#9'20'#9'Contacto'#9'F')
              LookupField = 'CONTNUM'
              Options = [loColLines, loTitles]
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
            end
            object wwDBEdit37: TwwDBEdit
              Left = 104
              Top = 20
              Width = 107
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'POSTCONTAC'
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit38: TwwDBEdit
              Left = 7
              Top = 20
              Width = 50
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit39: TwwDBEdit
              Left = 312
              Top = 20
              Width = 49
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 4
      Top = 30
      Width = 624
      Height = 123
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TLabel
        Left = 100
        Top = 2
        Width = 87
        Height = 15
        Caption = 'Apellido Paterno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 231
        Top = 2
        Width = 91
        Height = 15
        Caption = 'Apellido Materno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 362
        Top = 3
        Width = 40
        Height = 15
        Caption = 'Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 262
        Top = 40
        Width = 31
        Height = 15
        Caption = 'R.U.C.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 2
        Width = 35
        Height = 15
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 40
        Width = 108
        Height = 15
        Caption = 'Tipo de Doc. Identif.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 161
        Top = 40
        Width = 14
        Height = 15
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 155
        Top = 77
        Width = 98
        Height = 15
        Caption = 'Pais de Nacimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 471
        Top = 77
        Width = 107
        Height = 15
        Caption = 'Fecha de Nacimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 312
        Top = 77
        Width = 106
        Height = 15
        Caption = 'Lugar de Nacimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 359
        Top = 40
        Width = 76
        Height = 15
        Caption = 'Libreta Militar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 78
        Width = 61
        Height = 15
        Caption = 'Estado Civil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 495
        Top = 3
        Width = 54
        Height = 15
        Caption = 'D.N.I/L.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeNomPost: TwwDBEdit
        Left = 98
        Top = 17
        Width = 132
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 230
        Top = 17
        Width = 132
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 362
        Top = 17
        Width = 132
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeVend: TwwDBEdit
        Left = 262
        Top = 55
        Width = 97
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 463
        Top = 41
        Width = 149
        Height = 35
        Caption = 'Sexo'
        Columns = 2
        Items.Strings = (
          'Femenino'
          'Masculino')
        TabOrder = 4
        Values.Strings = (
          'F'
          'M')
      end
      object wwDBLookupComboDlg1: TwwDBLookupComboDlg
        Left = 6
        Top = 17
        Width = 92
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 6
        Top = 55
        Width = 43
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'LUGPROCID'#9'1'#9'ID'#9'F'
          'LUGPROCDES'#9'20'#9'Lugar de Procedencia'#9'F')
        DataField = 'LUGPROCID'
        LookupField = 'LUGPROCID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object dbeNomPri: TwwDBEdit
        Left = 49
        Top = 55
        Width = 112
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeLugProc: TwwDBEdit
        Left = 161
        Top = 55
        Width = 101
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 155
        Top = 92
        Width = 46
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ZONVTAID'#9'2'#9'ID'#9'F'
          'ZONVTADES'#9'30'#9'Zona de Venta'#9'F')
        DataField = 'ZONVTAID'
        LookupField = 'ZONVTAID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object wwDBEdit3: TwwDBEdit
        Left = 201
        Top = 92
        Width = 111
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcZonVta: TwwDBLookupCombo
        Left = 312
        Top = 92
        Width = 43
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ZONVTAID'#9'2'#9'ID'#9'F'
          'ZONVTADES'#9'30'#9'Zona de Venta'#9'F')
        DataField = 'ZONVTAID'
        LookupField = 'ZONVTAID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 11
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object dbeZonVta: TwwDBEdit
        Left = 355
        Top = 92
        Width = 116
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 471
        Top = 92
        Width = 109
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'CONVTAFCAM'
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ShowButton = True
        TabOrder = 13
      end
      object wwDBEdit28: TwwDBEdit
        Left = 359
        Top = 55
        Width = 100
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 14
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo14: TwwDBLookupCombo
        Left = 6
        Top = 92
        Width = 43
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'SECVTAID'#9'2'#9'ID'#9'F'
          'SECVTADES'#9'20'#9'Sector de Venta'#9'F')
        DataField = 'SECVTAID'
        LookupField = 'SECVTAID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 15
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object wwDBEdit29: TwwDBEdit
        Left = 49
        Top = 92
        Width = 106
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 16
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit34: TwwDBEdit
        Left = 494
        Top = 17
        Width = 118
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 17
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object bbtnBorra: TfcShapeBtn
      Left = 538
      Top = 440
      Width = 32
      Height = 31
      Hint = 'Borra Cabecera'
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
    object bbtnOK: TfcShapeBtn
      Left = 580
      Top = 440
      Width = 32
      Height = 31
      Hint = 'Acepta Cabecera'
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
      OnClick = bbtnOKClick
    end
  end
end
