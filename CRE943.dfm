object fDatosSocEco: TfDatosSocEco
  Left = 145
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Datos Socio-Economicos'
  ClientHeight = 437
  ClientWidth = 797
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 181
    Width = 790
    Height = 250
    TabOrder = 0
    object Label8: TLabel
      Left = 5
      Top = 9
      Width = 71
      Height = 17
      Caption = 'Estado Civil '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 212
      Top = 9
      Width = 120
      Height = 17
      Caption = 'Grado De Instrucci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 421
      Top = 16
      Width = 43
      Height = 17
      Caption = 'Ingreso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 421
      Top = 32
      Width = 70
      Height = 17
      Caption = 'TotalTitular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 618
      Top = 33
      Width = 28
      Height = 17
      Caption = 'Neto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 55
      Width = 55
      Height = 17
      Caption = 'Condici'#243'n '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 61
      Top = 55
      Width = 65
      Height = 17
      Caption = 'De Vivienda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 256
      Top = 79
      Width = 64
      Height = 17
      Caption = 'Propiedades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 617
      Top = 19
      Width = 43
      Height = 17
      Caption = 'Ingreso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 122
      Width = 44
      Height = 17
      Caption = 'Negocio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 163
      Width = 46
      Height = 17
      Caption = 'Vehiculo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 197
      Width = 80
      Height = 17
      Caption = 'Carga Familiar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 228
      Top = 126
      Width = 91
      Height = 17
      Caption = 'Tipo De Negocio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 228
      Top = 167
      Width = 93
      Height = 17
      Caption = 'Tipo De Vehiculo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 660
      Top = 167
      Width = 20
      Height = 17
      Caption = 'A'#241'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 264
      Top = 198
      Width = 55
      Height = 17
      Caption = 'Nro.Hijos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object DbLEstCiv: TwwDBLookupCombo
      Left = 5
      Top = 26
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ESTCIVID'#9'2'#9'Codigo'#9'F'
        'ESTCIVDES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsEstCiv
      LookupField = 'ESTCIVID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLEstCivChange
    end
    object Panel7: TPanel
      Left = 45
      Top = 24
      Width = 161
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 1
      object edtEstCiv: TEdit
        Left = 3
        Top = 1
        Width = 156
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dblGradIns: TwwDBLookupCombo
      Left = 210
      Top = 26
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'GRAINSID'#9'2'#9'Codigo'#9'F'
        'GRAINSABR'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsGradoI
      LookupField = 'GRAINSID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblGradInsChange
    end
    object Panel1: TPanel
      Left = 253
      Top = 24
      Width = 161
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 3
      object EdtGraInst: TEdit
        Left = 3
        Top = 1
        Width = 156
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dbeIngreso: TwwDBEdit
      Left = 501
      Top = 23
      Width = 110
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeIngresoKeyPress
    end
    object dbeIngresoNeto: TwwDBEdit
      Left = 672
      Top = 23
      Width = 112
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeIngresoNetoKeyPress
    end
    object dblEstViv: TwwDBLookupCombo
      Left = 8
      Top = 74
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPVIVID'#9'2'#9'Codigo'#9'F'
        'TIPVIVABR'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsCViv
      LookupField = 'TIPVIVID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblEstVivChange
    end
    object Panel2: TPanel
      Left = 51
      Top = 72
      Width = 190
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 7
      object EdtConViv: TEdit
        Left = 3
        Top = 1
        Width = 183
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object rdbProp: TRadioGroup
      Left = 335
      Top = 69
      Width = 450
      Height = 33
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'CASA'
        'TERRENO'
        'LOCAL COMERCIAL')
      ParentFont = False
      TabOrder = 8
      OnClick = rdbPropClick
    end
    object rdgNegocio: TRadioGroup
      Left = 70
      Top = 112
      Width = 125
      Height = 33
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'NO'
        'SI')
      ParentFont = False
      TabOrder = 9
      OnClick = rdgNegocioClick
    end
    object rdgVehiculo: TRadioGroup
      Left = 70
      Top = 153
      Width = 125
      Height = 33
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'NO'
        'SI')
      ParentFont = False
      TabOrder = 11
      OnClick = rdgVehiculoClick
    end
    object dbeTipNeg: TwwDBEdit
      Left = 332
      Top = 122
      Width = 437
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTipVei: TwwDBEdit
      Left = 332
      Top = 163
      Width = 309
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeAnoVei: TwwDBEdit
      Left = 692
      Top = 163
      Width = 77
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeAnoVeiKeyPress
    end
    object dblParent: TwwDBLookupCombo
      Left = 8
      Top = 216
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PARENID'#9'2'#9'Codigo'#9'F'
        'PARENABR'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTVia
      LookupField = 'PARENID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 14
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblParentChange
    end
    object Panel3: TPanel
      Left = 51
      Top = 214
      Width = 190
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 15
      object EdtCargaDes: TEdit
        Left = 3
        Top = 1
        Width = 183
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dbeNroHijos: TwwDBEdit
      Left = 264
      Top = 216
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeNroHijosKeyPress
    end
    object BitGrabar: TBitBtn
      Left = 478
      Top = 214
      Width = 105
      Height = 25
      Caption = '&Grabar'
      TabOrder = 17
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
      Left = 593
      Top = 214
      Width = 105
      Height = 25
      Caption = '&Salir'
      TabOrder = 18
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
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 8
    Width = 785
    Height = 169
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDSocioE
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
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
