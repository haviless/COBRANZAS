object FToolBloquo: TFToolBloquo
  Left = 0
  Top = 141
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Bloqueo/Desbloqueo de Cuotas'
  ClientHeight = 50
  ClientWidth = 804
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object pnlBot: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 50
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblApeMat: TLabel
      Left = 5
      Top = 0
      Width = 107
      Height = 15
      Caption = 'Apellidos y Nombres '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object edtAsociado: TEdit
      Left = 5
      Top = 16
      Width = 278
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edtAsociadoExit
    end
    object pnlImpre: TPanel
      Left = 344
      Top = 1
      Width = 449
      Height = 49
      BevelOuter = bvNone
      Caption = 'pnlImpre'
      Color = 13165023
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 6
        Top = 2
        Width = 69
        Height = 15
        Caption = 'Rango Inicial'
      end
      object Label2: TLabel
        Left = 103
        Top = 2
        Width = 59
        Height = 15
        Caption = 'Rango Final'
      end
      object spRAI: TSpinEdit
        Left = 6
        Top = 16
        Width = 56
        Height = 24
        MaxLength = 4
        MaxValue = 2050
        MinValue = 2000
        TabOrder = 0
        Value = 2000
      end
      object seRMI: TSpinEdit
        Left = 60
        Top = 16
        Width = 37
        Height = 24
        MaxLength = 2
        MaxValue = 12
        MinValue = 1
        TabOrder = 1
        Value = 12
      end
      object seRAF: TSpinEdit
        Left = 103
        Top = 16
        Width = 53
        Height = 24
        MaxLength = 4
        MaxValue = 2050
        MinValue = 2000
        TabOrder = 2
        Value = 2000
      end
      object seRMF: TSpinEdit
        Left = 157
        Top = 16
        Width = 37
        Height = 24
        MaxLength = 2
        MaxValue = 12
        MinValue = 1
        TabOrder = 3
        Value = 12
      end
      object rgEstado: TRadioGroup
        Left = 200
        Top = 4
        Width = 201
        Height = 33
        Caption = 'Estado de Cuotas'
        Columns = 2
        Items.Strings = (
          'Bloqueadas'
          'DesBloqueadas')
        TabOrder = 4
      end
      object bbtnBloqueo: TfcShapeBtn
        Left = 412
        Top = 3
        Width = 32
        Height = 30
        Hint = 'Inserta Movimiento'
        Color = 10207162
        DitherColor = clWhite
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
        Orientation = soRight
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 28
        ShadeColors.Btn3DLight = 13492188
        ShadeColors.BtnHighlight = 15134701
        ShadeColors.BtnShadow = 5136477
        ShadeColors.BtnBlack = 2568239
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 5
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnBloqueoClick
      end
    end
    object bbtnPrin: TfcShapeBtn
      Left = 306
      Top = 5
      Width = 31
      Height = 29
      Hint = 'Guardar Datos del Asociado'
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnPrinClick
    end
  end
  object rptBloqueo: TppReport
    AutoStop = False
    DataPipeline = bdeppBloqueo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 241300
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\Bloqueo.rtm'
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 520
    Version = '4.22 Pro'
    mmColumnWidth = 228600
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'RELACION DE CUOTAS '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60590
        mmTop = 14817
        mmWidth = 39423
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 4498
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 4498
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 8996
        mmWidth = 6085
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 8996
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 0
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object pplblRango: TppLabel
        UserName = 'lblRango'
        Caption = 'lblRango'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 19315
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 265
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFOTORG'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 65352
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREDID'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 86784
        mmTop = 265
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ANOMES'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122502
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CRECUOTA'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 138642
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'USUARIO'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'FECHA'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'CREBLOQOBS'
        DataPipeline = bdeppBloqueo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 3440
        mmLeft = 184944
        mmTop = 265
        mmWidth = 38100
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppdbtOfc'
      BreakType = btCustomField
      KeepTogether = True
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 529
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 7408
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 29104
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 64823
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 86254
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 121973
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 138113
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line101'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 144727
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 162984
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 184415
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 1058
          mmTop = 7408
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Código Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 8202
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Apellidos y Nombre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 29633
          mmTop = 7408
          mmWidth = 34925
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label8'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha del Prestamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 65352
          mmTop = 7408
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label101'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Número de Crédito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 86784
          mmTop = 7408
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label103'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Año / Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 122502
          mmTop = 7408
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label102'
          AutoSize = False
          Caption = 'Cuo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 138642
          mmTop = 7408
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label15'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 145257
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha Proceso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 163513
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Observación'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 11113
          mmLeft = 184944
          mmTop = 7408
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.75
          mmHeight = 13494
          mmLeft = 226748
          mmTop = 6615
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 529
          mmTop = 6879
          mmWidth = 226484
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 529
          mmTop = 19844
          mmWidth = 226484
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Alignment = taCenter
          Caption = 'Lugar Proceso :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 529
          mmTop = 2117
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
        end
        object ppdbtOfc: TppDBText
          UserName = 'dbtOfc'
          AutoSize = True
          DataField = 'OFDESABR'
          DataPipeline = bdeppBloqueo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 29104
          mmTop = 2381
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object bdeppBloqueo: TppBDEPipeline
    UserName = 'bdeppBloqueo'
    Left = 560
  end
end
