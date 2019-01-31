object Finfenv: TFinfenv
  Left = 415
  Top = 59
  BorderStyle = bsDialog
  Caption = 'Informaci'#243'n de envio a cobranza'
  ClientHeight = 493
  ClientWidth = 792
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 0
    Width = 393
    Height = 93
    Caption = ' Informaci'#243'n a procesar '
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 19
      Width = 51
      Height = 13
      Caption = 'Convenio :'
    end
    object Label2: TLabel
      Left = 9
      Top = 45
      Width = 42
      Height = 13
      Caption = 'Periodo :'
    end
    object Label8: TLabel
      Left = 9
      Top = 69
      Width = 50
      Height = 13
      Caption = 'Asociado :'
    end
    object Panel1: TPanel
      Left = 65
      Top = 16
      Width = 65
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      object meidecon: TMaskEdit
        Left = 1
        Top = 1
        Width = 63
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 136
      Top = 16
      Width = 252
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 1
      object medescon: TMaskEdit
        Left = 1
        Top = 1
        Width = 249
        Height = 21
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 65
      Top = 41
      Width = 96
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 2
      object medesper: TMaskEdit
        Left = 1
        Top = 1
        Width = 94
        Height = 21
        TabOrder = 0
      end
    end
    object Panel11: TPanel
      Left = 64
      Top = 66
      Width = 76
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 3
      object measotipid: TMaskEdit
        Left = 1
        Top = 1
        Width = 74
        Height = 21
        TabOrder = 0
      end
    end
    object pnlprocesado: TPanel
      Left = 179
      Top = 53
      Width = 185
      Height = 23
      Caption = 'INFORMACION PROCESADA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 95
    Width = 783
    Height = 389
    Caption = ' Informaci'#243'n procesada'
    TabOrder = 1
    object dbgPrevio: TwwDBGrid
      Left = 4
      Top = 120
      Width = 775
      Height = 230
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsReporte
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 15
      Width = 390
      Height = 102
      TabOrder = 1
      object rgTipDes: TRadioGroup
        Left = 7
        Top = 8
        Width = 109
        Height = 63
        Caption = ' Tipo de descuento '
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Cuotas + FSC'
          'Aportes')
        TabOrder = 0
      end
      object btnprevio: TBitBtn
        Left = 270
        Top = 13
        Width = 113
        Height = 30
        Caption = 'Ver informaci'#243'n'
        TabOrder = 1
        OnClick = btnprevioClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
          055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
          88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
          F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
          F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
          0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
          00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
          0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
          05555575FF777777755555500055555555555557775555555555}
        NumGlyphs = 2
      end
      object rgTipInf: TRadioGroup
        Left = 121
        Top = 8
        Width = 127
        Height = 90
        Caption = ' Tipo de informaci'#243'n'
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Adicionar'
          'Modificar'
          'Eliminar'
          'Igual')
        TabOrder = 2
      end
    end
    object btnexportar: TBitBtn
      Left = 614
      Top = 355
      Width = 81
      Height = 30
      Caption = 'Exportar'
      TabOrder = 2
      OnClick = btnexportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnimprimir: TBitBtn
      Left = 527
      Top = 355
      Width = 81
      Height = 30
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = btnimprimirClick
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
    object btnCerrar: TBitBtn
      Left = 700
      Top = 355
      Width = 80
      Height = 30
      Caption = 'Cerrar'
      TabOrder = 4
      OnClick = btnCerrarClick
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
  end
  object dtgData: TDBGrid
    Left = 448
    Top = 8
    Width = 73
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ppbdereporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdereporte'
    Left = 400
    Top = 8
    object ppbdereporteppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppbdereporteppField2: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppbdereporteppField3: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppbdereporteppField4: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppbdereporteppField5: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppbdereporteppField6: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppbdereporteppField7: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppbdereporteppField8: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppbdereporteppField9: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppbdereporteppField10: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppbdereporteppField11: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppbdereporteppField12: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppbdereporteppField13: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppbdereporteppField14: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppbdereporteppField15: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppbdereporteppField16: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppbdereporteppField17: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppbdereporteppField18: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppbdereporteppField19: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppbdereporteppField20: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppbdereporteppField21: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppbdereporteppField22: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppbdereporteppField23: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppbdereporteppField24: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppbdereporteppField25: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppbdereporteppField26: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppbdereporteppField27: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppbdereporteppField28: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppbdereporteppField29: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppbdereporteppField30: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppbdereporteppField31: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppbdereporteppField32: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppbdereporteppField33: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppbdereporteppField34: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppbdereporteppField35: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppbdereporteppField36: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppbdereporteppField37: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppbdereporteppField38: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppbdereporteppField39: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppbdereporteppField40: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 39
    end
    object ppbdereporteppField41: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppbdereporteppField42: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppbdereporteppField43: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppbdereporteppField44: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppbdereporteppField45: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppbdereporteppField46: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppbdereporteppField47: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppbdereporteppField48: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppbdereporteppField49: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 250
      DisplayWidth = 250
      Position = 48
    end
    object ppbdereporteppField50: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppbdereporteppField51: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppbdereporteppField52: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppbdereporteppField53: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppbdereporteppField54: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppbdereporteppField55: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppbdereporteppField56: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppbdereporteppField57: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppbdereporteppField58: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppbdereporteppField59: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppbdereporteppField60: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppbdereporteppField61: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppbdereporteppField62: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppbdereporteppField63: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppbdereporteppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppbdereporteppField65: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
    object ppbdereporteppField66: TppField
      FieldAlias = 'FLGFSOL'
      FieldName = 'FLGFSOL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppbdereporteppField67: TppField
      FieldAlias = 'ESTCLF'
      FieldName = 'ESTCLF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 66
    end
    object ppbdereporteppField68: TppField
      FieldAlias = 'OBSERVA'
      FieldName = 'OBSERVA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 67
    end
    object ppbdereporteppField69: TppField
      FieldAlias = 'USR_CREA'
      FieldName = 'USR_CREA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 68
    end
    object ppbdereporteppField70: TppField
      FieldAlias = 'FEC_CREA'
      FieldName = 'FEC_CREA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 69
    end
    object ppbdereporteppField71: TppField
      FieldAlias = 'USR_BEN'
      FieldName = 'USR_BEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 70
    end
    object ppbdereporteppField72: TppField
      FieldAlias = 'FEC_BEN'
      FieldName = 'FEC_BEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 71
    end
    object ppbdereporteppField73: TppField
      FieldAlias = 'CTASER'
      FieldName = 'CTASER'
      FieldLength = 7
      DisplayWidth = 7
      Position = 72
    end
    object ppbdereporteppField74: TppField
      FieldAlias = 'CARGO'
      FieldName = 'CARGO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 73
    end
    object ppbdereporteppField75: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 74
    end
    object ppbdereporteppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRENCUOTA'
      FieldName = 'CRENCUOTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object ppbdereporteppField77: TppField
      FieldAlias = 'NFUSION'
      FieldName = 'NFUSION'
      FieldLength = 9
      DisplayWidth = 9
      Position = 76
    end
    object ppbdereporteppField78: TppField
      FieldAlias = 'IDIMAGE'
      FieldName = 'IDIMAGE'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object ppbdereporteppField79: TppField
      FieldAlias = 'FSINLIQ'
      FieldName = 'FSINLIQ'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object ppbdereporteppField80: TppField
      FieldAlias = 'ASODESCOL'
      FieldName = 'ASODESCOL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 79
    end
    object ppbdereporteppField81: TppField
      FieldAlias = 'ASODIRCOL'
      FieldName = 'ASODIRCOL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 80
    end
    object ppbdereporteppField82: TppField
      FieldAlias = 'ASOZIPCOL'
      FieldName = 'ASOZIPCOL'
      FieldLength = 6
      DisplayWidth = 6
      Position = 81
    end
    object ppbdereporteppField83: TppField
      FieldAlias = 'ASOAPEPATDNI'
      FieldName = 'ASOAPEPATDNI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 82
    end
    object ppbdereporteppField84: TppField
      FieldAlias = 'ASOAPEMATDNI'
      FieldName = 'ASOAPEMATDNI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 83
    end
    object ppbdereporteppField85: TppField
      FieldAlias = 'ASONOMDNI'
      FieldName = 'ASONOMDNI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 84
    end
    object ppbdereporteppField86: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 90
      DisplayWidth = 90
      Position = 85
    end
    object ppbdereporteppField87: TppField
      FieldAlias = 'ASODESLAB'
      FieldName = 'ASODESLAB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 86
    end
    object ppbdereporteppField88: TppField
      FieldAlias = 'ASODIRLAB'
      FieldName = 'ASODIRLAB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 87
    end
    object ppbdereporteppField89: TppField
      FieldAlias = 'ASODPTLABID'
      FieldName = 'ASODPTLABID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 88
    end
    object ppbdereporteppField90: TppField
      FieldAlias = 'ASOPRVLABID'
      FieldName = 'ASOPRVLABID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 89
    end
    object ppbdereporteppField91: TppField
      FieldAlias = 'ASODSTLABID'
      FieldName = 'ASODSTLABID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 90
    end
    object ppbdereporteppField92: TppField
      FieldAlias = 'ASOTELLAB'
      FieldName = 'ASOTELLAB'
      FieldLength = 12
      DisplayWidth = 12
      Position = 91
    end
    object ppbdereporteppField93: TppField
      FieldAlias = 'DPTNACID'
      FieldName = 'DPTNACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 92
    end
    object ppbdereporteppField94: TppField
      FieldAlias = 'PRVNACID'
      FieldName = 'PRVNACID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 93
    end
    object ppbdereporteppField95: TppField
      FieldAlias = 'DSTNACID'
      FieldName = 'DSTNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 94
    end
    object ppbdereporteppField96: TppField
      FieldAlias = 'VIALABID'
      FieldName = 'VIALABID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 95
    end
    object ppbdereporteppField97: TppField
      FieldAlias = 'ZONALABID'
      FieldName = 'ZONALABID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 96
    end
    object ppbdereporteppField98: TppField
      FieldAlias = 'FECACT'
      FieldName = 'FECACT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 97
    end
    object ppbdereporteppField99: TppField
      FieldAlias = 'INDICADOR'
      FieldName = 'INDICADOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 98
    end
    object ppbdereporteppField100: TppField
      FieldAlias = 'CCOSID'
      FieldName = 'CCOSID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 99
    end
    object ppbdereporteppField101: TppField
      FieldAlias = 'PASSWORD'
      FieldName = 'PASSWORD'
      FieldLength = 4
      DisplayWidth = 4
      Position = 100
    end
    object ppbdereporteppField102: TppField
      FieldAlias = 'CODAFP'
      FieldName = 'CODAFP'
      FieldLength = 2
      DisplayWidth = 2
      Position = 101
    end
    object ppbdereporteppField103: TppField
      FieldAlias = 'DESHABILITADO'
      FieldName = 'DESHABILITADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 102
    end
    object ppbdereporteppField104: TppField
      FieldAlias = 'VALIDA_CI'
      FieldName = 'VALIDA_CI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 103
    end
    object ppbdereporteppField105: TppField
      FieldAlias = 'TCREACION'
      FieldName = 'TCREACION'
      FieldLength = 2
      DisplayWidth = 2
      Position = 104
    end
    object ppbdereporteppField106: TppField
      FieldAlias = 'REGVERIF'
      FieldName = 'REGVERIF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object ppbdereporteppField107: TppField
      FieldAlias = 'CODMODANT'
      FieldName = 'CODMODANT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 106
    end
    object ppbdereporteppField108: TppField
      FieldAlias = 'VALCODMODDNI'
      FieldName = 'VALCODMODDNI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 107
    end
    object ppbdereporteppField109: TppField
      FieldAlias = 'ACTARCRENANT'
      FieldName = 'ACTARCRENANT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 108
    end
    object ppbdereporteppField110: TppField
      FieldAlias = 'ACTARCREN'
      FieldName = 'ACTARCREN'
      FieldLength = 1
      DisplayWidth = 1
      Position = 109
    end
    object ppbdereporteppField111: TppField
      FieldAlias = 'REINGRESO'
      FieldName = 'REINGRESO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 110
    end
    object ppbdereporteppField112: TppField
      FieldAlias = 'AUTDESAPO'
      FieldName = 'AUTDESAPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 111
    end
    object ppbdereporteppField113: TppField
      FieldAlias = 'FECAUTDESAPO'
      FieldName = 'FECAUTDESAPO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 112
    end
    object ppbdereporteppField114: TppField
      FieldAlias = 'USUREGAUTDESAPO'
      FieldName = 'USUREGAUTDESAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 113
    end
    object ppbdereporteppField115: TppField
      FieldAlias = 'OFIREGAUTDESAPO'
      FieldName = 'OFIREGAUTDESAPO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 114
    end
    object ppbdereporteppField116: TppField
      FieldAlias = 'CODMODAUTDESAPO'
      FieldName = 'CODMODAUTDESAPO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 115
    end
    object ppbdereporteppField117: TppField
      FieldAlias = 'CODARCHIVO'
      FieldName = 'CODARCHIVO'
      FieldLength = 21
      DisplayWidth = 21
      Position = 116
    end
    object ppbdereporteppField118: TppField
      FieldAlias = 'GENCODBAR'
      FieldName = 'GENCODBAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 117
    end
    object ppbdereporteppField119: TppField
      FieldAlias = 'ENVAUTDES'
      FieldName = 'ENVAUTDES'
      FieldLength = 6
      DisplayWidth = 6
      Position = 118
    end
    object ppbdereporteppField120: TppField
      FieldAlias = 'CORENVAUTDES'
      FieldName = 'CORENVAUTDES'
      FieldLength = 5
      DisplayWidth = 5
      Position = 119
    end
    object ppbdereporteppField121: TppField
      FieldAlias = 'CODTIPLUG'
      FieldName = 'CODTIPLUG'
      FieldLength = 2
      DisplayWidth = 2
      Position = 120
    end
    object ppbdereporteppField122: TppField
      FieldAlias = 'NUMDIRVIV'
      FieldName = 'NUMDIRVIV'
      FieldLength = 6
      DisplayWidth = 6
      Position = 121
    end
    object ppbdereporteppField123: TppField
      FieldAlias = 'NUMMANVIV'
      FieldName = 'NUMMANVIV'
      FieldLength = 3
      DisplayWidth = 3
      Position = 122
    end
    object ppbdereporteppField124: TppField
      FieldAlias = 'NUMLOTVIV'
      FieldName = 'NUMLOTVIV'
      FieldLength = 3
      DisplayWidth = 3
      Position = 123
    end
    object ppbdereporteppField125: TppField
      FieldAlias = 'DESINTVIV'
      FieldName = 'DESINTVIV'
      FieldLength = 12
      DisplayWidth = 12
      Position = 124
    end
    object ppbdereporteppField126: TppField
      FieldAlias = 'DESREFVIV'
      FieldName = 'DESREFVIV'
      FieldLength = 65
      DisplayWidth = 65
      Position = 125
    end
    object ppbdereporteppField127: TppField
      FieldAlias = 'CODURBVIV'
      FieldName = 'CODURBVIV'
      FieldLength = 2
      DisplayWidth = 2
      Position = 126
    end
    object ppbdereporteppField128: TppField
      FieldAlias = 'DESURBVIV'
      FieldName = 'DESURBVIV'
      FieldLength = 50
      DisplayWidth = 50
      Position = 127
    end
    object ppbdereporteppField129: TppField
      FieldAlias = 'NUMETAVIV'
      FieldName = 'NUMETAVIV'
      FieldLength = 6
      DisplayWidth = 6
      Position = 128
    end
    object ppbdereporteppField130: TppField
      FieldAlias = 'DESETAVIV'
      FieldName = 'DESETAVIV'
      FieldLength = 50
      DisplayWidth = 50
      Position = 129
    end
    object ppbdereporteppField131: TppField
      FieldAlias = 'NUMINTVIV'
      FieldName = 'NUMINTVIV'
      FieldLength = 8
      DisplayWidth = 8
      Position = 130
    end
    object ppbdereporteppField132: TppField
      FieldAlias = 'NOMDIRVIV'
      FieldName = 'NOMDIRVIV'
      FieldLength = 45
      DisplayWidth = 45
      Position = 131
    end
    object ppbdereporteppField133: TppField
      FieldAlias = 'ANOENV'
      FieldName = 'ANOENV'
      FieldLength = 4
      DisplayWidth = 4
      Position = 132
    end
    object ppbdereporteppField134: TppField
      FieldAlias = 'ENVIO'
      FieldName = 'ENVIO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 133
    end
    object ppbdereporteppField135: TppField
      FieldAlias = 'CODOTRDOCIDE'
      FieldName = 'CODOTRDOCIDE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 134
    end
    object ppbdereporteppField136: TppField
      FieldAlias = 'NUMOTRDOCIDE'
      FieldName = 'NUMOTRDOCIDE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 135
    end
    object ppbdereporteppField137: TppField
      FieldAlias = 'CODMOTDEST'
      FieldName = 'CODMOTDEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object ppbdereporteppField138: TppField
      FieldAlias = 'AUTDESCUO'
      FieldName = 'AUTDESCUO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 137
    end
    object ppbdereporteppField139: TppField
      FieldAlias = 'FECAUTDESCUO'
      FieldName = 'FECAUTDESCUO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 138
    end
    object ppbdereporteppField140: TppField
      FieldAlias = 'USUREGAUTDESCUO'
      FieldName = 'USUREGAUTDESCUO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 139
    end
    object ppbdereporteppField141: TppField
      FieldAlias = 'OFIREGAUTDESCU'
      FieldName = 'OFIREGAUTDESCU'
      FieldLength = 2
      DisplayWidth = 2
      Position = 140
    end
    object ppbdereporteppField142: TppField
      FieldAlias = 'CODMODAUTDESCUO'
      FieldName = 'CODMODAUTDESCUO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 141
    end
    object ppbdereporteppField143: TppField
      FieldAlias = 'MDFASODIR'
      FieldName = 'MDFASODIR'
      FieldLength = 250
      DisplayWidth = 250
      Position = 142
    end
    object ppbdereporteppField144: TppField
      FieldAlias = 'MDFZIPID'
      FieldName = 'MDFZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 143
    end
    object ppbdereporteppField145: TppField
      FieldAlias = 'MDFCNTREG'
      FieldName = 'MDFCNTREG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 144
    end
    object ppbdereporteppField146: TppField
      FieldAlias = 'MDFUSRMOD'
      FieldName = 'MDFUSRMOD'
      FieldLength = 20
      DisplayWidth = 20
      Position = 145
    end
    object ppbdereporteppField147: TppField
      FieldAlias = 'MDFFECMOD'
      FieldName = 'MDFFECMOD'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 146
    end
    object ppbdereporteppField148: TppField
      FieldAlias = 'EMICARTA'
      FieldName = 'EMICARTA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 147
    end
  end
  object pprreporte: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 408
    Top = 16
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42333
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 5292
        mmTop = 0
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 5292
        mmTop = 3704
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 147902
        mmTop = 0
        mmWidth = 9261
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 147902
        mmTop = 3704
        mmWidth = 9261
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 147902
        mmTop = 7408
        mmWidth = 9261
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 159809
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159809
        mmTop = 3704
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159809
        mmTop = 7408
        mmWidth = 1588
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 162719
        mmTop = 0
        mmWidth = 15081
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 3704
        mmWidth = 12965
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 7408
        mmWidth = 7408
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8467
        mmLeft = 5027
        mmTop = 33602
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 5556
        mmTop = 34131
        mmWidth = 12171
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8467
        mmLeft = 23019
        mmTop = 33602
        mmWidth = 69322
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 23548
        mmTop = 34131
        mmWidth = 34660
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 8467
        mmLeft = 92075
        mmTop = 33602
        mmWidth = 18255
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Monto a descontar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 93398
        mmTop = 34131
        mmWidth = 12700
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 8467
        mmLeft = 110067
        mmTop = 33602
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Cuotas pendientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 110861
        mmTop = 34131
        mmWidth = 13494
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 8467
        mmLeft = 125677
        mmTop = 33602
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Tipo de envio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 126471
        mmTop = 34131
        mmWidth = 13494
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 8467
        mmLeft = 150548
        mmTop = 33602
        mmWidth = 25136
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Tipo de actualizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 151871
        mmTop = 34131
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'CONVENIO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3345
        mmLeft = 5292
        mmTop = 20373
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'PERIODO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 5292
        mmTop = 24077
        mmWidth = 14859
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'TIPO DE ASOCIADO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3439
        mmLeft = 5292
        mmTop = 28046
        mmWidth = 32544
        BandType = 0
      end
      object ppldescon: TppLabel
        UserName = 'ldescon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 20373
        mmWidth = 53975
        BandType = 0
      end
      object pplperiodo: TppLabel
        UserName = 'Label201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 24077
        mmWidth = 26723
        BandType = 0
      end
      object ppltipaso: TppLabel
        UserName = 'ltipaso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 38894
        mmTop = 28046
        mmWidth = 32554
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label21'
        Caption = 'INFORMACION PROCESADA PARA EL ENVIO A COBRANZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 13229
        mmWidth = 170921
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 5556
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 23548
        mmTop = 0
        mmWidth = 68263
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONENV'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 92604
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CUOPEN'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 110596
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'DESTIPENV'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'DESFLATIPENV'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 151077
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object pplimpresopor: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 6879
        mmWidth = 62188
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5027
        mmTop = 265
        mmWidth = 170657
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5027
        mmTop = 5292
        mmWidth = 170657
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONENV'
        DataPipeline = ppbdereporte
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 92604
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 23548
        mmTop = 1058
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 39952
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
    end
  end
end
