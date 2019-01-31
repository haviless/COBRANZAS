object FRepPagBcosCon: TFRepPagBcosCon
  Left = 212
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Cuenta Recaudadora Banco Continental'
  ClientHeight = 239
  ClientWidth = 383
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPagBcos: TPanel
    Left = 5
    Top = 3
    Width = 372
    Height = 230
    Color = 13165023
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 74
      Width = 44
      Height = 15
      Caption = 'Oficina:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 97
      Width = 43
      Height = 15
      Caption = 'Usuario:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 27
      Width = 71
      Height = 15
      Caption = 'Fecha Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 50
      Width = 61
      Height = 15
      Caption = 'Fecha Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object dbdtpInicio: TwwDBDateTimePicker
      Left = 92
      Top = 27
      Width = 88
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 370
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'Pagos en Banco'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object fcsbImprime: TfcShapeBtn
      Left = 319
      Top = 32
      Width = 41
      Height = 41
      Hint = 'Registro de depositos en Banco con verificaci'#243'n'
      Color = clBtnFace
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcsbImprimeClick
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 319
      Top = 80
      Width = 41
      Height = 41
      Hint = 'Registro de depositos en Banco con verificaci'#243'n'
      Color = clBtnFace
      DitherColor = clWhite
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 5
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn3Click
    end
    object dblcdOfiDes: TwwDBLookupComboDlg
      Left = 91
      Top = 74
      Width = 50
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'OFDESID'#9'10'#9'Identificaci'#243'n~del Asociado'#9#9
        'OFDESNOM'#9'40'#9'Apellidos y~Nombres'#9#9)
      LookupTable = DM1.cdsOfDes
      LookupField = 'OFDESID'
      MaxLength = 2
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdOfiDesExit
    end
    object dblcdUsuario: TwwDBLookupComboDlg
      Left = 91
      Top = 97
      Width = 50
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'USERID'#9'10'#9'Id. Usuario'#9#9
        'USERNOM'#9'40'#9'Nombre Usuario'#9#9)
      LookupTable = DM1.cdsUsuarios
      LookupField = 'USERID'
      MaxLength = 2
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdUsuarioExit
    end
    object edtOfiDes: TEdit
      Left = 151
      Top = 74
      Width = 143
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object edtUsuario: TEdit
      Left = 151
      Top = 97
      Width = 143
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object dbdtpFinal: TwwDBDateTimePicker
      Left = 92
      Top = 50
      Width = 88
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object rgtipo: TRadioGroup
      Left = 16
      Top = 120
      Width = 129
      Height = 97
      Caption = ' Tipo de Reporte '
      ItemIndex = 1
      Items.Strings = (
        'Todos'
        'Registros Errados'
        'Registros Ok'
        'No Registrados')
      TabOrder = 9
    end
  end
  object ppbdePagBcos: TppBDEPipeline
    DataSource = dsreporte
    UserName = 'bdePagBcos'
    Left = 280
    Top = 32
    object ppbdePagBcosppField1: TppField
      FieldAlias = 'asocodmod'
      FieldName = 'asocodmod'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppbdePagBcosppField2: TppField
      FieldAlias = 'asoapenom'
      FieldName = 'asoapenom'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppbdePagBcosppField3: TppField
      FieldAlias = 'crefpag'
      FieldName = 'crefpag'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppbdePagBcosppField4: TppField
      FieldAlias = 'numope'
      FieldName = 'numope'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppbdePagBcosppField5: TppField
      FieldAlias = 'montot'
      FieldName = 'montot'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppbdePagBcosppField6: TppField
      FieldAlias = 'asoid'
      FieldName = 'asoid'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppbdePagBcosppField7: TppField
      FieldAlias = 'obs'
      FieldName = 'obs'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppbdePagBcosppField8: TppField
      FieldAlias = 'agenbcodes'
      FieldName = 'agenbcodes'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppbdePagBcosppField9: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object ppbdePagBcosppField10: TppField
      FieldAlias = 'ofides'
      FieldName = 'ofides'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppbdePagBcosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'est'
      FieldName = 'est'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
  end
  object ppRPagBcos: TppReport
    AutoStop = False
    DataPipeline = ppbdePagBcos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 296
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdePagBcos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44186
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 13229
        mmLeft = 3969
        mmTop = 30163
        mmWidth = 75936
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DATOS DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 31750
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'APELLIDOS Y NOMBRE(S)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 22754
        mmTop = 38100
        mmWidth = 55032
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'COD.MOD.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 38100
        mmWidth = 15611
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3969
        mmTop = 36513
        mmWidth = 75936
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 13229
        mmLeft = 79111
        mmTop = 30163
        mmWidth = 60590
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'DATOS DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89429
        mmTop = 31750
        mmWidth = 38629
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'FEC. DEP.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 81756
        mmTop = 37571
        mmWidth = 16403
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'NUM. OPE.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 101600
        mmTop = 37835
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 123561
        mmTop = 37571
        mmWidth = 12171
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 78052
        mmTop = 36513
        mmWidth = 61648
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 13229
        mmLeft = 139436
        mmTop = 30163
        mmWidth = 44715
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 138642
        mmTop = 36513
        mmWidth = 1058
        BandType = 0
      end
      object pplTituloP: TppLabel
        UserName = 'lTituloP'
        Caption = 
          'Inconsistencia de Registro  de Papeleta de Deposito de Banco en ' +
          'cuenta Recaudadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3937
        mmLeft = 82486
        mmTop = 12171
        mmWidth = 117602
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 13229
        mmLeft = 183886
        mmTop = 30163
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'OBSERVACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 33867
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'OFICINA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 185209
        mmTop = 34131
        mmWidth = 12965
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 13229
        mmLeft = 211932
        mmTop = 30163
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 213519
        mmTop = 34131
        mmWidth = 13758
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 13229
        mmLeft = 236538
        mmTop = 30163
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'OFICINA DEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 237332
        mmTop = 34131
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3916
        mmLeft = 237332
        mmTop = 37835
        mmWidth = 10012
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 265
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3916
        mmLeft = 3969
        mmTop = 4498
        mmWidth = 26797
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 227542
        mmTop = 265
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 227542
        mmTop = 4498
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 238919
        mmTop = 265
        mmWidth = 19844
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3916
        mmLeft = 238919
        mmTop = 4498
        mmWidth = 16574
        BandType = 0
      end
      object pplTituloS: TppLabel
        UserName = 'lTituloS'
        Caption = 
          'Inconsistencia de Registro  de Papeleta de Deposito de Banco en ' +
          'cuenta Recaudadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3937
        mmLeft = 82487
        mmTop = 16404
        mmWidth = 117602
        BandType = 0
      end
      object pplofidesT: TppLabel
        UserName = 'lofidesT'
        Caption = 'OFIDES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 21431
        mmWidth = 11377
        BandType = 0
      end
      object pplUsuarioT: TppLabel
        UserName = 'lUsuarioT'
        Caption = 'USUARIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 24871
        mmWidth = 13494
        BandType = 0
      end
      object pplofides: TppLabel
        UserName = 'lofides'
        Caption = 'lofides'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 20902
        mmTop = 21431
        mmWidth = 12965
        BandType = 0
      end
      object pplusuario: TppLabel
        UserName = 'lusuario'
        Caption = 'lusuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 20902
        mmTop = 24871
        mmWidth = 18521
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
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 23548
        mmTop = 265
        mmWidth = 55033
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREFPAG'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 82550
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NUMOPE'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 102394
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'montot'
        DataPipeline = ppbdePagBcos
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'OBS'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 265
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'OFIDES'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 185209
        mmTop = 265
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'USUARIO'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 213519
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'AGENBCODES'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3175
        mmLeft = 237332
        mmTop = 0
        mmWidth = 37306
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3969
        mmTop = 0
        mmWidth = 274903
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3969
        mmTop = 6350
        mmWidth = 274903
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Total registros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 1058
        mmWidth = 20638
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Monto depositado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 94192
        mmTop = 1058
        mmWidth = 24077
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONTOT'
        DataPipeline = ppbdePagBcos
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3969
        mmLeft = 121444
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'asocodmod'
        DataPipeline = ppbdePagBcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdePagBcos'
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 1058
        mmWidth = 8996
        BandType = 7
      end
    end
  end
  object cdsreporte: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'asocodmod'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'asoapenom'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'crefpag'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'numope'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'montot'
        DataType = ftCurrency
      end
      item
        Name = 'asoid'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'obs'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'agenbcodes'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'usuario'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ofides'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'est'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 229
    Top = 35
    Data = {
      440100009619E0BD01000000180000000B00000000000300000044010961736F
      636F646D6F640100490000000100055749445448020002000A000961736F6170
      656E6F6D01004900000001000557494454480200020032000763726566706167
      0100490000000100055749445448020002000A00066E756D6F70650100490000
      000100055749445448020002000A00066D6F6E746F7408000400000001000753
      5542545950450200490006004D6F6E6579000561736F69640100490000000100
      055749445448020002000A00036F627301004900000001000557494454480200
      020014000A6167656E62636F6465730100490000000100055749445448020002
      001400077573756172696F0100490000000100055749445448020002000F0006
      6F66696465730100490000000100055749445448020002001400036573740400
      0100000000000000}
  end
  object dsreporte: TDataSource
    DataSet = cdsreporte
    Left = 205
    Top = 35
  end
end
