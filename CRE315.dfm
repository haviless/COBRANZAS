object FCapacidad: TFCapacidad
  Left = 204
  Top = 110
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Capacidad de Pago'
  ClientHeight = 536
  ClientWidth = 781
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDatos: TPanel
    Left = 0
    Top = 0
    Width = 177
    Height = 481
    Caption = 'pnlDatos'
    Color = 13165023
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 344
      Width = 47
      Height = 13
      Caption = 'Mto. Max.'
    end
    object Label2: TLabel
      Left = 16
      Top = 366
      Width = 32
      Height = 13
      Caption = 'Interes'
    end
    object Label3: TLabel
      Left = 16
      Top = 388
      Width = 17
      Height = 13
      Caption = 'Flat'
    end
    object Label4: TLabel
      Left = 16
      Top = 410
      Width = 43
      Height = 13
      Caption = '# Cuotas'
    end
    object Label5: TLabel
      Left = 8
      Top = 434
      Width = 62
      Height = 26
      Caption = '% Afecto del Ingr. neto'
      WordWrap = True
    end
    object dbeMtoMax: TwwDBEdit
      Left = 72
      Top = 344
      Width = 59
      Height = 21
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeMtoMaxExit
      OnKeyPress = dbeMtoMaxKeyPress
    end
    object dbeInteres: TwwDBEdit
      Left = 72
      Top = 366
      Width = 41
      Height = 21
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeFlat: TwwDBEdit
      Left = 72
      Top = 388
      Width = 41
      Height = 21
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCuotas: TwwDBEdit
      Left = 72
      Top = 410
      Width = 33
      Height = 21
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbePorc: TwwDBEdit
      Left = 72
      Top = 434
      Width = 33
      Height = 21
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeMtoMaxExit
      OnKeyPress = dbeMtoMaxKeyPress
    end
    object sbtnInserta: TfcShapeBtn
      Left = 135
      Top = 343
      Width = 20
      Height = 20
      Hint = 'Grabar Resoluciones'
      Caption = '+'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.ExtrudeEffects.Orientation = fcTop
      TextOptions.HighlightColor = clNavy
      TextOptions.LineSpacing = 0
      TextOptions.Style = fclsOutline
      TextOptions.VAlignment = vaTop
      Visible = False
    end
  end
  object pnlRelacion: TPanel
    Left = 176
    Top = 0
    Width = 605
    Height = 536
    Align = alRight
    Caption = 'pnlRelacion'
    Color = 13165023
    Enabled = False
    TabOrder = 1
    object dbgRelacion: TwwDBGrid
      Left = 8
      Top = 20
      Width = 591
      Height = 503
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      OnCalcCellColors = dbgRelacionCalcCellColors
    end
    object dbgCabRel: TwwDBGrid
      Left = 108
      Top = 20
      Width = 474
      Height = 39
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      ShowVertScrollBar = False
      Color = clWhite
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = dbgCabRelCalcCellColors
      OnKeyDown = dbgCabRelKeyDown
      OnFieldChanged = dbgCabRelFieldChanged
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 603
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Tabla Propuesta'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object Z2sbtnBusca: TfcShapeBtn
    Left = 67
    Top = 490
    Width = 32
    Height = 31
    Hint = 'Grabar Resoluciones'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500055555500
      00005777FFFFFF77777750B077000003333057F77777777F555750B070888803
      B3B057F7F75FFF7F555700B07700000B3B3077F7F577777F555750B07777770B
      B3B057F7F555557F555750B07777770BBB3057F7FFFFFF7F555750B00000000B
      BBB057F77777777F555750B05F5F5F0BBBB057F7F7F7F77F555750B05F5F5F0B
      BBB057F7F7F7F77F555750B05F5F5F0BBBB057F7F7F7F77F555750B07777770B
      BBB057F77777777F555750B05F5F5F0BBBB057F7F757577F5557500055555503
      BBB057775555557F555755555555550B3BB055555555557F5557555555555503
      B3B055555555557FFFF755555555550000005555555555777777}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    Visible = False
  end
  object Z2sbtnGraba: TfcShapeBtn
    Left = 103
    Top = 490
    Width = 32
    Height = 31
    Hint = 'Grabar Resoluciones'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    Visible = False
  end
  object Z2sbtnReport: TfcShapeBtn
    Left = 139
    Top = 488
    Width = 32
    Height = 31
    Hint = 'Grabar Resoluciones'
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
    OnClick = Z2sbtnReportClick
  end
  object pnlSubCab: TPanel
    Left = 0
    Top = 1
    Width = 176
    Height = 328
    Color = 10207162
    TabOrder = 5
    object TLabel
      Left = 8
      Top = 3
      Width = 88
      Height = 15
      Caption = 'Tipo de Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 6
      Top = 83
      Width = 81
      Height = 15
      Caption = 'Lista de Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 6
      Top = 211
      Width = 79
      Height = 15
      Caption = 'Tipo de Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcTipo: TwwDBLookupCombo
      Left = 8
      Top = 22
      Width = 51
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      BorderStyle = bsNone
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ASOTIPID'#9'2'#9'ID'#9'F'
        'ASOTIPDES'#9'30'#9'DESCRIPCION'#9'F')
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      Options = [loColLines, loTitles]
      Color = 10207162
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcTipoChange
      OnNotInList = dblcTipoNotInList
    end
    object edtTipoAso: TEdit
      Left = 8
      Top = 52
      Width = 158
      Height = 21
      Color = 10207162
      Enabled = False
      TabOrder = 1
    end
    object dbgLista: TwwDBGrid
      Left = 5
      Top = 100
      Width = 166
      Height = 101
      DisableThemesInTitle = False
      Selected.Strings = (
        'LISTADES'#9'22'#9'LISTA'#9'F'
        'LISTAFINI'#9'10'#9'Fecha ~Inicial'#9'F'
        'LISTAFFIN'#9'10'#9'Fecha ~Fin'#9'F'
        'TMONABR'#9'10'#9'MONEDA'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = False
      DataSource = DM1.dsListaCreA
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgListaDblClick
    end
    object lbCreditos: TCheckListBox
      Left = 6
      Top = 225
      Width = 164
      Height = 97
      OnClickCheck = lbCreditosClickCheck
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 3
    end
  end
  object rptCapacidad: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SOLExes\SolFormatos\Cob\Dema\Capacidad.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 144
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppRegion3: TppRegion
        UserName = 'Region3'
        Brush.Color = 10207162
        Caption = 'Region3'
        mmHeight = 16140
        mmLeft = 529
        mmTop = 18785
        mmWidth = 183092
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'TABLA PROPUESTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 58473
        mmTop = 8467
        mmWidth = 31221
        BandType = 0
      end
      object lblCiades: TppLabel
        UserName = 'lblCiades'
        Caption = 'lblCiades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 265
        mmWidth = 12965
        BandType = 0
      end
      object lblArea: TppLabel
        UserName = 'lblArea'
        Caption = 'lblArea'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 5027
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Monto Pr'#233'stamo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 1058
        mmTop = 20108
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'N'#176' de Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 19579
        mmTop = 20108
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Monto Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 20108
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 50536
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 64029
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 77788
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 91017
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 103981
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 117475
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 130704
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 144198
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 157163
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Capac. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 170392
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 34660
        mmWidth = 182298
        BandType = 0
      end
      object lblMtoMax: TppLabel
        UserName = 'lblMtoMax'
        Caption = 'lblMtoMax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 29898
        mmWidth = 15610
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 29104
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 17727
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 18521
        mmWidth = 182298
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 0
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Brush.Color = clSilver
        Caption = 'Region1'
        Pen.Color = clSilver
        mmHeight = 5556
        mmLeft = 50271
        mmTop = 29104
        mmWidth = 132292
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'CREMTOMAX01'
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
          mmHeight = 3969
          mmLeft = 50536
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'CREMTOMAX02'
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
          mmHeight = 3969
          mmLeft = 64029
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'CREMTOMAX03'
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
          mmHeight = 3969
          mmLeft = 77788
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'CREMTOMAX04'
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
          mmHeight = 3969
          mmLeft = 91017
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'CREMTOMAX05'
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
          mmHeight = 3969
          mmLeft = 103981
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'CREMTOMAX06'
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
          mmHeight = 3969
          mmLeft = 117475
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'CREMTOMAX07'
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
          mmHeight = 3969
          mmLeft = 130704
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'CREMTOMAX08'
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
          mmHeight = 3969
          mmLeft = 144198
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'CREMTOMAX09'
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
          mmHeight = 3969
          mmLeft = 157163
          mmTop = 30163
          mmWidth = 11906
          BandType = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'CREMTOMAX10'
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
          mmHeight = 3969
          mmLeft = 170392
          mmTop = 30163
          mmWidth = 12171
          BandType = 0
        end
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 49213
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 62706
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 76200
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 89694
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 102659
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 115888
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 129382
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 142611
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 156104
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 169069
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 182298
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 49477
        mmTop = 28840
        mmWidth = 133879
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppRegion4: TppRegion
        UserName = 'Region4'
        Caption = 'Region4'
        Stretch = True
        mmHeight = 4763
        mmLeft = 50800
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CAMPO01'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 50271
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        Brush.Color = clSilver
        Caption = 'Region2'
        mmHeight = 4763
        mmLeft = 18785
        mmTop = 0
        mmWidth = 30956
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CRENROCUO'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 21960
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREMTOCUO'
        DataPipeline = ppBDEPipeline2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 30692
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CAMPO02'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 63765
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CAMPO03'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 77788
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CAMPO04'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 91017
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText101'
        DataField = 'CAMPO05'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 103981
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CAMPO06'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 117475
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CAMPO07'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 130704
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CAMPO08'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CAMPO09'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 157163
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CAMPO10'
        DataPipeline = ppBDEPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline2'
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 29104
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 49213
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 62706
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 76200
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 89694
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 102659
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 115888
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 129382
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 142611
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 156104
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 169069
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 182298
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 17992
        mmTop = 5027
        mmWidth = 165365
        BandType = 4
      end
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    UserName = 'BDEPipeline1'
    Left = 144
    Top = 400
  end
  object ppBDEPipeline2: TppBDEPipeline
    UserName = 'BDEPipeline2'
    Left = 144
    Top = 368
  end
end
