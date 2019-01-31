object FPlantilla: TFPlantilla
  Left = 208
  Top = 51
  Width = 480
  Height = 543
  Caption = 'Cobranzas'
  Color = 13165023
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
    Left = 3
    Top = 3
    Width = 462
    Height = 502
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 5
      Top = 1
      Width = 88
      Height = 27
      Caption = 'Plantillas '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 5
      Top = 29
      Width = 452
      Height = 57
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
        Top = 8
        Width = 58
        Height = 15
        Caption = 'N'#176' Plantilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 88
        Top = 8
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
      object dblcFormaRep: TwwDBLookupCombo
        Left = 88
        Top = 23
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
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object dbeApePat: TwwDBEdit
        Left = 142
        Top = 23
        Width = 129
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
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 8
        Top = 23
        Width = 77
        Height = 21
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        WordWrap = False
        UnboundDataType = wwDefault
      end
    end
    object pcDatos: TPageControl
      Left = 5
      Top = 88
      Width = 450
      Height = 406
      ActivePage = TabSheet3
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TabSheet3: TTabSheet
        Caption = 'Columnas'
        ImageIndex = 2
        object wwDBGrid1: TwwDBGrid
          Left = 4
          Top = 3
          Width = 434
          Height = 334
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
        object pnlActualizacion: TPanel
          Left = 48
          Top = 14
          Width = 342
          Height = 312
          BorderStyle = bsSingle
          Color = 10207162
          TabOrder = 1
          Visible = False
          object StaticText2: TStaticText
            Left = 1
            Top = 1
            Width = 336
            Height = 18
            Align = alTop
            Alignment = taCenter
            BorderStyle = sbsSunken
            Caption = 'Actualizaci'#243'n de Columnas'
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
            Top = 19
            Width = 330
            Height = 282
            BevelOuter = bvNone
            Color = 13165023
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object TBevel
              Left = 6
              Top = 47
              Width = 312
              Height = 7
              Shape = bsTopLine
            end
            object TLabel
              Left = 8
              Top = 2
              Width = 41
              Height = 15
              Caption = 'N'#186' Item'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 68
              Top = 3
              Width = 62
              Height = 15
              Caption = 'Descripci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 17
              Top = 41
              Width = 47
              Height = 15
              Caption = 'Columnas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 8
              Top = 58
              Width = 32
              Height = 15
              Caption = 'Inicio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 66
              Top = 58
              Width = 25
              Height = 15
              Caption = 'Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 130
              Top = 58
              Width = 105
              Height = 15
              Caption = 'Columna Equivalente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 8
              Top = 107
              Width = 65
              Height = 15
              Caption = 'Tipo de Dato'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 127
              Top = 107
              Width = 149
              Height = 15
              Caption = 'Valor/Formato de Asignaci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 8
              Top = 243
              Width = 43
              Height = 15
              Caption = 'Cab/Det'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
            end
            object TBevel
              Left = 6
              Top = 224
              Width = 312
              Height = 7
              Shape = bsTopLine
            end
            object fcShapeBtn5: TfcShapeBtn
              Left = 244
              Top = 241
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
              Left = 286
              Top = 241
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
            object wwDBEdit1: TwwDBEdit
              Left = 8
              Top = 16
              Width = 57
              Height = 21
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 13165023
              Ctl3D = True
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentCtl3D = False
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit2: TwwDBEdit
              Left = 68
              Top = 16
              Width = 249
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              Ctl3D = True
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentCtl3D = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBSpinEdit3: TwwDBSpinEdit
              Left = 8
              Top = 79
              Width = 57
              Height = 21
              Increment = 1.000000000000000000
              MaxValue = 255.000000000000000000
              BorderStyle = bsNone
              Color = 13165023
              Ctl3D = True
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentCtl3D = False
              TabOrder = 4
              UnboundDataType = wwDefault
            end
            object wwDBSpinEdit4: TwwDBSpinEdit
              Left = 68
              Top = 79
              Width = 57
              Height = 21
              Increment = 1.000000000000000000
              MaxValue = 255.000000000000000000
              BorderStyle = bsNone
              Color = 13165023
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              TabOrder = 5
              UnboundDataType = wwDefault
            end
            object wwDBComboBox1: TwwDBComboBox
              Left = 128
              Top = 79
              Width = 193
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              BorderStyle = bsNone
              Color = 13165023
              DropDownCount = 8
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ItemHeight = 0
              Sorted = False
              TabOrder = 6
              UnboundDataType = wwDefault
            end
            object wwDBComboBox2: TwwDBComboBox
              Left = 8
              Top = 122
              Width = 121
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              BorderStyle = bsNone
              Color = 13165023
              DropDownCount = 8
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ItemHeight = 0
              Sorted = False
              TabOrder = 7
              UnboundDataType = wwDefault
            end
            object DBCheckBox1: TDBCheckBox
              Left = 8
              Top = 156
              Width = 97
              Height = 16
              Caption = 'Decimales'
              TabOrder = 8
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 8
              Top = 179
              Width = 112
              Height = 16
              Caption = 'Rellenar c/Blanco'
              TabOrder = 9
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 8
              Top = 201
              Width = 112
              Height = 16
              Caption = 'Rellenar c/Valor'
              TabOrder = 10
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object wwDBComboBox3: TwwDBComboBox
              Left = 120
              Top = 196
              Width = 106
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              BorderStyle = bsNone
              Color = 13165023
              DropDownCount = 8
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ItemHeight = 0
              Sorted = False
              TabOrder = 11
              UnboundDataType = wwDefault
            end
            object wwDBComboBox4: TwwDBComboBox
              Left = 120
              Top = 174
              Width = 106
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              BorderStyle = bsNone
              Color = 13165023
              DropDownCount = 8
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ItemHeight = 0
              Sorted = False
              TabOrder = 12
              UnboundDataType = wwDefault
            end
            object wwDBEdit4: TwwDBEdit
              Left = 228
              Top = 195
              Width = 57
              Height = 21
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 13165023
              Ctl3D = True
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentCtl3D = False
              TabOrder = 13
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit3: TwwDBEdit
              Left = 130
              Top = 122
              Width = 189
              Height = 21
              BorderStyle = bsNone
              Color = 13165023
              Ctl3D = True
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentCtl3D = False
              TabOrder = 14
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit5: TwwDBEdit
              Left = 120
              Top = 151
              Width = 57
              Height = 21
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = 13165023
              Ctl3D = True
              Enabled = False
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentCtl3D = False
              TabOrder = 15
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object DBCheckBox4: TDBCheckBox
              Left = 183
              Top = 155
              Width = 130
              Height = 16
              Caption = 'Totalizar Monto'
              TabOrder = 16
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object wwDBComboBox5: TwwDBComboBox
              Left = 56
              Top = 242
              Width = 65
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              BorderStyle = bsNone
              Color = 13165023
              DropDownCount = 8
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ItemHeight = 0
              Sorted = False
              TabOrder = 17
              UnboundDataType = wwDefault
            end
          end
        end
      end
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 371
      Top = 457
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
    end
    object bbtnCancel: TfcShapeBtn
      Left = 411
      Top = 457
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancelClick
    end
  end
end
