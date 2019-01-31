object FMantUgel: TFMantUgel
  Left = 307
  Top = 135
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de Ugeles'
  ClientHeight = 509
  ClientWidth = 424
  Color = 13165023
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
  object pBody: TPanel
    Left = 0
    Top = 0
    Width = 424
    Height = 452
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object gbSeleccionar: TGroupBox
      Left = 0
      Top = 81
      Width = 422
      Height = 68
      Caption = 'Paso 2 -> Seleccionar Unidad de Proceso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        422
        68)
      object meUPro: TMaskEdit
        Left = 78
        Top = 28
        Width = 307
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 18
        Top = 28
        Width = 55
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUproMantUgel
        LookupField = 'UPROID'
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdUProChange
      end
      object btnAddUPRO: TBitBtn
        Left = 387
        Top = 27
        Width = 28
        Height = 23
        Hint = 'Agregar una Unidad de Proceso'
        Anchors = [akTop, akRight]
        TabOrder = 2
        OnClick = btnAddUPROClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
    end
    object gbUPAGO: TGroupBox
      Left = 0
      Top = 151
      Width = 422
      Height = 71
      Caption = 'Paso 3 -> Seleccionar Unidad de Pago'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        422
        71)
      object btnAddUPAGO: TBitBtn
        Left = 388
        Top = 29
        Width = 28
        Height = 23
        Hint = 'Agregar una Unidad de Pago'
        Anchors = [akTop, akRight]
        TabOrder = 2
        OnClick = btnAddUPAGOClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 18
        Top = 30
        Width = 55
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUPagoMantUgel
        LookupField = 'UPAGOID'
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdUPagoChange
      end
      object meUPago: TMaskEdit
        Left = 78
        Top = 30
        Width = 309
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 227
      Width = 422
      Height = 219
      Caption = 'Paso 4 -> Crear / Actualizar UGEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object pcUgelAdd: TPageControl
        Left = 2
        Top = 15
        Width = 418
        Height = 202
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Datos Principales'
          DesignSize = (
            410
            174)
          object Label1: TLabel
            Left = 14
            Top = 11
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cod.UGEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 30
            Top = 44
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nombre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 73
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Abreviatura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edCodigo: TEdit
            Left = 80
            Top = 8
            Width = 57
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 0
          end
          object edAbreviatura: TEdit
            Left = 80
            Top = 68
            Width = 185
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 15
            TabOrder = 2
          end
          object edNombre: TEdit
            Left = 80
            Top = 39
            Width = 325
            Height = 21
            Anchors = [akLeft, akRight]
            CharCase = ecUpperCase
            MaxLength = 75
            TabOrder = 1
          end
          object chbxActivo: TCheckBox
            Left = 16
            Top = 112
            Width = 97
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Habilitado'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 3
          end
        end
        object tsDireccion: TTabSheet
          Caption = 'Direcci'#243'n de UGEL'
          ImageIndex = 1
          DesignSize = (
            410
            174)
          object Label5: TLabel
            Left = 8
            Top = 117
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Telefono'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 4
            Top = 149
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Direcci'#243'n'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 29
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Provincia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 42
            Top = 64
            Width = 41
            Height = 13
            Caption = 'Distrito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 3
            Top = 15
            Width = 80
            Height = 13
            Caption = 'Departamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edTelefono: TEdit
            Left = 64
            Top = 114
            Width = 169
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 15
            TabOrder = 6
          end
          object edDireccion: TEdit
            Left = 64
            Top = 146
            Width = 341
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            MaxLength = 75
            TabOrder = 7
          end
          object dblcdDirDistrito: TwwDBLookupComboDlg
            Left = 90
            Top = 60
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Distrito'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsDistMantUgel
            LookupField = 'ZIPID'
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdDirDistritoChange
          end
          object meDirProvincia: TMaskEdit
            Left = 157
            Top = 36
            Width = 248
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object meDirDistrito: TMaskEdit
            Left = 157
            Top = 60
            Width = 248
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object dblcdDirProv: TwwDBLookupComboDlg
            Left = 90
            Top = 36
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Provincia'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsProvinMantUgel
            LookupField = 'CIUDID'
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdDirProvChange
          end
          object dblcdDirDepartamento: TwwDBLookupComboDlg
            Left = 90
            Top = 12
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Departamento'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsPadre
            LookupField = 'DPTOID'
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdDirDepartamentoChange
          end
          object meDirDepartamento: TMaskEdit
            Left = 157
            Top = 12
            Width = 248
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Ofides'
          ImageIndex = 3
          DesignSize = (
            410
            174)
          object Label11: TLabel
            Left = 5
            Top = 59
            Width = 80
            Height = 13
            Caption = 'Departamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 31
            Top = 84
            Width = 54
            Height = 13
            Caption = 'Provincia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 46
            Top = 23
            Width = 37
            Height = 13
            Caption = 'Ofides'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dblcdDepartamento: TwwDBLookupComboDlg
            Left = 90
            Top = 56
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Departamento'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsPadre
            LookupField = 'DPTOID'
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdDepartamentoChange
          end
          object meDepartamento: TMaskEdit
            Left = 156
            Top = 56
            Width = 248
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dblcdProvincia: TwwDBLookupComboDlg
            Left = 90
            Top = 80
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Provincia'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsHijo
            LookupField = 'CIUDID'
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdProvinciaChange
          end
          object meProvincia: TMaskEdit
            Left = 156
            Top = 80
            Width = 248
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object dblcdOfides: TwwDBLookupComboDlg
            Left = 90
            Top = 20
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Ofides'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsOfDes
            LookupField = 'OFDESID'
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdOfidesChange
          end
          object meOfides: TMaskEdit
            Left = 156
            Top = 20
            Width = 248
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object tsContable: TTabSheet
          Caption = 'Contable'
          ImageIndex = 2
          DesignSize = (
            410
            174)
          object Label10: TLabel
            Left = 7
            Top = 8
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Costo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dblcdCCosto: TwwDBLookupComboDlg
            Left = 6
            Top = 28
            Width = 131
            Height = 21
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Centro de Costo'
            MaxWidth = 0
            MaxHeight = 209
            LookupTable = DM1.cdsCCosto
            LookupField = 'CCOSID'
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnChange = dblcdCCostoChange
          end
          object meCCosto: TMaskEdit
            Left = 6
            Top = 52
            Width = 397
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    object gbDepartamento: TGroupBox
      Left = 0
      Top = 12
      Width = 422
      Height = 68
      Caption = 'Paso 1 -> Seleccionar el Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        422
        68)
      object Label13: TLabel
        Left = 9
        Top = 31
        Width = 80
        Height = 13
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dblcdDpto: TwwDBLookupComboDlg
        Left = 96
        Top = 23
        Width = 65
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Departamento'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsPadre
        LookupField = 'DPTOID'
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdDptoChange
      end
      object edtDpto: TMaskEdit
        Left = 163
        Top = 23
        Width = 248
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object pNavegacion: TPanel
    Left = 0
    Top = 452
    Width = 424
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 1
    object gbNavegacion: TGroupBox
      Left = 0
      Top = 0
      Width = 424
      Height = 57
      Align = alBottom
      TabOrder = 0
      object pCancelar: TPanel
        Left = 78
        Top = 15
        Width = 344
        Height = 40
        Align = alRight
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          344
          40)
        object btnCancelar: TBitBtn
          Left = 245
          Top = 3
          Width = 91
          Height = 30
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnCancelarClick
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
        object btnGrabar: TBitBtn
          Left = 124
          Top = 3
          Width = 99
          Height = 30
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = 'Grabar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnGrabarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
            7700333333337777777733333333008088003333333377F73377333333330088
            88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
            000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
            FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
            99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          NumGlyphs = 2
        end
      end
    end
  end
end
