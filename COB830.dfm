object FToolIncoIng: TFToolIncoIng
  Left = 130
  Top = 209
  Width = 1008
  Height = 132
  Caption = 'Inconsistencias de Ingreso en Lote'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 94
    Align = alClient
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gbPorArchivo: TGroupBox
      Left = 525
      Top = 6
      Width = 182
      Height = 82
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object bbtnModifica: TBitBtn
        Left = 12
        Top = 14
        Width = 160
        Height = 25
        Cursor = crHandPoint
        Caption = 'Manipular Inconsistencias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bbtnModificaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000077777777770FFFFF700000007777
          777770FF0FFFF0000000777777770FF0FFFFF000000077777777000FFFFFF000
          00007777777007FF0FFFF000000077777707FFF0F0FFF0000000770000FFF00F
          0F0F0000000070330FF00FF0F0F07000000070FF0F03300F0F007000000070F0
          0000000000307000000070FF3F3F3F3F3F307000000070F00000000000307000
          000070FF3F3F3F3F3F7070000000770000000000000770000000777777777777
          777770000000}
      end
      object BitBtn2: TBitBtn
        Left = 13
        Top = 52
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
    object pnlEstado: TPanel
      Left = 661
      Top = 100
      Width = 406
      Height = 48
      BevelInner = bvLowered
      BevelWidth = 2
      Color = clTeal
      FullRepaint = False
      TabOrder = 1
      Visible = False
      object lbEstado: TLabel
        Left = 10
        Top = 6
        Width = 241
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object pbEstado: TProgressBar
        Left = 9
        Top = 22
        Width = 368
        Height = 16
        BorderWidth = 1
        Max = 30
        TabOrder = 0
      end
    end
    object grAplicaInconsistencia: TGroupBox
      Left = 716
      Top = 6
      Width = 262
      Height = 81
      TabOrder = 2
      object Bevel1: TBevel
        Left = 3
        Top = 43
        Width = 257
        Height = 2
      end
      object bbtnApInconsis: TBitBtn
        Left = 12
        Top = 14
        Width = 130
        Height = 25
        Caption = 'Aplica Inconsistencia'
        TabOrder = 0
        OnClick = bbtnApInconsisClick
      end
      object bbtnEnvDev: TBitBtn
        Left = 12
        Top = 52
        Width = 130
        Height = 25
        Caption = 'Envia a Devoluci'#243'n'
        TabOrder = 1
        OnClick = bbtnEnvDevClick
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
      object bbtnImpDev: TBitBtn
        Left = 205
        Top = 52
        Width = 45
        Height = 25
        Hint = 'Reporte de Devoluciones'
        Caption = 'TD'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbtnImpDevClick
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
      object btnNotaDev: TBitBtn
        Left = 150
        Top = 52
        Width = 45
        Height = 25
        Hint = 'Nota de Devoluciones'
        Caption = 'ND'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnNotaDevClick
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
    object gbPorTransferencia: TGroupBox
      Left = 13
      Top = 6
      Width = 500
      Height = 81
      TabOrder = 3
      object Label7: TLabel
        Left = 6
        Top = 19
        Width = 50
        Height = 13
        Caption = 'A'#241'o / Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 164
        Top = 19
        Width = 64
        Height = 13
        Caption = 'Unid Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 178
        Top = 49
        Width = 50
        Height = 13
        Caption = 'Unid Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 60
        Top = 19
        Width = 3
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 234
        Top = 19
        Width = 3
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 234
        Top = 51
        Width = 3
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object seAno: TSpinEdit
        Left = 68
        Top = 15
        Width = 47
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 4
        MaxValue = 2030
        MinValue = 2000
        ParentFont = False
        TabOrder = 0
        Value = 2001
      end
      object seMes: TSpinEdit
        Left = 122
        Top = 15
        Width = 36
        Height = 24
        MaxLength = 2
        MaxValue = 12
        MinValue = 1
        TabOrder = 1
        Value = 1
      end
      object BitBtn1: TBitBtn
        Left = 457
        Top = 13
        Width = 37
        Height = 32
        Hint = 'Filtra Incosistencias'
        TabOrder = 2
        OnClick = BitBtn1Click
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
      end
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 243
        Top = 15
        Width = 90
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Proceso'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPROID'#9'3'#9'Codigo'#9'F'
          'UPRONOM'#9'75'#9'Nombre'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdUProExit
      end
      object dblcdUPag: TwwDBLookupComboDlg
        Left = 243
        Top = 42
        Width = 57
        Height = 23
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPAGOID'#9'3'#9'Codigo'#9'F'
          'UPAGONOM'#9'75'#9'Nombre'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object rgtipaso: TRadioGroup
        Left = 349
        Top = 8
        Width = 100
        Height = 66
        Caption = ' Tipo / Asociado '
        ItemIndex = 0
        Items.Strings = (
          'Activos'
          'Cesantes'
          'Todos')
        TabOrder = 5
      end
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\Desarrollo DM\COBRANZAS\HPP_200912_COB\InconsistLote.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 464
    Top = 56
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'REPORTE DE INCONSISTENCIAS POR PLANILLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 55563
        mmTop = 16669
        mmWidth = 82815
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 172773
        mmTop = 10848
        mmWidth = 1778
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 173038
        mmTop = 794
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 159279
        mmTop = 10583
        mmWidth = 10837
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 160338
        mmTop = 794
        mmWidth = 9779
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'TRANSANO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 21960
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'C'#243'd Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 32544
        mmWidth = 20066
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 32544
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 76994
        mmTop = 32544
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'No Ubic.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 32544
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Cuota Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103452
        mmTop = 32544
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Mto. Dif'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121179
        mmTop = 32544
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Sin Cr'#233'd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133615
        mmTop = 32544
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'No Env'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 32544
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4106
        mmLeft = 265
        mmTop = 0
        mmWidth = 33443
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 21960
        mmWidth = 14288
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 30956
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 162868
        mmTop = 5821
        mmWidth = 7789
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 172773
        mmTop = 5821
        mmWidth = 19558
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'No Op.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 32544
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Fec Op.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178594
        mmTop = 32544
        mmWidth = 12435
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TRANSMES'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 102923
        mmTop = 21960
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 0
        mmWidth = 55563
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'IMPORTE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3725
        mmLeft = 82984
        mmTop = 0
        mmWidth = 7239
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FL_NASOID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 93927
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FL_CUOTPAG'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 110331
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'FL_MTODIF'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 124884
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'FL_NOCREDI'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 138377
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FL_NENVIA'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 151077
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'NROOPE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 159544
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FOPERAC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3725
        mmLeft = 178859
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'UPROID'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'UPROID'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 38365
          mmTop = 1852
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'Unidad de Proceso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 3440
          mmTop = 1852
          mmWidth = 33020
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 794
          mmTop = 0
          mmWidth = 194998
          BandType = 3
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          AutoSize = True
          DataField = 'UPAGONOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 48683
          mmTop = 1852
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2646
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'UPAGOID'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'UPAGOID'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 44186
          mmTop = 794
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Unidad de Pago :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 13758
          mmTop = 794
          mmWidth = 28840
          BandType = 3
          GroupNo = 1
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          AutoSize = True
          DataField = 'UPAGONOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 52917
          mmTop = 794
          mmWidth = 21696
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'FREG'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          AutoSize = True
          DataField = 'FREG'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4191
          mmLeft = 60590
          mmTop = 1323
          mmWidth = 9779
          BandType = 3
          GroupNo = 2
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha de Registro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 21167
          mmTop = 1058
          mmWidth = 31665
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 794
          mmTop = 265
          mmWidth = 194998
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'ASOID'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 12435
          mmTop = 1588
          mmWidth = 10848
          BandType = 5
          GroupNo = 2
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Registros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 24077
          mmTop = 1588
          mmWidth = 14817
          BandType = 5
          GroupNo = 2
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 1588
          mmTop = 1588
          mmWidth = 9652
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'IMPORTE'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 73025
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    UserName = 'DBPipeline1'
    Left = 496
    Top = 56
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 431
    Top = 56
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 898
    Top = 8
  end
  object ppd2: TppDesigner
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
    Left = 962
    Top = 8
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = ppdb1
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
    Template.FileName = 'D:\Desarrollo DM\COBRANZAS\HPP_200912_COB\InconsistLote.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 930
    Top = 8
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppLabel23: TppLabel
        UserName = 'Label1'
        Caption = 'CUOTAS ENVIADAS A DEVOLUCION POR NO TENER CREDITOS VIGENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 35862
        mmTop = 16669
        mmWidth = 126577
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 10848
        mmWidth = 1852
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 173038
        mmTop = 794
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 10583
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 160338
        mmTop = 794
        mmWidth = 9779
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText4'
        DataField = 'TRANSANO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 21960
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label4'
        Caption = 'C'#243'd Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 32544
        mmWidth = 20066
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label5'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 32544
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label6'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 92075
        mmTop = 32544
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label12'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4106
        mmLeft = 265
        mmTop = 0
        mmWidth = 33443
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label13'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label14'
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 21960
        mmWidth = 14288
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 30956
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label17'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 5821
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 5821
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label19'
        Caption = 'No Op.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 155840
        mmTop = 32544
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label20'
        Caption = 'Fec Op.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177007
        mmTop = 32544
        mmWidth = 12435
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText10'
        DataField = 'TRANSMES'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 102923
        mmTop = 21960
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdb1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 0
        mmWidth = 64294
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'IMPORTE'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3725
        mmLeft = 98161
        mmTop = 0
        mmWidth = 7239
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText13'
        DataField = 'NROOPE'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 155311
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText14'
        DataField = 'FOPERAC'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3725
        mmLeft = 177271
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'ASOID'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 2646
        mmWidth = 10848
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 2646
        mmWidth = 14817
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 2646
        mmWidth = 9525
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'IMPORTE'
        DataPipeline = ppdb1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 1588
        mmWidth = 194998
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'UPROID'
      DataPipeline = ppdb1
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText30: TppDBText
          UserName = 'DBText15'
          DataField = 'UPROID'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 4233
          mmLeft = 38365
          mmTop = 1852
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label21'
          Caption = 'Unidad de Proceso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 3440
          mmTop = 1852
          mmWidth = 33020
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 794
          mmTop = 0
          mmWidth = 194998
          BandType = 3
          GroupNo = 0
        end
        object ppDBText31: TppDBText
          UserName = 'DBText16'
          AutoSize = True
          DataField = 'UPAGONOM'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 4233
          mmLeft = 48683
          mmTop = 1852
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2646
        mmPrintPosition = 0
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'UPAGOID'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText32: TppDBText
          UserName = 'DBText11'
          DataField = 'UPAGOID'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 4233
          mmLeft = 44186
          mmTop = 794
          mmWidth = 6879
          BandType = 3
          GroupNo = 1
        end
        object ppLabel41: TppLabel
          UserName = 'Label16'
          Caption = 'Unidad de Pago :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 13758
          mmTop = 794
          mmWidth = 28840
          BandType = 3
          GroupNo = 1
        end
        object ppDBText33: TppDBText
          UserName = 'DBText17'
          AutoSize = True
          DataField = 'UPAGONOM'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 4233
          mmLeft = 52917
          mmTop = 794
          mmWidth = 21696
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'FREG'
      DataPipeline = ppdb1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdb1'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText34: TppDBText
          UserName = 'DBText12'
          AutoSize = True
          DataField = 'FREG'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 4191
          mmLeft = 60590
          mmTop = 1323
          mmWidth = 9779
          BandType = 3
          GroupNo = 2
        end
        object ppLabel42: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha de Registro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 21167
          mmTop = 1058
          mmWidth = 31665
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 794
          mmTop = 265
          mmWidth = 194998
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'ASOID'
          DataPipeline = ppdb1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdb1'
          mmHeight = 3969
          mmLeft = 35190
          mmTop = 1588
          mmWidth = 10848
          BandType = 5
          GroupNo = 2
        end
        object ppLabel43: TppLabel
          UserName = 'Label15'
          Caption = 'Registros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 46831
          mmTop = 1588
          mmWidth = 14817
          BandType = 5
          GroupNo = 2
        end
        object ppLabel44: TppLabel
          UserName = 'Label22'
          Caption = 'Total UPRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 12435
          mmTop = 1588
          mmWidth = 20532
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'IMPORTE'
          DataPipeline = ppdb1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdb1'
          mmHeight = 3704
          mmLeft = 88106
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
