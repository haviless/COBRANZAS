object fDevoluciones: TfDevoluciones
  Left = 223
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Devoluci'#243'n De Cuotas'
  ClientHeight = 444
  ClientWidth = 578
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 0
    Width = 573
    Height = 189
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 59
      Width = 209
      Height = 22
      Caption = 'Monto de la Devoluci'#243'n  :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 422
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Fecha '
    end
    object Label11: TLabel
      Left = 10
      Top = 92
      Width = 97
      Height = 13
      Caption = 'Tipo de Desembolso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblAgencia: TLabel
      Left = 12
      Top = 137
      Width = 84
      Height = 13
      Caption = 'Agencia Bancaria'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCtaAhorros: TLabel
      Left = 349
      Top = 92
      Width = 90
      Height = 13
      Caption = 'Cuenta De Ahorros'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 13
      Width = 35
      Height = 24
      Caption = 'N'#176' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DtpFecDev: TDateTimePicker
      Left = 461
      Top = 14
      Width = 104
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLkuCTipDes: TwwDBLookupCombo
      Left = 9
      Top = 105
      Width = 49
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPDESEID'#9'2'#9'Codigo'#9'F'
        'TIPDESEABR'#9'25'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormPago
      LookupField = 'TIPDESEID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLkuCTipDesChange
      OnKeyPress = DBLkuCTipDesKeyPress
    end
    object EdtTipDes: TEdit
      Left = 59
      Top = 105
      Width = 280
      Height = 24
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBLkCDAgencias: TwwDBLookupComboDlg
      Left = 9
      Top = 151
      Width = 191
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit, dgDblClickColSizing]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Agencia Bancarias'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'AGENBCODES'#9'25'#9'Agencia'#9'F'
        'DPTODES'#9'20'#9'Departamento'#9'F'
        'AGENBCOID'#9'8'#9'Codigo de Agencia'#9'F')
      LookupTable = DM1.cdsAgenciaBco
      LookupField = 'AGENBCODES'
      Enabled = False
      ParentFont = False
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = DBLkCDAgenciasChange
    end
    object EdtCodAgen: TEdit
      Left = 203
      Top = 151
      Width = 124
      Height = 24
      Color = 12975869
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtDepGir: TEdit
      Left = 329
      Top = 151
      Width = 234
      Height = 24
      Color = 12975869
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtCtaAhorros: TEdit
      Left = 348
      Top = 105
      Width = 100
      Height = 23
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtSitCta: TEdit
      Left = 449
      Top = 105
      Width = 115
      Height = 23
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtNroDev: TEdit
      Left = 61
      Top = 11
      Width = 126
      Height = 28
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 12975869
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 224
      Top = 50
      Width = 120
      Height = 35
      BevelInner = bvLowered
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clWhite
      TabOrder = 9
      object lblMonDev: TLabel
        Left = 5
        Top = 1
        Width = 107
        Height = 29
        Alignment = taRightJustify
        AutoSize = False
        Caption = '9,999.99'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object grpPagar: TGroupBox
      Left = 353
      Top = 43
      Width = 217
      Height = 46
      Caption = 'Paguese En La Caja De : '
      Enabled = False
      TabOrder = 10
      Visible = False
      object edtOfDesId: TEdit
        Left = 5
        Top = 19
        Width = 22
        Height = 21
        TabOrder = 0
        Text = '01'
      end
      object edtOfDesNom: TEdit
        Left = 33
        Top = 19
        Width = 175
        Height = 21
        TabOrder = 1
        Text = 'SEDE CENTRAL'
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 310
    Width = 574
    Height = 132
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 10
      Width = 66
      Height = 13
      Caption = 'Observaci'#243'n :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitSalir: TBitBtn
      Left = 452
      Top = 101
      Width = 91
      Height = 26
      Caption = '&Salir'
      TabOrder = 2
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
    object BitGrabar: TBitBtn
      Left = 251
      Top = 101
      Width = 91
      Height = 26
      Caption = '&Grabar'
      TabOrder = 1
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
    object mObservacion: TMemo
      Left = 8
      Top = 24
      Width = 556
      Height = 71
      Lines.Strings = (
        '')
      TabOrder = 0
    end
    object BitPrint: TBitBtn
      Left = 351
      Top = 101
      Width = 90
      Height = 27
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = BitPrintClick
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
  object grpDetDev: TGroupBox
    Left = 3
    Top = 189
    Width = 574
    Height = 122
    Caption = 'Detalles'
    TabOrder = 2
    object dtgExcesos: TwwDBGrid
      Left = 7
      Top = 15
      Width = 561
      Height = 100
      DisableThemesInTitle = False
      Selected.Strings = (
        'CREDID'#9'16'#9'Numero De Credito'#9#9
        'CRECUOTA'#9'5'#9'N'#176'Cuota'#9#9
        'CREFPAG'#9'10'#9'F.Pago'#9#9
        'CREMTOEXC'#9'11'#9'Monto Exceso'#9#9
        'CREAPLEXC'#9'11'#9'Exceso Aplicado'#9#9
        'PORAPLICA'#9'11'#9'Exceso Por Devolver'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCambios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object ppDBDevol: TppDBPipeline
    DataSource = DM1.dsCambios
    UserName = 'DBDevol'
    Left = 67
    Top = 410
  end
  object ppRepDevol: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'F:\SOLREPO\COB\RepFrmDev.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 103
    Top = 410
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 63500
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        ReprintOnOverFlow = True
        Caption = 'Derrama Magisterial         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 15346
        mmTop = 529
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Equipo De Cobranzas     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 6350
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Jr. Gregorio Escobedo 598  Jesus Maria -  Telf. 463-5262 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 11642
        mmWidth = 77258
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 529
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 5027
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 529
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 529
        mmWidth = 18256
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 5027
        mmWidth = 21696
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 
          'NOTA DE DESEMBOLSO  :  GIRO/TRANSFERENCIA        N'#176'  000075-2003' +
          '-DM-COB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 22225
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'FECHA DOCUMENTO      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 42598
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'DEPARTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 47361
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'SE'#209'OR(A)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 33338
        mmWidth = 25400
        BandType = 0
      end
      object xxx: TppLabel
        UserName = 'xxx'
        Caption = 'CODIGO MODULAR     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 37835
        mmWidth = 40217
        BandType = 0
      end
      object ppp: TppLabel
        UserName = 'p'
        Caption = 'COD. PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 42863
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'U. PROCESO         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 47890
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 33073
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 38100
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 42863
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 47890
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 43127
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 47890
        mmWidth = 1323
        BandType = 0
      end
      object ppLblNomGen: TppLabel
        UserName = 'Label101'
        Caption = 'DIEGO LA TORRERE ALVAREZ CALDERON'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 33073
        mmWidth = 97631
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        Caption = '0123456789'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 38100
        mmWidth = 29104
        BandType = 0
      end
      object ppLblFecDoc: TppLabel
        UserName = 'LblFecDoc'
        Caption = '10/04/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49477
        mmTop = 42863
        mmWidth = 24342
        BandType = 0
      end
      object ppLblDpto: TppLabel
        UserName = 'LblDpto'
        Caption = 'HUANCAVELICA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 47890
        mmWidth = 35719
        BandType = 0
      end
      object ppLblCodPag: TppLabel
        UserName = 'LblCodPag'
        Caption = '1234567890542323'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 43127
        mmWidth = 33867
        BandType = 0
      end
      object ppLblUproc: TppLabel
        UserName = 'LblUproc'
        Caption = 'D.S.R.E. TARAPOTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 47890
        mmWidth = 53446
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 53181
        mmWidth = 192882
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 61383
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'DESEMBOLSO        '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 56092
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 56092
        mmWidth = 1323
        BandType = 0
      end
      object ppLblDesem: TppLabel
        UserName = 'LblDesem'
        Caption = 'DESEMBOLSAR        '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 56092
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'p1'
        Caption = 'D.N.I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 38100
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 38365
        mmWidth = 1323
        BandType = 0
      end
      object PPLblDni: TppLabel
        UserName = 'LblCodPag1'
        Caption = '01234567'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 38365
        mmWidth = 16933
        BandType = 0
      end
      object lblRotPag: TppLabel
        UserName = 'lblRotPag'
        Caption = 'Paguese En Caja  : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 99219
        mmTop = 56092
        mmWidth = 34713
        BandType = 0
      end
      object lblPagEn: TppLabel
        UserName = 'lblPagEn'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 135996
        mmTop = 56092
        mmWidth = 51594
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 62177
      mmPrintPosition = 0
      object ppMeses: TppMemo
        UserName = 'Meses'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 62177
        mmLeft = 2381
        mmTop = 0
        mmWidth = 187061
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 59796
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'TOTAL DEVOLUCION  S/..:      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 61383
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 191030
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 8467
        mmWidth = 191030
        BandType = 7
      end
      object ppLblMonDev: TppLabel
        UserName = 'LblMonDev'
        Caption = '1,500.25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 146315
        mmTop = 2117
        mmWidth = 38629
        BandType = 7
      end
      object ppLblUsuario: TppLabel
        UserName = 'LblUsuario'
        AutoSize = False
        Caption = 'Hecho Por USUARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 48419
        mmWidth = 52123
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19844
        mmTop = 47625
        mmWidth = 60854
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 107421
        mmTop = 48154
        mmWidth = 60590
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = 'V'#176'.B'#176'.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 129911
        mmTop = 49213
        mmWidth = 12700
        BandType = 7
      end
    end
  end
end
