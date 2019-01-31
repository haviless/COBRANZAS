object FReclamos: TFReclamos
  Left = 222
  Top = 15
  BorderStyle = bsDialog
  Caption = 'Cobranzas'
  ClientHeight = 553
  ClientWidth = 783
  Color = 12904163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 4
    Top = 2
    Width = 773
    Height = 571
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 50
      Top = 4
      Width = 205
      Height = 27
      Caption = 'Reclamo de Cobranzas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 4
      Top = 37
      Width = 764
      Height = 243
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object GroupBox2: TGroupBox
        Left = 8
        Top = 103
        Width = 747
        Height = 136
        Caption = 'Datos del Reclamo'
        TabOrder = 0
        object TLabel
          Left = 9
          Top = 17
          Width = 99
          Height = 15
          Caption = 'Motivo del Reclamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 275
          Top = 17
          Width = 125
          Height = 15
          Caption = 'Departamento de Origen'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 474
          Top = 17
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
        object TLabel
          Left = 6
          Top = 54
          Width = 76
          Height = 15
          Caption = 'Forma de Pago '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 180
          Top = 54
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
          Left = 352
          Top = 55
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
          Left = 6
          Top = 91
          Width = 70
          Height = 15
          Caption = 'Lugar de Giro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 179
          Top = 91
          Width = 52
          Height = 15
          Caption = 'N° Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 284
          Top = 91
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
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 7
          Top = 32
          Width = 51
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
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit7: TwwDBEdit
          Left = 58
          Top = 32
          Width = 217
          Height = 21
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
        object wwDBLookupCombo6: TwwDBLookupCombo
          Left = 275
          Top = 32
          Width = 51
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
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit8: TwwDBEdit
          Left = 326
          Top = 32
          Width = 140
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
        object wwDBRichEdit1: TwwDBRichEdit
          Left = 474
          Top = 34
          Width = 259
          Height = 90
          AutoURLDetect = False
          BorderStyle = bsNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -10
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          PrintJobName = 'Delphi 5'
          TabOrder = 4
          EditorCaption = 'Edit Rich Text'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 0
          EditorPosition.Height = 0
          MeasurementUnits = muInches
          PrintMargins.Top = 1
          PrintMargins.Bottom = 1
          PrintMargins.Left = 1
          PrintMargins.Right = 1
          RichEditVersion = 2
          Data = {
            B50000007B5C727466315C616E73695C616E7369637067313235325C64656666
            307B5C666F6E7474626C7B5C66305C666E696C5C66636861727365743020436F
            6D69632053616E73204D533B7D7D0D0A7B5C636F6C6F7274626C203B5C726564
            305C677265656E305C626C75653132383B7D0D0A5C766965776B696E64345C75
            63315C706172645C6366315C6C616E6731303235305C66305C66733230206462
            72654F62736572766163696F6E65735C7061720D0A7D0D0A00}
        end
        object wwDBLookupCombo13: TwwDBLookupCombo
          Left = 6
          Top = 69
          Width = 49
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit9: TwwDBEdit
          Left = 55
          Top = 69
          Width = 125
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo14: TwwDBLookupCombo
          Left = 180
          Top = 69
          Width = 49
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 7
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit10: TwwDBEdit
          Left = 229
          Top = 69
          Width = 123
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo15: TwwDBLookupCombo
          Left = 352
          Top = 69
          Width = 38
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 9
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit11: TwwDBEdit
          Left = 391
          Top = 69
          Width = 75
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo16: TwwDBLookupCombo
          Left = 6
          Top = 106
          Width = 49
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 11
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit12: TwwDBEdit
          Left = 55
          Top = 106
          Width = 124
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit24: TwwDBEdit
          Left = 179
          Top = 106
          Width = 105
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit25: TwwDBEdit
          Left = 284
          Top = 106
          Width = 103
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
      end
      object GroupBox1: TGroupBox
        Left = 7
        Top = 4
        Width = 747
        Height = 96
        Caption = 'Datos del Asociado'
        TabOrder = 1
        object TLabel
          Left = 7
          Top = 14
          Width = 35
          Height = 15
          Caption = 'Código'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 80
          Top = 14
          Width = 80
          Height = 15
          Caption = 'Código Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 7
          Top = 51
          Width = 77
          Height = 15
          Caption = 'Código de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 105
          Top = 51
          Width = 23
          Height = 15
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 288
          Top = 51
          Width = 150
          Height = 15
          Caption = 'Documento de Identificación'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 453
          Top = 51
          Width = 14
          Height = 15
          Caption = 'N°'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 561
          Top = 51
          Width = 102
          Height = 15
          Caption = 'Estado del Asociado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 177
          Top = 14
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
          Left = 328
          Top = 14
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
          Left = 481
          Top = 14
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
        object wwDBLookupComboDlg3: TwwDBLookupComboDlg
          Left = 7
          Top = 29
          Width = 72
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
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit15: TwwDBEdit
          Left = 80
          Top = 29
          Width = 96
          Height = 21
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
        object wwDBEdit16: TwwDBEdit
          Left = 7
          Top = 67
          Width = 98
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo10: TwwDBLookupCombo
          Left = 105
          Top = 67
          Width = 49
          Height = 21
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit17: TwwDBEdit
          Left = 154
          Top = 67
          Width = 134
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo11: TwwDBLookupCombo
          Left = 288
          Top = 67
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
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          AllowClearKey = True
        end
        object wwDBEdit18: TwwDBEdit
          Left = 332
          Top = 67
          Width = 112
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit19: TwwDBEdit
          Left = 444
          Top = 67
          Width = 117
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo12: TwwDBLookupCombo
          Left = 561
          Top = 67
          Width = 51
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
          TabOrder = 8
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object wwDBEdit20: TwwDBEdit
          Left = 613
          Top = 67
          Width = 122
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'VENDEDABR'
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit21: TwwDBEdit
          Left = 177
          Top = 29
          Width = 152
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit22: TwwDBEdit
          Left = 329
          Top = 29
          Width = 152
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit23: TwwDBEdit
          Left = 481
          Top = 29
          Width = 163
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
      end
    end
    object Panel10: TPanel
      Left = 431
      Top = 4
      Width = 337
      Height = 40
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
        Left = 88
        Top = 0
        Width = 50
        Height = 15
        Caption = 'Situación'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 5
        Top = 0
        Width = 59
        Height = 15
        Caption = 'N° Reclamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 238
        Top = 1
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
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 87
        Top = 15
        Width = 45
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
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit5: TwwDBEdit
        Left = 132
        Top = 15
        Width = 106
        Height = 21
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
      object wwDBLookupComboDlg1: TwwDBLookupComboDlg
        Left = 7
        Top = 15
        Width = 80
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
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 238
        Top = 15
        Width = 90
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
    end
    object s: TPageControl
      Left = 4
      Top = 284
      Width = 764
      Height = 276
      ActivePage = TabSheet1
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Historico de Situación'
        object Panel2: TPanel
          Left = 3
          Top = 4
          Width = 750
          Height = 197
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
            Left = 8
            Top = 6
            Width = 3
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object wwDBGrid2: TwwDBGrid
            Left = 5
            Top = 7
            Width = 740
            Height = 170
            Selected.Strings = (
              'TDIARID'#9'3'#9'TD'#9'F'
              'CPANOMES'#9'7'#9'Periodo'#9'F'
              'CPNOREG'#9'7'#9'No.Reg'#9'F'
              'lkDocID'#9'4'#9'Doc'#9'F'
              'CPSERIE'#9'5'#9'Serie'#9'F'
              'CPNODOC'#9'13'#9'No.Documento'#9'F'
              'CPFEMIS'#9'10'#9'Fecha~Emisión'#9'F'
              'CPFVCMTO'#9'10'#9'Fecha~Vcmto'#9'F'
              'CPTCAMPR'#9'9'#9'T.Cambio~Provisión'#9'F'
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
            IndicatorColor = icBlack
          end
        end
      end
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 686
      Top = 516
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 728
      Top = 516
      Width = 31
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
  end
end
