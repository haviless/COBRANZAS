object FCtaCte: TFCtaCte
  Left = 155
  Top = 108
  Width = 647
  Height = 553
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
    Left = 4
    Top = 3
    Width = 630
    Height = 517
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 37
      Top = 8
      Width = 308
      Height = 27
      AutoSize = False
      Caption = 'Estado de Cuenta Corriente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 8
      Top = 38
      Width = 613
      Height = 160
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
        Left = 7
        Top = 82
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
        Left = 94
        Top = 5
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
        Left = 261
        Top = 5
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
        Left = 429
        Top = 5
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
        Left = 183
        Top = 82
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
        Left = 373
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
        Left = 7
        Top = 7
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
        Left = 181
        Top = 46
        Width = 76
        Height = 15
        Caption = 'Tipo de Doc Id'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 328
        Top = 46
        Width = 93
        Height = 15
        Caption = 'Número de Doc Id'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 8
        Top = 116
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
        Left = 185
        Top = 116
        Width = 93
        Height = 15
        Caption = 'Número de Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 7
        Top = 47
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
        Left = 378
        Top = 117
        Width = 99
        Height = 15
        Caption = 'Estado de la Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 446
        Top = 46
        Width = 46
        Height = 15
        Caption = 'Telefono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcUrb: TwwDBLookupCombo
        Left = 374
        Top = 95
        Width = 51
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'URBID'#9'3'#9'ID'#9'F'
          'URBDES'#9'40'#9'Urbanización'#9'F')
        DataField = 'URBID'
        LookupField = 'URBID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        AllowClearKey = True
        ShowMatchText = True
      end
      object dbeUrb: TwwDBEdit
        Left = 426
        Top = 95
        Width = 171
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
      object dbeNomPost: TwwDBEdit
        Left = 94
        Top = 21
        Width = 167
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 262
        Top = 21
        Width = 167
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
      object wwDBEdit2: TwwDBEdit
        Left = 429
        Top = 21
        Width = 167
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
      object wwDBLookupCombo19: TwwDBLookupCombo
        Left = 7
        Top = 95
        Width = 51
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'URBID'#9'3'#9'ID'#9'F'
          'URBDES'#9'40'#9'Urbanización'#9'F')
        DataField = 'URBID'
        LookupField = 'URBID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        AllowClearKey = True
        ShowMatchText = True
      end
      object wwDBEdit39: TwwDBEdit
        Left = 59
        Top = 95
        Width = 121
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
      object wwDBLookupCombo20: TwwDBLookupCombo
        Left = 180
        Top = 95
        Width = 51
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'URBID'#9'3'#9'ID'#9'F'
          'URBDES'#9'40'#9'Urbanización'#9'F')
        DataField = 'URBID'
        LookupField = 'URBID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        AllowClearKey = True
        ShowMatchText = True
      end
      object wwDBEdit44: TwwDBEdit
        Left = 232
        Top = 95
        Width = 141
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCodigoAsociado: TwwDBEdit
        Left = 7
        Top = 21
        Width = 87
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo17: TwwDBLookupCombo
        Left = 181
        Top = 61
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
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        AllowClearKey = True
      end
      object wwDBEdit40: TwwDBEdit
        Left = 226
        Top = 61
        Width = 100
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
      object wwDBEdit41: TwwDBEdit
        Left = 328
        Top = 61
        Width = 117
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
      object wwDBLookupCombo18: TwwDBLookupCombo
        Left = 7
        Top = 131
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
        TabOrder = 13
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        AllowClearKey = False
      end
      object wwDBEdit42: TwwDBEdit
        Left = 61
        Top = 131
        Width = 124
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 14
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit43: TwwDBEdit
        Left = 185
        Top = 131
        Width = 191
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 15
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 7
        Top = 61
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
        TabOrder = 16
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit5: TwwDBEdit
        Left = 58
        Top = 61
        Width = 122
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
      object wwDBLookupCombo15: TwwDBLookupCombo
        Left = 378
        Top = 131
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
        TabOrder = 18
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit31: TwwDBEdit
        Left = 429
        Top = 131
        Width = 169
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'VENDEDABR'
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 19
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit45: TwwDBEdit
        Left = 446
        Top = 61
        Width = 152
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 20
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel10: TPanel
      Left = 413
      Top = 7
      Width = 208
      Height = 38
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object wwDBEdit33: TwwDBEdit
        Left = 16
        Top = 7
        Width = 179
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pcDatos: TPageControl
      Left = 8
      Top = 202
      Width = 613
      Height = 309
      ActivePage = tbEstadoCtaAportes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object tbDatosLaborales: TTabSheet
        Caption = 'Operaciones de Créditos'
        ImageIndex = 1
        object dbgDatosLaborales: TwwDBGrid
          Left = 11
          Top = 5
          Width = 576
          Height = 230
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
          object dbgDatosLaboralesButton: TwwIButton
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
            OnClick = dbgDatosLaboralesButtonClick
          end
        end
        object pnlOperaciones: TPanel
          Left = 50
          Top = 66
          Width = 496
          Height = 143
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 1
          Visible = False
          object StaticText1: TStaticText
            Left = 1
            Top = 1
            Width = 490
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Operaciones '
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
          object Panel4: TPanel
            Left = 3
            Top = 21
            Width = 481
            Height = 111
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
              Width = 23
              Height = 15
              Caption = 'Tipo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 385
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
              Left = 201
              Top = 4
              Width = 95
              Height = 15
              Caption = 'Fecha de Solicitud'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 318
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
              Left = 6
              Top = 42
              Width = 61
              Height = 15
              Caption = 'Total Deuda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 138
              Top = 42
              Width = 80
              Height = 15
              Caption = 'Fecha de Inicio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 256
              Top = 42
              Width = 73
              Height = 15
              Caption = 'Fecha de Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object fcShapeBtn3: TfcShapeBtn
              Left = 392
              Top = 66
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
            object fcShapeBtn10: TfcShapeBtn
              Left = 433
              Top = 66
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
              OnClick = fcShapeBtn10Click
            end
            object wwDBEdit3: TwwDBEdit
              Left = 385
              Top = 18
              Width = 71
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
            object wwDBDateTimePicker1: TwwDBDateTimePicker
              Left = 201
              Top = 18
              Width = 116
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
            object wwDBEdit4: TwwDBEdit
              Left = 318
              Top = 18
              Width = 67
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
            object wwDBEdit8: TwwDBEdit
              Left = 6
              Top = 55
              Width = 129
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'VENDEDNOM'
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupCombo2: TwwDBLookupCombo
              Left = 7
              Top = 18
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
              TabOrder = 6
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
            end
            object wwDBEdit9: TwwDBEdit
              Left = 59
              Top = 18
              Width = 142
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'POSTCONTAC'
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBDateTimePicker2: TwwDBDateTimePicker
              Left = 138
              Top = 55
              Width = 116
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
              TabOrder = 8
            end
            object wwDBDateTimePicker3: TwwDBDateTimePicker
              Left = 256
              Top = 55
              Width = 115
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
              TabOrder = 9
            end
          end
        end
      end
      object tbDatosFamiliares: TTabSheet
        Caption = 'Cuotas a Pagar'
        ImageIndex = 2
        object wwDBGrid1: TwwDBGrid
          Left = 12
          Top = 7
          Width = 576
          Height = 230
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
          TabOrder = 1
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
        object pnlCuotasxPagar: TPanel
          Left = 97
          Top = 72
          Width = 418
          Height = 129
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 0
          Visible = False
          object StaticText3: TStaticText
            Left = 1
            Top = 1
            Width = 412
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Cuotas por Pagar'
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
            Left = 4
            Top = 23
            Width = 405
            Height = 96
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
              Width = 23
              Height = 15
              Caption = 'Tipo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 81
              Top = 40
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
              Left = 202
              Top = 4
              Width = 102
              Height = 15
              Caption = 'Forma de Descuento'
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
              Top = 40
              Width = 46
              Height = 15
              Caption = 'N° Cuota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 153
              Top = 40
              Width = 111
              Height = 15
              Caption = 'Fecha de Vencimiento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object fcShapeBtn5: TfcShapeBtn
              Left = 319
              Top = 58
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
            object fcShapeBtn6: TfcShapeBtn
              Left = 360
              Top = 58
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
            object wwDBEdit6: TwwDBEdit
              Left = 81
              Top = 54
              Width = 71
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
            object wwDBEdit7: TwwDBEdit
              Left = 7
              Top = 54
              Width = 71
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
            object wwDBLookupCombo1: TwwDBLookupCombo
              Left = 7
              Top = 18
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
              TabOrder = 4
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
            end
            object wwDBEdit11: TwwDBEdit
              Left = 59
              Top = 18
              Width = 142
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'POSTCONTAC'
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBLookupCombo4: TwwDBLookupCombo
              Left = 202
              Top = 18
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
              TabOrder = 6
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
            end
            object wwDBEdit10: TwwDBEdit
              Left = 254
              Top = 18
              Width = 142
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'POSTCONTAC'
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBDateTimePicker4: TwwDBDateTimePicker
              Left = 153
              Top = 54
              Width = 116
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
              TabOrder = 8
            end
          end
        end
      end
      object tbEstadoCtaAportes: TTabSheet
        Caption = 'Cuotas Pagadas'
        ImageIndex = 3
        object wwDBGrid2: TwwDBGrid
          Left = 11
          Top = 7
          Width = 576
          Height = 230
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
          TabOrder = 1
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
          object wwIButton2: TwwIButton
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
            OnClick = wwIButton2Click
          end
        end
        object pnlCuotasPagadas: TPanel
          Left = 119
          Top = 56
          Width = 356
          Height = 157
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 0
          Visible = False
          object StaticText2: TStaticText
            Left = 1
            Top = 1
            Width = 350
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Cuotas Pagadas'
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
          object Panel5: TPanel
            Left = 4
            Top = 23
            Width = 342
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
              Left = 263
              Top = 0
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
              Left = 6
              Top = 38
              Width = 102
              Height = 15
              Caption = 'Forma de Descuento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 200
              Top = 38
              Width = 56
              Height = 15
              Caption = 'Documento'
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
              Top = 1
              Width = 111
              Height = 15
              Caption = 'Fecha de Vencimiento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object TLabel
              Left = 133
              Top = 1
              Width = 72
              Height = 15
              Caption = 'Fecha de Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object fcShapeBtn4: TfcShapeBtn
              Left = 256
              Top = 83
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
            object fcShapeBtn7: TfcShapeBtn
              Left = 297
              Top = 83
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
              OnClick = fcShapeBtn7Click
            end
            object wwDBEdit12: TwwDBEdit
              Left = 263
              Top = 14
              Width = 71
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
            object wwDBEdit13: TwwDBEdit
              Left = 200
              Top = 52
              Width = 133
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
            object wwDBLookupCombo6: TwwDBLookupCombo
              Left = 6
              Top = 52
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
              TabOrder = 4
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
            end
            object wwDBEdit15: TwwDBEdit
              Left = 58
              Top = 52
              Width = 142
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              DataField = 'POSTCONTAC'
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBDateTimePicker5: TwwDBDateTimePicker
              Left = 5
              Top = 15
              Width = 128
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
              TabOrder = 6
            end
            object wwDBDateTimePicker6: TwwDBDateTimePicker
              Left = 133
              Top = 15
              Width = 128
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
              TabOrder = 7
            end
          end
        end
      end
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 529
      Top = 471
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
      Left = 577
      Top = 471
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object fcShapeBtn8: TfcShapeBtn
      Left = 481
      Top = 471
      Width = 32
      Height = 31
      Hint = 'Imprime Estado de Cuenta Corriente'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn8Click
    end
  end
  object ppRepEstadoCta: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 424
    Top = 479
    Version = '4.22 Pro'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 153811
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estado de Cuenta N°'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5644
        mmLeft = 48683
        mmTop = 37395
        mmWidth = 63500
        BandType = 0
      end
      object pplblFInic: TppLabel
        UserName = 'lblFInic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 23283
        mmTop = 46214
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taCenter
        Caption = 'Sr(a)(ita)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 46920
        mmTop = 46214
        mmWidth = 15522
        BandType = 0
      end
      object pplblFFin: TppLabel
        UserName = 'lblFFin'
        AutoSize = False
        Caption = 'Gutierrez Tejada, Maria Daniela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 63853
        mmTop = 46214
        mmWidth = 64558
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Código'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1411
        mmTop = 46214
        mmWidth = 20461
        BandType = 0
      end
      object pplblEstado: TppLabel
        UserName = 'lblEstado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5644
        mmLeft = 113595
        mmTop = 37395
        mmWidth = 28222
        BandType = 0
      end
      object pplblTipo: TppLabel
        UserName = 'lblEstado1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 23283
        mmTop = 51153
        mmWidth = 81845
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'lblFInic1'
        AutoSize = False
        Caption = 'Dirección'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1411
        mmTop = 51153
        mmWidth = 20461
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        AutoSize = True
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
        mmHeight = 24342
        mmLeft = 0
        mmTop = 0
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Sistema de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 23283
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 151695
        mmTop = 8114
        mmWidth = 13053
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 151695
        mmTop = 13758
        mmWidth = 13053
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 151695
        mmTop = 19403
        mmWidth = 13053
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 165806
        mmTop = 8114
        mmWidth = 29633
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        AutoSize = False
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 165806
        mmTop = 13758
        mmWidth = 29633
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 165806
        mmTop = 19403
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 132645
        mmTop = 46214
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Teléfono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 108656
        mmTop = 51153
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 130528
        mmTop = 51153
        mmWidth = 11289
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Distrito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1411
        mmTop = 56092
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 23283
        mmTop = 56092
        mmWidth = 13406
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Provincia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 42333
        mmTop = 56092
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 64206
        mmTop = 56092
        mmWidth = 13406
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 84402
        mmTop = 56092
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 111125
        mmTop = 56092
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 155575
        mmTop = 46214
        mmWidth = 11289
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'USE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1411
        mmTop = 61031
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'lblFInic2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 23283
        mmTop = 61031
        mmWidth = 13406
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Alignment = taCenter
        Caption = 'Colegio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 47096
        mmTop = 61119
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'lblFFin1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 63853
        mmTop = 61031
        mmWidth = 64558
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'Dirección'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1411
        mmTop = 65970
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Caption = 'Distrito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1411
        mmTop = 70908
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 23283
        mmTop = 70908
        mmWidth = 13406
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 23283
        mmTop = 65970
        mmWidth = 82550
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'Provincia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 42333
        mmTop = 70908
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 64206
        mmTop = 70908
        mmWidth = 13406
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 84402
        mmTop = 70908
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 113242
        mmTop = 70908
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Caption = 'N° Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 1058
        mmTop = 78317
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 22931
        mmTop = 78317
        mmWidth = 25753
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = 'D.N.I'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 50800
        mmTop = 78317
        mmWidth = 20461
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4939
        mmLeft = 72672
        mmTop = 78317
        mmWidth = 27517
        BandType = 0
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        ParentWidth = False
        mmHeight = 37042
        mmLeft = 1764
        mmTop = 85372
        mmWidth = 198173
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.75
          mmHeight = 353
          mmLeft = 3881
          mmTop = 93486
          mmWidth = 194381
          BandType = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.75
          mmHeight = 353
          mmLeft = 3881
          mmTop = 104775
          mmWidth = 194469
          BandType = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.75
          mmHeight = 353
          mmLeft = 3881
          mmTop = 99130
          mmWidth = 115359
          BandType = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Position = lpLeft
          Weight = 1
          mmHeight = 11289
          mmLeft = 3881
          mmTop = 93486
          mmWidth = 353
          BandType = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Position = lpLeft
          Weight = 1
          mmHeight = 11289
          mmLeft = 198262
          mmTop = 93486
          mmWidth = 353
          BandType = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Alignment = taCenter
          Caption = 'CREDITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 5292
          mmTop = 93839
          mmWidth = 113242
          BandType = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 5292
          mmTop = 99836
          mmWidth = 40922
          BandType = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 48331
          mmTop = 99836
          mmWidth = 19050
          BandType = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          Alignment = taCenter
          AutoSize = False
          Caption = 'N° Cuotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 71261
          mmTop = 99836
          mmWidth = 21167
          BandType = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 95956
          mmTop = 99836
          mmWidth = 21872
          BandType = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Position = lpLeft
          Weight = 1
          mmHeight = 11289
          mmLeft = 119239
          mmTop = 93486
          mmWidth = 353
          BandType = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label401'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total deuda con intereses'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 9525
          mmLeft = 121003
          mmTop = 94897
          mmWidth = 28575
          BandType = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha Inicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 151342
          mmTop = 97014
          mmWidth = 21519
          BandType = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 175331
          mmTop = 97014
          mmWidth = 21519
          BandType = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpLeft
          Weight = 1
          mmHeight = 5292
          mmLeft = 46920
          mmTop = 99484
          mmWidth = 353
          BandType = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Position = lpLeft
          Weight = 1
          mmHeight = 5292
          mmLeft = 68792
          mmTop = 99484
          mmWidth = 353
          BandType = 0
        end
        object ppLine11: TppLine
          UserName = 'Line101'
          Position = lpLeft
          Weight = 1
          mmHeight = 5292
          mmLeft = 93839
          mmTop = 99484
          mmWidth = 353
          BandType = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Position = lpLeft
          Weight = 1
          mmHeight = 11289
          mmLeft = 150284
          mmTop = 93486
          mmWidth = 353
          BandType = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Position = lpLeft
          Weight = 1
          mmHeight = 11289
          mmLeft = 173920
          mmTop = 93486
          mmWidth = 353
          BandType = 0
        end
        object ppLabel35: TppLabel
          UserName = 'Label9'
          Caption = 'Operaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 3969
          mmTop = 87577
          mmWidth = 25400
          BandType = 0
        end
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        ParentWidth = False
        mmHeight = 37042
        mmLeft = 2117
        mmTop = 123119
        mmWidth = 197909
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLine12: TppLine
          UserName = 'Line12'
          Weight = 0.75
          mmHeight = 353
          mmLeft = 4233
          mmTop = 131939
          mmWidth = 193940
          BandType = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Weight = 0.75
          mmHeight = 353
          mmLeft = 3881
          mmTop = 143228
          mmWidth = 194205
          BandType = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Weight = 0.75
          mmHeight = 529
          mmLeft = 4233
          mmTop = 137584
          mmWidth = 112713
          BandType = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 1
          mmHeight = 11113
          mmLeft = 4233
          mmTop = 132027
          mmWidth = 353
          BandType = 0
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Position = lpLeft
          Weight = 1
          mmHeight = 11113
          mmLeft = 197909
          mmTop = 132027
          mmWidth = 353
          BandType = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Alignment = taCenter
          Caption = 'CREDITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 51506
          mmTop = 132292
          mmWidth = 15169
          BandType = 0
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 5292
          mmTop = 138289
          mmWidth = 40922
          BandType = 0
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 45509
          mmTop = 138289
          mmWidth = 19050
          BandType = 0
        end
        object ppLabel48: TppLabel
          UserName = 'Label48'
          Alignment = taCenter
          AutoSize = False
          Caption = 'N° Cuotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 68440
          mmTop = 138289
          mmWidth = 21167
          BandType = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label402'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 93134
          mmTop = 138289
          mmWidth = 21872
          BandType = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Position = lpLeft
          Weight = 1
          mmHeight = 10848
          mmLeft = 116770
          mmTop = 132027
          mmWidth = 353
          BandType = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total deuda con intereses'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          WordWrap = True
          mmHeight = 9525
          mmLeft = 118181
          mmTop = 133350
          mmWidth = 28575
          BandType = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha Inicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 148520
          mmTop = 135467
          mmWidth = 21519
          BandType = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4939
          mmLeft = 172509
          mmTop = 135467
          mmWidth = 21519
          BandType = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Position = lpLeft
          Weight = 1
          mmHeight = 4498
          mmLeft = 47273
          mmTop = 138377
          mmWidth = 353
          BandType = 0
        end
        object ppLine19: TppLine
          UserName = 'Line102'
          Position = lpLeft
          Weight = 1
          mmHeight = 4763
          mmLeft = 66323
          mmTop = 138113
          mmWidth = 353
          BandType = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Position = lpLeft
          Weight = 1
          mmHeight = 5292
          mmLeft = 91370
          mmTop = 137584
          mmWidth = 353
          BandType = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Movimientos de Pagos Trimestral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 4498
          mmTop = 125148
          mmWidth = 59796
          BandType = 0
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
