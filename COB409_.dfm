object FContabilizacion: TFContabilizacion
  Left = 273
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contabilizaci'#243'n'
  ClientHeight = 452
  ClientWidth = 562
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCabecera: TPanel
    Left = 8
    Top = 5
    Width = 548
    Height = 434
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = -3
      Width = 372
      Height = 27
      AutoSize = False
      Caption = 'Contabilizaci'#243'n de Cobranzas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 511
      Top = 5
      Width = 17
      Height = 15
      Caption = 'V.3'
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 473
      Top = 400
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
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object Panel1: TPanel
      Left = 5
      Top = 25
      Width = 537
      Height = 373
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
        Left = 245
        Top = 23
        Width = 108
        Height = 15
        Caption = 'Fecha de Movimiento'
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 24
        Top = 16
        Width = 130
        Height = 59
        Caption = 'Periodo'
        TabOrder = 0
        object TLabel
          Left = 75
          Top = 15
          Width = 21
          Height = 15
          Caption = 'Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object TLabel
          Left = 23
          Top = 15
          Width = 20
          Height = 15
          Caption = 'A'#241'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object dbseMes: TwwDBSpinEdit
          Left = 74
          Top = 28
          Width = 34
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          Value = 9.000000000000000000
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 10207162
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          LimitEditRect = True
          MaxLength = 2
          TabOrder = 0
          UnboundDataType = wwDefault
          OnExit = dbseMesExit
        end
        object dbseAno: TwwDBSpinEdit
          Left = 21
          Top = 28
          Width = 51
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 2060.000000000000000000
          MinValue = 2003.000000000000000000
          Value = 2004.000000000000000000
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 10207162
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          LimitEditRect = True
          MaxLength = 4
          TabOrder = 1
          UnboundDataType = wwDefault
          OnExit = dbseAnoExit
        end
      end
      object PageControl1: TPageControl
        Left = 8
        Top = 88
        Width = 521
        Height = 281
        ActivePage = TabSheet7
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = 'TeleAhorro'
          ImageIndex = 3
          object Label1: TLabel
            Left = 200
            Top = 0
            Width = 110
            Height = 29
            Caption = 'TeleAhorro'
            Color = 13165023
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Panel3: TPanel
            Left = 89
            Top = 169
            Width = 330
            Height = 67
            Color = 10207162
            TabOrder = 2
            object bbtnContabTeleAhorro: TBitBtn
              Left = 17
              Top = 7
              Width = 232
              Height = 24
              Caption = 'Contabilizaci'#243'n deTeleAhorros'
              TabOrder = 0
              OnClick = bbtnContabTeleAhorroClick
            end
            object BitBtn1: TBitBtn
              Left = 17
              Top = 38
              Width = 232
              Height = 24
              Caption = 'Transferencia a Contabilidad'
              TabOrder = 1
              OnClick = BitBtn1Click
            end
            object fcShapeBtn1: TfcShapeBtn
              Left = 266
              Top = 7
              Width = 49
              Height = 25
              Hint = 'Reporte de Contabilizacion Previo'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 2
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn1Click
            end
            object fcShapeBtn3: TfcShapeBtn
              Left = 266
              Top = 38
              Width = 49
              Height = 25
              Hint = 'Reporte Transferencia a Contabilidad'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 3
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn3Click
            end
          end
          object Panel2: TPanel
            Left = 89
            Top = 32
            Width = 330
            Height = 130
            Color = 10207162
            TabOrder = 1
            object bbtnTeleCorrige: TBitBtn
              Left = 17
              Top = 7
              Width = 297
              Height = 24
              Caption = 'Corrige la Unidad de pagos mal asignadas en CRE310'
              TabOrder = 0
              OnClick = bbtnTeleCorrigeClick
            end
            object bbtnTeleIncons: TBitBtn
              Left = 17
              Top = 38
              Width = 297
              Height = 24
              Caption = 'Inconsistencias de Pagos Realizados CRE310'
              TabOrder = 1
              OnClick = bbtnTeleInconsClick
            end
            object bbtnVerifCtasCCosTel: TBitBtn
              Left = 17
              Top = 69
              Width = 297
              Height = 24
              Caption = 'Verifica Cuentas y Centros de Costos'
              TabOrder = 2
              OnClick = bbtnVerifCtasCCosTelClick
            end
            object bbtnTELSustento: TBitBtn
              Left = 17
              Top = 100
              Width = 297
              Height = 24
              Caption = 'Reporte Sustento de Teleahorro'
              TabOrder = 3
              OnClick = bbtnTELSustentoClick
            end
          end
          object fcShapeBtn6: TfcShapeBtn
            Left = 461
            Top = 20
            Width = 32
            Height = 31
            Hint = 'Actualiza Monto Cobrado vs Amort+Int+Flat+Exceso'
            Color = 13165023
            DitherColor = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -8
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Enabled = False
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
            ParentFont = False
            ParentShowHint = False
            RoundRectBias = 25
            ShadeStyle = fbsHighlight
            Shape = bsRoundRect
            ShowHint = True
            TabOrder = 0
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            Visible = False
            OnClick = fcShapeBtn6Click
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Planillas'
          ImageIndex = 4
          OnEnter = TabSheet5Enter
          object Label2: TLabel
            Left = 216
            Top = 0
            Width = 74
            Height = 29
            Caption = 'Planillas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel4: TPanel
            Left = 89
            Top = 32
            Width = 330
            Height = 130
            Color = 10207162
            TabOrder = 0
            object bbtnPlanCorrige: TBitBtn
              Left = 17
              Top = 7
              Width = 297
              Height = 24
              Caption = 'Corrige la Unidad de pagos mal asignadas en CRE310'
              TabOrder = 0
              OnClick = bbtnPlanCorrigeClick
            end
            object bbtnPlanIncons: TBitBtn
              Left = 17
              Top = 38
              Width = 297
              Height = 24
              Caption = 'Inconsistencias de Pagos Realizados CRE310'
              TabOrder = 1
              OnClick = bbtnPlanInconsClick
            end
            object bbtnVerifCtasCCosPla: TBitBtn
              Left = 17
              Top = 68
              Width = 297
              Height = 24
              Caption = 'Verifica Cuentas y Centros de Costos'
              TabOrder = 2
              OnClick = bbtnVerifCtasCCosPlaClick
            end
            object BitBtn5: TBitBtn
              Left = 17
              Top = 100
              Width = 297
              Height = 24
              Caption = 'Reporte Sustento de Planillas'
              TabOrder = 3
              OnClick = BitBtn5Click
            end
          end
          object Panel5: TPanel
            Left = 89
            Top = 169
            Width = 330
            Height = 67
            Color = 10207162
            TabOrder = 1
            object BitBtn2: TBitBtn
              Left = 17
              Top = 7
              Width = 239
              Height = 24
              Caption = 'Contabilizaci'#243'n de Planillas'
              TabOrder = 0
              OnClick = BitBtn2Click
            end
            object BitBtn6: TBitBtn
              Left = 17
              Top = 37
              Width = 239
              Height = 24
              Caption = 'Transferencia a Contabilidad'
              TabOrder = 1
              OnClick = BitBtn6Click
            end
            object fcShapeBtn4: TfcShapeBtn
              Left = 266
              Top = 7
              Width = 49
              Height = 25
              Hint = 'Reporte de Planillas'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 2
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn4Click
            end
            object fcShapeBtn5: TfcShapeBtn
              Left = 266
              Top = 36
              Width = 49
              Height = 25
              Hint = 'Reporte de Transferencia'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 3
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn5Click
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Bol.Dep'#243'sito'
          ImageIndex = 5
          object Label3: TLabel
            Left = 176
            Top = 0
            Width = 162
            Height = 29
            Caption = 'Boletas Dep'#243'sito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel7: TPanel
            Left = 89
            Top = 169
            Width = 330
            Height = 65
            Color = 10207162
            TabOrder = 1
            object BitBtn3: TBitBtn
              Left = 17
              Top = 7
              Width = 239
              Height = 24
              Caption = 'Contabilizaci'#243'n de Boletas de Dep'#243'sito'
              TabOrder = 0
              OnClick = BitBtn3Click
            end
            object BitBtn7: TBitBtn
              Left = 17
              Top = 36
              Width = 239
              Height = 24
              Caption = 'Transferencia a Contabilidad'
              TabOrder = 1
              OnClick = BitBtn7Click
            end
            object fcShapeBtn7: TfcShapeBtn
              Left = 266
              Top = 7
              Width = 49
              Height = 25
              Hint = 'Reporte de Planillas'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 2
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn7Click
            end
            object fcShapeBtn8: TfcShapeBtn
              Left = 266
              Top = 36
              Width = 49
              Height = 25
              Hint = 'Reporte de Planillas'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 3
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn8Click
            end
          end
          object Panel6: TPanel
            Left = 89
            Top = 32
            Width = 330
            Height = 130
            Color = 10207162
            TabOrder = 0
            object bbtnBolDCorrige: TBitBtn
              Left = 17
              Top = 7
              Width = 297
              Height = 24
              Caption = 'Corrige la Unidad de pagos mal asignadas en CRE310'
              TabOrder = 0
              OnClick = bbtnBolDCorrigeClick
            end
            object bbtnBolDIncons: TBitBtn
              Left = 17
              Top = 38
              Width = 297
              Height = 24
              Caption = 'Inconsistencias de Pagos Realizados CRE310'
              TabOrder = 1
              OnClick = bbtnBolDInconsClick
            end
            object bbtnVerifCtasCCosBol: TBitBtn
              Left = 17
              Top = 68
              Width = 297
              Height = 24
              Caption = 'Verifica Cuentas y Centros de Costos'
              TabOrder = 2
              OnClick = bbtnVerifCtasCCosBolClick
            end
            object BitBtn8: TBitBtn
              Left = 17
              Top = 100
              Width = 297
              Height = 24
              Caption = 'Reporte Sustento de Boletas de Deposito'
              TabOrder = 3
              OnClick = BitBtn8Click
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Cob.Efectivo'
          ImageIndex = 6
          OnEnter = TabSheet7Enter
          object Label4: TLabel
            Left = 160
            Top = 0
            Width = 190
            Height = 29
            Caption = 'Cobranzas Dep'#243'sito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel8: TPanel
            Left = 89
            Top = 32
            Width = 330
            Height = 130
            Color = 10207162
            TabOrder = 0
            object bbtnVerifCtasCCosEfe: TBitBtn
              Left = 17
              Top = 68
              Width = 297
              Height = 24
              Caption = 'Verifica Cuentas y Centros de Costos'
              TabOrder = 0
              OnClick = bbtnVerifCtasCCosEfeClick
            end
            object BitBtn9: TBitBtn
              Left = 17
              Top = 100
              Width = 297
              Height = 24
              Caption = 'Reporte Sustento de Cobranzas en Efectivo'
              TabOrder = 1
              OnClick = BitBtn9Click
            end
          end
          object Panel9: TPanel
            Left = 89
            Top = 169
            Width = 330
            Height = 65
            Color = 10207162
            TabOrder = 1
            object bbtnEfeTrans: TBitBtn
              Left = 17
              Top = 36
              Width = 239
              Height = 24
              Caption = 'Transferencia a Contabilidad'
              TabOrder = 0
              OnClick = bbtnEfeTransClick
            end
            object fcShapeBtn9: TfcShapeBtn
              Left = 266
              Top = 36
              Width = 49
              Height = 25
              Hint = 'Reporte de Planillas'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 1
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn9Click
            end
            object BitBtn4: TBitBtn
              Left = 17
              Top = 7
              Width = 239
              Height = 24
              Caption = 'Contabilizaci'#243'n de Cobranzas en Efectivo'
              TabOrder = 2
              OnClick = BitBtn4Click
            end
            object fcShapeBtn10: TfcShapeBtn
              Left = 266
              Top = 7
              Width = 49
              Height = 25
              Hint = 'Reporte de Planillas'
              Color = clBtnFace
              DitherColor = clWhite
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
              ParentClipping = True
              ParentShowHint = False
              RoundRectBias = 25
              ShadeStyle = fbsHighlight
              Shape = bsEllipse
              ShowHint = True
              TabOrder = 3
              TextOptions.Alignment = taCenter
              TextOptions.VAlignment = vaVCenter
              OnClick = fcShapeBtn10Click
            end
          end
        end
      end
      object edtFecha: TEdit
        Left = 248
        Top = 40
        Width = 100
        Height = 23
        Enabled = False
        TabOrder = 2
        Visible = False
      end
    end
    object prbAvance: TProgressBar
      Left = 37
      Top = 402
      Width = 380
      Height = 24
      TabOrder = 2
      Visible = False
    end
  end
  object ppReport2: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report1'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 32
    Top = 181
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'C'#241'ia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 7938
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Glosa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14023
        mmTop = 7938
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Cprobante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 63765
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Mto. Cobrado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 7938
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Amortizaci'#242'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 7938
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 7938
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Flat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 7938
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Otras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 184415
        mmTop = 7938
        mmWidth = 8731
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 13758
        mmWidth = 191294
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      DataPipeline = ppBDEPipeline2
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CIAID'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CNTGLOSA'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 265
        mmWidth = 41540
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CNTCOMPROB'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 62177
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'AMORT'
        DataPipeline = ppBDEPipeline2
        DisplayFormat = '###,###,###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'INTERES'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'FLAT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 157427
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'OTRAS'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'COBRADO'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 92604
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'COBRADO'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 92604
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'AMORT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'INTERES'
        DataPipeline = ppBDEPipeline2
        DisplayFormat = '###,###,###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'FLAT'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 157427
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'OTRAS'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 191294
        BandType = 7
      end
    end
  end
  object ppBDEPipeline2: TppBDEPipeline
    UserName = 'BDEPipeline2'
    Left = 64
    Top = 181
  end
  object ppReport1: TppReport
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
    PrinterSetup.PaperSize = 119
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 32
    Top = 229
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 12171
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Mto. Aplicado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 90223
        mmTop = 12171
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Mto. Cobrado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 140494
        mmTop = 12171
        mmWidth = 22490
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 17198
        mmWidth = 170127
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'COBRANZAS EFECTUADAS POR TELEAHORRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 51065
        mmTop = 529
        mmWidth = 77788
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'DEL 01/08/2003 AL 31/08/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 5292
        mmWidth = 48154
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 0
        mmWidth = 16933
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'UPROID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 529
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'IMPORTE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 99219
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'UPRONOM'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 529
        mmWidth = 65088
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Importe'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'cremtocob'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 81492
        mmTop = 0
        mmWidth = 82286
        BandType = 7
      end
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    UserName = 'BDEPipeline1'
    Left = 64
    Top = 229
  end
  object BDEPPBANCO: TppBDEPipeline
    UserName = 'BDEPPBANCO'
    Left = 506
    Top = 296
  end
  object REPBANCO: TppReport
    AutoStop = False
    DataPipeline = BDEPPBANCO
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\FuentesAMedida\Cobranzas\Cliente\REPBANCO.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 474
    Top = 328
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'BDEPPBANCO'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 14605022
        mmHeight = 5821
        mmLeft = 0
        mmTop = 21431
        mmWidth = 283634
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'DerramaMagisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 32766
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 261938
        mmTop = 1588
        mmWidth = 16087
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 261938
        mmTop = 6350
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 247915
        mmTop = 1323
        mmWidth = 11261
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 247091
        mmTop = 6350
        mmWidth = 12531
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 
          'APELLIDOS Y NOMBRES                          TIPO CREDITO       ' +
          '                  BANCO                     CUENTA          CRED' +
          'ITO      DOCUM       FEC.DOC        MTO.COB.    AMORTIZA       I' +
          'NTERES         GASTOS       EXCESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 280459
        BandType = 0
      end
      object ppXtitulo: TppLabel
        UserName = 'Xtitulo'
        Caption = 'XTITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 33073
        mmTop = 9525
        mmWidth = 211932
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'TIPCREID'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 54769
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'TIPCREDES'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 59796
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'ASOAPENOM'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 265
        mmWidth = 50800
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'BANCONOM'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CCBCOID'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 117475
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CREMTOCOB'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 191559
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CREAMORT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 210873
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CREINTERES'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 229659
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'CREFLAT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 248180
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'CREMTOEXC'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 266171
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 53181
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 142611
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 190765
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 209815
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 228600
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 247386
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 265378
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 283369
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'CREDID'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 143669
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'CREDOCPAG'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 156898
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'FOPERAC'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 155840
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnFirstPage = False
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 284692
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 21960
        mmTop = 1323
        mmWidth = 23548
        BandType = 8
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'CREMTOCOB'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 188119
        mmTop = 1323
        mmWidth = 20108
        BandType = 8
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'CREAMORT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 209021
        mmTop = 1323
        mmWidth = 19315
        BandType = 8
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'CREINTERES'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 229130
        mmTop = 1323
        mmWidth = 17463
        BandType = 8
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'CREFLAT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 248180
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'CREMTOEXC'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 266171
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText34'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 14605022
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 283634
          BandType = 3
          GroupNo = 0
        end
        object ppDBText32: TppDBText
          UserName = 'DBText32'
          DataField = 'FREG'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3704
          mmLeft = 78846
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppXsubtitulo: TppLabel
          UserName = 'Xsubtitulo'
          Caption = 'XSUBTITULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 794
          mmTop = 1058
          mmWidth = 71967
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'TOTAL DEL MES/A'#209'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3302
          mmLeft = 21960
          mmTop = 1588
          mmWidth = 29295
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191030
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210080
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229130
          mmTop = 1588
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248180
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBText34: TppDBText
          UserName = 'DBText34'
          DataField = 'FREG'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3302
          mmLeft = 52652
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266436
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText15'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = clWindow
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 163777
          BandType = 3
          GroupNo = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'UPROID'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3895
          mmLeft = 1588
          mmTop = 794
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'UPRONOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3895
          mmLeft = 19579
          mmTop = 794
          mmWidth = 141023
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape5'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 1
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'TOTAL DE LA UNIDAD DE PROCESO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3302
          mmLeft = 22225
          mmTop = 1588
          mmWidth = 48683
          BandType = 5
          GroupNo = 1
        end
        object ppDBText33: TppDBText
          UserName = 'DBText33'
          DataField = 'UPRONOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 71702
          mmTop = 1588
          mmWidth = 77258
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191294
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210344
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc102'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229394
          mmTop = 1588
          mmWidth = 17463
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248444
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266701
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText14'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'USEID'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 1323
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          DataField = 'USENOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 19315
          mmTop = 265
          mmWidth = 77258
          BandType = 3
          GroupNo = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'CCOSID'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 97631
          mmTop = 265
          mmWidth = 21167
          BandType = 3
          GroupNo = 1
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 3703
          mmWidth = 283634
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 284692
          BandType = 5
          GroupNo = 2
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'TOTAL DE LA USE '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 22225
          mmTop = 1323
          mmWidth = 25400
          BandType = 5
          GroupNo = 1
        end
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          DataField = 'USENOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 48948
          mmTop = 1323
          mmWidth = 77258
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191294
          mmTop = 1323
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210344
          mmTop = 1323
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229394
          mmTop = 1323
          mmWidth = 17463
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc101'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248444
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266701
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object REPPLA: TppReport
    AutoStop = False
    DataPipeline = BDEPPBANCO
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\FuentesAMedida\Cobranzas\Cliente\REPBANCO.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 474
    Top = 296
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'BDEPPBANCO'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape4'
        Brush.Color = 14605022
        mmHeight = 5821
        mmLeft = 0
        mmTop = 21431
        mmWidth = 283634
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label18'
        Caption = 'DerramaMagisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 32766
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 261938
        mmTop = 1588
        mmWidth = 16087
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 261938
        mmTop = 6350
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 247915
        mmTop = 1323
        mmWidth = 11261
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label20'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 247091
        mmTop = 6350
        mmWidth = 12531
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label21'
        Caption = 
          'APELLIDOS Y NOMBRES                          TIPO CREDITO       ' +
          '               BANCO                  CUENTA          CREDITO   ' +
          ' DOCUM  PER.CUO   FEC.DOC        MTO.COB.    AMORTIZA       INTE' +
          'RES         GASTOS       EXCESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 278385
        BandType = 0
      end
      object XTITULO3: TppLabel
        UserName = 'Xtitulo'
        Caption = 'XTITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 33073
        mmTop = 9525
        mmWidth = 211932
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText35: TppDBText
        UserName = 'DBText17'
        DataField = 'TIPCREID'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 51858
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText18'
        DataField = 'TIPCREDES'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 57150
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText20'
        DataField = 'ASOAPENOM'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 265
        mmWidth = 49742
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText21'
        DataField = 'BANCONOM'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 87313
        mmTop = 265
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText22'
        DataField = 'CCBCOID'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText23'
        DataField = 'CREMTOCOB'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 192352
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText24'
        DataField = 'CREAMORT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 210873
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText25'
        DataField = 'CREINTERES'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 229659
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText26'
        DataField = 'CREFLAT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 248180
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText27'
        DataField = 'CREMTOEXC'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3302
        mmLeft = 266171
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 51594
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 86519
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 110596
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 136261
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 191823
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 209815
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 228600
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 247386
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 265378
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 283369
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText28'
        DataField = 'CREDID'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 137054
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText29'
        DataField = 'CREDOCPAG'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 148961
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText30'
        DataField = 'FOPERAC'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 175948
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'PERCUO'
        DataPipeline = BDEPPBANCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 164307
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape7'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 284692
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'CREMTOCOB'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 188119
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'CREAMORT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 209021
        mmTop = 1323
        mmWidth = 19315
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'CREINTERES'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 229130
        mmTop = 1323
        mmWidth = 17463
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'CREFLAT'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 248180
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'CREMTOEXC'
        DataPipeline = BDEPPBANCO
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPPBANCO'
        mmHeight = 3175
        mmLeft = 266171
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel28: TppLabel
        UserName = 'Label24'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 14288
        mmTop = 1323
        mmWidth = 23813
        BandType = 7
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'ppDBText57'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape16'
          Brush.Color = 14605022
          mmHeight = 5821
          mmLeft = 0
          mmTop = 264
          mmWidth = 283634
          BandType = 3
          GroupNo = 0
        end
        object ppDBText57: TppDBText
          UserName = 'DBText57'
          DataField = 'FORPAGABR'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 1323
          mmWidth = 116681
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppShape14: TppShape
          UserName = 'Shape3'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191294
          mmTop = 1323
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210344
          mmTop = 1323
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229394
          mmTop = 1323
          mmWidth = 17463
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc101'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248444
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266701
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 13758
          mmTop = 1323
          mmWidth = 9260
          BandType = 5
          GroupNo = 0
        end
        object ppDBText58: TppDBText
          UserName = 'DBText58'
          DataField = 'FORPAGABR'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3440
          mmLeft = 24606
          mmTop = 1323
          mmWidth = 116681
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ppDBText49'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppShape10: TppShape
          UserName = 'Shape1'
          Brush.Color = 14605022
          mmHeight = 5821
          mmLeft = 0
          mmTop = 265
          mmWidth = 164042
          BandType = 3
          GroupNo = 1
        end
        object XSUBTITULO3: TppLabel
          UserName = 'Xsubtitulo'
          Caption = 'XSUBTITULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1058
          mmTop = 1058
          mmWidth = 66675
          BandType = 3
          GroupNo = 1
        end
        object ppDBText48: TppDBText
          UserName = 'DBText32'
          DataField = 'FREG'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3704
          mmLeft = 68792
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppShape15: TppShape
          UserName = 'Shape15'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 284692
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc48'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191294
          mmTop = 1323
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc49: TppDBCalc
          UserName = 'DBCalc49'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210344
          mmTop = 1323
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc50: TppDBCalc
          UserName = 'DBCalc103'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229394
          mmTop = 1323
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc51: TppDBCalc
          UserName = 'DBCalc51'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248444
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc52'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266701
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label23'
          Caption = 'TOTAL DEL MES/A'#209'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 13758
          mmTop = 1588
          mmWidth = 29369
          BandType = 5
          GroupNo = 1
        end
        object ppDBText49: TppDBText
          UserName = 'DBText34'
          DataField = 'FREG'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 44450
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppDBText51'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppShape12: TppShape
          UserName = 'Shape2'
          Brush.Color = clWindow
          mmHeight = 5821
          mmLeft = 0
          mmTop = 265
          mmWidth = 163777
          BandType = 3
          GroupNo = 2
        end
        object ppDBText50: TppDBText
          UserName = 'DBText13'
          DataField = 'UPROID'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3969
          mmLeft = 1588
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 2
        end
        object ppDBText51: TppDBText
          UserName = 'DBText15'
          DataField = 'UPRONOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3969
          mmLeft = 19579
          mmTop = 1058
          mmWidth = 141023
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppShape11: TppShape
          UserName = 'Shape6'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191030
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210080
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc20'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229130
          mmTop = 1588
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc21'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248180
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc22'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266436
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label22'
          Caption = 'TOTAL DE LA UNIDAD DE PROCESO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 14288
          mmTop = 1852
          mmWidth = 48683
          BandType = 5
          GroupNo = 2
        end
        object ppDBText52: TppDBText
          UserName = 'DBText33'
          DataField = 'UPRONOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 64294
          mmTop = 1852
          mmWidth = 77258
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'ppDBText53'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText53: TppDBText
          UserName = 'DBText14'
          DataField = 'USEID'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 265
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppDBText54: TppDBText
          UserName = 'DBText16'
          DataField = 'USENOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 18256
          mmTop = 265
          mmWidth = 77258
          BandType = 3
          GroupNo = 3
        end
        object ppDBText55: TppDBText
          UserName = 'DBText19'
          DataField = 'CCOSID'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 96573
          mmTop = 265
          mmWidth = 21167
          BandType = 3
          GroupNo = 3
        end
        object ppLine32: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 3969
          mmWidth = 283634
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppShape13: TppShape
          UserName = 'Shape5'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CREMTOCOB'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 191294
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'CREAMORT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 210344
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc102'
          DataField = 'CREINTERES'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 229394
          mmTop = 1588
          mmWidth = 17463
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'CREFLAT'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 248444
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'CREMTOEXC'
          DataPipeline = BDEPPBANCO
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 266701
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label15'
          Caption = 'TOTAL DE LA USE '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 15346
          mmTop = 1852
          mmWidth = 25400
          BandType = 5
          GroupNo = 3
        end
        object ppDBText56: TppDBText
          UserName = 'DBText31'
          DataField = 'USENOM'
          DataPipeline = BDEPPBANCO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'BDEPPBANCO'
          mmHeight = 3175
          mmLeft = 43392
          mmTop = 1852
          mmWidth = 77258
          BandType = 5
          GroupNo = 3
        end
      end
    end
  end
  object DBPBANCOS: TppBDEPipeline
    UserName = 'DBPBANCOS'
    Left = 32
    Top = 331
  end
  object ppBDEPPBANCO: TppReport
    AutoStop = False
    DataPipeline = DBPBANCOS
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\FuentesAMedida_ric\ReporteBolDep_Conta\RRepBolDep.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 65
    Top = 331
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPBANCOS'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppShape24: TppShape
        UserName = 'Shape4'
        Brush.Color = 14605022
        mmHeight = 5821
        mmLeft = 0
        mmTop = 21167
        mmWidth = 283634
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label21'
        Caption = 
          'APELLIDOS Y NOMBRES                          TIPO CREDITO       ' +
          '                  BANCO                     CUENTA          CRED' +
          'ITO      DOCUM       FEC.DOC        MTO.COB.    AMORTIZA       I' +
          'NTERES         GASTOS       EXCESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 22754
        mmWidth = 280459
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label18'
        Caption = 'DerramaMagisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 32766
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 261673
        mmTop = 1058
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 261673
        mmTop = 6085
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 247915
        mmTop = 1058
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label20'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 246857
        mmTop = 6085
        mmWidth = 12531
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Xtitulo'
        Caption = 'XTITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 32808
        mmTop = 7673
        mmWidth = 211932
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText77: TppDBText
        UserName = 'DBText20'
        DataField = 'ASOAPENOM'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 50800
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText17'
        DataField = 'TIPCREID'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 52123
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText18'
        DataField = 'TIPCREDES'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 58208
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText21'
        DataField = 'BANCONOM'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 89165
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText22'
        DataField = 'CCBCOID'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 115359
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText28'
        DataField = 'CREDID'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 141817
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText29'
        DataField = 'CREDOCPAG'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 155046
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText30'
        DataField = 'FOPERAC'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 172773
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText23'
        DataField = 'CREMTOCOB'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3302
        mmLeft = 188648
        mmTop = 137
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText24'
        DataField = 'CREAMORT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3302
        mmLeft = 207169
        mmTop = 137
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText25'
        DataField = 'CREINTERES'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3302
        mmLeft = 225955
        mmTop = 137
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText26'
        DataField = 'CREFLAT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3302
        mmLeft = 244475
        mmTop = 137
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText27'
        DataField = 'CREMTOEXC'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3302
        mmLeft = 262467
        mmTop = 137
        mmWidth = 17198
        BandType = 4
      end
      object ppLine66: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 88371
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 114565
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine70: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 141023
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine71: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 153723
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine72: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 171186
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine73: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 188384
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine74: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 206375
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine75: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 225161
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine76: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 243946
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine77: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 261938
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
    end
    object ppSummaryBand6: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape25: TppShape
        UserName = 'Shape7'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 284692
        BandType = 7
      end
      object ppLabel55: TppLabel
        UserName = 'Label24'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 14817
        mmTop = 1058
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc69: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'CREMTOEXC'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 262732
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc70: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'CREFLAT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 244211
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc71: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'CREINTERES'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 225425
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc72: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'CREAMORT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 206111
        mmTop = 1323
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc73: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'CREMTOCOB'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 186796
        mmTop = 1323
        mmWidth = 18785
        BandType = 7
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'ppDBText34'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape26: TppShape
          UserName = 'Shape1'
          Brush.Color = 14605022
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 283634
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Xsubtitulo'
          Caption = 'XSUBTITULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 794
          mmTop = 1058
          mmWidth = 72496
          BandType = 3
          GroupNo = 0
        end
        object ppDBText90: TppDBText
          UserName = 'DBText1'
          DataField = 'FREG'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3969
          mmLeft = 75936
          mmTop = 794
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppShape27: TppShape
          UserName = 'Shape6'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label23'
          Caption = 'TOTAL DEL MES/A'#209'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3302
          mmLeft = 15081
          mmTop = 1588
          mmWidth = 29295
          BandType = 5
          GroupNo = 0
        end
        object ppDBText91: TppDBText
          UserName = 'DBText34'
          DataField = 'FREG'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3302
          mmLeft = 45773
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc74: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CREMTOCOB'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 188648
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc75: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'CREAMORT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 207698
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc76: TppDBCalc
          UserName = 'DBCalc102'
          DataField = 'CREINTERES'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 225690
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc77: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'CREFLAT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 244211
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc78: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'CREMTOEXC'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 262732
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'ppDBText33'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape28: TppShape
          UserName = 'Shape2'
          Brush.Color = clWindow
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 163777
          BandType = 3
          GroupNo = 1
        end
        object ppDBText92: TppDBText
          UserName = 'DBText2'
          DataField = 'UPROID'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3969
          mmLeft = 794
          mmTop = 794
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppDBText93: TppDBText
          UserName = 'DBText3'
          DataField = 'UPRONOM'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3969
          mmLeft = 18521
          mmTop = 794
          mmWidth = 141023
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppShape29: TppShape
          UserName = 'Shape5'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 284692
          BandType = 5
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label22'
          Caption = 'TOTAL DE LA UNIDAD DE PROCESO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3302
          mmLeft = 15875
          mmTop = 1588
          mmWidth = 48683
          BandType = 5
          GroupNo = 1
        end
        object ppDBText94: TppDBText
          UserName = 'DBText33'
          DataField = 'UPRONOM'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 65881
          mmTop = 1588
          mmWidth = 77258
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc79: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'CREMTOCOB'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 188648
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc80: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'CREAMORT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 207169
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc81: TppDBCalc
          UserName = 'DBCalc20'
          DataField = 'CREINTERES'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 225690
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc82: TppDBCalc
          UserName = 'DBCalc21'
          DataField = 'CREFLAT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 244211
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc83: TppDBCalc
          UserName = 'DBCalc22'
          DataField = 'CREMTOEXC'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 262203
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'ppDBText4'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand12: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLine78: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 3704
          mmWidth = 283634
          BandType = 3
          GroupNo = 2
        end
        object ppDBText95: TppDBText
          UserName = 'DBText4'
          DataField = 'USEID'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 0
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 2
        end
        object ppDBText96: TppDBText
          UserName = 'DBText5'
          DataField = 'USENOM'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 17992
          mmTop = 265
          mmWidth = 77258
          BandType = 3
          GroupNo = 2
        end
        object ppDBText97: TppDBText
          UserName = 'DBText19'
          DataField = 'CCOSID'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 96309
          mmTop = 265
          mmWidth = 21167
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape30: TppShape
          UserName = 'Shape3'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 284692
          BandType = 5
          GroupNo = 2
        end
        object ppLabel59: TppLabel
          UserName = 'Label15'
          Caption = 'TOTAL DE LA USE '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 16404
          mmTop = 1323
          mmWidth = 25400
          BandType = 5
          GroupNo = 2
        end
        object ppDBText98: TppDBText
          UserName = 'DBText31'
          DataField = 'USENOM'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 45773
          mmTop = 1323
          mmWidth = 77258
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc84: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'CREMTOCOB'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 188384
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc85: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'CREAMORT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 207434
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc86: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'CREINTERES'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 226219
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc87: TppDBCalc
          UserName = 'DBCalc101'
          DataField = 'CREFLAT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 244475
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc88: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'CREMTOEXC'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 262732
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBPRESUMEN: TppBDEPipeline
    UserName = 'DBPRESUMEN'
    Left = 64
    Top = 283
  end
  object ppBDEPPBANCO2: TppReport
    AutoStop = False
    DataPipeline = DBPBANCOS
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\FuentesAMedida_ric\ReporteBolDep_Conta\RRepBolDep2.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000007777770000000000000000
      0000000000000007000000000000000000000000000000070000000000000000
      0000000000777007000000000000000000077070007770070000700000000000
      0077000700787000000007000000000007708000077877000070007000000000
      07088807777777770777000700000000008F88877FFFFF077887700700000000
      00088888F88888FF08870070000000000000880888877778F070007000000007
      77088888880007778F770077777000700008F088007777077F07000000700700
      008F08880800077778F7700000700708888F0880F08F807078F7777700700708
      F88F0780F070F07078F7887700700708888F0780F077807088F7777700700700
      008F0788FF00080888F77000007000000008F0780FFFF0088F77007000000000
      0008F07788000888887700700000000000008F07788888880870007000000000
      00088FF0077788088887000700000000008F888FF00000F87887700700000000
      0708F8088FFFFF88078700700000000007708000088888000070070000000000
      0077007000888007000070000000000000077700008F80070007000000000000
      0000000000888007000000000000000000000000000000070000000000000000
      000000000777777700000000000000000000000000000000000000000000FFFF
      FFFFFFFC0FFFFFFC0FFFFFF80FFFFFF80FFFFE180E7FFC00043FF800001FF800
      000FF800000FFC00001FFE00001FE0000001C000000180000001800000018000
      00018000000180000001FC00001FFC00001FFE00001FFC00000FF800000FF800
      001FF800003FFC180C7FFE380EFFFFF80FFFFFF80FFFFFF80FFFFFFFFFFF}
    ModalCancelDialog = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    ShowCancelDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 32
    Top = 282
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPBANCOS'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppShape17: TppShape
        UserName = 'Shape10'
        Brush.Color = clMedGray
        mmHeight = 5027
        mmLeft = 265
        mmTop = 17198
        mmWidth = 199232
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label3'
        Caption = 'Apellidos/Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 17992
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label4'
        Caption = 'Tipo Cr'#232'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 45508
        mmTop = 17992
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label5'
        Caption = 'N.Opera.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 72231
        mmTop = 17992
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label6'
        Caption = 'F.Opera.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 87577
        mmTop = 17992
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label7'
        Caption = 'Mto.Cob.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 105569
        mmTop = 17992
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label8'
        Caption = 'Amortiza.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 122185
        mmTop = 17992
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label9'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 142082
        mmTop = 17992
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label10'
        Caption = 'Flat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 161396
        mmTop = 17992
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label101'
        Caption = 'Exceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 173774
        mmTop = 17992
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label12'
        Caption = 'DerramaMagisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 265
        mmWidth = 32808
        BandType = 0
      end
      object ppXtitulo2: TppLabel
        UserName = 'Xtitulo1'
        Caption = 'XTITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 8731
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label14'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 182563
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label201'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 169069
        mmTop = 4233
        mmWidth = 12435
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 182563
        mmTop = 4233
        mmWidth = 1852
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText60: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOAPENOM'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 0
        mmWidth = 40481
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText10'
        DataField = 'TIPCREDES'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText12'
        DataField = 'CREDOCPAG'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText301'
        DataField = 'FOPERAC'
        DataPipeline = DBPBANCOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 87842
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText14'
        DataField = 'CREMTOCOB'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText15'
        DataField = 'CREAMORT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 121709
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText16'
        DataField = 'CREINTERES'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 140759
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText32'
        DataField = 'CREFLAT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText35'
        DataField = 'CREMTOEXC'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 174625
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 41804
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 70115
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 87048
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 103188
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 121179
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 173832
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 189442
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 265
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppShape18: TppShape
        UserName = 'Shape11'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 189442
        BandType = 7
      end
      object ppDBCalc53: TppDBCalc
        UserName = 'DBCalc31'
        DataField = 'CREMTOCOB'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
      end
      object ppDBCalc54: TppDBCalc
        UserName = 'DBCalc32'
        DataField = 'CREAMORT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 122502
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
      end
      object ppDBCalc55: TppDBCalc
        UserName = 'DBCalc33'
        DataField = 'CREINTERES'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 141023
        mmTop = 1058
        mmWidth = 16669
        BandType = 7
      end
      object ppDBCalc56: TppDBCalc
        UserName = 'DBCalc34'
        DataField = 'CREFLAT'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 1058
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc57: TppDBCalc
        UserName = 'DBCalc301'
        DataField = 'CREMTOEXC'
        DataPipeline = DBPBANCOS
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPBANCOS'
        mmHeight = 3175
        mmLeft = 174625
        mmTop = 1058
        mmWidth = 14288
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 10054
        mmTop = 1058
        mmWidth = 23749
        BandType = 7
      end
      object ppLine44: TppLine
        UserName = 'Line37'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102923
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppLine45: TppLine
        UserName = 'Line38'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 121709
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppLine46: TppLine
        UserName = 'Line39'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 139965
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppLine47: TppLine
        UserName = 'Line40'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 158221
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppLine48: TppLine
        UserName = 'Line41'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 173832
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'DBPRESUMEN'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5556
        mmWidth = 203729
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = DBPRESUMEN
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'DBPRESUMEN'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 19050
            mmPrintPosition = 0
            object ppShape19: TppShape
              UserName = 'Shape12'
              mmHeight = 5821
              mmLeft = 0
              mmTop = 12700
              mmWidth = 116417
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label17'
              Caption = 'RESUMEN  POR CUENTA  Y MES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4995
              mmLeft = 794
              mmTop = 4498
              mmWidth = 66929
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label25'
              Caption = 'MES-A'#209'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 794
              mmTop = 13758
              mmWidth = 16383
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label26'
              Caption = 'CUENTA BANCO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 20108
              mmTop = 13758
              mmWidth = 28046
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label27'
              Caption = 'TOTAL MES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 82021
              mmTop = 13758
              mmWidth = 19981
              BandType = 1
            end
            object ppLine49: TppLine
              UserName = 'Line44'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 18521
              mmTop = 12700
              mmWidth = 265
              BandType = 1
            end
            object ppLine50: TppLine
              UserName = 'Line45'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 75936
              mmTop = 12700
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppShape20: TppShape
              UserName = 'Shape13'
              mmHeight = 5292
              mmLeft = 0
              mmTop = 264
              mmWidth = 116417
              BandType = 4
            end
            object ppDBText69: TppDBText
              UserName = 'DBText37'
              DataField = 'FOP'
              DataPipeline = DBPRESUMEN
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBPRESUMEN'
              mmHeight = 4022
              mmLeft = 529
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText70: TppDBText
              UserName = 'DBText38'
              DataField = 'CCBCOID'
              DataPipeline = DBPRESUMEN
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBPRESUMEN'
              mmHeight = 3969
              mmLeft = 19579
              mmTop = 794
              mmWidth = 55298
              BandType = 4
            end
            object ppDBText71: TppDBText
              UserName = 'DBText39'
              DataField = 'TOTAL'
              DataPipeline = DBPRESUMEN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'DBPRESUMEN'
              mmHeight = 3969
              mmLeft = 77258
              mmTop = 794
              mmWidth = 35454
              BandType = 4
            end
            object ppLine51: TppLine
              UserName = 'Line42'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 18521
              mmTop = 265
              mmWidth = 529
              BandType = 4
            end
            object ppLine52: TppLine
              UserName = 'Line43'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 75936
              mmTop = 265
              mmWidth = 529
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppShape21: TppShape
              UserName = 'Shape14'
              mmHeight = 5292
              mmLeft = 77258
              mmTop = 0
              mmWidth = 39158
              BandType = 7
            end
            object ppDBCalc58: TppDBCalc
              UserName = 'DBCalc36'
              DataField = 'TOTAL'
              DataPipeline = DBPRESUMEN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'DBPRESUMEN'
              mmHeight = 3969
              mmLeft = 78846
              mmTop = 529
              mmWidth = 34131
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'ppDBText72'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object PPXSUBTITULO2: TppLabel
          UserName = 'Xsubtitulo1'
          Caption = 'XSUBTITULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 265
          mmWidth = 85725
          BandType = 3
          GroupNo = 0
        end
        object ppDBText72: TppDBText
          UserName = 'DBText36'
          DataField = 'FOP'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3704
          mmLeft = 87048
          mmTop = 265
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppShape22: TppShape
          UserName = 'Shape9'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 189442
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc59: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'CREMTOCOB'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 103717
          mmTop = 1058
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc60: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'CREAMORT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 122502
          mmTop = 1058
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc61: TppDBCalc
          UserName = 'DBCalc28'
          DataField = 'CREINTERES'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 141023
          mmTop = 1058
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc62: TppDBCalc
          UserName = 'DBCalc29'
          DataField = 'CREFLAT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 159015
          mmTop = 1058
          mmWidth = 14552
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc30'
          DataField = 'CREMTOEXC'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 174625
          mmTop = 1058
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
        object ppLabel48: TppLabel
          UserName = 'Label1'
          Caption = 'TOTAL DEL MES/A'#209'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3302
          mmLeft = 10054
          mmTop = 1058
          mmWidth = 29295
          BandType = 5
          GroupNo = 0
        end
        object ppDBText73: TppDBText
          UserName = 'DBText9'
          DataField = 'FOP'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3302
          mmLeft = 40746
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLine53: TppLine
          UserName = 'Line32'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 102923
          mmTop = 0
          mmWidth = 529
          BandType = 5
          GroupNo = 0
        end
        object ppLine54: TppLine
          UserName = 'Line33'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 121709
          mmTop = 0
          mmWidth = 529
          BandType = 5
          GroupNo = 0
        end
        object ppLine55: TppLine
          UserName = 'Line34'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 139965
          mmTop = 0
          mmWidth = 529
          BandType = 5
          GroupNo = 0
        end
        object ppLine56: TppLine
          UserName = 'Line35'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 158221
          mmTop = 0
          mmWidth = 529
          BandType = 5
          GroupNo = 0
        end
        object ppLine57: TppLine
          UserName = 'Line36'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 173832
          mmTop = 0
          mmWidth = 529
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'ppDBText74'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape23: TppShape
          UserName = 'Shape8'
          Brush.Color = clMedGray
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 189442
          BandType = 3
          GroupNo = 1
        end
        object ppDBText74: TppDBText
          UserName = 'DBText6'
          DataField = 'CCBCOID'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3704
          mmLeft = 0
          mmTop = 529
          mmWidth = 32015
          BandType = 3
          GroupNo = 1
        end
        object ppDBText75: TppDBText
          UserName = 'DBText7'
          DataField = 'BANCONOM'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3704
          mmLeft = 32544
          mmTop = 529
          mmWidth = 69321
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine58: TppLine
          UserName = 'Line23'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 103188
          mmTop = 264
          mmWidth = 529
          BandType = 5
          GroupNo = 1
        end
        object ppLine59: TppLine
          UserName = 'Line24'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3704
          mmLeft = 121179
          mmTop = 265
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppLine60: TppLine
          UserName = 'Line25'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3704
          mmLeft = 139700
          mmTop = 265
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppLine61: TppLine
          UserName = 'Line202'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3704
          mmLeft = 157957
          mmTop = 265
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppLine62: TppLine
          UserName = 'Line27'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3704
          mmLeft = 173832
          mmTop = 265
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppLine63: TppLine
          UserName = 'Line28'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 189442
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc64: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTOCOB'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 103981
          mmTop = 529
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc65: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CREAMORT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 122238
          mmTop = 529
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc66: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREINTERES'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 140759
          mmTop = 529
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc67: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREFLAT'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 158750
          mmTop = 529
          mmWidth = 14552
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc68: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CREMTOEXC'
          DataPipeline = DBPBANCOS
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3175
          mmLeft = 174625
          mmTop = 529
          mmWidth = 14288
          BandType = 5
          GroupNo = 1
        end
        object ppLine64: TppLine
          UserName = 'Line29'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 103452
          mmTop = 3967
          mmWidth = 86254
          BandType = 5
          GroupNo = 1
        end
        object ppLine65: TppLine
          UserName = 'Line30'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 189442
          BandType = 5
          GroupNo = 1
        end
        object ppLabel49: TppLabel
          UserName = 'Label2'
          Caption = 'TOTAL DE LA CUENTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 9790
          mmTop = 794
          mmWidth = 30819
          BandType = 5
          GroupNo = 1
        end
        object ppDBText76: TppDBText
          UserName = 'DBText11'
          DataField = 'CCBCOID'
          DataPipeline = DBPBANCOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBPBANCOS'
          mmHeight = 3440
          mmLeft = 41275
          mmTop = 794
          mmWidth = 39423
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 494
    Top = 167
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 494
    Top = 231
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\SolExes\CreditosConta.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 494
    Top = 199
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppDBText99: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CNTANOMM'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 102129
        mmTop = 5821
        mmWidth = 9398
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 1058
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 5821
        mmWidth = 19262
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 5821
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label3'
        Caption = 'Perido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87842
        mmTop = 5821
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label4'
        Caption = 'Reporte Contable'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 88689
        mmTop = 1058
        mmWidth = 23707
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 11113
        mmWidth = 201084
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 794
        mmTop = 18256
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label5'
        Caption = 'Derrama Magisterial - Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 41656
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label6'
        Caption = 'Cia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 12965
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label7'
        Caption = 'TD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 12965
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label8'
        Caption = 'Comprobante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 12965
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label9'
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 12965
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label10'
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 12965
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label13'
        Caption = 'Debe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164307
        mmTop = 12965
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label14'
        Caption = 'Haber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 188648
        mmTop = 12965
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText100: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'CIAID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 529
        mmWidth = 3133
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'TDIARID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 10583
        mmTop = 529
        mmWidth = 3133
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'CNTCOMPROB'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 19844
        mmTop = 529
        mmWidth = 15663
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'CUENTAID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 116152
        mmTop = 529
        mmWidth = 7832
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'DOCID'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 42069
        mmTop = 529
        mmWidth = 3133
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'CNTSERIE'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 49742
        mmTop = 529
        mmWidth = 7874
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'CNTNODOC'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 63236
        mmTop = 529
        mmWidth = 21844
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CNTDEBEMN'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 157247
        mmTop = 529
        mmWidth = 17907
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CNTHABEMN'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3260
        mmLeft = 191918
        mmTop = 529
        mmWidth = 8636
        BandType = 4
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'CIAID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 2381
        mmPrintPosition = 0
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLine81: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 4498
          mmTop = 1323
          mmWidth = 197909
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc89: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CNTDEBEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 147934
          mmTop = 4233
          mmWidth = 27220
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc90: TppDBCalc
          UserName = 'DBCalc4'
          AutoSize = True
          DataField = 'CNTHABEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 173334
          mmTop = 4233
          mmWidth = 27220
          BandType = 5
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label1'
          Caption = 'TOTAL POR COMPA'#209'IA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 7673
          mmTop = 4233
          mmWidth = 26670
          BandType = 5
          GroupNo = 0
        end
        object ppDBText112: TppDBText
          UserName = 'DBText13'
          AutoSize = True
          DataField = 'CIAID'
          DataPipeline = ppdb1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 52388
          mmTop = 4233
          mmWidth = 3133
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'TDIARID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand14: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 2646
        mmPrintPosition = 0
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppLine83: TppLine
          UserName = 'Line83'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 3440
          mmTop = 1058
          mmWidth = 197909
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc93: TppDBCalc
          UserName = 'DBCalc93'
          AutoSize = True
          DataField = 'CNTDEBEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 147934
          mmTop = 3969
          mmWidth = 27220
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc94: TppDBCalc
          UserName = 'DBCalc94'
          AutoSize = True
          DataField = 'CNTHABEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 173334
          mmTop = 3969
          mmWidth = 27220
          BandType = 5
          GroupNo = 1
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = 'TOTAL POR ORIGEN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 30692
          mmTop = 3969
          mmWidth = 28067
          BandType = 5
          GroupNo = 1
        end
        object ppDBText113: TppDBText
          UserName = 'DBText113'
          AutoSize = True
          DataField = 'TDIARID'
          DataPipeline = ppdb1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 75406
          mmTop = 3969
          mmWidth = 3133
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'CNTCOMPROB'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand15: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLine82: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 1323
          mmWidth = 117475
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc91: TppDBCalc
          UserName = 'DBCalc1'
          AutoSize = True
          DataField = 'CNTDEBEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 147934
          mmTop = 3440
          mmWidth = 27220
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc92: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          DataField = 'CNTHABEMN'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3260
          mmLeft = 173334
          mmTop = 3440
          mmWidth = 27220
          BandType = 5
          GroupNo = 2
        end
        object ppLabel73: TppLabel
          UserName = 'Label2'
          Caption = 'TOTAL POR COMPROBANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 88106
          mmTop = 3440
          mmWidth = 31115
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppdb5: TppDBPipeline
    UserName = 'db5'
    Left = 410
    Top = 104
  end
  object ppr5: TppReport
    AutoStop = False
    DataPipeline = ppdb5
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 10350
    PrinterSetup.mmMarginRight = 10350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\SolExes\CobInconsistencia.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 490
    Top = 104
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb5'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 176742
        mmTop = 1058
        mmWidth = 16002
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 176742
        mmTop = 6085
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'Sistema de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Monotype Corsiva'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 32343
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Error'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 117475
        mmTop = 22754
        mmWidth = 7832
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'Mensaje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 13229
        mmTop = 22754
        mmWidth = 13293
        BandType = 0
      end
      object ppLine84: TppLine
        UserName = 'Line84'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 1323
        mmTop = 27517
        mmWidth = 114036
        BandType = 0
      end
      object ppLine85: TppLine
        UserName = 'Line85'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 117740
        mmTop = 27517
        mmWidth = 75406
        BandType = 0
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 176742
        mmTop = 11113
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 163777
        mmTop = 1058
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 163777
        mmTop = 6085
        mmWidth = 7789
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 163777
        mmTop = 11113
        mmWidth = 10837
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 84931
        mmTop = 11113
        mmWidth = 14288
        BandType = 0
      end
      object lblPeriodo: TppLabel
        UserName = 'lblPeriodo'
        Caption = '11 / 2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 103188
        mmTop = 11113
        mmWidth = 15706
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        AutoSize = True
        DataField = 'TITULO'
        DataPipeline = ppdb5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb5'
        mmHeight = 5927
        mmLeft = 44715
        mmTop = 1058
        mmWidth = 101939
        BandType = 0
      end
    end
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        DataField = 'GLOSA'
        DataPipeline = ppdb5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb5'
        mmHeight = 2879
        mmLeft = 1323
        mmTop = 1588
        mmWidth = 114036
        BandType = 4
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        DataField = 'OBSERVACION'
        DataPipeline = ppdb5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb5'
        mmHeight = 2879
        mmLeft = 118004
        mmTop = 1588
        mmWidth = 75406
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppd5: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr5
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 450
    Top = 104
  end
  object ppdb6: TppDBPipeline
    UserName = 'db6'
    Left = 410
    Top = 64
  end
  object ppd6: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr6
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 450
    Top = 64
  end
  object ppr6: TppReport
    AutoStop = False
    DataPipeline = ppdb6
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 21590
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\SolExes\CobInconsistenciaCre310.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 490
    Top = 64
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb6'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel83: TppLabel
        UserName = 'Label75'
        Caption = 'Inconsistencias de Pagos ( CRE310 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 53711
        mmTop = 1058
        mmWidth = 78846
        BandType = 0
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 168011
        mmTop = 1058
        mmWidth = 16002
        BandType = 0
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 168011
        mmTop = 6085
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label76'
        Caption = 'Sistema de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Monotype Corsiva'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 32343
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label78'
        Caption = 'Cod.Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 1058
        mmTop = 20108
        mmWidth = 18203
        BandType = 0
      end
      object ppLine86: TppLine
        UserName = 'Line84'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 25400
        mmWidth = 185738
        BandType = 0
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 168011
        mmTop = 10848
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label79'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 154517
        mmTop = 1058
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label80'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 154517
        mmTop = 5821
        mmWidth = 7789
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label81'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 154517
        mmTop = 10583
        mmWidth = 10837
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label82'
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 75406
        mmTop = 10583
        mmWidth = 14288
        BandType = 0
      end
      object pplPeriodo6: TppLabel
        UserName = 'lblPeriodo'
        Caption = '11 / 2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 92604
        mmTop = 10583
        mmWidth = 15706
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'Cuota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 20108
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 20108
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Caption = 'Amort.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82815
        mmTop = 20108
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100806
        mmTop = 20108
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'Flat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 20108
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'Exceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'Devol.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 20108
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'Diferencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 167217
        mmTop = 20108
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label91'
        Caption = 'No.Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 23813
        mmTop = 20108
        mmWidth = 15346
        BandType = 0
      end
      object ppLine94: TppLine
        UserName = 'Line94'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 17463
        mmWidth = 185738
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = ppdb6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 5027
        mmWidth = 15663
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        AutoSize = True
        DataField = 'CRECUOTA'
        DataPipeline = ppdb6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 51329
        mmTop = 5027
        mmWidth = 3133
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 60854
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        DataField = 'CREAMORT'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 79111
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText120: TppDBText
        UserName = 'DBText120'
        DataField = 'CREINTERES'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 97367
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        DataField = 'CREFLAT'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 115359
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText122: TppDBText
        UserName = 'DBText122'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3979
        mmLeft = 132292
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText123: TppDBText
        UserName = 'DBText123'
        DataField = 'CREMTODEV'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3979
        mmLeft = 149754
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText124: TppDBText
        UserName = 'DBText124'
        DataField = 'DIFERENCIA'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 166952
        mmTop = 5027
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText111'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = ppdb6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 20638
        mmTop = 5027
        mmWidth = 24299
        BandType = 4
      end
      object ppDBText134: TppDBText
        UserName = 'DBText125'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdb6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3260
        mmLeft = 794
        mmTop = 529
        mmWidth = 56219
        BandType = 4
      end
      object ppLine92: TppLine
        UserName = 'Line87'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 9260
        mmWidth = 58208
        BandType = 4
      end
    end
    object ppSummaryBand8: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine93: TppLine
        UserName = 'Line93'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 184415
        BandType = 7
      end
      object ppDBCalc105: TppDBCalc
        UserName = 'DBCalc105'
        DataField = 'DIFERENCIA'
        DataPipeline = ppdb6
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb6'
        mmHeight = 3175
        mmLeft = 164307
        mmTop = 2910
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppdb10: TppDBPipeline
    UserName = 'db10'
    Left = 360
    Top = 21
  end
  object ppr10: TppReport
    AutoStop = False
    DataPipeline = ppdb10
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 15350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\SolExes\CobranzasEnEfectivo.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 400
    Top = 21
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb10'
    object ppHeaderBand10: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object ppDBText132: TppDBText
        UserName = 'DBText132'
        AutoSize = True
        DataField = 'PERIODO'
        DataPipeline = ppdb10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 38068
        mmTop = 9790
        mmWidth = 114893
        BandType = 0
      end
      object ppSystemVariable19: TppSystemVariable
        UserName = 'SystemVariable19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 794
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable20: TppSystemVariable
        UserName = 'SystemVariable20'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 5292
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable21: TppSystemVariable
        UserName = 'SystemVariable21'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 9790
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1493
        mmTop = 794
        mmWidth = 31665
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'Unidad de Caja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1588
        mmTop = 5292
        mmWidth = 24172
        BandType = 0
      end
      object ppLine87: TppLine
        UserName = 'Line87'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 14288
        mmWidth = 192352
        BandType = 0
      end
      object ppLine88: TppLine
        UserName = 'Line88'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 22225
        mmWidth = 192352
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'Usuario/Cajero(a)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4763
        mmTop = 16669
        mmWidth = 22267
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        Caption = 'Fec.Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 59796
        mmTop = 16669
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        Caption = 'Monto Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 16669
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Caption = 'Amortizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 112713
        mmTop = 16669
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 139965
        mmTop = 16669
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = 'Gastos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 16669
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'Excesos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 16669
        mmWidth = 10583
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        AutoSize = True
        DataField = 'USUARIO'
        DataPipeline = ppdb10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 794
        mmWidth = 12869
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText125'
        AutoSize = True
        DataField = 'USERNOM'
        DataPipeline = ppdb10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 25400
        mmTop = 794
        mmWidth = 17272
        BandType = 4
      end
      object ppDBText126: TppDBText
        UserName = 'DBText126'
        AutoSize = True
        DataField = 'CREFPAG'
        DataPipeline = ppdb10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 59002
        mmTop = 794
        mmWidth = 14139
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText127'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 84000
        mmTop = 794
        mmWidth = 12573
        BandType = 4
      end
      object ppDBText128: TppDBText
        UserName = 'DBText128'
        AutoSize = True
        DataField = 'CREAMORT'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 107019
        mmTop = 794
        mmWidth = 12573
        BandType = 4
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        AutoSize = True
        DataField = 'CREINTERES'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 133975
        mmTop = 794
        mmWidth = 8636
        BandType = 4
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        AutoSize = True
        DataField = 'CREFLAT'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 157258
        mmTop = 794
        mmWidth = 8636
        BandType = 4
      end
      object ppDBText131: TppDBText
        UserName = 'DBText131'
        AutoSize = True
        DataField = 'CREMTOEXC'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3260
        mmLeft = 183939
        mmTop = 794
        mmWidth = 5503
        BandType = 4
      end
    end
    object ppSummaryBand7: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine90: TppLine
        UserName = 'Line90'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 2117
        mmWidth = 192352
        BandType = 7
      end
      object ppDBCalc100: TppDBCalc
        UserName = 'DBCalc100'
        DataField = 'CREMTOCOB'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 4763
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc101: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREAMORT'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3175
        mmLeft = 102394
        mmTop = 4763
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc102: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CREINTERES'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3175
        mmLeft = 125413
        mmTop = 4763
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc103: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CREFLAT'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3175
        mmLeft = 148696
        mmTop = 4763
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc104: TppDBCalc
        UserName = 'DBCalc104'
        DataField = 'CREMTOEXC'
        DataPipeline = ppdb10
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb10'
        mmHeight = 3175
        mmLeft = 172244
        mmTop = 4763
        mmWidth = 17198
        BandType = 7
      end
      object ppLine91: TppLine
        UserName = 'Line901'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 9790
        mmWidth = 192352
        BandType = 7
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 61913
        mmTop = 4498
        mmWidth = 9144
        BandType = 7
      end
    end
    object ppGroup16: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = ppdb10
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group16'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb10'
      object ppGroupHeaderBand16: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
      end
      object ppGroupFooterBand16: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppLine89: TppLine
          UserName = 'Line89'
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 265
          mmTop = 2117
          mmWidth = 192352
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc95: TppDBCalc
          UserName = 'DBCalc95'
          DataField = 'CREMTOCOB'
          DataPipeline = ppdb10
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb10'
          mmHeight = 3175
          mmLeft = 79375
          mmTop = 5027
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc96: TppDBCalc
          UserName = 'DBCalc96'
          DataField = 'CREAMORT'
          DataPipeline = ppdb10
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb10'
          mmHeight = 3175
          mmLeft = 102394
          mmTop = 5027
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc97: TppDBCalc
          UserName = 'DBCalc97'
          DataField = 'CREINTERES'
          DataPipeline = ppdb10
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb10'
          mmHeight = 3175
          mmLeft = 125413
          mmTop = 5027
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc98: TppDBCalc
          UserName = 'DBCalc98'
          DataField = 'CREFLAT'
          DataPipeline = ppdb10
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb10'
          mmHeight = 3175
          mmLeft = 148696
          mmTop = 5027
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc99: TppDBCalc
          UserName = 'DBCalc99'
          DataField = 'CREMTOEXC'
          DataPipeline = ppdb10
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb10'
          mmHeight = 3175
          mmLeft = 172244
          mmTop = 5027
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBText133: TppDBText
          UserName = 'DBText133'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppdb10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdb10'
          mmHeight = 3260
          mmLeft = 59796
          mmTop = 5027
          mmWidth = 12869
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppd10: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr10
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 440
    Top = 21
  end
end
