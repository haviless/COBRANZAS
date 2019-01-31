object fDetGest: TfDetGest
  Left = 124
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Nueva Gesti'#243'n De Cobranzas'
  ClientHeight = 444
  ClientWidth = 788
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = -3
    Width = 780
    Height = 410
    TabOrder = 0
    object Shape3: TShape
      Left = 428
      Top = 97
      Width = 342
      Height = 27
    end
    object Shape2: TShape
      Left = 8
      Top = 97
      Width = 417
      Height = 27
    end
    object Label3: TLabel
      Left = 9
      Top = 52
      Width = 104
      Height = 17
      AutoSize = False
      Caption = 'Codigo Modular   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 145
      Top = 53
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblCodMod: TLabel
      Left = 183
      Top = 52
      Width = 106
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 309
      Top = 52
      Width = 102
      Height = 18
      AutoSize = False
      Caption = 'Tipo De Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipAso: TLabel
      Left = 435
      Top = 53
      Width = 136
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 412
      Top = 24
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 9
      Top = 72
      Width = 137
      Height = 16
      AutoSize = False
      Caption = 'Apellidos y Nombres'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAsoNombres: TLabel
      Left = 183
      Top = 73
      Width = 352
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 145
      Top = 73
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblCalificacion: TLabel
      Left = 181
      Top = 104
      Width = 239
      Height = 14
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXX'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 450
      Top = 104
      Width = 133
      Height = 15
      AutoSize = False
      Caption = 'Saldo Total (A+I+G)'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 602
      Top = 102
      Width = 84
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '5,000.00'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 583
      Top = 103
      Width = 17
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 15
      Top = 104
      Width = 76
      Height = 16
      AutoSize = False
      Caption = 'Categoria'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 144
      Top = 103
      Width = 17
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblNroGest: TLabel
      Left = 9
      Top = 16
      Width = 200
      Height = 23
      AutoSize = False
      Caption = 'Gesti'#243'n  N'#176'  :  000005'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlItems: TPanel
      Left = 8
      Top = 128
      Width = 764
      Height = 127
      BorderStyle = bsSingle
      TabOrder = 0
      object Label6: TLabel
        Left = 419
        Top = 13
        Width = 89
        Height = 14
        AutoSize = False
        Caption = 'Tipo De Gesti'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 68
        Width = 98
        Height = 16
        AutoSize = False
        Caption = 'Gesti'#243'n Realizada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 5
        Top = 10
        Width = 61
        Height = 14
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object BitGrabar: TBitBtn
        Left = 727
        Top = 86
        Width = 26
        Height = 25
        TabOrder = 4
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
      object Panel3: TPanel
        Left = 464
        Top = 33
        Width = 249
        Height = 23
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 0
        object EdtDesGnt: TEdit
          Left = 3
          Top = 0
          Width = 243
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object dblGestion: TwwDBLookupCombo
        Left = 420
        Top = 34
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'IDGTN'#9'4'#9'Codigo'#9'F'
          'DESCRIPCION'#9'46'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsTransacciones
        LookupField = 'IDGTN'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblGestionChange
      end
      object mDetObs: TMemo
        Left = 116
        Top = 65
        Width = 599
        Height = 54
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object mRefCab: TMemo
        Left = 71
        Top = 5
        Width = 341
        Height = 53
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 577
      Top = 16
      Width = 194
      Height = 41
      Color = 14548479
      Enabled = False
      TabOrder = 1
      object Shape1: TShape
        Left = 1
        Top = 1
        Width = 191
        Height = 38
        Brush.Color = 14548479
      end
      object Label11: TLabel
        Left = 5
        Top = 6
        Width = 36
        Height = 13
        Caption = 'Fecha'
        Color = 14548479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 5
        Top = 20
        Width = 64
        Height = 13
        Caption = 'De Gesti'#243'n'
        Color = 14548479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DtpFecGst: TDateTimePicker
        Left = 84
        Top = 9
        Width = 101
        Height = 24
        CalColors.TextColor = clBtnText
        Date = 37814.000000000000000000
        Time = 37814.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dtgDetGestion: TwwDBGrid
      Left = 9
      Top = 262
      Width = 763
      Height = 139
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'FECHA'#9'10'#9'Fecha~De Gesti'#243'n'
        'HORA'#9'8'#9'Hora~De Gesti'#243'n'
        'DESCRIPCION'#9'16'#9'Tipo~De Gesti'#243'n'
        'DETOBS'#9'67'#9'Gesti'#243'n Realizada'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
  end
  object BitSalir: TBitBtn
    Left = 628
    Top = 413
    Width = 89
    Height = 27
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 1
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
  object BitPrint: TBitBtn
    Left = 519
    Top = 414
    Width = 90
    Height = 26
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 2
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
  end
end
