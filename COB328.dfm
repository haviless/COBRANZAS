object FAnulaChequeEdit: TFAnulaChequeEdit
  Left = 292
  Top = 89
  Width = 900
  Height = 640
  Caption = 'Registro de Detalle de Anulaci'#243'n de Cheques'
  Color = 10207162
  Constraints.MaxHeight = 640
  Constraints.MaxWidth = 900
  Constraints.MinHeight = 640
  Constraints.MinWidth = 900
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
  object Panel1: TPanel
    Left = 4
    Top = 3
    Width = 875
    Height = 59
    Color = 10207162
    Enabled = False
    TabOrder = 0
    object TLabel
      Left = 24
      Top = 29
      Width = 71
      Height = 15
      Caption = 'N'#250'mero CHQ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 224
      Top = 29
      Width = 33
      Height = 15
      Caption = 'Fecha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 15
      Top = 3
      Width = 89
      Height = 16
      Caption = 'Cheque Anulado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 393
      Top = 29
      Width = 35
      Height = 15
      Caption = 'Monto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 745
      Top = 29
      Width = 42
      Height = 15
      Caption = 'Periodo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object wwDBEdit1: TwwDBEdit
      Left = 262
      Top = 28
      Width = 100
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'FECCHE'
      DataSource = DM1.dsAcuerdos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
    object dbeChqNum: TwwDBEdit
      Left = 100
      Top = 28
      Width = 100
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'NUMCHE'
      DataSource = DM1.dsAcuerdos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
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
    object dbeMonTot: TwwDBEdit
      Left = 434
      Top = 28
      Width = 100
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'MONCHE'
      DataSource = DM1.dsAcuerdos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
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
    object wwDBEdit2: TwwDBEdit
      Left = 792
      Top = 28
      Width = 60
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'PERORI'
      DataSource = DM1.dsAcuerdos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
    end
  end
  object pnlE1: TPanel
    Left = 4
    Top = 65
    Width = 875
    Height = 60
    Color = 10207162
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 3
      Width = 156
      Height = 16
      Caption = 'Entregado por Contabilidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 26
      Top = 30
      Width = 91
      Height = 15
      Caption = 'N'#250'mero de Memo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 248
      Top = 30
      Width = 66
      Height = 15
      Caption = 'Fecha Memo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 472
      Top = 30
      Width = 89
      Height = 15
      Caption = 'Fecha Recepci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object dbeNumMem: TwwDBEdit
      Left = 125
      Top = 28
      Width = 90
      Height = 21
      DataField = 'NUMCON'
      DataSource = DM1.dsUtilidades
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dtpFecCon: TwwDBDateTimePicker
      Left = 320
      Top = 28
      Width = 100
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'FECCON'
      DataSource = DM1.dsUtilidades
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      UnboundDataType = wwDTEdtDate
    end
    object dtpFecRec: TwwDBDateTimePicker
      Left = 568
      Top = 28
      Width = 100
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'FECREC'
      DataSource = DM1.dsUtilidades
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object pnl1: TPanel
      Left = 784
      Top = 23
      Width = 90
      Height = 36
      Color = 10207162
      TabOrder = 3
      Visible = False
      object bbtnG1: TfcShapeBtn
        Left = 8
        Top = 3
        Width = 34
        Height = 31
        Hint = 'Registrar'
        Color = 13165023
        DitherColor = clWhite
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
        Layout = blGlyphBottom
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnG1Click
      end
      object bbtnC1: TfcShapeBtn
        Left = 46
        Top = 3
        Width = 34
        Height = 31
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
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnC1Click
      end
    end
  end
  object pnlE2: TPanel
    Left = 4
    Top = 129
    Width = 875
    Height = 60
    Color = 10207162
    Enabled = False
    TabOrder = 2
    object Label3: TLabel
      Left = 15
      Top = 3
      Width = 98
      Height = 16
      Caption = 'Oficio de gesti'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 26
      Top = 30
      Width = 96
      Height = 15
      Caption = 'N'#250'mero de Oficio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 280
      Top = 30
      Width = 33
      Height = 15
      Caption = 'Fecha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object dbeNumOfi: TwwDBEdit
      Left = 125
      Top = 28
      Width = 90
      Height = 21
      DataField = 'NUMOFI'
      DataSource = DM1.dsUtilidades
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dtpFecOfi: TwwDBDateTimePicker
      Left = 320
      Top = 28
      Width = 100
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'FECOFI'
      DataSource = DM1.dsUtilidades
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      UnboundDataType = wwDTEdtDate
    end
    object pnl2: TPanel
      Left = 784
      Top = 23
      Width = 90
      Height = 36
      Color = 10207162
      TabOrder = 2
      Visible = False
      object bbtnG2: TfcShapeBtn
        Left = 8
        Top = 3
        Width = 34
        Height = 31
        Hint = 'Registrar'
        Color = 13165023
        DitherColor = clWhite
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
        Layout = blGlyphBottom
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnG2Click
      end
      object bbtnC2: TfcShapeBtn
        Left = 48
        Top = 3
        Width = 34
        Height = 31
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
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnC2Click
      end
    end
  end
  object Panel4: TPanel
    Left = 4
    Top = 193
    Width = 876
    Height = 363
    Color = 10207162
    TabOrder = 3
    object Label4: TLabel
      Left = 14
      Top = 3
      Width = 138
      Height = 16
      Caption = 'Cheques Reprogramados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gbE3: TGroupBox
      Left = 12
      Top = 24
      Width = 861
      Height = 66
      Caption = 'Cheque 1'
      Enabled = False
      TabOrder = 0
      object TLabel
        Left = 12
        Top = 30
        Width = 40
        Height = 15
        Caption = 'Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 494
        Top = 30
        Width = 35
        Height = 15
        Caption = 'Monto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 309
        Top = 30
        Width = 74
        Height = 15
        Caption = 'N'#176' Operaci'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 159
        Top = 30
        Width = 33
        Height = 15
        Caption = 'Fecha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 639
        Top = 30
        Width = 27
        Height = 15
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbeNumChe1: TwwDBEdit
        Left = 56
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numche1'
        DataSource = DM1.dsUtilidades
        MaxLength = 12
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNumOpe1: TwwDBEdit
        Left = 387
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numope1'
        DataSource = DM1.dsUtilidades
        MaxLength = 12
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeMonChe1: TwwDBEdit
        Left = 533
        Top = 27
        Width = 80
        Height = 21
        DataField = 'monche1'
        DataSource = DM1.dsUtilidades
        MaxLength = 12
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeFecChe1: TwwDBDateTimePicker
        Left = 196
        Top = 27
        Width = 90
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'fecche1'
        DataSource = DM1.dsUtilidades
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
        UnboundDataType = wwDTEdtDate
      end
      object pnl3: TPanel
        Left = 776
        Top = 28
        Width = 83
        Height = 36
        Color = 10207162
        TabOrder = 4
        Visible = False
        object bbtnG3: TfcShapeBtn
          Left = 6
          Top = 3
          Width = 34
          Height = 31
          Hint = 'Registrar'
          Color = 13165023
          DitherColor = clWhite
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
          Layout = blGlyphBottom
          NumGlyphs = 2
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 0
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnG3Click
        end
        object bbtnC3: TfcShapeBtn
          Left = 46
          Top = 3
          Width = 34
          Height = 31
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
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 1
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnC3Click
        end
      end
      object dblcObs1: TwwDBLookupCombo
        Left = 671
        Top = 27
        Width = 80
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOMBRE'#9'10'#9'PAGO'#9'F')
        DataField = 'observ1'
        DataSource = DM1.dsUtilidades
        LookupTable = DM1.cdsQry11
        LookupField = 'NOMBRE'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object cbE3: TCheckBox
      Left = 825
      Top = 33
      Width = 45
      Height = 17
      Caption = 'Edita'
      TabOrder = 1
      OnClick = cbE3Click
    end
    object gbE4: TGroupBox
      Left = 12
      Top = 102
      Width = 861
      Height = 66
      Caption = 'Cheque 2'
      Enabled = False
      TabOrder = 2
      object TLabel
        Left = 12
        Top = 30
        Width = 40
        Height = 15
        Caption = 'Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 494
        Top = 30
        Width = 35
        Height = 15
        Caption = 'Monto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 309
        Top = 30
        Width = 74
        Height = 15
        Caption = 'N'#176' Operaci'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 159
        Top = 30
        Width = 36
        Height = 15
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 639
        Top = 30
        Width = 27
        Height = 15
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbeNumChe2: TwwDBEdit
        Left = 56
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numche2'
        DataSource = DM1.dsUtilidades
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNumOpe2: TwwDBEdit
        Left = 387
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numope2'
        DataSource = DM1.dsUtilidades
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeMonChe2: TwwDBEdit
        Left = 533
        Top = 27
        Width = 80
        Height = 21
        DataField = 'monche2'
        DataSource = DM1.dsUtilidades
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeFecChe2: TwwDBDateTimePicker
        Left = 196
        Top = 27
        Width = 90
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'fecche2'
        DataSource = DM1.dsUtilidades
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
        UnboundDataType = wwDTEdtDate
      end
      object pnl4: TPanel
        Left = 776
        Top = 28
        Width = 83
        Height = 36
        Color = 10207162
        TabOrder = 4
        Visible = False
        object bbtnG4: TfcShapeBtn
          Left = 6
          Top = 3
          Width = 34
          Height = 31
          Hint = 'Registrar'
          Color = 13165023
          DitherColor = clWhite
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
          Layout = blGlyphBottom
          NumGlyphs = 2
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 0
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnG4Click
        end
        object bbtnC4: TfcShapeBtn
          Left = 46
          Top = 3
          Width = 34
          Height = 31
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
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 1
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnC4Click
        end
      end
      object dblcObs2: TwwDBLookupCombo
        Left = 671
        Top = 27
        Width = 80
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOMBRE'#9'10'#9'PAGO'#9'F')
        DataField = 'observ2'
        DataSource = DM1.dsUtilidades
        LookupTable = DM1.cdsQry10
        LookupField = 'NOMBRE'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object gbE5: TGroupBox
      Left = 12
      Top = 180
      Width = 861
      Height = 66
      Caption = 'Cheque 3'
      Enabled = False
      TabOrder = 3
      object TLabel
        Left = 12
        Top = 30
        Width = 40
        Height = 15
        Caption = 'Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 494
        Top = 30
        Width = 35
        Height = 15
        Caption = 'Monto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 309
        Top = 30
        Width = 74
        Height = 15
        Caption = 'N'#176' Operaci'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 159
        Top = 30
        Width = 36
        Height = 15
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 639
        Top = 30
        Width = 27
        Height = 15
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbeNumChe3: TwwDBEdit
        Left = 56
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numche3'
        DataSource = DM1.dsUtilidades
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNumOpe3: TwwDBEdit
        Left = 387
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numope3'
        DataSource = DM1.dsUtilidades
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeMonChe3: TwwDBEdit
        Left = 533
        Top = 27
        Width = 80
        Height = 21
        DataField = 'monche3'
        DataSource = DM1.dsUtilidades
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeFecChe3: TwwDBDateTimePicker
        Left = 196
        Top = 27
        Width = 90
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'fecche3'
        DataSource = DM1.dsUtilidades
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
        UnboundDataType = wwDTEdtDate
      end
      object pnl5: TPanel
        Left = 776
        Top = 28
        Width = 83
        Height = 36
        Color = 10207162
        TabOrder = 4
        Visible = False
        object bbtnG5: TfcShapeBtn
          Left = 6
          Top = 3
          Width = 34
          Height = 31
          Hint = 'Registrar'
          Color = 13165023
          DitherColor = clWhite
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
          Layout = blGlyphBottom
          NumGlyphs = 2
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 0
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnG5Click
        end
        object bbtnC5: TfcShapeBtn
          Left = 46
          Top = 3
          Width = 34
          Height = 31
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
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 1
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnC5Click
        end
      end
      object dblcObs3: TwwDBLookupCombo
        Left = 671
        Top = 27
        Width = 80
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOMBRE'#9'10'#9'PAGO'#9'F')
        DataField = 'observ3'
        DataSource = DM1.dsUtilidades
        LookupTable = DM1.cdsQry26
        LookupField = 'NOMBRE'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object gbE6: TGroupBox
      Left = 12
      Top = 257
      Width = 861
      Height = 66
      Caption = 'Cheque 4'
      Enabled = False
      TabOrder = 4
      object TLabel
        Left = 12
        Top = 30
        Width = 40
        Height = 15
        Caption = 'Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 494
        Top = 30
        Width = 35
        Height = 15
        Caption = 'Monto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 309
        Top = 30
        Width = 74
        Height = 15
        Caption = 'N'#176' Operaci'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 159
        Top = 30
        Width = 36
        Height = 15
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 639
        Top = 30
        Width = 27
        Height = 15
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbeNumChe4: TwwDBEdit
        Left = 56
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numche4'
        DataSource = DM1.dsUtilidades
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNumOpe4: TwwDBEdit
        Left = 387
        Top = 27
        Width = 80
        Height = 21
        DataField = 'numope4'
        DataSource = DM1.dsUtilidades
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeMonChe4: TwwDBEdit
        Left = 533
        Top = 27
        Width = 80
        Height = 21
        DataField = 'monche4'
        DataSource = DM1.dsUtilidades
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeFecChe4: TwwDBDateTimePicker
        Left = 196
        Top = 27
        Width = 90
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'fecche3'
        DataSource = DM1.dsUtilidades
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
        UnboundDataType = wwDTEdtDate
      end
      object pnl6: TPanel
        Left = 776
        Top = 28
        Width = 83
        Height = 36
        Color = 10207162
        TabOrder = 4
        Visible = False
        object bbtnG6: TfcShapeBtn
          Left = 6
          Top = 3
          Width = 34
          Height = 31
          Hint = 'Registrar'
          Color = 13165023
          DitherColor = clWhite
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
          Layout = blGlyphBottom
          NumGlyphs = 2
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 0
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnG6Click
        end
        object bbtnC6: TfcShapeBtn
          Left = 46
          Top = 3
          Width = 34
          Height = 31
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
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 1
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnC6Click
        end
      end
      object dblcObs4: TwwDBLookupCombo
        Left = 671
        Top = 27
        Width = 80
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOMBRE'#9'10'#9'PAGO'#9'F')
        DataField = 'observ4'
        DataSource = DM1.dsUtilidades
        LookupTable = DM1.cdsQry30
        LookupField = 'NOMBRE'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object cbE4: TCheckBox
      Left = 826
      Top = 111
      Width = 45
      Height = 17
      Caption = 'Edita'
      TabOrder = 5
      OnClick = cbE4Click
    end
    object cbE5: TCheckBox
      Left = 826
      Top = 189
      Width = 45
      Height = 17
      Caption = 'Edita'
      TabOrder = 6
      OnClick = cbE5Click
    end
    object cbE6: TCheckBox
      Left = 825
      Top = 266
      Width = 45
      Height = 17
      Caption = 'Edita'
      TabOrder = 7
      OnClick = cbE6Click
    end
    object TPanel
      Left = 345
      Top = 327
      Width = 311
      Height = 32
      Enabled = False
      TabOrder = 8
      object TLabel
        Left = 19
        Top = 7
        Width = 150
        Height = 15
        Caption = 'Total Cheque Reprogramados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object bdeTotCheq: TwwDBEdit
        Left = 201
        Top = 5
        Width = 80
        Height = 19
        BorderStyle = bsNone
        DataField = 'TOTAL'
        DataSource = DM1.dsUtilidades
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object cbE1: TCheckBox
    Left = 833
    Top = 69
    Width = 45
    Height = 17
    Caption = 'Edita'
    TabOrder = 4
    OnClick = cbE1Click
  end
  object cbE2: TCheckBox
    Left = 833
    Top = 133
    Width = 45
    Height = 17
    Caption = 'Edita'
    TabOrder = 5
    OnClick = cbE2Click
  end
  object Panel2: TPanel
    Left = 4
    Top = 559
    Width = 876
    Height = 40
    Color = 10207162
    TabOrder = 6
    object BtnCerrar: TBitBtn
      Left = 790
      Top = 5
      Width = 77
      Height = 30
      Caption = 'Cerrar'
      TabOrder = 0
      OnClick = BtnCerrarClick
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
    object bbtnRegula: TBitBtn
      Left = 624
      Top = 5
      Width = 89
      Height = 30
      Caption = 'Regularizar'
      TabOrder = 1
      OnClick = bbtnRegulaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
end
