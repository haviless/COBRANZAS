object fMatAso: TfMatAso
  Left = 122
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Mantenimiento De Asociado'
  ClientHeight = 475
  ClientWidth = 800
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 0
    Top = 441
    Width = 399
    Height = 33
  end
  object gbCambios: TGroupBox
    Left = 2
    Top = -2
    Width = 797
    Height = 442
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Shape1: TShape
      Left = 156
      Top = 8
      Width = 633
      Height = 33
    end
    object bFirma: TBevel
      Left = 4
      Top = 133
      Width = 145
      Height = 46
      Cursor = crHandPoint
    end
    object bFoto: TBevel
      Left = 4
      Top = 7
      Width = 146
      Height = 123
    end
    object ImaFirma: TImage
      Left = 8
      Top = 136
      Width = 137
      Height = 40
      Cursor = crHandPoint
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
    end
    object ImagAso: TImage
      Left = 8
      Top = 12
      Width = 137
      Height = 117
      Cursor = crHandPoint
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
    end
    object Label6: TLabel
      Left = 157
      Top = 45
      Width = 132
      Height = 16
      Caption = 'Apellido Paterno (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 327
      Top = 45
      Width = 137
      Height = 16
      Caption = 'Apellido Materno (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 497
      Top = 45
      Width = 90
      Height = 16
      Caption = 'Nombres (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 158
      Top = 86
      Width = 82
      Height = 17
      Caption = 'Codigo De Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 321
      Top = 86
      Width = 81
      Height = 17
      Caption = 'Doc. Identidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 469
      Top = 86
      Width = 95
      Height = 17
      Caption = 'F. De Nacimiento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 589
      Top = 85
      Width = 27
      Height = 17
      Caption = 'Sexo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 157
      Top = 130
      Width = 92
      Height = 17
      Caption = 'Tipo de Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 157
      Top = 176
      Width = 106
      Height = 17
      Caption = 'Regimen De Pensi'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 549
      Top = 177
      Width = 54
      Height = 17
      Caption = 'Telefonos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 6
      Top = 208
      Width = 124
      Height = 17
      Caption = 'Direcci'#243'n Domiciliaria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 252
      Width = 77
      Height = 17
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 228
      Top = 252
      Width = 50
      Height = 17
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 498
      Top = 252
      Width = 47
      Height = 17
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 301
      Width = 95
      Height = 17
      Caption = 'Centro Educativo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 6
      Top = 346
      Width = 183
      Height = 17
      Caption = 'Direcci'#243'n Del  Centro  Educativo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 391
      Width = 77
      Height = 17
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 228
      Top = 391
      Width = 50
      Height = 17
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 498
      Top = 391
      Width = 47
      Height = 17
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 349
      Top = 176
      Width = 20
      Height = 17
      Caption = 'Afp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblAsoApeNom: TLabel
      Left = 158
      Top = 11
      Width = 627
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblAsoApeNom'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 676
      Top = 43
      Width = 90
      Height = 16
      Caption = 'Cta.TeleAhorro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 350
      Top = 132
      Width = 77
      Height = 17
      Caption = 'N'#176'Resol.Nomb'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 462
      Top = 132
      Width = 35
      Height = 17
      Caption = 'Fecha '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 573
      Top = 132
      Width = 72
      Height = 17
      Caption = 'N'#176'Resol.Cese'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 677
      Top = 132
      Width = 35
      Height = 17
      Caption = 'Fecha '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object EdtApePatDni: TwwDBEdit
      Left = 155
      Top = 61
      Width = 166
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASOAPEPATDNI'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object EdtApeMatDni: TwwDBEdit
      Left = 324
      Top = 61
      Width = 171
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASOAPEMATDNI'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object EdtAsoNomDni: TwwDBEdit
      Left = 496
      Top = 61
      Width = 176
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASONOMDNI'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCodPag: TwwDBEdit
      Left = 156
      Top = 103
      Width = 163
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASOCODPAGO'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeLibDni: TwwDBEdit
      Left = 322
      Top = 103
      Width = 139
      Height = 24
      DataField = 'ASODNI'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdtFecNac: TwwDBDateTimePicker
      Left = 468
      Top = 103
      Width = 108
      Height = 21
      AutoFillDateAndTime = True
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ASOFECNAC'
      DataSource = DM1.dsAso
      Date = 23146.000000000000000000
      Epoch = 1950
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 5
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DbLlSexo: TwwDBLookupCombo
      Left = 588
      Top = 101
      Width = 41
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'2'#9'Codigo'#9'F'
        'DESCRIP'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'ASOSEXO'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsSexo
      LookupField = 'ID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlSexoChange
    end
    object DbLlRegPen: TwwDBLookupCombo
      Left = 157
      Top = 194
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'REGPENID'#9'2'#9'Codigo'#9'F'
        'REGPENDES'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'REGPENID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsResol
      LookupField = 'REGPENID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 7
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlRegPenChange
      OnExit = DbLlRegPenExit
    end
    object dbeDirec: TwwDBEdit
      Left = 5
      Top = 226
      Width = 780
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASODIR'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object lkcDpto: TwwDBLookupCombo
      Left = 6
      Top = 272
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DPTOID'#9'2'#9'DPTOID'#9'F'
        'DPTODES'#9'30'#9'DPTODES'#9'F')
      LookupTable = DM1.cdsPadre
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 10
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDptoChange
    end
    object Panel1: TPanel
      Left = 49
      Top = 270
      Width = 175
      Height = 28
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 11
      object edtDpto: TEdit
        Left = 2
        Top = 2
        Width = 168
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtDptoChange
      end
    end
    object lkcProv: TwwDBLookupCombo
      Left = 227
      Top = 271
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PROVID'#9'5'#9'PROVID'#9'F'
        'PROVDES'#9'30'#9'PROVDES'#9'F')
      LookupTable = DM1.cdsHijo
      LookupField = 'PROVID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 12
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcProvChange
    end
    object Panel2: TPanel
      Left = 286
      Top = 270
      Width = 203
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 13
      object edtProv: TEdit
        Left = 1
        Top = 1
        Width = 199
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtProvChange
      end
    end
    object lkcDist: TwwDBLookupCombo
      Left = 496
      Top = 270
      Width = 72
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ZIPID'#9'6'#9'ZIPID'#9'F'
        'ZIPDES'#9'35'#9'ZIPDES'#9'F')
      LookupTable = DM1.cdsSAso
      LookupField = 'ZIPID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 14
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDistChange
    end
    object Panel3: TPanel
      Left = 567
      Top = 268
      Width = 219
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 15
      object edtDist: TEdit
        Left = 2
        Top = 1
        Width = 215
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
    object dbeColLab: TwwDBEdit
      Left = 7
      Top = 320
      Width = 779
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASODESLAB'
      DataSource = DM1.dsAso
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
    end
    object dbeDirLab: TwwDBEdit
      Left = 6
      Top = 364
      Width = 780
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ASODIRLAB'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object lkcDpto2: TwwDBLookupCombo
      Left = 6
      Top = 408
      Width = 43
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DPTOID'#9'2'#9'DPTOID'#9'F'
        'DPTODES'#9'30'#9'DPTODES'#9'F')
      LookupTable = DM1.cdsRec
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 18
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDpto2Change
    end
    object Panel6: TPanel
      Left = 49
      Top = 405
      Width = 173
      Height = 30
      Caption = 'Panel4'
      Color = 13165023
      Enabled = False
      TabOrder = 19
      object edtDpto2: TEdit
        Left = 3
        Top = 3
        Width = 165
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtDpto2Change
      end
    end
    object lkcProv2: TwwDBLookupCombo
      Left = 227
      Top = 409
      Width = 51
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PROVID'#9'5'#9'PROVID'#9'F'
        'PROVDES'#9'30'#9'PROVDES'#9'F')
      LookupTable = DM1.cdsTRela
      LookupField = 'PROVID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 20
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcProv2Change
    end
    object Panel5: TPanel
      Left = 280
      Top = 407
      Width = 209
      Height = 28
      Caption = 'Panel4'
      Color = 13165023
      Enabled = False
      TabOrder = 21
      object edtProv2: TEdit
        Left = 3
        Top = 2
        Width = 202
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtProv2Change
      end
    end
    object lkcDist2: TwwDBLookupCombo
      Left = 496
      Top = 407
      Width = 71
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ZIPID'#9'6'#9'ZIPID'#9'F'
        'ZIPDES'#9'35'#9'ZIPDES'#9'F')
      LookupField = 'ZIPID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 22
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDist2Change
    end
    object Panel4: TPanel
      Left = 569
      Top = 406
      Width = 217
      Height = 29
      Caption = 'Panel4'
      Color = 13165023
      Enabled = False
      TabOrder = 23
      object edtDist2: TEdit
        Left = 3
        Top = 2
        Width = 211
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
    object DbLlAfp: TwwDBLookupCombo
      Left = 348
      Top = 194
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'IDAFP'#9'2'#9'Codigo'#9'F'
        'PROVDES'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'CODAFP'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsTCredito
      LookupField = 'IDAFP'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 8
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlAfpChange
    end
    object Panel7: TPanel
      Left = 197
      Top = 192
      Width = 142
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 24
      object edtRegPen: TEdit
        Left = 3
        Top = 1
        Width = 135
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
    object Panel8: TPanel
      Left = 389
      Top = 192
      Width = 158
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 25
      object EdtAfp: TEdit
        Left = 2
        Top = 0
        Width = 152
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
    object Panel9: TPanel
      Left = 630
      Top = 98
      Width = 159
      Height = 27
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 26
      object dbeSexo: TwwDBEdit
        Left = 3
        Top = 2
        Width = 153
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel10: TPanel
      Left = 160
      Top = 148
      Width = 185
      Height = 27
      Caption = 'Panel10'
      Enabled = False
      TabOrder = 27
      object edtTipAso: TEdit
        Left = 45
        Top = 1
        Width = 134
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtAsoTipId: TEdit
        Left = 4
        Top = 1
        Width = 37
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 673
      Top = 58
      Width = 118
      Height = 31
      BorderStyle = bsSingle
      Caption = 'Panel11'
      Enabled = False
      TabOrder = 28
      object dbeCuenta: TwwDBEdit
        Left = 2
        Top = 1
        Width = 109
        Height = 24
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ASONCTA'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel12: TPanel
      Left = 347
      Top = 148
      Width = 442
      Height = 29
      BorderStyle = bsSingle
      Enabled = False
      TabOrder = 29
      object dbeNroRes: TwwDBEdit
        Left = 3
        Top = 1
        Width = 102
        Height = 22
        BorderStyle = bsNone
        Ctl3D = True
        DataField = 'ASORESNOM'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        Picture.PictureMask = '*15[#]'
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object DBDTResNom: TwwDBDateTimePicker
        Left = 111
        Top = 2
        Width = 109
        Height = 19
        AutoFillDateAndTime = True
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ASOFRESNOM'
        DataSource = DM1.dsAso
        Date = 23146.000000000000000000
        Epoch = 1950
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy'
      end
      object dbeNroCes: TwwDBEdit
        Left = 225
        Top = 1
        Width = 98
        Height = 22
        BorderStyle = bsNone
        DataField = 'ASORESCESE'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DBDTResCes: TwwDBDateTimePicker
        Left = 328
        Top = 2
        Width = 107
        Height = 19
        AutoFillDateAndTime = True
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ASOFRESCESE'
        DataSource = DM1.dsAso
        Date = 23146.000000000000000000
        Epoch = 1950
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 3
        DisplayFormat = 'dd/mm/yyyy'
      end
    end
    object Panel13: TPanel
      Left = 550
      Top = 192
      Width = 117
      Height = 26
      TabOrder = 30
      object edtAsoTelf1: TEdit
        Left = 1
        Top = 1
        Width = 115
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel14: TPanel
      Left = 668
      Top = 192
      Width = 123
      Height = 26
      TabOrder = 31
      object edtAsoTelf2: TEdit
        Left = 1
        Top = 1
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object BitGrabar: TBitBtn
    Left = 641
    Top = 444
    Width = 78
    Height = 27
    Cursor = crHandPoint
    Hint = 'Grabar'
    Caption = '&Grabar'
    Enabled = False
    TabOrder = 5
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
    Left = 721
    Top = 444
    Width = 77
    Height = 27
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 7
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
  object BitModifica: TBitBtn
    Left = 481
    Top = 444
    Width = 78
    Height = 27
    Cursor = crHandPoint
    Hint = 'Modificar'
    Caption = '&Modificar'
    Enabled = False
    TabOrder = 4
    OnClick = BitModificaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object BitCancelar: TBitBtn
    Left = 561
    Top = 444
    Width = 78
    Height = 27
    Cursor = crHandPoint
    Hint = 'Cancelar'
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 6
    OnClick = BitCancelarClick
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
  object BitCuentas: TBitBtn
    Left = 202
    Top = 444
    Width = 96
    Height = 27
    Cursor = crHandPoint
    Hint = 'Modificar'
    Caption = '&Cta.Ahorros'
    TabOrder = 3
    OnClick = BitCuentasClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000003B3B735B5B
      675757675757675757675757675757675757735B5B003232967F7FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00848474FAFA68EFEF68EFEF68EFEF68EFEF68EFEF68
      EFEF74FAFA008282008D8D001313876F6FFFFFFFFFFFFFFFFFFF007C7C74ECEC
      68E1E168E1E168E1E168E1E168E1E168E1E174EDED007B7B008787008D8D008D
      8D001313876F6FFFFFFF00848480F7F774ECEC74ECEC74ECEC74ECEC74ECEC74
      ECEC80F7F7008282008787008787008787008D8D009191000000002F2F008E8E
      006F6F007B7B006B6B006F6F007F7F006F6F008383002929009191008D8D0087
      87008787008D8D004444928A8A000000FFFFFF7C6C6CFFFFFFFFF3F3544444FF
      FFFF8F80807068686B5353001C1C009191008D8D008D8D003F3FFFFFFF787878
      FAFAFF70707CFFFFFFFFFFFF444444FEFEFF84848F50505CFFFFFFFFFFFF5B43
      43001C1C009999004444FFFFFF686880D9D900505000CACA2FEFEFED484874E1
      E1005C5C00606000CECE00B7B78AFFFFFFFFFFFF5B4747001414FFFFFFC4C4CB
      70702F2222007B7B00FFFF008383005C5C2F444400333300878700DADA00C3C3
      00B7B78AFFFFFF2F2A2AFFFFFFFFFFFFFFFFFFCBCBDA8F8F482020009A9A0068
      68540F0F00939348262600262600878700DADA00CACA0087879FFFFFFFB6B6B6
      FFFFFFFFFFFF26262F3F3F502E2E00A2A2AE000000FFFFFFDCDCEB8F8F371D1D
      3F141400787837787880E8E8E85555557171717575752A2A2A91919189899187
      8787979797D1D1D15F5F5F6A6A72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8
      C5C5C5DFDFDFA0A0A0BCBCBCC7C7C78484841D1D1DB5B5B5666666FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5A5A5AFFFFFFFFFFFFF2F2F2FEFEFEABABAB4E4E4EC4
      C4C4B6B6B6606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF575757
      595959FFFFFFFFFFFFFFFFFFFFFFFFB6B6B6767676FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67676777777777777777777788
      88881D1D1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitResol: TBitBtn
    Left = 103
    Top = 444
    Width = 98
    Height = 27
    Cursor = crHandPoint
    Hint = 'Resoluciones'
    Caption = '&Resoluciones'
    TabOrder = 2
    OnClick = BitResolClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888777777778888888800008800
      00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
      0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
      FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
      44F000004440F0780000880BFFF0FFF0FFFBF0780000880F44F0FB00F0000078
      0000880FFBF0F0FFF0FFF0880000880000000F44F0FB08880000888888880FFB
      F0F0888800008888888800000008888800008888888888888888888800008888
      88888888888888880000}
  end
  object BitReasignacion: TBitBtn
    Left = 3
    Top = 444
    Width = 98
    Height = 27
    Cursor = crHandPoint
    Hint = 'Reasignaci'#243'n'
    Caption = '&Reasignaci'#243'n'
    TabOrder = 1
    OnClick = BitReasignacionClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000888888838383
      92927B8888818383837F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6E6E6ECACA9D0000F58181AEB5B5AE2A2A2A7D7D7D73
      73737373737373737777777777777777777777776F6F6FCBCBCBA2A27C2424FF
      0000FF2828F9ECECCE2C2C2C9D9D9DA6A6A6A6A6A6B0B0B08282828686868686
      8686868686868680808000007A1616FFFFFFAF0000FFBCBCD9353524AEAEAECF
      CFCFC3C3C38484848D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8F8F8F373780DFDFC1
      CACABC6464DE0000FF19194CB4B4ACC6C6C65151512929292E2E2E2E2E2E2E2E
      2E3030302E2E2E2E2E2E84847CFFFFFFF3F3F3FFFFEC3F3FFF000080B0B0A149
      4949909090D0D0D0CACACACACACACECECEB9B9B9D2D2D2CECECE7F7F7F1D1D1D
      4F4F4F4B4B4B63634B5B5B4B515151A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFF6F6
      F6CDCDCDCDCDCDE3E3E3FFFFFF787878DDECECD7E2E2CAD2D2535353B5B5B5FF
      FFFF6B6B6B878787E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF788787
      7600007700007E3E3E5E6666FFFFFF0F0F0F6767674C4C4CE8E8E8FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF707070D2E1E1D9F7F79A0000CFEDED761F2831
      3D46606C6C8A8A8AFFFFFFFFFFFFFFFFFF0303034F4F4F222222FFFFFF707070
      D5D5D53D3D3DFFFFFF280008BF4400A398428C031FF1FFFFFFFFFFFFFFFFC4C4
      C48E8E8EDBDBDB878787FFFFFF707070E1E1E1505050E1E1E1656969334C5447
      0000CEA200D3647CFFC7CFFFFFFF5A5A5ADDDDDDD5D5D5808080FFFFFF6C6C6C
      434343575757060606FFFFFF000000FFFFFFEB758C8E2600BB872FA1223B0B26
      264D55554343437C7C7CFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4B5B5B5FFFFFFFF
      FFFFECFEFEFFC4CB000000D7A800901631FFE1E9FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFB5B5B5B5B5B5FFFFFF2E2E2E2F3737FFFFFFE86F87632A
      00B7872F880316FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C45F
      5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFE1E9690000C68F37FFFFFF}
  end
  object BitOfiDes: TBitBtn
    Left = 401
    Top = 444
    Width = 78
    Height = 27
    Cursor = crHandPoint
    Hint = 'Actualizar En Ofides'
    Caption = '&Actualizar'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BitOfiDesClick
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF5F5F5A9A9A9A6A6A69B9B9BA3A3A3ACACAC979797A9A9
      A9A5A5A5979797B5B5B58D8D8D000000D0D0D0000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC2C2C2595959A6A6A6AAAAAAA9A9A9ACACACAAAAAAABABAB
      B5B5B5ADADAD6767677A7A7AFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE9E9E9C6C6C6C5C5C5A1A0A0A4A2A2A4A1A1ABA9A98D8C8C39393984
      8484ECECECFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB9B7B7AAC3C3A5D6D6A5D3D3AAD4D4B3B7B7000000838383FFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF1B1B1603030004040000
      00006C8786EF7877FE0404FB2222FF3232D2CCCC000000848484FFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFFC4C4EE00004C1414622525651916597391
      9AEE706EFF3030FF4848FF5454CDD2D2000000848484FFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFF7A7AD6000000BABABFFFFFFFFFFFFF9EB7B8E97170
      FF7E7EFE4545FF1E1ED1C1C1000000858585FFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFF9999EE000000CFCFCAFFFFFFFFFFFFB4BABACEB7B7D48E8ED3
      979DD69FA4C6C7C70000006C6C6CFFFFFFFFFFFFFFFFFF000000F9F9F9646464
      2C2C231414770000002222203131313333331A1A1A161E1E1925291F562F184A
      26747075D2D2D1E2E2E2FFFFFFFFFFFFFFFFFF000000F1F1F16B6B6B4D4D4566
      66915656565B5B5A5C5C5C4D4D4D616161606060453E45002800001B00625A62
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FEFEFEA1A1A18C8C8DADADA6A5A5
      A3A8A8A8A9A9A9A9A9A9B5B5B5A6A6A6575057E5FFE50D3C0D605960FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFA5A5A5999999C4C3C4BBBABABBBABA
      BFBEBEA8A7A7868686979797BFBABFD2FDD20F3C0F5F585FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFD0CFCF959F9F95ABAB95ACAC9CAFAF91
      9696040303868686FFFFFFC7F3C70E3A0E5F585FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFBDC6C6BC9B9BD78383D47373D87F7FCBC1C11114
      15A19EA0FFFFFFDDFFDD143F145C565CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFB9D5D5D74C4CFF1B1BFF7979FF7E7DD48E8F1D352E060806
      272027114311002C005F595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFB9D6D6D74A4AFF4646FF1313FF0000D498A3186E28409D4087DF876D
      C76DDBF8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      B8C9C9C57474E48080E16E6EE46262C9ACAC00000490818FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFC9C9C9A7
      B0B0AFB6B6AEB9B9B0BDBDABB0B0AAAAAADFDFDFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFCFCFCF9F9F9F9FA
      FAF9FAFAF9FAFAF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000}
  end
  object BitAuditoria: TBitBtn
    Left = 9
    Top = 179
    Width = 138
    Height = 25
    Cursor = crHandPoint
    Hint = 'Auditoria De Cambios'
    Caption = '&AUDITORIA'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    Visible = False
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
  object BitSocio: TBitBtn
    Left = 300
    Top = 444
    Width = 96
    Height = 27
    Cursor = crHandPoint
    Hint = 'Datos Socieconomicos'
    Caption = 'Soc.-Econ.'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitSocioClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF8E7F7F0B67671F0D0D332222DACBCBFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D0606005151A7818119
      5C5CA1FFFF1DBCBC785858CBBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF220606007979E1FFFF82FFFF91FFFF8FFFFF97FFFF8FFFFF26C0C07858
      58CBBCBCFFFFFFFFFFFFFFFFFFFFFFFFDACBCB003E3EA2FFFF89FFFF8FFFFF9F
      FFFF37B1B12FADAD9FFFFF37E1E197FFFF1DBCBC705050FFFFFFFFFFFFFFFFFF
      263B3B3FCACA97FFFF37B1B148BCBC00B5B53FE9E9A6FFFF2FB1B137B1B197FF
      FF8FFFFF8FFFFF786868FFFFFFDACBCB003E3EA1FFFF8FD6D63FE9E93FBCBC48
      EDED9FB5B52FE1E197E5E59FFFFF26A5A59FFFFF1458587F7777FFFFFF263F3F
      46AEAE7CD3D399FFFF2FDEDEA6B8B837E5E597E9E937E5E597B1B126DADA9FFF
      FF0B5050FFFFFFFFFFFFE1D3D3004D4D78B0B070A8A8339A9AA6FFFF2FDEDE37
      E1E197B1B137E1E18FFFFF8FFFFF87BCBCCBBCBCFFFFFFFFFFFF31525235AAAA
      748A96143A53391F282A6B7F9BFFFF8FFFFF8FFFFF2FDADA8FD6D68FFFFF0B58
      58FFFFFFFFFFFFFFFFFF8881811B404D595100EAE600E4E4BCB4AC005837268B
      FFFF87FFFF8FFFFF87FFFF87BCBCCBBCBCFFFFFFFFFFFFFFFFFFFFFFFF767286
      BFBF005B5B00131300C3C3006048008BFFFF87FFFF87FFFF8FFFFF0B5858FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7C7D34B4B00333300FEFE682A220033843797
      FFFF87FFFF87FFFF87BCBCCBBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E5E5F800000029290037375896878E1457578FFFFF97FFFF0B5858FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F2FE8E800E1E1C47B7B00D3D3E1FF
      FFFF6F57570B5F5FD3C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0F0F008D8D00828200B7B7005C5C70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADAE92E2E003A3A0050503FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
end
