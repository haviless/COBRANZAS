object FHistorial: TFHistorial
  Left = 249
  Top = 212
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Historial de Cr'#233'ditos'
  ClientHeight = 234
  ClientWidth = 614
  Color = 13165023
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
  OnShow = FormShow
  DesignSize = (
    614
    234)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 76
    Width = 33
    Height = 13
    Caption = 'Cr'#233'dito'
  end
  object Label3: TLabel
    Left = 97
    Top = 76
    Width = 53
    Height = 13
    Caption = 'Fch. Otorg.'
  end
  object Label4: TLabel
    Left = 170
    Top = 76
    Width = 42
    Height = 13
    Caption = 'Mto. Sol.'
  end
  object Label5: TLabel
    Left = 228
    Top = 76
    Width = 33
    Height = 13
    Caption = 'Cuotas'
  end
  object Label2: TLabel
    Left = 272
    Top = 76
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label6: TLabel
    Left = 409
    Top = 76
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object lbCredid: TListBox
    Left = 176
    Top = 96
    Width = 121
    Height = 49
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object lbcopia1: TListBox
    Left = 56
    Top = 96
    Width = 121
    Height = 49
    ItemHeight = 13
    TabOrder = 1
    Visible = False
  end
  object lbHistorial: TListBox
    Left = 5
    Top = 95
    Width = 601
    Height = 97
    Style = lbOwnerDrawFixed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 3
    OnDblClick = lbHistorialDblClick
    OnDrawItem = lbHistorialDrawItem
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      614
      68)
    object lblAso: TLabel
      Left = 257
      Top = 39
      Width = 41
      Height = 15
      Caption = 'C'#243'digo :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblAsoapenom: TLabel
      Left = 10
      Top = 9
      Width = 53
      Height = 15
      Caption = 'Asociado :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblTCambio: TLabel
      Left = 465
      Top = 39
      Width = 47
      Height = 15
      Caption = 'T.Cambio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblCodMod: TLabel
      Left = 10
      Top = 39
      Width = 80
      Height = 15
      Caption = 'C'#243'digo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblTitulo: TLabel
      Left = 648
      Top = 2
      Width = 119
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = 'Total General'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblTotal: TLabel
      Left = 648
      Top = 34
      Width = 129
      Height = 26
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeApePat: TwwDBEdit
      Left = 101
      Top = 5
      Width = 430
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 10207162
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeApePatExit
    end
    object dbeNombre: TwwDBEdit
      Left = 102
      Top = 39
      Width = 135
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeAsoid: TwwDBEdit
      Left = 321
      Top = 39
      Width = 135
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTCambio: TwwDBEdit
      Left = 529
      Top = 39
      Width = 56
      Height = 21
      BorderStyle = bsNone
      Color = 10207162
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Z2sbtnPrint: TfcShapeBtn
    Left = 535
    Top = 199
    Width = 31
    Height = 31
    Hint = 'Reporte'
    Anchors = [akTop, akRight]
    Color = 10207162
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
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 4
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    Visible = False
    OnClick = Z2sbtnPrintClick
  end
  object chbTodos: TCheckBox
    Left = 552
    Top = 72
    Width = 57
    Height = 17
    Caption = 'Todos'
    TabOrder = 5
    OnClick = chbTodosClick
  end
  object rgImprime: TRadioGroup
    Left = 8
    Top = 198
    Width = 217
    Height = 33
    Caption = 'Tipo de Impresi'#243'n'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Seleccionado'
      'Todos')
    TabOrder = 6
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 570
    Top = 199
    Width = 34
    Height = 30
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object rptHistorial: TppReport
    AutoStop = False
    DataPipeline = dbpData1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 3000
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\CRE\DEMA\HistorialUno_desa.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 448
    Top = 184
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpData1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7938
        mmTop = 26458
        mmWidth = 187590
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 37306
        mmWidth = 187590
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 44979
        mmWidth = 187590
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo modular : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 17198
        mmWidth = 25188
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Asociado       : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 21960
        mmWidth = 25188
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 17198
        mmWidth = 15875
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 21960
        mmWidth = 81227
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7938
        mmTop = 13229
        mmWidth = 187590
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174361
        mmTop = 2910
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174361
        mmTop = 7408
        mmWidth = 19262
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        AutoSize = False
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 8202
        mmTop = 2910
        mmWidth = 60325
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = 'ESTADO CUENTA CREDITO N'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 51329
        mmTop = 8202
        mmWidth = 59796
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 4233
        mmLeft = 112448
        mmTop = 8202
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Fecha  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 2910
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Hora   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 7144
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'USE   : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 16933
        mmWidth = 11853
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'USEABRE'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 4233
        mmLeft = 65881
        mmTop = 16933
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = 'Cuenta : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 113506
        mmTop = 16933
        mmWidth = 13335
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'CUENTA'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 128323
        mmTop = 17198
        mmWidth = 26194
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CREDID'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 41010
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CREFOTORG'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 41010
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREMTOSOL'
        DataPipeline = dbpData1
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 98954
        mmTop = 41010
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CRENUMCUO'
        DataPipeline = dbpData1
        DisplayFormat = '##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 120121
        mmTop = 41010
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREESTADO'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 41010
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'N'#250'mero Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 55298
        mmTop = 33338
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Fecha Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 79640
        mmTop = 29633
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Monto Solicitado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 99219
        mmTop = 29633
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'N'#250'mero Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 120386
        mmTop = 29633
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 33338
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Tipo de Credito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 33338
        mmWidth = 22225
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'TIPCREDES'
        DataPipeline = dbpData1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpData1'
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 41010
        mmWidth = 46302
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'dbpData2'
        mmHeight = 5027
        mmLeft = 7938
        mmTop = 529
        mmWidth = 144992
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpData2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 3000
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Template.FileName = 'C:\SOLFormatos\Cre\Dema\HistorialUno.rtm'
          Left = 304
          Top = 112
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpData2'
          object ppTitleBand1: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 10848
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Interes Val.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 4763
              mmTop = 1058
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Flat Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 55033
              mmTop = 1058
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Monto Cuota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 101600
              mmTop = 1058
              mmWidth = 16404
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Caption = 'Inicio de Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 4763
              mmTop = 5821
              mmWidth = 18521
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'Fin de Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 55033
              mmTop = 5821
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'N'#250'mero de Oficio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 101600
              mmTop = 5821
              mmWidth = 23019
              BandType = 1
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'CREINTERES'
              DataPipeline = dbpData2
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpData2'
              mmHeight = 3704
              mmLeft = 30427
              mmTop = 1058
              mmWidth = 17198
              BandType = 1
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'CREDFLAT'
              DataPipeline = dbpData2
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpData2'
              mmHeight = 3704
              mmLeft = 78581
              mmTop = 1058
              mmWidth = 17198
              BandType = 1
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'CRECUOTA'
              DataPipeline = dbpData2
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpData2'
              mmHeight = 3704
              mmLeft = 125942
              mmTop = 1058
              mmWidth = 17198
              BandType = 1
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'CREFINIPAG'
              DataPipeline = dbpData2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpData2'
              mmHeight = 3704
              mmLeft = 26458
              mmTop = 5821
              mmWidth = 23813
              BandType = 1
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'CREFFINPAG'
              DataPipeline = dbpData2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpData2'
              mmHeight = 3704
              mmLeft = 74348
              mmTop = 5821
              mmWidth = 23813
              BandType = 1
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'NROFICIO'
              DataPipeline = dbpData2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpData2'
              mmHeight = 3704
              mmLeft = 125942
              mmTop = 5821
              mmWidth = 17198
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = '%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 47890
              mmTop = 1058
              mmWidth = 2646
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              Caption = '%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 96044
              mmTop = 1058
              mmWidth = 2646
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ParentWidth = False
              TraverseAllData = False
              DataPipelineName = 'dbpData3'
              mmHeight = 5027
              mmLeft = 3175
              mmTop = 0
              mmWidth = 182827
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object crptSub2: TppChildReport
                AutoStop = False
                DataPipeline = dbpData3
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'Carta'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 3000
                PrinterSetup.mmPaperHeight = 279401
                PrinterSetup.mmPaperWidth = 215900
                PrinterSetup.PaperSize = 1
                Template.FileName = 'C:\SOLFormatos\Cre\Dema\HistorialUno.rtm'
                Left = 312
                Top = 120
                Version = '7.02'
                mmColumnWidth = 0
                DataPipelineName = 'dbpData3'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 15875
                  mmPrintPosition = 0
                  object ppLabel14: TppLabel
                    UserName = 'Label14'
                    Caption = 'A'#241'o'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 2117
                    mmTop = 4233
                    mmWidth = 5292
                    BandType = 1
                  end
                  object ppLabel15: TppLabel
                    UserName = 'Label15'
                    Caption = 'Mes'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 11377
                    mmTop = 4233
                    mmWidth = 5292
                    BandType = 1
                  end
                  object ppLabel16: TppLabel
                    UserName = 'Label16'
                    Caption = 'Cuo'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 19050
                    mmTop = 4233
                    mmWidth = 5027
                    BandType = 1
                  end
                  object ppLabel17: TppLabel
                    UserName = 'Label17'
                    Caption = 'Amort.'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 63500
                    mmTop = 4233
                    mmWidth = 8467
                    BandType = 1
                  end
                  object ppLabel18: TppLabel
                    UserName = 'Label18'
                    Caption = 'Int.'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 85196
                    mmTop = 4233
                    mmWidth = 3704
                    BandType = 1
                  end
                  object ppLabel19: TppLabel
                    UserName = 'Label19'
                    Caption = 'Flat'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 100542
                    mmTop = 4233
                    mmWidth = 4498
                    BandType = 1
                  end
                  object ppLabel21: TppLabel
                    UserName = 'Label21'
                    Caption = 'Monto Cobrado'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    WordWrap = True
                    mmHeight = 7408
                    mmLeft = 44450
                    mmTop = 4233
                    mmWidth = 10848
                    BandType = 1
                  end
                  object ppLabel22: TppLabel
                    UserName = 'Label22'
                    Caption = 'Saldo'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 114300
                    mmTop = 4233
                    mmWidth = 7144
                    BandType = 1
                  end
                  object ppLabel20: TppLabel
                    UserName = 'Label20'
                    Caption = 'Fecha Oper.'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    WordWrap = True
                    mmHeight = 7408
                    mmLeft = 143934
                    mmTop = 4233
                    mmWidth = 7938
                    BandType = 1
                  end
                  object ppLabel24: TppLabel
                    UserName = 'Label24'
                    AutoSize = False
                    Caption = 'Cuo a Pagar'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    WordWrap = True
                    mmHeight = 7408
                    mmLeft = 26458
                    mmTop = 4233
                    mmWidth = 14817
                    BandType = 1
                  end
                  object ppLabel23: TppLabel
                    UserName = 'Label23'
                    Caption = 'Estado'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 161396
                    mmTop = 4233
                    mmWidth = 8731
                    BandType = 1
                  end
                  object ppLabel25: TppLabel
                    UserName = 'Label25'
                    Caption = 'Exceso'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 127794
                    mmTop = 4233
                    mmWidth = 9525
                    BandType = 1
                  end
                  object ppLabel31: TppLabel
                    UserName = 'Label31'
                    AutoSize = False
                    Caption = 
                      '----------------------------------------------------------------' +
                      '----------------------------------------------------------------' +
                      '---------------------------------------------'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 1588
                    mmTop = 529
                    mmWidth = 183357
                    BandType = 1
                  end
                  object ppLabel32: TppLabel
                    UserName = 'Label32'
                    AutoSize = False
                    Caption = 
                      '----------------------------------------------------------------' +
                      '----------------------------------------------------------------' +
                      '---------------------------------------------'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 1852
                    mmTop = 12171
                    mmWidth = 183357
                    BandType = 1
                  end
                end
                object ppDetailBand3: TppDetailBand
                  PrintHeight = phDynamic
                  mmBottomOffset = 0
                  mmHeight = 4498
                  mmPrintPosition = 0
                  object ppDBText14: TppDBText
                    UserName = 'DBText14'
                    DataField = 'CREANO'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 0
                    mmTop = 265
                    mmWidth = 8467
                    BandType = 4
                  end
                  object ppDBText15: TppDBText
                    UserName = 'DBText15'
                    DataField = 'CREMES'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 9260
                    mmTop = 265
                    mmWidth = 3969
                    BandType = 4
                  end
                  object ppDBText16: TppDBText
                    UserName = 'DBText16'
                    DataField = 'CRECUOTA'
                    DataPipeline = dbpData3
                    DisplayFormat = '##'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 16933
                    mmTop = 265
                    mmWidth = 4233
                    BandType = 4
                  end
                  object ppDBText17: TppDBText
                    UserName = 'DBText17'
                    DataField = 'CRECAPITAL'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 56356
                    mmTop = 265
                    mmWidth = 15081
                    BandType = 4
                  end
                  object ppDBText18: TppDBText
                    UserName = 'DBText18'
                    DataField = 'CREMTOINT'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 72496
                    mmTop = 265
                    mmWidth = 15081
                    BandType = 4
                  end
                  object ppDBText19: TppDBText
                    UserName = 'DBText19'
                    DataField = 'CREMTOFLAT'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 88371
                    mmTop = 265
                    mmWidth = 15081
                    BandType = 4
                  end
                  object ppDBText20: TppDBText
                    UserName = 'DBText20'
                    AutoSize = True
                    DataField = 'FOPERAC'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 137584
                    mmTop = 265
                    mmWidth = 12700
                    BandType = 4
                  end
                  object ppDBText22: TppDBText
                    UserName = 'DBText22'
                    DataField = 'CRESALDO'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 105304
                    mmTop = 265
                    mmWidth = 14817
                    BandType = 4
                  end
                  object ppDBText21: TppDBText
                    UserName = 'DBText21'
                    DataField = 'CREMTOCOB'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 40217
                    mmTop = 265
                    mmWidth = 15081
                    BandType = 4
                  end
                  object ppDBText23: TppDBText
                    UserName = 'DBText23'
                    AutoSize = True
                    DataField = 'CREESTADO'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 159279
                    mmTop = 265
                    mmWidth = 16404
                    BandType = 4
                  end
                  object ppDBText24: TppDBText
                    UserName = 'DBText24'
                    DataField = 'CREMTO'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 24077
                    mmTop = 265
                    mmWidth = 15081
                    BandType = 4
                  end
                  object ppDBText25: TppDBText
                    UserName = 'DBText25'
                    DataField = 'CREMTOEXC'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 121179
                    mmTop = 265
                    mmWidth = 14817
                    BandType = 4
                  end
                end
                object ppSummaryBand1: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 47625
                  mmPrintPosition = 0
                  object ppDBCalc2: TppDBCalc
                    UserName = 'DBCalc2'
                    DataField = 'CREMTOCOB'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 40217
                    mmTop = 1852
                    mmWidth = 15081
                    BandType = 7
                  end
                  object ppDBCalc3: TppDBCalc
                    UserName = 'DBCalc3'
                    DataField = 'CRECAPITAL'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 56356
                    mmTop = 1852
                    mmWidth = 15081
                    BandType = 7
                  end
                  object ppDBCalc4: TppDBCalc
                    UserName = 'DBCalc4'
                    DataField = 'CREMTOINT'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 72496
                    mmTop = 1852
                    mmWidth = 15081
                    BandType = 7
                  end
                  object ppDBCalc5: TppDBCalc
                    UserName = 'DBCalc5'
                    DataField = 'CREMTOFLAT'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 88371
                    mmTop = 1852
                    mmWidth = 15081
                    BandType = 7
                  end
                  object ppDBCalc1: TppDBCalc
                    UserName = 'DBCalc1'
                    DataField = 'CREMTO'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 24077
                    mmTop = 1852
                    mmWidth = 15081
                    BandType = 7
                  end
                  object ppDBCalc7: TppDBCalc
                    UserName = 'DBCalc7'
                    DataField = 'CREMTOEXC'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 120915
                    mmTop = 1852
                    mmWidth = 15081
                    BandType = 7
                  end
                  object ppLine1: TppLine
                    UserName = 'Line1'
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 0
                    mmTop = 1058
                    mmWidth = 184415
                    BandType = 7
                  end
                  object ppLine2: TppLine
                    UserName = 'Line2'
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 0
                    mmTop = 7144
                    mmWidth = 184415
                    BandType = 7
                  end
                  object ppDBText36: TppDBText
                    UserName = 'DBText36'
                    DataField = 'CREPROCESO'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 121973
                    mmTop = 19579
                    mmWidth = 17198
                    BandType = 7
                  end
                  object ppLabel39: TppLabel
                    UserName = 'Label39'
                    Caption = 'CUOTAS VENCIDAS NO PAGADAS-------->'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 30692
                    mmTop = 14817
                    mmWidth = 51858
                    BandType = 7
                  end
                  object ppLabel40: TppLabel
                    UserName = 'Label40'
                    Caption = 'CUOTAS POR VENCER----------------->'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 30692
                    mmTop = 23283
                    mmWidth = 51858
                    BandType = 7
                  end
                  object ppDBText38: TppDBText
                    UserName = 'DBText38'
                    AutoSize = True
                    DataField = 'TMONABR'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 142082
                    mmTop = 28575
                    mmWidth = 13494
                    BandType = 7
                  end
                  object ppLine5: TppLine
                    UserName = 'Line5'
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 116152
                    mmTop = 27781
                    mmWidth = 23283
                    BandType = 7
                  end
                  object ppDBText39: TppDBText
                    UserName = 'DBText39'
                    DataField = 'CREVENCIDAS'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 122238
                    mmTop = 15081
                    mmWidth = 17198
                    BandType = 7
                  end
                  object ppDBText40: TppDBText
                    UserName = 'DBText301'
                    DataField = 'CREPENDT1'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 122238
                    mmTop = 23548
                    mmWidth = 17198
                    BandType = 7
                  end
                  object ppDBText41: TppDBText
                    UserName = 'DBText41'
                    DataField = 'MTOAPAGART'
                    DataPipeline = dbpData3
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 122238
                    mmTop = 28575
                    mmWidth = 17198
                    BandType = 7
                  end
                  object ppLabel41: TppLabel
                    UserName = 'Label41'
                    Caption = '                     TOTAL DEUDA-->'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 30692
                    mmTop = 28310
                    mmWidth = 51858
                    BandType = 7
                  end
                  object ppLabel42: TppLabel
                    UserName = 'Label42'
                    Caption = 'CUOTAS EN PROCESO DE COBRANZA----->'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 30692
                    mmTop = 19315
                    mmWidth = 58738
                    BandType = 7
                  end
                  object ppLabel43: TppLabel
                    UserName = 'Label201'
                    AutoSize = False
                    Caption = 'SITUACI'#211'N A LA FECHA DE EMISION DEL REPORTE'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    WordWrap = True
                    mmHeight = 4498
                    mmLeft = 30692
                    mmTop = 8731
                    mmWidth = 126471
                    BandType = 7
                  end
                  object ppLabel44: TppLabel
                    UserName = 'Label44'
                    AutoSize = False
                    Caption = 
                      '----------------------------------------------------------------' +
                      '----------------------------------------------------------------' +
                      '---------------------------------------------'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3175
                    mmLeft = 30427
                    mmTop = 33338
                    mmWidth = 128059
                    BandType = 7
                  end
                  object ppDBText27: TppDBText
                    UserName = 'DBText27'
                    DataField = 'CUOCREPROCESO'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 109009
                    mmTop = 19579
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppLine6: TppLine
                    UserName = 'Line6'
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 104246
                    mmTop = 27781
                    mmWidth = 11113
                    BandType = 7
                  end
                  object ppDBText37: TppDBText
                    UserName = 'DBText37'
                    DataField = 'CUOCREVENCIDAS'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 109009
                    mmTop = 15081
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppDBText42: TppDBText
                    UserName = 'DBText42'
                    DataField = 'CUOCREPENDT1'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 109009
                    mmTop = 23548
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppDBText43: TppDBText
                    UserName = 'DBText43'
                    DataField = 'CUOMTOAPAGART'
                    DataPipeline = dbpData3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbpData3'
                    mmHeight = 3704
                    mmLeft = 109009
                    mmTop = 28575
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppLabel52: TppLabel
                    UserName = 'Label501'
                    Caption = 'Elaborado por :'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 1588
                    mmTop = 42863
                    mmWidth = 22225
                    BandType = 7
                  end
                  object ppDBText34: TppDBText
                    UserName = 'DBText34'
                    DataField = 'USUARIOX'
                    DataPipeline = dbpData1
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Size = 8
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'dbpData1'
                    mmHeight = 4233
                    mmLeft = 24342
                    mmTop = 42863
                    mmWidth = 17198
                    BandType = 7
                  end
                end
              end
            end
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dbpData3: TppBDEPipeline
    UserName = 'dbpData3'
    Left = 336
    Top = 184
    MasterDataPipelineName = 'dbpData1'
  end
  object dbpData2: TppBDEPipeline
    UserName = 'dbpData2'
    Left = 368
    Top = 184
    MasterDataPipelineName = 'dbpData1'
  end
  object dbpData1: TppBDEPipeline
    UserName = 'dbpData1'
    Left = 408
    Top = 184
  end
end
