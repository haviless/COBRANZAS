object FHistorial: TFHistorial
  Left = 292
  Top = 244
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Historial de Cr'#233'ditos'
  ClientHeight = 234
  ClientWidth = 614
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    614
    234)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 76
    Width = 38
    Height = 15
    Caption = 'Cr'#233'dito'
  end
  object Label3: TLabel
    Left = 97
    Top = 76
    Width = 57
    Height = 15
    Caption = 'Fch. Otorg.'
  end
  object Label4: TLabel
    Left = 170
    Top = 76
    Width = 46
    Height = 15
    Caption = 'Mto. Sol.'
  end
  object Label5: TLabel
    Left = 228
    Top = 76
    Width = 34
    Height = 15
    Caption = 'Cuotas'
  end
  object Label2: TLabel
    Left = 272
    Top = 76
    Width = 34
    Height = 15
    Caption = 'Estado'
  end
  object Label6: TLabel
    Left = 436
    Top = 76
    Width = 58
    Height = 15
    Caption = 'Referencia'
  end
  object lbcopia1: TListBox
    Left = 56
    Top = 96
    Width = 121
    Height = 49
    ItemHeight = 15
    TabOrder = 1
    Visible = False
  end
  object lbCredid: TListBox
    Left = 192
    Top = 96
    Width = 121
    Height = 49
    ItemHeight = 15
    TabOrder = 2
    Visible = False
  end
  object lbHistorial: TListBox
    Left = 5
    Top = 97
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
      Left = 22
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
      Left = 67
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
    Left = 575
    Top = 199
    Width = 34
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
    Top = 201
    Width = 217
    Height = 31
    Caption = 'Tipo de Impresi'#243'n'
    Columns = 2
    Items.Strings = (
      'Seleccionado'
      'Todos')
    TabOrder = 6
    Visible = False
    OnClick = rgImprimeClick
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
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Soldb\Solformatos\Cob\Dema\HistorialUno.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = rptHistorialPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 448
    Top = 184
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpData1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppRegion3: TppRegion
        UserName = 'Region3'
        mmHeight = 25135
        mmLeft = 4233
        mmTop = 0
        mmWidth = 148167
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'C'#243'digo modular :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 7144
          mmTop = 1588
          mmWidth = 24871
          BandType = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          AutoSize = True
          DataField = 'ASOCODMOD'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 42598
          mmTop = 1588
          mmWidth = 18785
          BandType = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Asociado       :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 6879
          mmTop = 7408
          mmWidth = 19844
          BandType = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          AutoSize = True
          DataField = 'ASOAPENOM'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 42333
          mmTop = 7408
          mmWidth = 18256
          BandType = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'N'#250'mero Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 6615
          mmTop = 16140
          mmWidth = 27252
          BandType = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Fecha Otorgamiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 42069
          mmTop = 16140
          mmWidth = 20108
          BandType = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Monto Solicitado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 75142
          mmTop = 16140
          mmWidth = 14023
          BandType = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'N'#250'mero Cuotas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 97896
          mmTop = 16140
          mmWidth = 11642
          BandType = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Estado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 115623
          mmTop = 19844
          mmWidth = 9790
          BandType = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 134409
          mmTop = 1588
          mmWidth = 14288
          BandType = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 121973
          mmTop = 1588
          mmWidth = 10054
          BandType = 0
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Stretch = True
        mmHeight = 12435
        mmLeft = 4763
        mmTop = 265
        mmWidth = 147373
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          AutoSize = True
          DataField = 'CREDID'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 7673
          mmTop = 1058
          mmWidth = 9525
          BandType = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'CREFOTORG'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 46038
          mmTop = 1058
          mmWidth = 17198
          BandType = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'CREMTOSOL'
          DataPipeline = dbpData1
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 75671
          mmTop = 1058
          mmWidth = 17198
          BandType = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'CRENUMCUO'
          DataPipeline = dbpData1
          DisplayFormat = '##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 100806
          mmTop = 1058
          mmWidth = 10319
          BandType = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'CREESTADO'
          DataPipeline = dbpData1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpData1'
          mmHeight = 3704
          mmLeft = 114300
          mmTop = 1058
          mmWidth = 16404
          BandType = 4
        end
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentWidth = False
          ShiftRelativeTo = ppRegion1
          TraverseAllData = False
          DataPipelineName = 'dbpData2'
          mmHeight = 5027
          mmLeft = 6085
          mmTop = 6615
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
            PrinterSetup.PaperName = 'Carta (216 x 279 mm)'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.mmMarginBottom = 6350
            PrinterSetup.mmMarginLeft = 6350
            PrinterSetup.mmMarginRight = 6350
            PrinterSetup.mmMarginTop = 6350
            PrinterSetup.mmPaperHeight = 279401
            PrinterSetup.mmPaperWidth = 215900
            PrinterSetup.PaperSize = 1
            Template.FileName = 'C:\Soldb\Solformatos\Cob\Dema\HistorialUno.rtm'
            Left = 304
            Top = 112
            Version = '7.02'
            mmColumnWidth = 0
            DataPipelineName = 'dbpData2'
            object ppTitleBand1: TppTitleBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 19315
              mmPrintPosition = 0
              object ppRegion2: TppRegion
                UserName = 'Region2'
                Stretch = True
                mmHeight = 16669
                mmLeft = 3440
                mmTop = 2381
                mmWidth = 182298
                BandType = 1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                object ppLabel8: TppLabel
                  UserName = 'Label8'
                  Caption = 'Interes Val.'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 6615
                  mmTop = 3969
                  mmWidth = 16669
                  BandType = 1
                end
                object ppDBText8: TppDBText
                  UserName = 'DBText8'
                  DataField = 'CREINTERES'
                  DataPipeline = dbpData2
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 31485
                  mmTop = 3969
                  mmWidth = 17198
                  BandType = 1
                end
                object ppLabel11: TppLabel
                  UserName = 'Label11'
                  Caption = 'Inicio de Pago'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 107156
                  mmTop = 3969
                  mmWidth = 20108
                  BandType = 1
                end
                object ppDBText11: TppDBText
                  UserName = 'DBText11'
                  DataField = 'CREFINIPAG'
                  DataPipeline = dbpData2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 142875
                  mmTop = 3969
                  mmWidth = 17198
                  BandType = 1
                end
                object ppLabel9: TppLabel
                  UserName = 'Label9'
                  Caption = 'Flat Valor'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 6615
                  mmTop = 8996
                  mmWidth = 13494
                  BandType = 1
                end
                object ppDBText9: TppDBText
                  UserName = 'DBText9'
                  DataField = 'CREDFLAT'
                  DataPipeline = dbpData2
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 31485
                  mmTop = 8996
                  mmWidth = 17198
                  BandType = 1
                end
                object ppLabel12: TppLabel
                  UserName = 'Label12'
                  Caption = 'Fin de Pago'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 107156
                  mmTop = 8996
                  mmWidth = 16669
                  BandType = 1
                end
                object ppDBText12: TppDBText
                  UserName = 'DBText12'
                  DataField = 'CREFFINPAG'
                  DataPipeline = dbpData2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 142875
                  mmTop = 8996
                  mmWidth = 17198
                  BandType = 1
                end
                object ppLabel10: TppLabel
                  UserName = 'Label10'
                  Caption = 'Monto Cuota'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 6615
                  mmTop = 14023
                  mmWidth = 18521
                  BandType = 1
                end
                object ppDBText10: TppDBText
                  UserName = 'DBText10'
                  DataField = 'CRECUOTA'
                  DataPipeline = dbpData2
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 31485
                  mmTop = 14023
                  mmWidth = 17198
                  BandType = 1
                end
                object ppLabel13: TppLabel
                  UserName = 'Label13'
                  Caption = 'N'#250'mero de Oficio'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3704
                  mmLeft = 107156
                  mmTop = 14023
                  mmWidth = 25135
                  BandType = 1
                end
                object ppDBText13: TppDBText
                  UserName = 'DBText13'
                  DataField = 'NROFICIO'
                  DataPipeline = dbpData2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Draft 15cpi'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  Transparent = True
                  DataPipelineName = 'dbpData2'
                  mmHeight = 3704
                  mmLeft = 142875
                  mmTop = 14023
                  mmWidth = 17198
                  BandType = 1
                end
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
                  PrinterSetup.PaperName = 'Carta (216 x 279 mm)'
                  PrinterSetup.PrinterName = 'Default'
                  PrinterSetup.mmMarginBottom = 6350
                  PrinterSetup.mmMarginLeft = 6350
                  PrinterSetup.mmMarginRight = 6350
                  PrinterSetup.mmMarginTop = 6350
                  PrinterSetup.mmPaperHeight = 279401
                  PrinterSetup.mmPaperWidth = 215900
                  PrinterSetup.PaperSize = 1
                  Template.FileName = 'C:\Soldb\Solformatos\Cob\Dema\HistorialUno.rtm'
                  Left = 312
                  Top = 120
                  Version = '7.02'
                  mmColumnWidth = 0
                  DataPipelineName = 'dbpData3'
                  object ppTitleBand2: TppTitleBand
                    mmBottomOffset = 0
                    mmHeight = 12171
                    mmPrintPosition = 0
                    object ppRegion4: TppRegion
                      UserName = 'Region4'
                      mmHeight = 11113
                      mmLeft = 0
                      mmTop = 794
                      mmWidth = 182827
                      BandType = 1
                      mmBottomOffset = 0
                      mmOverFlowOffset = 0
                      mmStopPosition = 0
                      object ppLabel14: TppLabel
                        UserName = 'Label14'
                        Caption = 'A'#241'o'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 794
                        mmTop = 2381
                        mmWidth = 5821
                        BandType = 1
                      end
                      object ppLabel15: TppLabel
                        UserName = 'Label15'
                        Caption = 'Mes'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 10054
                        mmTop = 2381
                        mmWidth = 6350
                        BandType = 1
                      end
                      object ppLabel16: TppLabel
                        UserName = 'Label16'
                        Caption = 'Cuo'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 17727
                        mmTop = 2381
                        mmWidth = 5821
                        BandType = 1
                      end
                      object ppLabel24: TppLabel
                        UserName = 'Label24'
                        AutoSize = False
                        Caption = 'Cuo a Pagar'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        TextAlignment = taCentered
                        Transparent = True
                        WordWrap = True
                        mmHeight = 8996
                        mmLeft = 25135
                        mmTop = 1323
                        mmWidth = 14817
                        BandType = 1
                      end
                      object ppLabel21: TppLabel
                        UserName = 'Label21'
                        Caption = 'Monto Cobrado'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        WordWrap = True
                        mmHeight = 7408
                        mmLeft = 43127
                        mmTop = 2381
                        mmWidth = 12435
                        BandType = 1
                      end
                      object ppLabel17: TppLabel
                        UserName = 'Label17'
                        Caption = 'Amort.'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 62177
                        mmTop = 2381
                        mmWidth = 10054
                        BandType = 1
                      end
                      object ppLabel18: TppLabel
                        UserName = 'Label18'
                        Caption = 'Int.'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 83873
                        mmTop = 2381
                        mmWidth = 4498
                        BandType = 1
                      end
                      object ppLabel19: TppLabel
                        UserName = 'Label19'
                        Caption = 'Flat'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 99219
                        mmTop = 2381
                        mmWidth = 5027
                        BandType = 1
                      end
                      object ppLabel22: TppLabel
                        UserName = 'Label22'
                        Caption = 'Saldo'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 112977
                        mmTop = 2381
                        mmWidth = 7938
                        BandType = 1
                      end
                      object ppLabel25: TppLabel
                        UserName = 'Label25'
                        Caption = 'Exceso'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 126471
                        mmTop = 2381
                        mmWidth = 10319
                        BandType = 1
                      end
                      object ppLabel20: TppLabel
                        UserName = 'Label20'
                        Caption = 'Fecha Oper.'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        WordWrap = True
                        mmHeight = 7408
                        mmLeft = 142611
                        mmTop = 2117
                        mmWidth = 8467
                        BandType = 1
                      end
                      object ppLabel23: TppLabel
                        UserName = 'Label23'
                        Caption = 'Estado'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'Draft 15cpi'
                        Font.Size = 8
                        Font.Style = [fsBold]
                        Transparent = True
                        mmHeight = 3704
                        mmLeft = 160073
                        mmTop = 2117
                        mmWidth = 9790
                        BandType = 1
                      end
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 137584
                      mmTop = 0
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 159279
                      mmTop = 0
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
                      Font.Name = 'Draft 15cpi'
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
                      Font.Name = 'Draft 15cpi'
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
                    mmHeight = 37306
                    mmPrintPosition = 0
                    object ppDBCalc2: TppDBCalc
                      UserName = 'DBCalc2'
                      DataField = 'CREMTOCOB'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 40217
                      mmTop = 1058
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 56356
                      mmTop = 1058
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 72496
                      mmTop = 1058
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 88371
                      mmTop = 1058
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 24077
                      mmTop = 1058
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
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 120915
                      mmTop = 1058
                      mmWidth = 15081
                      BandType = 7
                    end
                    object ppLine1: TppLine
                      UserName = 'Line1'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 0
                      mmTop = 265
                      mmWidth = 184415
                      BandType = 7
                    end
                    object ppLine2: TppLine
                      UserName = 'Line2'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 0
                      mmTop = 6350
                      mmWidth = 184415
                      BandType = 7
                    end
                    object ppLabel26: TppLabel
                      UserName = 'Label26'
                      Caption = 'SALDO DEUDA TOTAL  -> '
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 11377
                      mmTop = 7144
                      mmWidth = 34396
                      BandType = 7
                    end
                    object ppDBText26: TppDBText
                      UserName = 'DBText26'
                      AutoSize = True
                      DataField = 'TMONABR'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 46302
                      mmTop = 7144
                      mmWidth = 13494
                      BandType = 7
                    end
                    object ppLine3: TppLine
                      UserName = 'Line3'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 0
                      mmTop = 12171
                      mmWidth = 184415
                      BandType = 7
                    end
                    object ppLabel27: TppLabel
                      UserName = 'Label27'
                      Caption = 'SALDO DE CUOTAS VENCIDAS ->'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 30692
                      mmTop = 13494
                      mmWidth = 43921
                      BandType = 7
                    end
                    object ppLabel28: TppLabel
                      UserName = 'Label28'
                      Caption = 'SALDO DE CUOTAS PENDIENTES ->'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 30692
                      mmTop = 18785
                      mmWidth = 46038
                      BandType = 7
                    end
                    object ppDBText27: TppDBText
                      UserName = 'DBText27'
                      AutoSize = True
                      DataField = 'TMONABR'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 90752
                      mmTop = 13494
                      mmWidth = 13494
                      BandType = 7
                    end
                    object ppDBText28: TppDBText
                      UserName = 'DBText28'
                      AutoSize = True
                      DataField = 'TMONABR'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 90752
                      mmTop = 18785
                      mmWidth = 13494
                      BandType = 7
                    end
                    object ppLine4: TppLine
                      UserName = 'Line4'
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 116152
                      mmTop = 23019
                      mmWidth = 23283
                      BandType = 7
                    end
                    object ppDBText29: TppDBText
                      UserName = 'DBText29'
                      DataField = 'CREVENCIDAS'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 122238
                      mmTop = 13494
                      mmWidth = 17198
                      BandType = 7
                    end
                    object ppDBText30: TppDBText
                      UserName = 'DBText30'
                      DataField = 'CREPENDT1'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 122238
                      mmTop = 18785
                      mmWidth = 17198
                      BandType = 7
                    end
                    object ppDBText31: TppDBText
                      UserName = 'DBText31'
                      DataField = 'MTOAPAGARS'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 122238
                      mmTop = 24077
                      mmWidth = 17198
                      BandType = 7
                    end
                    object ppDBText32: TppDBText
                      UserName = 'DBText32'
                      AutoSize = True
                      DataField = 'MES'
                      DataPipeline = dbpData3
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 24077
                      mmTop = 33073
                      mmWidth = 6085
                      BandType = 7
                    end
                    object ppDBText33: TppDBText
                      UserName = 'DBText33'
                      DataField = 'MTOAPAGAR'
                      DataPipeline = dbpData3
                      DisplayFormat = '###,###,##0.00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Draft 15cpi'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbpData3'
                      mmHeight = 3704
                      mmLeft = 99748
                      mmTop = 7144
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
