object fDevExcFSC: TfDevExcFSC
  Left = 673
  Top = 263
  BorderStyle = bsDialog
  Caption = 'Devoluci'#243'n de Excesos al FSC'
  ClientHeight = 378
  ClientWidth = 592
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox12: TGroupBox
    Left = 9
    Top = 5
    Width = 573
    Height = 97
    Enabled = False
    TabOrder = 0
    object Label19: TLabel
      Left = 5
      Top = 63
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
    object Label20: TLabel
      Left = 422
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Fecha '
    end
    object Label22: TLabel
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
    object Panel6: TPanel
      Left = 224
      Top = 54
      Width = 123
      Height = 35
      BevelInner = bvLowered
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clWhite
      TabOrder = 2
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
      TabOrder = 3
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
  object grpDetDev: TGroupBox
    Left = 9
    Top = 196
    Width = 574
    Height = 122
    Caption = 'Detalles'
    TabOrder = 1
    object Label23: TLabel
      Left = 244
      Top = 6
      Width = 168
      Height = 13
      Caption = 'Observaci'#243'n : (max 512 caracteres)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtgDevuelvo: TwwDBGrid
      Left = 7
      Top = 15
      Width = 227
      Height = 100
      DisableThemesInTitle = False
      Selected.Strings = (
        'MONREV'#9'10'#9'Importe'
        'CORDEU'#9'5'#9'Corr.'
        'NUMDEU'#9'15'#9'Num.Deuda')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSDEVUELVO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
    object mObservacion: TMemo
      Left = 243
      Top = 19
      Width = 325
      Height = 93
      Lines.Strings = (
        '')
      TabOrder = 1
    end
  end
  object GroupBox13: TGroupBox
    Left = 10
    Top = 320
    Width = 574
    Height = 46
    TabOrder = 2
    object BitBtn3: TBitBtn
      Left = 476
      Top = 12
      Width = 91
      Height = 26
      Caption = '&Salir'
      TabOrder = 1
      OnClick = BitBtn3Click
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
    object BitGrabar2: TBitBtn
      Left = 283
      Top = 13
      Width = 91
      Height = 26
      Caption = '&Grabar'
      TabOrder = 0
      OnClick = BitGrabar2Click
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
    object BitPrint: TBitBtn
      Left = 380
      Top = 13
      Width = 90
      Height = 26
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      TabOrder = 2
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
  object grbTipoDesembolso: TGroupBox
    Left = 9
    Top = 103
    Width = 575
    Height = 93
    Enabled = False
    TabOrder = 3
    object Label21: TLabel
      Left = 6
      Top = 13
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
    object lblCtaAhorros: TLabel
      Left = 345
      Top = 11
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
    object lblAgencia: TLabel
      Left = 8
      Top = 50
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
    object DBLkuCTipDes: TwwDBLookupCombo
      Left = 6
      Top = 26
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
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLkuCTipDesChange
      OnKeyPress = DBLkuCTipDesKeyPress
    end
    object EdtTipDes: TEdit
      Left = 58
      Top = 25
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
      TabOrder = 1
    end
    object EdtCtaAhorros: TEdit
      Left = 342
      Top = 25
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
      TabOrder = 2
    end
    object EdtSitCta: TEdit
      Left = 444
      Top = 25
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
      TabOrder = 3
    end
    object DBLkCDAgencias: TwwDBLookupComboDlg
      Left = 5
      Top = 63
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
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = DBLkCDAgenciasChange
    end
    object EdtCodAgen: TEdit
      Left = 197
      Top = 63
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
      TabOrder = 5
    end
    object EdtDepGir: TEdit
      Left = 326
      Top = 63
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
      TabOrder = 6
    end
  end
  object CDSDEVUELVO: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NUMDEU'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CORDEU'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'MONREV'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 96
    Top = 258
    Data = {
      8D0000009619E0BD0100000018000000040000000000030000008D000541534F
      49440100490000000100055749445448020002000F00064E554D444555010049
      0000000100055749445448020002000F0006434F524445550100490000000100
      055749445448020002000500064D4F4E52455608000400000001000753554254
      5950450200490006004D6F6E6579000000}
  end
  object DSDEVUELVO: TDataSource
    DataSet = CDSDEVUELVO
    Left = 104
    Top = 272
  end
  object ppRepDevExcFSC: TppReport
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
    Template.FileName = 'D:\ppRepDevExcFSC_act.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 26
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 69056
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        UserName = 'Label2'
        Caption = 'Cobranzas     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 29104
        mmTop = 10583
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel31: TppLabel
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
        mmLeft = 1588
        mmTop = 14817
        mmWidth = 77258
        BandType = 0
      end
      object ppLabel32: TppLabel
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
      object ppLabel33: TppLabel
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
      object ppLabel34: TppLabel
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
      object ppLabel35: TppLabel
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
      object ppSystemVariable4: TppSystemVariable
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
      object ppSystemVariable5: TppSystemVariable
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
        Caption = 'APLICACION CON EL FONDO SOLIDARIO DE CONTINGENCIAN'#176' 2009000001'
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
      object ppLabel36: TppLabel
        UserName = 'Label8'
        Caption = 'FECHA DOCUMENTO      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 41275
        mmWidth = 46270
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label9'
        Caption = 'DEPARTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 46302
        mmWidth = 32343
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label10'
        Caption = 'SE'#209'OR(A)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 31221
        mmWidth = 19008
        BandType = 0
      end
      object xxx: TppLabel
        UserName = 'xxx'
        Caption = 'CODIGO MODULAR     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1588
        mmTop = 36248
        mmWidth = 41783
        BandType = 0
      end
      object ppp: TppLabel
        UserName = 'p'
        Caption = 'COD. PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 41275
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label13'
        Caption = 'U. PROCESO         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 46302
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel40: TppLabel
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
        mmTop = 31221
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel41: TppLabel
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
        mmTop = 36248
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel42: TppLabel
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
        mmTop = 41275
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel43: TppLabel
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
        mmTop = 46302
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel44: TppLabel
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
        mmTop = 41275
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel45: TppLabel
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
        mmTop = 46302
        mmWidth = 1323
        BandType = 0
      end
      object ppLblNomGen: TppLabel
        UserName = 'lblSenor'
        Caption = 'HERNANDEZ PANTA ROBERTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 50006
        mmTop = 31221
        mmWidth = 58473
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        Caption = '1002761583'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49742
        mmTop = 36248
        mmWidth = 21696
        BandType = 0
      end
      object ppLblFecDoc: TppLabel
        UserName = 'LblFecDoc'
        Caption = '12/07/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49477
        mmTop = 41275
        mmWidth = 19579
        BandType = 0
      end
      object ppLblDpto: TppLabel
        UserName = 'LblDpto'
        Caption = 'PIURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 50006
        mmTop = 46302
        mmWidth = 11906
        BandType = 0
      end
      object ppLblCodPag: TppLabel
        UserName = 'LblCodPag'
        Caption = 'AAS32758'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 140759
        mmTop = 41275
        mmWidth = 18521
        BandType = 0
      end
      object ppLblUproc: TppLabel
        UserName = 'LblUproc'
        Caption = 'D.R.E. PIURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 140759
        mmTop = 46302
        mmWidth = 24342
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 61913
        mmWidth = 192882
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 68263
        mmWidth = 192882
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label26'
        Caption = 'APLICACION       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1852
        mmTop = 62971
        mmWidth = 31242
        BandType = 0
      end
      object ppLabel47: TppLabel
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
        mmTop = 62971
        mmWidth = 1323
        BandType = 0
      end
      object ppLblDesem: TppLabel
        UserName = 'LblDesem'
        Caption = 'FONDO SOLIDARIO DE CONTINGENCIA SEGUN MEMO 2009-999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 48683
        mmTop = 62971
        mmWidth = 119296
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'p1'
        Caption = 'D.N.I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 36248
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel49: TppLabel
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
        mmTop = 36248
        mmWidth = 1323
        BandType = 0
      end
      object PPLblDni: TppLabel
        UserName = 'LblDNI'
        Caption = '02761583'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 141023
        mmTop = 36248
        mmWidth = 17198
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
        Visible = False
        mmHeight = 4487
        mmLeft = 99219
        mmTop = 56886
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
        Visible = False
        mmHeight = 4487
        mmLeft = 135996
        mmTop = 56886
        mmWidth = 51594
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label12'
        Caption = 'MOTIVO DESEMBOLSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 1323
        mmTop = 51594
        mmWidth = 43603
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label51'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 51594
        mmWidth = 1323
        BandType = 0
      end
      object ppLblMotDes: TppLabel
        UserName = 'LblMotDes'
        Caption = 'EXCESO POR PAGO EN BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 49742
        mmTop = 51594
        mmWidth = 144198
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D6167650A160000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002D00FE03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FAF3
          F6C5FF0083826F3E1FFC5FD4BC2FF0ABC29A56BD63A1DC1B6BBD6B55B86486EE
          55E1C4089C95078DC7AF6AF3AD2FFE0E13F8B97DF7FC13E055FA4F3FF8D7E6CA
          6B3E54F3CB2C8A88AC59DDDB0179EA49AF46FD983C129FB48FC49FF846B4DD76
          D2C651A75DEA66E76F9A02DBC46429B473F36319ED5FD134B84725C361FF0079
          453515AC9DDBF36ECFF23F38C6663984EA5A9D469B7A2563F41B46FF0082F0FC
          51D471BFC23E0B5F5C4F37F8D759A27FC169FE22EA78DFE16F092FFBB34BFE35
          F98BE13F88B69702D77DCDBDBCF728AEB03C8370CF415E8BE1AF1E5AC7A80B6F
          B65BFDABB43BC6FF00FF005FB576FF00AA193F5C347F1FF33E1B32CEF398ABD3
          C4C97DDFE47EC17EC77FF05198FE3EF8A63F0D788F4BB7D1B5AB904DA4B6F217
          B7BA23929CF2AD8FCEBEA506BF1A7F621F1334BFB4E7819036376A6838383DEB
          F6578535F9071DE4D85CBF1B05845CB19C6F6E89DEDA1F7FE1D6718EC7E06A2C
          7CB9A509594B66D593D6D6DBB8B9C51B853257D88CD83F28CFD6BE68FD827FE0
          A61A0FEDEDE33F881A368FE19D6B4093E1FDEFD8AE25BE7465BB3B99729B7A0F
          97BD7C9D1C0622B51A988A51BC29DB99F6BBB2FBD9F735717469D58519BB4A77
          B2EF6DCFA6BAD2D3776051BF8AE43A0751499A4DFCF7A00751499A0B6280168A
          4DD407CD002D149BA93CCA0075149B851BA80168A4DD41602801690B60D217E2
          B0BE24F8C64F87DE00D635C8749D4F5D974AB492E574ED3A3F32EEF4A8C88E25
          EEE7A01EA69C62E52518EEC4DA4AECDEDD466B27C15E237F18783B4AD59F4FBE
          D2A4D4ED22BB6B2BC4D973685D0379722F675CE08F506B1FE2FF00C6EF0DFC08
          D0B4FD4FC4F7DFD9F67AA6A76DA3DB3F96CFE65D4EDB224C01DCF7E9571A3525
          53D9455E5B596BA90EAC230F692765BDCEBE8A6B360FF5A5DE2B3340CD1B8532
          47C21E0F1CE3D6B93F823F1427F8C1E01835CB9F0DEBFE149269A684E9DACC02
          1BB8C46E5039504FCAD8DCBEC455AA72707516CACBEFBFF913CE94B93A9D7E69
          41A8E49362938E833F5AE33F675F8DF67FB457C27B4F1658D95D69F6D777B7F6
          4B05C106456B4BD9ED189C7186680B0F6614D529BA6EAA5EEA693F577B7E4FEE
          25D5829AA6DEAD37F256BFE68FE74FF674B0F0FF00C36FD9DFE207C72F10E81A
          5F8D6EFC2BE20B1F09F86341D4C17D31752BA05FEDB7B18FF5891A8F9109C16A
          F7CFD8EBF6CA9BE397C5DD574BF1BF843C167C549E14D54787BC43A168D1E977
          1A5C9E415749522C2490153C6E0769C57C71FB3FFED147E0AEA5E26D2B57F0EE
          9FE3CF877E39812C7C5BE12BF95A18B5348DB7437104A3986EA22494907AF35D
          FEA1FB4B7807C05F0FB59F0F7C16F87DAFF82EEFC588969AD789BC4DAE1D5B57
          160AEAED61687810A3EDDACFF788AFE90C5E0A559CE33839397C32BAB455926B
          7BAB3BB6927CD7F92F949C392D24ED6DD77FEBF03E88F1A7C5AB0FD92FE38E93
          F02F44F03780F55F875A6D96896BADC7A9696971A9F8926BE85249EE64BB3FBC
          8E405FF77B08DB815DCC5F18746B1FDB3EDFE01C7F0FBC10BF0A2E7C483C282C
          3EC00EA71EF185BD17A7F7BF6856F9B39C76C57C83F1CFF6918FE3D7ED517BF1
          322D1E4D1E0BE9B4B9134A7943B442C6344DBB871F3ECE3D335D227ED2EB7FFB
          655A7C5DFECA9521B6F152789BFB244A0C8C14E7C90FD33EF531CB252A6A538F
          BFECDDF5FF009796567BFC57BDA5F8DAC7818A493693D39974FB1ADD6DB5ADA7
          E07BF7EC559F0B7EDD3E1FD00DCBDDAE85E2E9B4B49DFEFCC9148CAACDEF8033
          5FB15FB51FC6D87F66FF00D9EBC61E399E0FB4AF8674B9AF561ED2BAA9D8A7D8
          B6335F885FB1078D078B7FE0A11E17D5821B7FF8487C5F2EA6B096C9804CECFE
          593DC8CE335FB9FF001D3E10E9BF1F7E107893C17AC06FECEF12D84B613B28F9
          A30EA4061EE0E08FA57C07882E9ACC70AF12BDDE55CDE9CDA9DDC21859D1C1E2
          63434936F97D79743F2EBF625F83DFB537EDEDE02BCF8FB1FC74D47C2FA94B79
          3CBE1DD084465D3AEBCB27F752C790AB093F20F958F049AF16FF008279FED59E
          21FD8DBF679FDAABE232D9DA9F1843ABDA69CB0EDCC10EA33C922B36DEE8AD92
          07D2BDFF00F66CFD92FF006DCFD8AEC354F83BE079BC1B7DE04D52EE4FB0F8A6
          FA5DC7448A4E1E748BEF6EC73E59CFCDC8AABFB21FFC1153E21B7C02F8FBF0E3
          E24496FA5A78E2E6DAEB45D663BA1706E6EE06665B9911790198F23AE1BDABE8
          EAE6597463898E2AAD174252A5C91824A5ECD4D369D926ECB74EEF7D933C0A59
          7E35BA32C3D3AAAB28D4E6726EDCEE364D5DF57B3D3A1E01E24FDA57C55E01F8
          256DF16B4DFDB2C6B5F176031EA57DE0A7918DB3A3364DB2AFDC6650795DA063
          D2BD0FF6C1FF0082997C59F1E7C52FD9C3C5FF000CB56D4EDAFBC6BA043249E1
          BB798FD82FF52333C4CAE9FC49BBD7B0AEF7C0BFB3BFED93F0E3C23A67C3CD3F
          E10FC0DB8BED1F659DAF8EAF6CADE7616CA7019D0AFCE76E7A8DDCFAD7A8FED2
          FF00F04F7F899E37FDBB3F673F1A68DA0F870E83F0FED2D57C45369D2A59DB45
          70B233CCD0404676127207BD15331CA63898BAFECA56551A7CD06B979348B518
          C524DDB96EF996A8165F98BC3B8D0F691BF25D5A57E6E6D649B6F5B5EF6D3667
          CD3FB6FF008CFF0068DFF827E782FE0FE91ACFC4DD635CF1FF008ABC477DAD6A
          0B6379235BDDEF910C3664B004A29217680140E95EE9E36F03FC66F809FB1178
          A355F8C7FB47699F0CFC5FE3BF13DB6AD16A866795B4FB4D99934F863DA0EE19
          E163E38E4D77FF00F0575FD86BE23FED5BFB417C0FD7BC13A5596A1A6782F53F
          B4EAAF35E2C0604F3A36C8047CDC29E949FF0005A6FF00827C78FF00F6B5D6BE
          1AF8DFE1F41A5788752F87378D3CBE1CD4E4096FA8A332B6E19F949057054F50
          78AF1F0F9CE0F130C0D3AB2A70751CE5525CB1BA6A5784754D453D3756B5BA1E
          AD5CAB1346AE2AA414E4A0A2A0AEECEEAD27A59B6BC8F8CFE16FEDD7E2BFD983
          F6ACF86CDE15FDA3352F8E7E0EF16EA7169DAC69FA9DA4D6D35B2C922A6E31CB
          92BF7B2AEA79C1AEFBC1BE29FDA0FF0069BFF82A67ED03F097C23F18757F0BE8
          56D73701A6B926E46956A186C4B54C8D8E49C160460574DFB487EC61FB4DFED8
          FF00147E11F8BB58F863F0EFC13A6F84B58826974AD26F505D5BC492C4CF2CB2
          63E61843B631F771EF5ECFFB177EC35F11FE0F7FC15A7E38FC53D7B4AB3B6F05
          F8D049FD937697AB2493EE9148CC60657807AD7A18DCCF2DA7879E260E97B7F6
          52D3F772F79548F2FC315172B5F68EDDD23870397E36A555879F3AA5ED236F8E
          3EEB8BBDAEDC92BF99F24FEC8577FB4E7C77F8E5E3FF00D9917E355FE8D6DE14
          B896E753F11BEEBAD42358D822C3039218239209190473CD7A87FC12DFF68BF8
          A3E14F897FB40FC16F88BF1224993C07A5DD4B6DE24D42E0483459A33E5F9C24
          7E7CBF995B0D9C11C57B27EC2DFB0C7C48F829FF000546F8CFF133C43A4D95AF
          847C60251A5DD25E2C924DBA456198C0CAF00F5AF1EF15FF00C122BE2CFC54F8
          DBFB52493C7A7E83A47C4F85A4D0350FB687FB5489711CA90C8ABCA2B852093D
          2B3C566B9662AA56C2D59528D394294AEA31D2A371E76ADAB695EEBB2B771E1F
          2DCC30D0A55E9C6A4A71954567296B0B3E55E49F47E67CE9F14BF686F127C2EF
          065E78AFC1FF00B6E6A9E3AF1C683324B2E8E6CAE20B0D430DF32412BE63971F
          DDC0C8AFD81FD8F7F684BDFDA47F62BF09FC42BF8D6CF53D734337774B12E152
          65560C547D549C7BD7E790FD8D3F6A5F1E7EC0F37C0DFF008549F0CBC2F6DE1F
          B5588EB4D771BDE6B9B5F21610062390F794F61EF5F7A7EC09F037C49F02FF00
          605F07F817C47690DA789349D164B3B9B749C4AA921DF81BC707EF0AF238CAB6
          02AE0A1C9283AB1AAD27174DB70B6EFD9C62AD7E8EED6CD9E9F0BD1C653C649C
          A3254E54EFAA95B9EFB7BCE4EE975D2FD8F1DFD903E187C4EFDB2FF66BF0EFC4
          0F13FC62F16E85AADC0B83A343A1F950DBC71C77122C72DD2329F3E46D837024
          2E3803BD5BFD9AFC33F10FF6FEF87B71E2EF177C48F12F834E91A8DDE87A7587
          84A54B385E5B494C2F7B31656691A464DC233F22838C1AF6CFF827AFC1ED7BE0
          1FEC79E0CF08F89ADA1B4D73478278EEA28A612AA96B895C618707E56155FF00
          E09F7F053C43F01BE045DE87E26B68AD75197C47AAEA2A91CC250619EEE49223
          91DCAB0E3B57CF63B358C5E2654793DDA8953B463A45B95F974DB48EBFE6EFEC
          6132C6D61E3554BDE85E7794B59251B5F5F37FD23CE21F8FBAADEFECBBE21B5F
          1F7C4F8BE1E6B1E0EF134BE19BFF00135A5AC6D36AA2361B3C98D81027955870
          8A4820902BCCFE1EFED55A57C0DF8A3E108BC31F163C73E3BD2BC4DACC7A46AB
          A0F8BEC245B854911B1776B33C519050A8DC992181E82BB1F1A7ECB7E3EF0CFC
          4EB6F88565E12D1FC5ADE16F1BEABAC47E1FB9B9557D42CEEE2545BA81986C4B
          98F076AB8E464020E2B43E2AE9DF167F6B6F127802687E17C3E0AF0B785FC536
          3ABEA2359BC88EA77C9139DC2344042200727272DD0577D1FA959AF75D39DDCB
          DEA6945DB6B34E4FA356692BD95ACCE1ABF5AD1FBCA71B25A4DB6AFBDD3E55D9
          DD36ED777BA2D7C30F0578CBF6FED027F1FEABF123C55E09F0B5DDF5C45E19D1
          3C2F3A5A18ADA295A259EEA564669657285B6F08A081835CBFC45F8ABF17BE05
          6A9F197C3FAB78B975987C21F0DDB58F0EEAE2DD22B99E5F3197CD9D00DBE6AE
          02E5400DD702B6FE1A687E3BF82DE2BF15E95F047C5DF0E3C6BE067D4EE67FEC
          1D7EF248AEFC237AEE5A6811E33936E5D8B047195C900E2BCE744F849E30F8D9
          E3FF00DA0A1FF848E0F1EF8BB59F00C7A0DEDD59E20D12CB5176764B0B53CE02
          27DF2C4B648CF3554234DD59BA8E1EC572B8C5C55E29CA3BE89A76D24DBF79ED
          7DC556535082829FB577E6926ED27CB2DB5B357D925EEF96C68FC54F8F7AD6BD
          E24F87BA5FC4CF887E25F857F0EB56F03E99AB5A789B49C4035DD5E48D4CF15C
          5D6C61005055950ED0FB8F2718ACFF00F8282FC28D5B54FD957E17CFFF000B83
          5BF175947F10F4A8EC355B436FFE996F34C163695A305659222A4AB8C727906B
          DBE6D4FE277C1CF02785FC2F7DF0974DF889E0BB4F0BE9F652C7657D19BEB5BD
          8A058E68E58661E5C91E47CAC98C77AF216FD80FC79AAFECF1E2E9F49D234EF0
          B5DDF78EAC3C73E1DF017DAC359E98968CA5EDBCE1F2C725C619DB68D8ACC38E
          B5A60B15429D4A55B9A34D464AD6706A5776BEDCD1767795FDDD3A6889C561AA
          D4854A5CB29B945DF49A6AC93B6FCB257568DB5F5D59D4FC77F88B7FFB2C78A3
          44F86175F19F55D366F1DBDCEB17BE2EF1349034DA358C2154C169F22C7E6BB1
          C296076F27078AE634AFDA7BC3BFB2FF00C48F0837843E39CFF163C33E2BD660
          D0F57D0B54D463D4750B3967CAC7796AE8A1C00F8F31082B83918AEFBE28FC39
          F1B7ED09ABF863E2C41F0B6DB4EF16782DA7D366F0A7896EA19935DD3A6DA651
          1C80148A5561B918820E39EB5B1F0E5FC5BE3DF897A1FF00647C03F0FF00C3AD
          22CAE19F57D5B5C4B7376230A711D9C708C972D8FDE31DA076CD7342A61D61D7
          B54A4ECFDA2E6A69736BE4DED6E570BEBB6B735953AEEBFEEDB4AEB91F2D46F9
          74F3B6F7E6E6D6DBE9639DFD956C3E2D7ED5FA65BEB3E27F1CEA7E1AF0BF84FC
          49790DB5BE92B1ADDF8A0DBDE4986B994A9DB6F802311A004ED24B5637C3FF00
          DA36FF00E24FEC33A4F893C75F16EEBE1F5D6ADE21D46CE4BEB0B68DEFAFD12E
          6548ED6D94AB1DC154728A4802BE84FD8ABE16EB5F073E0059E85E20823B7D4A
          1D43509D9125128092DE4D227CC3B94753F8D7CC7F073F64DF895FB38786BE1B
          78AE5F05E99E31D47C1726B56B7DA02DDA7DA618AF2EDE68EEED5D86C3285C2B
          29192A700D650C4616B56AD16E11519AE4B282BA4AA6CDA6BDE7CB76EE95D792
          35950C452A349FBCDCA0F9EFCCECDB86E93BFBAAFA2B3767E643F03FF6A9B6F8
          61FB477803C29E19F89DE2DF88FE1CF8837573A6DEE93E2BB378B53D266485A5
          4BB82568A32D09DBB590EEEB90457BFF00FC131C6DFD8E7471E9AF788BFF004F
          DA8579BF8CBC1BF163F6A2F8F7F087C5573F0F6D7C11E0EF03F881EFEE6D6FAF
          637D62E4B5BC91ACA420DA91296E5325989CF4AF6CFD87FE156B5F05BF672D3F
          C3DE20B78ADB54B7D5B59BA78E29448A23B8D5AF2E623B87AC52A13E84E3B563
          9ED4C3BC1250B2A8DC1C929464EEBDAEEE292BD9C6F65DAEEE6B92D3AEB17795
          DC12928B6A496BECB6E66DEE9DB5EF6D0FE5FF00E3FF00C1EF10FECBFF001CFC
          43E05F18594FA5EB7A0DDBC2E2742897299F9268C9E1A3718208F5AC4B2D7222
          07EF973EBBBAD7F575F183F662F877FB403DB378DBC17E1BF143D9FF00A87D4A
          C239DE2F60C4671ED5C72FFC1377E02274F845E021FF007088BFC2BEB30FE265
          154E2AB517CDD6CD5BE47B7572FE67A33F995D2FC431671E627A7DEE95D0E97A
          FC636FEF508EFF00374AFE9317FE09CFF021071F09BC0A39CFFC8262FF000A95
          7FE09E5F035071F0A7C0E3FEE1517F856FFF00113B08BFE5CCBEF479B5B2194F
          6923F17BFE0923F0AB5EF8D9FB70782DF45B39A7D3FC3578353D56F153F73670
          A038DCDD3731E00EF5FD01819AE7BE1A7C20F0B7C1BD10E9BE14F0FE91E1EB16
          6DCD0D85AAC0AC7D4ED1CFE35D1D7E7DC51C42F37C52ACA3CB18AB25D7BEA7A5
          95E5CB074DC2F76DDC685C0ED4B8E6968AF9A3D313148569D4500342F1FE78A3
          653A8A00685F7A31914EA2801A17346DE29D4500376E68C1A751400DD9C51B48
          A751400C286948269D45007937C4BFD87FE157C5CF12CBAD6B9E0DD366D5AE0A
          99EF2D9E4B39AE369C8F31A164DFFF0002CD76FF000DBE16F87BE0FF0085A0D0
          FC31A3D8687A55B92C96D6916C5DC792C4F5663DC9C93EB5D1515D3531988A94
          D52A936E2B64DB697C8E786128426EAC20949EED257FBC40B8A4DBCD3A8AE63A
          04228DB4B450037CBA36E3BD3A8A0066CE69FD28A2803FFFD9}
        mmHeight = 10583
        mmLeft = 0
        mmTop = 0
        mmWidth = 71438
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 61913
      mmPrintPosition = 0
      object ppMeses: TppMemo
        UserName = 'Meses'
        Caption = 
          'CONCEPTO  : APLICACION DE DEVOLUCION'#13#10#13#10'POR LAS CUOTAS DEL CREDI' +
          'TO N 122007240000965 (En Nuevos Soles)'#13#10'------------------------' +
          '---------------------------------------------'#13#10#13#10'F.Pag:22/09/200' +
          '8 Cuo.:06:  70.87'#13#10#13#10#13#10'Nota :cuota aplicada por exceso.'#13#10
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'CONCEPTO  : APLICACION DE DEVOLUCION'
          ''
          'POR LAS CUOTAS DEL CREDITO N 122007240000965 (En Nuevos Soles)'
          
            '----------------------------------------------------------------' +
            '-----'
          ''
          'F.Pag:22/09/2008 Cuo.:06:  70.87'
          ''
          ''
          'Nota :cuota aplicada por exceso.')
        Transparent = True
        mmHeight = 61913
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
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 145521
      mmPrintPosition = 0
      object ppLTotal: TppLabel
        UserName = 'Label11'
        Caption = 'TOTAL DEVOLUCIONES APLICADAS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 77174
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 191030
        BandType = 7
      end
      object ppLine9: TppLine
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
        Caption = '70.87'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 172540
        mmTop = 2117
        mmWidth = 12404
        BandType = 7
      end
      object ppLblUsuario: TppLabel
        UserName = 'LblUsuario'
        AutoSize = False
        Caption = 'Hecho Por :JBOCANEGRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 45244
        mmWidth = 52123
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3440
        mmTop = 44450
        mmWidth = 56092
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 4498
        mmTop = 71438
        mmWidth = 55298
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'FIRMA DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 11906
        mmTop = 77523
        mmWidth = 38100
        BandType = 7
      end
      object pplFirmaAso: TppLabel
        UserName = 'lFirmaAso'
        Caption = 'HERNANDEZ PANTA ROBERTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 7673
        mmTop = 72231
        mmWidth = 48683
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppDBPi2'
        mmHeight = 5556
        mmLeft = 0
        mmTop = 9525
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          Columns = 3
          ColumnPositions.Strings = (
            '0'
            '70000'
            '140000')
          DataPipeline = fExtorPrest.ppDBPi2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = '8K, 273x394 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 50000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 130
          Version = '7.02'
          mmColumnWidth = 70000
          DataPipelineName = 'ppDBPi2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLabel50: TppLabel
              UserName = 'Label50'
              Caption = 'CUOTAS APLICADAS :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3387
              mmLeft = 3440
              mmTop = 794
              mmWidth = 34290
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 2910
              mmTop = 4498
              mmWidth = 36248
              BandType = 1
            end
          end
          object ppColumnHeaderBand1: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            ColumnTraversal = ctLeftToRight
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'CREDID'
              DataPipeline = fExtorPrest.ppDBPi2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPi2'
              mmHeight = 2910
              mmLeft = 2910
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'CRECUOTA'
              DataPipeline = fExtorPrest.ppDBPi2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPi2'
              mmHeight = 2910
              mmLeft = 16669
              mmTop = 0
              mmWidth = 5821
              BandType = 4
            end
            object ppdbCREMTOCOBNEW: TppDBText
              UserName = 'dbCREMTOCOBNEW'
              DataField = 'CREMTOCOBNEW'
              DataPipeline = fExtorPrest.ppDBPi2
              DisplayFormat = '###,###.0#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPi2'
              mmHeight = 2910
              mmLeft = 43127
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'NROOPE'
              DataPipeline = fExtorPrest.ppDBPi2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPi2'
              mmHeight = 2910
              mmLeft = 23283
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
          end
          object ppColumnFooterBand1: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        Visible = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 16140
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
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
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand2: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLabel53: TppLabel
              UserName = 'Label53'
              Caption = 'TOTAL APLICADO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3387
              mmLeft = 2381
              mmTop = 1588
              mmWidth = 28575
              BandType = 1
            end
            object ppVCREMTOCOBNEW: TppVariable
              UserName = 'VCREMTOCOBNEW'
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = '###,##0.0#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3006
              mmLeft = 31221
              mmTop = 2022
              mmWidth = 20373
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 2381
              mmTop = 1058
              mmWidth = 49477
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 2381
              mmTop = 5556
              mmWidth = 49742
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLinNivApr03Ger: TppLine
        UserName = 'LinNivApr03Ger'
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 69850
        mmTop = 114565
        mmWidth = 54240
        BandType = 7
      end
      object ppLblNivApr03Ger: TppLabel
        UserName = 'lFirmaAso1'
        Caption = 'GERENCIA ADMINISTRATIVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3895
        mmLeft = 72496
        mmTop = 115623
        mmWidth = 48948
        BandType = 7
      end
      object ppLineFirmaSectorista: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 130175
        mmTop = 44450
        mmWidth = 56092
        BandType = 7
      end
      object ppLblFirmaSectorista1: TppLabel
        UserName = 'Label1'
        Caption = 'Firma del Sectorista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 130969
        mmTop = 45244
        mmWidth = 54504
        BandType = 7
      end
      object ppLblFirmaSectorista2: TppLabel
        UserName = 'Label21'
        Caption = 'FIRMA SECTORISTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 141289
        mmTop = 50006
        mmWidth = 33867
        BandType = 7
      end
      object ppLineFirmaSubjefatura: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 129646
        mmTop = 71438
        mmWidth = 56092
        BandType = 7
      end
      object ppLblFirmaSubjefatura1: TppLabel
        UserName = 'Label22'
        Caption = 'Firma de Subjefatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 130969
        mmTop = 72231
        mmWidth = 54769
        BandType = 7
      end
      object ppLblFirmaSubjefatura2: TppLabel
        UserName = 'Label23'
        Caption = 'FIRMA SUB-JEFATURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 117475
        mmTop = 76994
        mmWidth = 81492
        BandType = 7
      end
      object ppLineFirmaJefatura: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 129911
        mmTop = 98954
        mmWidth = 56092
        BandType = 7
      end
      object ppLblFirmaJefatura1: TppLabel
        UserName = 'Label24'
        Caption = 'Firma de Jefatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 130440
        mmTop = 99748
        mmWidth = 55033
        BandType = 7
      end
      object ppLblFirmaJefatura2: TppLabel
        UserName = 'Label25'
        Caption = 'FIRMA JEFATURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 143406
        mmTop = 104511
        mmWidth = 29633
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
