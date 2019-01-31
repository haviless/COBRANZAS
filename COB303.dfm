object FAmpRedCuotas: TFAmpRedCuotas
  Left = 247
  Top = 76
  Width = 523
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
    Left = 4
    Top = 2
    Width = 505
    Height = 505
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 6
      Top = 4
      Width = 310
      Height = 27
      Caption = 'Ampliaci'#243'n y Reducci'#243'n de Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 33
      Width = 492
      Height = 88
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
        Left = 128
        Top = 46
        Width = 58
        Height = 15
        Caption = 'Saldo Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 233
        Top = 46
        Width = 102
        Height = 15
        Caption = 'Nuevo N'#176' de Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 8
        Top = 8
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
        Left = 82
        Top = 8
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
        Left = 215
        Top = 8
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
        Left = 348
        Top = 8
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
        Left = 8
        Top = 46
        Width = 108
        Height = 15
        Caption = 'Fecha de Ultimo Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 354
        Top = 47
        Width = 88
        Height = 15
        Caption = 'Fecha de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbeTipo: TwwDBEdit
        Left = 127
        Top = 60
        Width = 106
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
      object dbeApePat: TwwDBEdit
        Left = 82
        Top = 24
        Width = 133
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
      object dbeApeMat: TwwDBEdit
        Left = 215
        Top = 24
        Width = 133
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
      object dbeNombre: TwwDBEdit
        Left = 348
        Top = 24
        Width = 133
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
      object wwDBSpinEdit1: TwwDBSpinEdit
        Left = 233
        Top = 60
        Width = 121
        Height = 21
        Increment = 1.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        UnboundDataType = wwDefault
      end
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 8
        Top = 23
        Width = 72
        Height = 21
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object wwDBDateTimePicker3: TwwDBDateTimePicker
        Left = 8
        Top = 60
        Width = 119
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
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 354
        Top = 60
        Width = 108
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
    object PageControl1: TPageControl
      Left = 4
      Top = 129
      Width = 492
      Height = 373
      ActivePage = TabSheet1
      Style = tsButtons
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Cr'#233'ditos'
        object wwDBGrid1: TwwDBGrid
          Left = 4
          Top = 3
          Width = 533
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
          MemoAttributes = [mSizeable, mGridShow]
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
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
      object TabSheet2: TTabSheet
        Caption = 'Nuevo Cronograma de Pagos'
        ImageIndex = 1
        object wwDBGrid2: TwwDBGrid
          Left = 4
          Top = 3
          Width = 473
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
        object fcShapeBtn3: TfcShapeBtn
          Left = 378
          Top = 311
          Width = 32
          Height = 31
          Hint = 'Imprimir'
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
          TabOrder = 1
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
        end
      end
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 428
      Top = 466
      Width = 32
      Height = 31
      Hint = 'Calcular'
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
    object fcShapeBtn2: TfcShapeBtn
      Left = 472
      Top = 466
      Width = 32
      Height = 31
      Hint = 'Cancelar'
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
      OnClick = fcShapeBtn2Click
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 469
      Width = 359
      Height = 25
      TabOrder = 4
    end
  end
end
