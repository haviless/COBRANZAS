object fDetPagos: TfDetPagos
  Left = 295
  Top = 304
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalle De Pagos'
  ClientHeight = 236
  ClientWidth = 611
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 0
    Width = 605
    Height = 233
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 513
      Top = 196
      Width = 88
      Height = 27
      Caption = '&Salir'
      TabOrder = 0
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
    object dtgDetPag: TwwDBGrid
      Left = 7
      Top = 17
      Width = 594
      Height = 168
      DisableThemesInTitle = False
      Selected.Strings = (
        'CREFPAG'#9'11'#9'Fec.Pago'
        'TMONID'#9'5'#9'Mon.'
        'CREMTOCUO'#9'12'#9'Monto Cuota'
        'CREMTOCOB'#9'12'#9'Importe'
        'FORPAGABR'#9'10'#9'Frm.Pago'
        'TRANSINTID'#9'04'#9'Tip~Mov'
        'CREDOCPAG'#9'14'#9'Documento'
        'CREESTADO'#9'20'#9'Estado'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgDetPagRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgDetPagDblClick
      object dtgDetPagIButton_: TwwIButton
        Left = 0
        Top = 0
        Width = 30
        Height = 27
        AllowAllUp = True
        Enabled = False
        Glyph.Data = {
          96010000424D9601000000000000760000002800000018000000180000000100
          0400000000002001000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333B3333333B333333
          B33333333B333333B33333333BB33888BB8888BB3333333333B00000000000B3
          333333333330FFFFFFFFF083333333333330FFFFFFFFF083333333333330FFFF
          FFFFF083333333333330FFFFFFFFF083333333333330FFFFFFFFF08333333333
          3BB0FFFFFFFFF0833333333BB330FFFFFFFFF0BB333333333330FFFFFF777033
          BB3333333330FFFFF0000033333333333330FFFFF0FF0333333333333330FFFF
          F0F0B333333333333330FFFFF003BB333333333333B0000000333BB333333333
          3BB33333BB3333BB33333333B3333333B3333333B33333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Visible = False
        OnClick = dtgDetPagIButton_Click
      end
    end
    object BitPrint: TBitBtn
      Left = 372
      Top = 196
      Width = 79
      Height = 27
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      Enabled = False
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
    object BitAnular: TBitBtn
      Left = 279
      Top = 197
      Width = 79
      Height = 27
      Hint = 'Anular'
      Caption = 'Anular'
      Enabled = False
      TabOrder = 3
      OnClick = BitAnularClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object ppDBefectivo: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'DBefectivo'
    Left = 122
    Top = 192
  end
  object ppRepEfe: TppReport
    AutoStop = False
    DataPipeline = ppDBefectivo
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
    Template.FileName = 'F:\SOLREPO\COB\RecEfec.rtm'
    DeviceType = 'Screen'
    OnCancel = ppRepEfeCancel
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 162
    Top = 192
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBefectivo'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 51594
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL                   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 0
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 4763
        mmWidth = 51594
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Av. Gregorio Escobedo #598 - Jesus Maria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 9260
        mmWidth = 63765
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'RUC  :    20136424867              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 13758
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'RECIBO DE INGRESO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 15
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5997
        mmLeft = 120386
        mmTop = 2117
        mmWidth = 55563
        BandType = 0
      end
      object ppLblRecibo: TppLabel
        UserName = 'LblRecibo'
        Caption = 'N'#176' 00001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 15
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5997
        mmLeft = 134144
        mmTop = 8467
        mmWidth = 25400
        BandType = 0
      end
      object ppMonto: TppLabel
        UserName = 'Monto'
        AutoSize = False
        Caption = 'S/.   1,752.18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6526
        mmLeft = 121973
        mmTop = 21696
        mmWidth = 51329
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'RECIBI DE                  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 38365
        mmWidth = 26988
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 5027
        mmTop = 50006
        mmWidth = 186532
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'LA CANTIDAD DE   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 43392
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = ':         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 38365
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = ':         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 43392
        mmWidth = 1588
        BandType = 0
      end
      object ppLblAsociado: TppLabel
        UserName = 'LblAsociado'
        AutoSize = False
        Caption = 'LblAsociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 39423
        mmTop = 38365
        mmWidth = 149225
        BandType = 0
      end
      object ppLblMonSol: TppLabel
        UserName = 'LblMonSol'
        AutoSize = False
        Caption = 'LblMonSol'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 39423
        mmTop = 43656
        mmWidth = 149225
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 96573
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
        mmLeft = 4763
        mmTop = 0
        mmWidth = 187061
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLblFecha: TppLabel
        UserName = 'LblFecha'
        Caption = 'Jesus Maria, Jueves 31 de Julio del 2003 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 66411
        mmWidth = 64823
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 129382
        mmTop = 84667
        mmWidth = 38629
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'RECIBI CONFORME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 86519
        mmWidth = 31750
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Cajero(a)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139700
        mmTop = 91546
        mmWidth = 14552
        BandType = 7
      end
    end
  end
end
