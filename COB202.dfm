object FRepresentante: TFRepresentante
  Left = 235
  Top = 193
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobranzas'
  ClientHeight = 508
  ClientWidth = 756
  Color = 12904163
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 3
    Width = 750
    Height = 501
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 16
      Top = 6
      Width = 126
      Height = 27
      Caption = 'Recaudadores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlCod: TPanel
      Left = 551
      Top = 6
      Width = 192
      Height = 33
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
        Left = 10
        Top = 9
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
      object dbecodigo: TwwDBEdit
        Left = 94
        Top = 7
        Width = 92
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRID'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
    end
    object pnlCab: TPanel
      Left = 5
      Top = 43
      Width = 740
      Height = 159
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TLabel
        Left = 6
        Top = 73
        Width = 113
        Height = 15
        Caption = 'Forma Representaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 6
        Top = 12
        Width = 62
        Height = 15
        Caption = 'Ape Paterno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 241
        Top = 11
        Width = 66
        Height = 15
        Caption = 'Ape Materno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label56: TLabel
        Left = 498
        Top = 11
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
      object Label1: TLabel
        Left = 5
        Top = 42
        Width = 116
        Height = 15
        Caption = 'Apellidos y Nombres   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 105
        Width = 34
        Height = 15
        Caption = 'Banco '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 261
        Top = 105
        Width = 55
        Height = 15
        Caption = 'N'#176' Cuenta '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 462
        Top = 103
        Width = 88
        Height = 15
        Caption = 'Situaci'#243'n Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 135
        Width = 102
        Height = 15
        Caption = 'Tipo Doc. Identidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 597
        Top = 135
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
        Left = 305
        Top = 135
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
        Left = 427
        Top = 135
        Width = 58
        Height = 15
        Caption = 'Lib. Militar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcFormaRepr: TwwDBLookupCombo
        Left = 123
        Top = 67
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'FORREPRID'
        DataSource = DM1.dsRepresentante
        LookupTable = DM1.cdsFRepr
        LookupField = 'FORREPRID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcFormaReprExit
      end
      object edtFormaRepr: TEdit
        Left = 169
        Top = 67
        Width = 167
        Height = 23
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object dbeApePat: TwwDBEdit
        Left = 73
        Top = 7
        Width = 162
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
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeApePatExit
      end
      object dbeApeMat: TwwDBEdit
        Left = 312
        Top = 6
        Width = 179
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
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeApeMatExit
      end
      object dbeNombres: TwwDBEdit
        Left = 551
        Top = 6
        Width = 182
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
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeNombresExit
      end
      object dbeApeNom: TwwDBEdit
        Left = 114
        Top = 36
        Width = 495
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'REPRAPENOM'
        DataSource = DM1.dsRepresentante
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcBanco: TwwDBLookupCombo
        Left = 42
        Top = 98
        Width = 41
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
          'BANCOID'#9'2'#9'ID'#9'F'
          'BANCONOM'#9'40'#9'Banco'#9'F')
        DataField = 'BANCOID'
        DataSource = DM1.dsRepresentante
        LookupTable = DM1.cdsBcos
        LookupField = 'BANCOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcBancoExit
      end
      object edtBanco: TEdit
        Left = 87
        Top = 97
        Width = 167
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object dbeCuenta: TwwDBEdit
        Left = 326
        Top = 98
        Width = 124
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRNCTA'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeCuentaExit
      end
      object dblcSitCuenta: TwwDBLookupCombo
        Left = 556
        Top = 97
        Width = 41
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
          'SITCTAID'#9'2'#9'ID'#9'F'
          'SITCTADES'#9'30'#9'Situaci'#243'n de la Cuenta'#9'F')
        DataField = 'SITCTAID'
        DataSource = DM1.dsRepresentante
        LookupTable = DM1.cdsSitCta
        LookupField = 'SITCTAID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 9
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcSitCuentaExit
      end
      object edtSitCuenta: TEdit
        Left = 603
        Top = 96
        Width = 129
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object dblcTipDocID: TwwDBLookupCombo
        Left = 111
        Top = 130
        Width = 43
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
          'TIPDOCCOD'#9'3'#9'ID'#9'F'
          'TIPDOCDES'#9'40'#9'Tipo Documento Identidad'#9'F')
        DataField = 'TIPDOCCOD'
        DataSource = DM1.dsRepresentante
        LookupTable = DM1.cdsTDoc
        LookupField = 'TIPDOCCOD'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 10
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        OnExit = dblcTipDocIDExit
      end
      object edtTipDocID: TEdit
        Left = 159
        Top = 129
        Width = 140
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object dbeNumDoc: TwwDBEdit
        Left = 322
        Top = 130
        Width = 94
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRDOCNUM'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeNumDocExit
      end
      object dbeRUC: TwwDBEdit
        Left = 633
        Top = 130
        Width = 99
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRRUC'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 13
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeRUCExit
      end
      object dbeLibMil: TwwDBEdit
        Left = 490
        Top = 130
        Width = 98
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'REPRLIBMIL'
        DataSource = DM1.dsRepresentante
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeLibMilExit
      end
      object dbepago: TwwDBEdit
        Left = 644
        Top = 68
        Width = 87
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbepagoExit
      end
      object dbrgpago: TDBRadioGroup
        Left = 343
        Top = 57
        Width = 294
        Height = 34
        Caption = 'Pago'
        Columns = 3
        DataField = 'REPRPAGO'
        DataSource = DM1.dsRepresentante
        Items.Strings = (
          'Sueldo'
          'Comisi'#243'n (%)'
          'No Tiene')
        TabOrder = 5
        Values.Strings = (
          'S'
          'C'
          'N')
        OnExit = dbrgpagoExit
      end
    end
    object pcDatos: TPageControl
      Left = 6
      Top = 208
      Width = 739
      Height = 288
      Cursor = crHandPoint
      ActivePage = tbDatosGenerales
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 2
      object tbDatosGenerales: TTabSheet
        Caption = 'Datos Generales'
        object Panel4: TPanel
          Left = 1
          Top = 3
          Width = 729
          Height = 253
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
            Left = 9
            Top = 114
            Width = 54
            Height = 15
            Caption = 'Direcci'#243'n '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 215
            Top = 52
            Width = 46
            Height = 15
            Caption = 'Tel'#233'fono'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 9
            Top = 82
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
          object TLabel
            Left = 244
            Top = 82
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
            Left = 480
            Top = 82
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
            Left = 11
            Top = 144
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
            Left = 467
            Top = 52
            Width = 19
            Height = 15
            Caption = 'Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 10
            Top = 51
            Width = 90
            Height = 15
            Caption = 'N'#176' Seguro Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 408
            Top = 19
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
          object lblFRet: TLabel
            Left = 190
            Top = 207
            Width = 80
            Height = 15
            Caption = 'Fecha de Retiro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 10
            Top = 18
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
          object lblFIni: TLabel
            Left = 10
            Top = 207
            Width = 65
            Height = 15
            Caption = 'Fecha Inicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 367
            Top = 52
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
          object TLabel
            Left = 353
            Top = 143
            Width = 126
            Height = 15
            Caption = 'Oficina Desconcentrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 9
            Top = 175
            Width = 65
            Height = 15
            Caption = 'Centro Costo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object lblEstado: TLabel
            Left = 392
            Top = 207
            Width = 82
            Height = 15
            Caption = 'Estado del Repr.'
          end
          object dbeDireccion: TwwDBEdit
            Left = 65
            Top = 108
            Width = 656
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'REPRDIR'
            DataSource = DM1.dsRepresentante
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeDireccionExit
          end
          object dbeTelefono: TwwDBEdit
            Left = 267
            Top = 46
            Width = 91
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'REPRTELF'
            DataSource = DM1.dsRepresentante
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeTelefonoExit
          end
          object dblcDpto: TwwDBLookupCombo
            Left = 83
            Top = 77
            Width = 41
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
              'DPTOID'#9'3'#9'ID'#9'F'
              'DPTODES'#9'30'#9'Departamento'#9'F')
            DataField = 'DPTOID'
            DataSource = DM1.dsRepresentante
            LookupTable = DM1.cdsDpto
            LookupField = 'DPTOID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcDptoExit
          end
          object dblcProvincia: TwwDBLookupCombo
            Left = 296
            Top = 77
            Width = 45
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
              'CIUDID'#9'5'#9'ID'#9'F'
              'CIUDDES'#9'30'#9'Provincia'#9'F')
            DataField = 'CIUDID'
            DataSource = DM1.dsRepresentante
            LookupTable = DM1.cdsProvin
            LookupField = 'CIUDID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 8
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcProvinciaExit
          end
          object dblcZip: TwwDBLookupCombo
            Left = 522
            Top = 77
            Width = 61
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
              'ZIPID'#9'7'#9'id'#9'F'
              'ZIPDES'#9'30'#9'Descripci'#243'n'#9'F')
            DataField = 'ZIPID'
            DataSource = DM1.dsRepresentante
            LookupTable = DM1.cdsDist
            LookupField = 'ZIPID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 9
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcZipExit
          end
          object dbeemail: TwwDBEdit
            Left = 50
            Top = 138
            Width = 295
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'REPREMAIL'
            DataSource = DM1.dsRepresentante
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeemailExit
          end
          object dbeFax: TwwDBEdit
            Left = 491
            Top = 48
            Width = 92
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'REPRFAX'
            DataSource = DM1.dsRepresentante
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeFaxExit
          end
          object dbeSegSoc: TwwDBEdit
            Left = 103
            Top = 46
            Width = 106
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'REPRSEGSOC'
            DataSource = DM1.dsRepresentante
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeSegSocExit
          end
          object edtDepto: TEdit
            Left = 127
            Top = 76
            Width = 112
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object edtProv: TEdit
            Left = 345
            Top = 76
            Width = 128
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
          end
          object edtZip: TEdit
            Left = 587
            Top = 76
            Width = 136
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
          end
          object dblcEstCiv: TwwDBLookupCombo
            Left = 473
            Top = 15
            Width = 41
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
              'ESTCIVID'#9'2'#9'ID'#9'F'
              'ESTCIVDES'#9'30'#9'Estado Civil'#9'F')
            DataField = 'ESTCIVID'
            DataSource = DM1.dsRepresentante
            LookupTable = DM1.cdsEstCiv
            LookupField = 'ESTCIVID'
            Options = [loColLines, loTitles]
            Color = 13165023
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            SearchDelay = 2
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnExit = dblcEstCivExit
          end
          object edtEstCiv: TEdit
            Left = 518
            Top = 14
            Width = 204
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
          end
          object dbdtpFFin: TwwDBDateTimePicker
            Left = 278
            Top = 207
            Width = 100
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'REPRFFIN'
            DataSource = DM1.dsRepresentante
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 15
            OnExit = dbdtpFFinExit
          end
          object dbdtpFNac: TwwDBDateTimePicker
            Left = 122
            Top = 14
            Width = 87
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'REPRFNAC'
            DataSource = DM1.dsRepresentante
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 0
            OnExit = dbdtpFNacExit
          end
          object dbrgSexo: TDBRadioGroup
            Left = 220
            Top = 5
            Width = 184
            Height = 34
            Caption = 'Sexo'
            Columns = 2
            DataField = 'REPRSEXO'
            DataSource = DM1.dsRepresentante
            Items.Strings = (
              'Femenino'
              'Masculino')
            TabOrder = 1
            Values.Strings = (
              'F'
              'M')
            OnExit = dbrgSexoExit
          end
          object dbdtpFIni: TwwDBDateTimePicker
            Left = 84
            Top = 207
            Width = 97
            Height = 21
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 13165023
            DataField = 'REPRFINI'
            DataSource = DM1.dsRepresentante
            Epoch = 1950
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 14
            OnExit = dbdtpFIniExit
          end
          object dbeanexo: TwwDBEdit
            Left = 406
            Top = 47
            Width = 47
            Height = 21
            BorderStyle = bsNone
            Color = 13165023
            DataField = 'REPRANEX'
            DataSource = DM1.dsRepresentante
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = dbeanexoExit
          end
          object dblcunidesc: TwwDBLookupCombo
            Left = 486
            Top = 138
            Width = 45
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
              'OFDESID'#9'3'#9'Id'#9'F'
              'OFDESNOM'#9'40'#9'Descripci'#243'n'#9'F')
            DataField = 'OFDESID'
            DataSource = DM1.dsRepresentante
            LookupTable = DM1.cdsOfDes
            LookupField = 'OFDESID'
            Options = [loColLines, loTitles]
            Color = 13165023
            DropDownCount = 15
            Frame.Enabled = True
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 12
            AutoDropDown = True
            ShowButton = True
            SearchDelay = 2
            PreciseEditRegion = False
            AllowClearKey = False
            OnExit = dblcunidescExit
          end
          object edtunidesc: TEdit
            Left = 536
            Top = 136
            Width = 186
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
          end
          object Z2bbtnAceptar: TfcShapeBtn
            Left = 654
            Top = 220
            Width = 30
            Height = 28
            Hint = 'Aceptar'
            Color = 13165023
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
            ShadeStyle = fbsHighlight
            Shape = bsRoundRect
            ShowHint = True
            TabOrder = 16
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = Z2bbtnAceptarClick
          end
          object Z2bbtnCancel: TfcShapeBtn
            Left = 690
            Top = 221
            Width = 30
            Height = 27
            Hint = 'Cancelar'
            Color = 13165023
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
            TabOrder = 17
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = Z2bbtnCancelClick
          end
          object edtccosto: TEdit
            Left = 198
            Top = 168
            Width = 387
            Height = 23
            CharCase = ecUpperCase
            Color = 13165023
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
          end
          object dblcdccosto: TwwDBLookupComboDlg
            Left = 81
            Top = 169
            Width = 112
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lugares de Nacimiento'
            MaxWidth = 0
            MaxHeight = 209
            SearchDelay = 2
            Selected.Strings = (
              'UPROID'#9'5'#9'Id'#9'F'
              'UPRONOM'#9'75'#9'Nombre'#9'F')
            DataField = 'CCOSID'
            DataSource = DM1.dsRepresentante
            LookupTable = DM1.cdsCCosto
            LookupField = 'CCOSID'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Color = 13165023
            Frame.Enabled = True
            Frame.FocusBorders = [efRightBorder, efBottomBorder]
            Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
            ParentFont = False
            TabOrder = 13
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = True
            OnExit = dblcdccostoExit
          end
          object dbcbActivo: TwwDBComboBox
            Left = 504
            Top = 208
            Width = 121
            Height = 23
            ShowButton = True
            Style = csOwnerDrawFixed
            MapList = False
            AllowClearKey = False
            CharCase = ecUpperCase
            DataField = 'REPRFLGACT'
            DataSource = DM1.dsRepresentante
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'Activo'#9'A'
              'Inactivo'#9'I')
            ItemIndex = 0
            Sorted = False
            TabOrder = 24
            UnboundDataType = wwDefault
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Unidad Proceso'
        ImageIndex = 6
        object Panel1: TPanel
          Left = 2
          Top = 1
          Width = 727
          Height = 222
          BevelOuter = bvNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbgUPro: TwwDBGrid
          Left = 6
          Top = 5
          Width = 719
          Height = 214
          DisableThemesInTitle = False
          Selected.Strings = (
            'UPROID'#9'15'#9'Unidad de Proceso'#9'F'
            'BANCOID'#9'5'#9'Banco'#9'F'
            'RCOBNOPE'#9'15'#9'N'#176' Operaci'#243'n'#9'F'
            'RCOBFOPE'#9'15'#9'Fecha Operaci'#243'n'#9'F'
            'TMONID'#9'6'#9'Moneda'#9'F'
            'RCOBMTOMN'#9'10'#9'Monto'#9'F'
            'RCOBFRECEP'#9'16'#9'Fecha Recepci'#243'n'#9'F'
            'FREG'#9'15'#9'Fecha Registro'#9'F')
          MemoAttributes = [mSizeable, mWordWrap, mGridShow]
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = clWhite
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
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnDblClick = dbgUProDblClick
          OnKeyDown = dbgUProKeyDown
          object wwIButton3: TwwIButton
            Left = 0
            Top = 0
            Width = 28
            Height = 35
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
      end
      object tbDatosLaborales: TTabSheet
        Caption = 'Transporte'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 2
          Top = 1
          Width = 727
          Height = 223
          BevelOuter = bvNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object dbgAgTransporte: TwwDBGrid
            Left = 5
            Top = 5
            Width = 717
            Height = 213
            DisableThemesInTitle = False
            Selected.Strings = (
              'UPROID'#9'15'#9'Unidad de Proceso'#9'F'
              'BANCOID'#9'5'#9'Banco'#9'F'
              'RCOBNOPE'#9'15'#9'N'#176' Operaci'#243'n'#9'F'
              'RCOBFOPE'#9'15'#9'Fecha Operaci'#243'n'#9'F'
              'TMONID'#9'6'#9'Moneda'#9'F'
              'RCOBMTOMN'#9'10'#9'Monto'#9'F'
              'RCOBFRECEP'#9'16'#9'Fecha Recepci'#243'n'#9'F'
              'FREG'#9'15'#9'Fecha Registro'#9'F')
            MemoAttributes = [mSizeable, mWordWrap, mGridShow]
            IniAttributes.Delimiter = ';;'
            TitleColor = 10207162
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = clWhite
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
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = dbgAgTransporteDblClick
            OnKeyDown = dbgAgTransporteKeyDown
            object wwIButton1: TwwIButton
              Left = 0
              Top = 0
              Width = 28
              Height = 35
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
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Personal '
        ImageIndex = 7
        object Panel2: TPanel
          Left = 2
          Top = 3
          Width = 727
          Height = 221
          BevelOuter = bvNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object dbgPersonal: TwwDBGrid
            Left = 5
            Top = 4
            Width = 717
            Height = 212
            DisableThemesInTitle = False
            Selected.Strings = (
              'UPROID'#9'15'#9'Unidad de Proceso'#9'F'
              'BANCOID'#9'5'#9'Banco'#9'F'
              'RCOBNOPE'#9'15'#9'N'#176' Operaci'#243'n'#9'F'
              'RCOBFOPE'#9'15'#9'Fecha Operaci'#243'n'#9'F'
              'TMONID'#9'6'#9'Moneda'#9'F'
              'RCOBMTOMN'#9'10'#9'Monto'#9'F'
              'RCOBFRECEP'#9'16'#9'Fecha Recepci'#243'n'#9'F'
              'FREG'#9'15'#9'Fecha Registro'#9'F')
            MemoAttributes = [mSizeable, mWordWrap, mGridShow]
            IniAttributes.Delimiter = ';;'
            TitleColor = 10207162
            FixedCols = 0
            ShowHorzScrollBar = True
            BorderStyle = bsNone
            Color = clWhite
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
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = dbgPersonalDblClick
            OnKeyDown = dbgPersonalKeyDown
            object wwIButton2: TwwIButton
              Left = 0
              Top = 0
              Width = 28
              Height = 35
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
              OnClick = wwIButton2Click
            end
          end
        end
      end
    end
  end
  object pnlPersonal: TPanel
    Left = 89
    Top = 320
    Width = 589
    Height = 121
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 2
    Visible = False
    object StaticText6: TStaticText
      Left = 1
      Top = 1
      Width = 583
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Personal a cargo'
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
    object Panel13: TPanel
      Left = 1
      Top = 20
      Width = 583
      Height = 96
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
        Left = 36
        Top = 5
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
      object TLabel
        Left = 349
        Top = 48
        Width = 46
        Height = 15
        Caption = 'Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 136
        Top = 5
        Width = 104
        Height = 15
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 237
        Top = 50
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
        Left = 23
        Top = 48
        Width = 102
        Height = 15
        Caption = 'Tipo Doc. Identidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 437
        Top = 48
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
      object Z2bbtnAceptarp: TfcShapeBtn
        Left = 508
        Top = 60
        Width = 31
        Height = 28
        Hint = 'Aceptar'
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
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnAceptarpClick
      end
      object Z2bbtnCancelarp: TfcShapeBtn
        Left = 544
        Top = 61
        Width = 30
        Height = 27
        Hint = 'Cancelar'
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
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnCancelarpClick
      end
      object dblcreprdocid: TwwDBLookupCombo
        Left = 9
        Top = 67
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'LUGPROCID'#9'1'#9'ID'#9'F'
          'LUGPROCDES'#9'20'#9'Lugar de Procedencia'#9'F')
        LookupField = 'LUGPROCID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
      end
      object dbereprnodoc: TwwDBEdit
        Left = 221
        Top = 68
        Width = 100
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
      object dbereprtel: TwwDBEdit
        Left = 328
        Top = 68
        Width = 81
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
      object dblcdreprid: TwwDBLookupComboDlg
        Left = 10
        Top = 21
        Width = 98
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'REPRID'#9'5'#9'Id'#9'F'
          'REPRAPENOM'#9'80'#9'Descripci'#243'n'#9'F')
        DataField = 'REPRIDP'
        DataSource = DM1.dsRRepresentante
        LookupField = 'REPRID'
        Color = 13165023
        Frame.Enabled = True
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdrepridExit
      end
      object dbereprnom: TwwDBEdit
        Left = 114
        Top = 21
        Width = 461
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtreprdocid: TEdit
        Left = 58
        Top = 66
        Width = 152
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object dbereprane: TwwDBEdit
        Left = 416
        Top = 68
        Width = 66
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object pnlAgTransporte: TPanel
    Left = 100
    Top = 281
    Width = 557
    Height = 143
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 3
    Visible = False
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 551
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Agencia de Transporte'
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
      Left = 1
      Top = 20
      Width = 551
      Height = 118
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
        Left = 19
        Top = 3
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
      object TLabel
        Left = 312
        Top = 78
        Width = 46
        Height = 15
        Caption = 'Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 118
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
      object Label6: TLabel
        Left = 43
        Top = 42
        Width = 51
        Height = 15
        Caption = 'Direcci'#243'n'
      end
      object TLabel
        Left = 408
        Top = 78
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
      object TLabel
        Left = 28
        Top = 78
        Width = 45
        Height = 15
        Caption = 'Contacto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Z2bbtnAceptara: TfcShapeBtn
        Left = 479
        Top = 84
        Width = 31
        Height = 28
        Hint = 'Aceptar'
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
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnAceptaraClick
      end
      object Z2bbtnCancelara: TfcShapeBtn
        Left = 515
        Top = 85
        Width = 30
        Height = 27
        Hint = 'Cancelar'
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
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnCancelaraClick
      end
      object dbeagtrtel: TwwDBEdit
        Left = 275
        Top = 91
        Width = 111
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
      object dbeagtrnom: TwwDBEdit
        Left = 84
        Top = 19
        Width = 458
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeagtrdir: TwwDBEdit
        Left = 11
        Top = 57
        Width = 532
        Height = 19
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeagtrcon: TwwDBEdit
        Left = 11
        Top = 93
        Width = 257
        Height = 19
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
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
      object dbeagtrane: TwwDBEdit
        Left = 394
        Top = 91
        Width = 71
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdagtrid: TwwDBLookupComboDlg
        Left = 10
        Top = 19
        Width = 69
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'AGTRID'#9'5'#9'Id'#9'F'
          'AGTRDES'#9'80'#9'Descripci'#243'n'#9'F')
        DataField = 'AGTRID'
        DataSource = DM1.dsRTransporte
        LookupTable = DM1.cdsTransporte
        LookupField = 'AGTRID'
        Color = 13165023
        Frame.Enabled = True
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdagtridExit
      end
    end
  end
  object pnlUPro: TPanel
    Left = 158
    Top = 315
    Width = 442
    Height = 102
    BorderStyle = bsSingle
    Color = 13165023
    TabOrder = 1
    Visible = False
    object TLabel
      Left = 9
      Top = 70
      Width = 68
      Height = 15
      Caption = 'Fecha Inicio '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblLugNac: TLabel
      Left = 8
      Top = 34
      Width = 94
      Height = 15
      Caption = 'Unidad de Proceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 191
      Top = 70
      Width = 49
      Height = 15
      Caption = 'Fecha Fin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 436
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Unidad de Proceso'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object Z2bbtnCancelaru: TfcShapeBtn
      Left = 396
      Top = 62
      Width = 27
      Height = 29
      Hint = 'Cancelar'
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelaruClick
    end
    object Z2bbtnAceptaru: TfcShapeBtn
      Left = 363
      Top = 62
      Width = 27
      Height = 29
      Hint = 'Aceptar'
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptaruClick
    end
    object dblcUPro: TwwDBLookupComboDlg
      Left = 105
      Top = 32
      Width = 61
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lugares de Nacimiento'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPROID'#9'5'#9'Id'#9'F'
        'UPRONOM'#9'75'#9'Nombre'#9'F')
      DataField = 'UPROID'
      DataSource = DM1.dsTUSE
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      Color = 13165023
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = True
      OnExit = dblcUProExit
    end
    object dbdtpfecini: TwwDBDateTimePicker
      Left = 81
      Top = 64
      Width = 88
      Height = 19
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      DataField = 'FECHAINI'
      DataSource = DM1.dsTUSE
      Epoch = 1950
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ShowButton = True
      TabOrder = 1
      OnExit = dbdtpfeciniExit
    end
    object dbdtpfecfin: TwwDBDateTimePicker
      Left = 249
      Top = 64
      Width = 88
      Height = 19
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = 13165023
      DataField = 'FECHAFIN'
      DataSource = DM1.dsTUSE
      Epoch = 1950
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ShowButton = True
      TabOrder = 2
      OnExit = dbdtpfecfinExit
    end
    object edtUPro: TEdit
      Left = 172
      Top = 32
      Width = 255
      Height = 23
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
end
