object FIngresoLote: TFIngresoLote
  Left = 385
  Top = 75
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aportes'
  ClientHeight = 570
  ClientWidth = 856
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlEstado: TPanel
    Left = 268
    Top = 259
    Width = 267
    Height = 48
    BevelInner = bvLowered
    BevelWidth = 2
    Color = clTeal
    FullRepaint = False
    TabOrder = 2
    Visible = False
    object lbEstado: TLabel
      Left = 13
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
      Width = 249
      Height = 16
      BorderWidth = 1
      Max = 30
      TabOrder = 0
    end
  end
  object pnlTransf: TPanel
    Left = 347
    Top = 230
    Width = 369
    Height = 170
    BevelInner = bvLowered
    BevelWidth = 2
    Color = clInfoBk
    TabOrder = 5
    Visible = False
    object Label10: TLabel
      Left = 55
      Top = 16
      Width = 258
      Height = 57
      Alignment = taCenter
      Caption = 
        'Transfiriendo los Asociados de Aportes este Proceso se puede tom' +
        'ar unos Segundos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Animate1: TAnimate
      Left = 48
      Top = 78
      Width = 272
      Height = 60
      CommonAVI = aviCopyFiles
      StopFrame = 34
      Visible = False
    end
  end
  object pnlCabecera: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 520
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object dbgAportes: TwwDBGrid
      Left = 3
      Top = 165
      Width = 850
      Height = 352
      TabStop = False
      DisableThemesInTitle = False
      Selected.Strings = (
        'FREGCOB'#9'2'#9'X'#9'F'
        'ASOID'#9'11'#9'C'#243'digo'#9'T'
        'ASOCODMOD'#9'10'#9'C'#243'digo~Modular'#9'T'
        'ASOTIPID'#9'2'#9'Tipo~Asoc.'#9'T'
        'ASOAPENOM'#9'33'#9'Apellidos y Nombres'#9'T'
        'TRANSAPO'#9'9'#9'Monto~Aportes'#9'T'
        'TRANSCUO'#9'9'#9'Monto~Cuotas'#9'T'
        'TRANSMTO'#9'9'#9'Monto~Total'#9'T'
        'UPROID'#9'5'#9'Unid~Proceso'#9'T'
        'UPAGOID'#9'3'#9'Unid~Pago'#9'T'
        'USEID'#9'3'#9'Use'#9'T'
        'ASOCODPAGO'#9'10'#9'C'#243'digo~de Pago'#9'T'
        'TRANSANO'#9'4'#9'A'#241'o'#9'T'
        'TRANSMES'#9'3'#9'Mes'#9'T'
        'FNASOID'#9'13'#9'No Tiene~C'#243'digo de Derrama'#9'T'
        'FNCODMOD'#9'11'#9'No Tiene~C'#243'digo Modular'#9'T'
        'FNASODUP'#9'1'#9'Asociado~Duplicado'#9'F'
        'FCCODMOD'#9'11'#9'C'#243'digo Modular~Cambiado'#9'T'
        'FCCODPAGO'#9'8'#9'C'#243'digo Pago~Cambiado'#9'T'
        'FCUSE'#9'7'#9'Use~Cambiada'#9'T'
        'FCUPRO'#9'7'#9'U Proc~Cambiada'#9'T'
        'FNMONTO'#9'5'#9'No hay~Montos'#9'T'
        'FMAPORTE'#9'5'#9'Aporte~Mayor'#9'T'
        'FEAPORTE'#9'5'#9'Aporte~Menor'#9'T'
        'FDAPORTE'#9'5'#9'Doble~Aporte'#9'T'
        'FSCREDITO'#9'6'#9'Sin~Creditos'#9'T'
        'FMCREDITO'#9'4'#9'Cuota~Mayor'#9'T'
        'FECREDITO'#9'4'#9'Cuota~Menor'#9'T'
        'FUSENOEX'#9'4'#9'USE No~Pertenece'#9'T'
        'BANCOID'#9'4'#9'Banco'#9'T'
        'CCBCOID'#9'15'#9'Cuenta~Bancaria'#9'T'
        'USUARIO'#9'10'#9'Usuario'#9'T'
        'HREG'#9'20'#9'Hora~Registro'#9'T')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      BorderStyle = bsNone
      Color = 13165023
      Ctl3D = True
      DataSource = DM1.dsAutdisk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgWordWrap, dgShowFooter]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      UseTFields = False
      OnCalcCellColors = dbgAportesCalcCellColors
      OnTitleButtonClick = dbgAportesTitleButtonClick
      OnDblClick = dbgAportesDblClick
      OnEnter = dbgAportesEnter
      OnKeyDown = dbgAportesKeyDown
      object bbtnIngresaAporte: TwwIButton
        Left = 0
        Top = 0
        Width = 28
        Height = 36
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = bbtnIngresaAporteClick
      end
    end
    object pnlUse: TPanel
      Left = 3
      Top = 129
      Width = 850
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        850
        36)
      object lblAno: TLabel
        Left = 303
        Top = 10
        Width = 26
        Height = 15
        Caption = 'A'#241'o :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblMes: TLabel
        Left = 382
        Top = 10
        Width = 27
        Height = 15
        Caption = 'Mes :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblUse: TLabel
        Left = 3
        Top = 10
        Width = 29
        Height = 15
        Caption = 'USE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object fcLabel1: TfcLabel
        Left = 453
        Top = 1
        Width = 51
        Height = 30
        AutoSize = False
        Caption = 'Per'#237'odo Contable :'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        TextOptions.WordWrap = True
      end
      object fcLabel2: TfcLabel
        Left = 579
        Top = 1
        Width = 46
        Height = 45
        AutoSize = False
        Caption = 'Monto Aporte :'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        TextOptions.WordWrap = True
      end
      object fcLabel3: TfcLabel
        Left = 221
        Top = 1
        Width = 23
        Height = 45
        AutoSize = False
        Caption = 'Tip. Aso:'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        TextOptions.WordWrap = True
      end
      object bbtnSigue: TfcShapeBtn
        Left = 717
        Top = 1
        Width = 34
        Height = 31
        Hint = 'Inserta Movimiento del Maestro'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
          000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
          FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
          FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
          0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
          05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
          55557F7777777555555500000005555555557777777555555555}
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
        TabOrder = 7
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnSigueClick
      end
      object dbeImpAporte: TwwDBEdit
        Left = 624
        Top = 7
        Width = 51
        Height = 21
        Anchors = [akTop, akRight]
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBAPOVAL'
        DataSource = DM1.dsCobxUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        Picture.PictureMask = '*12[#][.*2[#]]'
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeImpAporteExit
      end
      object bbtnAtras: TfcShapeBtn
        Left = 794
        Top = 1
        Width = 34
        Height = 31
        Hint = 'Cancelar'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 8
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAtrasClick
      end
      object bbtnAutdisk: TfcShapeBtn
        Left = 679
        Top = 1
        Width = 34
        Height = 31
        Hint = 'Inserta Movimiento del Audisk'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
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
        TabOrder = 6
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAutdiskClick
      end
      object speAno: TwwDBEdit
        Left = 336
        Top = 7
        Width = 40
        Height = 21
        Anchors = [akTop, akRight]
        AutoSelect = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBANOAPO'
        DataSource = DM1.dsCobxUse
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object speMes: TwwDBEdit
        Left = 417
        Top = 7
        Width = 29
        Height = 21
        Anchors = [akTop, akRight]
        AutoSelect = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBMESAPO'
        DataSource = DM1.dsCobxUse
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object dblcdUse: TwwDBLookupComboDlg
        Left = 30
        Top = 7
        Width = 48
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Uses'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'USEID'#9'3'#9'Id'#9'F'
          'USENOM'#9'65'#9'USE'#9'F')
        DataField = 'USEID'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcdUseExit
      end
      object bbtnIngLinea: TfcShapeBtn
        Left = 755
        Top = 1
        Width = 34
        Height = 31
        Hint = 'Inserta Movimiento en Linea'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
          555555777777777FF5555500000000805555557777777777FF555550BBBBB008
          05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
          005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
          055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
          055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
          05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
          05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
          005555555775FFFF77F555555570000000555555555777777755}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 9
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnIngLineaClick
      end
      object edtUse: TwwDBEdit
        Left = 82
        Top = 7
        Width = 133
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbePerCont: TwwDBEdit
        Left = 508
        Top = 8
        Width = 64
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object dblTipAso: TwwDBLookupCombo
        Left = 249
        Top = 7
        Width = 49
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ASOTIPID'#9'4'#9'ID'#9'Tipo'
          'ASOTIPDES'#9'12'#9'Descripci'#243'n'#9'F')
        DataField = 'asotipid'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsTipCreA
        LookupField = 'ASOTIPID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 3
        TabOrder = 10
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnNotInList = dblcNotInList
      end
    end
    object pnlDatosAportes: TPanel
      Left = 3
      Top = 62
      Width = 850
      Height = 67
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblNOpe: TLabel
        Left = 267
        Top = 9
        Width = 77
        Height = 15
        Caption = 'N'#176' Operaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblFecOpe: TLabel
        Left = 501
        Top = 9
        Width = 108
        Height = 15
        Caption = 'Fecha de Operaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblMonto: TLabel
        Left = 199
        Top = 44
        Width = 38
        Height = 15
        Caption = 'Monto :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblMon: TLabel
        Left = 4
        Top = 44
        Width = 46
        Height = 15
        Caption = 'Moneda :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblCtaCte: TLabel
        Left = 4
        Top = 9
        Width = 93
        Height = 15
        Caption = 'Cuenta Corriente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblUnidadProceso: TLabel
        Left = 319
        Top = 32
        Width = 51
        Height = 30
        Caption = 'Unidad de Proceso :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object TLabel
        Left = 572
        Top = 28
        Width = 30
        Height = 30
        Caption = 'Unid Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object dbeNumOperacion: TwwDBEdit
        Left = 353
        Top = 5
        Width = 128
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'RCOBNOPE'
        DataSource = DM1.dsCobxUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeNumOperacionExit
      end
      object dbdtpFecOperacion: TwwDBDateTimePicker
        Left = 618
        Top = 5
        Width = 95
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'RCOBFOPE'
        DataSource = DM1.dsCobxUse
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 2
        OnExit = dbdtpFecOperacionExit
      end
      object dbeMonto: TwwDBEdit
        Left = 235
        Top = 38
        Width = 80
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'RCOBUSETOT'
        DataSource = DM1.dsCobxUse
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeMontoExit
      end
      object dblcMoneda: TwwDBLookupCombo
        Left = 48
        Top = 38
        Width = 44
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TMONID'#9'2'#9'ID'#9'F'
          'TMONDES'#9'30'#9'Descripci'#243'n'#9'F')
        DataField = 'TMONID'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsTMoneda
        LookupField = 'TMONID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcMonedaExit
        OnNotInList = dblcNotInList
      end
      object dblcCtaCte: TwwDBLookupCombo
        Left = 104
        Top = 5
        Width = 125
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CCBCOID'#9'40'#9'Cta. Cte.'#9'F')
        DataField = 'CCBCO'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsCtaCtes
        LookupField = 'CCBCOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = dblcCtaCteExit
      end
      object dblcUProceso: TwwDBLookupCombo
        Left = 375
        Top = 38
        Width = 51
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'UPROID'#9'4'#9'ID'#9'F'
          'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
        DataField = 'UPROID'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcUProcesoExit
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 606
        Top = 38
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Unidad de Pago'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'UPAGOID'#9'3'#9'ID'#9'F'
          'UPAGONOM'#9'65'#9'UNIDAD DE PAGO'#9'F')
        DataField = 'UPAGOID'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
        OnExit = dblcdUPagoExit
      end
      object edtMoneda: TwwDBEdit
        Left = 97
        Top = 38
        Width = 96
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtUProceso: TwwDBEdit
        Left = 430
        Top = 38
        Width = 135
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtUPago: TwwDBEdit
        Left = 661
        Top = 38
        Width = 135
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlHeader: TPanel
      Left = 3
      Top = 3
      Width = 850
      Height = 59
      Align = alTop
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblForPag: TLabel
        Left = 90
        Top = 3
        Width = 79
        Height = 15
        Caption = 'Forma de Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblban: TLabel
        Left = 298
        Top = 3
        Width = 37
        Height = 15
        Caption = 'Banco :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 526
        Top = 3
        Width = 48
        Height = 15
        Caption = 'Agencia :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcFormaPago: TwwDBLookupCombo
        Left = 88
        Top = 21
        Width = 52
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FORPAGOID'#9'4'#9'ID'#9'F'
          'FORPAGODES'#9'30'#9'Forma de Pago'#9'F')
        DataField = 'FORPAGOID'
        DataSource = DM1.dsCobxUse
        LookupField = 'FORPAGOABR'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 3
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = dblcFormaPagoExit
        OnNotInList = dblcNotInList
      end
      object dblcBanco: TwwDBLookupCombo
        Left = 298
        Top = 22
        Width = 46
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BANCOID'#9'2'#9'ID'#9'F'
          'BANCONOM'#9'40'#9'Banco'#9'F')
        DataField = 'BANCOID'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsBancos
        LookupField = 'BANCOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = dblcBancoExit
        OnNotInList = dblcNotInList
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 86
        Height = 59
        Align = alLeft
        BevelInner = bvLowered
        Color = 10207162
        TabOrder = 6
        object lblTitulo: TLabel
          Left = 6
          Top = 3
          Width = 69
          Height = 54
          Caption = 'Ingreso en Lote'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
      object dblcdAgenBco: TwwDBLookupComboDlg
        Left = 526
        Top = 22
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Agencia'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'AGENBCOID'#9'8'#9'Id'#9'F'
          'AGENBCODES'#9'30'#9'Descripci'#243'n'#9'F')
        DataField = 'AGENBCOID'
        DataSource = DM1.dsCobxUse
        LookupTable = DM1.cdsAgenciaBco
        LookupField = 'AGENBCOID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdAgenBcoExit
      end
      object edtFormaPago: TwwDBEdit
        Left = 144
        Top = 21
        Width = 147
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtBanco: TwwDBEdit
        Left = 347
        Top = 22
        Width = 172
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtAgencia: TwwDBEdit
        Left = 610
        Top = 22
        Width = 177
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlBusca: TPanel
      Left = 289
      Top = 216
      Width = 212
      Height = 73
      BevelInner = bvLowered
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      object lbBusca: TLabel
        Left = 16
        Top = 10
        Width = 38
        Height = 13
        Caption = 'lbBusca'
      end
      object edtBusca: TwwIncrementalSearch
        Left = 16
        Top = 32
        Width = 192
        Height = 19
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        DataSource = DM1.dsAutdisk
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        TabOrder = 0
        OnKeyPress = isBuscaKeyPress
      end
      object bbtnClosePnl: TButton
        Left = 195
        Top = 3
        Width = 15
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bbtnClosePnlClick
      end
    end
    object pnlAportes: TPanel
      Left = 75
      Top = 28
      Width = 706
      Height = 122
      BevelInner = bvLowered
      BorderStyle = bsSingle
      Color = 10207162
      TabOrder = 4
      Visible = False
      object lblCodMod: TLabel
        Left = 4
        Top = 28
        Width = 89
        Height = 15
        Caption = 'C'#243'digo Modular  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 448
        Top = 32
        Width = 68
        Height = 15
        Caption = 'C'#243'digo Pago :'
      end
      object Label54: TLabel
        Left = 6
        Top = 57
        Width = 111
        Height = 15
        Caption = 'Apellido y Nombres   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblMonApo: TLabel
        Left = 4
        Top = 89
        Width = 72
        Height = 15
        Caption = 'Mto Aportes  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblMonCuo: TLabel
        Left = 149
        Top = 89
        Width = 66
        Height = 15
        Caption = 'Mto Cuotas  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 289
        Top = 89
        Width = 58
        Height = 15
        Caption = 'Mto Total  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label1: TLabel
        Left = 443
        Top = 57
        Width = 29
        Height = 15
        Caption = 'USE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 2
        Width = 698
        Height = 18
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'Aportes'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object dblcdCodigoModular: TwwDBLookupComboDlg
        Left = 99
        Top = 26
        Width = 126
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taCenter
        Caption = 'Asociados No Registrados en la Lista'
        MaxWidth = 0
        MaxHeight = 209
        OnInitDialog = dblcdCodigoModularInitDialog
        Selected.Strings = (
          'ASOCODMOD'#9'10'#9'C'#243'digo Modular'#9'F'
          'ASOAPENOM'#9'90'#9'Apellidos y Nombres'#9'F'
          'ASOID'#9'15'#9'C'#243'digo'#9'F')
        DataField = 'ASOCODMOD'
        DataSource = DM1.dsAutdisk
        LookupTable = DM1.cdsAsociados
        LookupField = 'ASOCODMOD'
        Color = 10207162
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdCodigoModularExit
      end
      object dbeCodigo: TwwDBEdit
        Left = 278
        Top = 26
        Width = 151
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        DataField = 'ASOID'
        DataSource = DM1.dsAutdisk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCodigoPago: TwwDBEdit
        Left = 533
        Top = 26
        Width = 108
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeApeNom: TwwDBEdit
        Left = 123
        Top = 55
        Width = 308
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 10207162
        DataField = 'ASOAPENOM'
        DataSource = DM1.dsAutdisk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeAporte: TwwDBEdit
        Left = 80
        Top = 86
        Width = 67
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        DataField = 'TRANSAPO'
        DataSource = DM1.dsAutdisk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeAporteExit
      end
      object dbeCuota: TwwDBEdit
        Left = 220
        Top = 86
        Width = 67
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        DataField = 'TRANSCUO'
        DataSource = DM1.dsAutdisk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeCuotaExit
      end
      object dbeTotal: TwwDBEdit
        Left = 350
        Top = 86
        Width = 67
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        DataField = 'TRANSMTO'
        DataSource = DM1.dsAutdisk
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeTotalExit
      end
      object bbtnAceptar: TfcShapeBtn
        Left = 608
        Top = 79
        Width = 34
        Height = 31
        Hint = 'Aceptar'
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
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 10
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAceptarClick
      end
      object bbtnCancel: TfcShapeBtn
        Left = 648
        Top = 79
        Width = 34
        Height = 31
        Hint = 'Cerrar'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 11
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnCancelClick
      end
      object rgConsiderar: TRadioGroup
        Left = 423
        Top = 77
        Width = 160
        Height = 32
        Caption = 'Considerar Monto de Aporte'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 12
      end
      object dblcdUseA: TwwDBLookupComboDlg
        Left = 478
        Top = 55
        Width = 52
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Uses'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'USEID'#9'3'#9'Id'#9'F'
          'USENOM'#9'65'#9'USE'#9'F')
        DataField = 'USEID'
        DataSource = DM1.dsAutdisk
        LookupTable = DM1.cdsQry1
        LookupField = 'USEID'
        Color = 10207162
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcdUseAExit
      end
      object dbeUseA: TwwDBEdit
        Left = 534
        Top = 55
        Width = 153
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object fcShapeBtn4: TfcShapeBtn
        Left = 225
        Top = 23
        Width = 37
        Height = 32
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F7FBFBFBF000000BFBFBF7F7F7F000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF7F7F7F7F7F7F0000007F7F7F7F
          7F7FBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF00FFFF7F7F7F00FFFFBFBFBF000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF00FFFF7F7F7F00FFFFBFBFBF000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF00FFFF7F7F7F00FFFFBFBFBF0000000000000000
          00000000000000000000000000000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF000000000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF00FFFF7F7F7F00FFFFBFBFBF0000007F7F7F7F7F
          007F7F7F7F7F007F7F7F7F7F00000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF0000007F7F007F7F7F7F7F007F7F7F7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF00FFFF7F7F7F00FFFFBFBFBF000000FFFF00BFBF
          BFFFFF00BFBFBFFFFF00BFBFBF000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF000000BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF00FFFF7F7F7F00FFFFBFBFBF000000BFBFBFFFFF
          00BFBFBFFFFF00BFBFBFFFFF00000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF000000FFFF00BFBFBFFFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          000000000000000000BFBFBF00FFFFBFBFBF00FFFFBFBFBF0000000000000000
          00FFFF00BFBFBFFFFF00BFBFBF000000BFBFBF00FFFF00FFFF7F7F7F00FFFF00
          FFFFBFBFBF000000BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFF000000
          7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFBFBF
          BF000000FFFF00BFBFBF000000000000BFBFBF00FFFF00FFFFBFBFBF00FFFF00
          FFFFBFBFBF000000000000BFBFBFFFFF00BFBFBF7F7F00000000000000000000
          00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
          000000000000000000007F7F7FBFBFBF7F7F7F00FFFF00FFFFBFBFBF00FFFF00
          FFFF7F7F7FBFBFBF000000000000BFBFBFFFFF007F7F7F00000000000000FFFF
          7F7F7F7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7F7FBFBF
          BF00FFFF0000000000007F7F7F00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00
          FFFF7F7F7F00FFFF7F7F7F000000FFFF00BFBFBF7F7F00000000000000BFBFBF
          00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7F7F00FF
          FFBFBFBF0000000000007F7F7F00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00
          FFFF7F7F7F00FFFF7F7F7F000000BFBFBFFFFF007F7F7F000000000000BFBFBF
          00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7F7F00FF
          FFBFBFBF0000000000007F7F7F00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00
          FFFF7F7F7F00FFFF7F7F7F000000FFFF00BFBFBF7F7F000000000000007F7F7F
          00FFFF7F7F7FBFBFBF00FFFF00FFFF00FFFF00FFFF00FFFFBFBFBF7F7F7F00FF
          FF7F7F7F0000000000007F7F7F00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00
          FFFF7F7F7F00FFFF7F7F7F000000BFBFBFFFFF007F7F7F000000FFFFFF000000
          00FFFF00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF7F7F7F00FFFF00FF
          FF000000FFFF000000007F7F7F00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00
          FFFF7F7F7F00FFFF7F7F7F000000FFFF00BFBFBF7F7F00000000FFFFFF000000
          7F7F7F00FFFF7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF7F7F7F00FFFFBFBF
          BF000000BFBFBF0000007F7F7F00FFFFBFBFBF00FFFF00FFFF00FFFF00FFFF00
          FFFFBFBFBF00FFFF7F7F7F000000BFBFBFFFFF007F7F7F000000FFFFFF000000
          7F7F7F00FFFFBFBFBF00FFFF00FFFF00FFFF00FFFF00FFFFBFBFBF00FFFF7F7F
          7F000000FFFF000000007F7F7F00FFFFBFBFBF00FFFF00FFFF00FFFF00FFFF00
          FFFFBFBFBF00FFFF7F7F7F000000FFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
          00FFFF00BFBFBFFFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF000000FFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFF0000007F7F7FBFBFBFBFBFBF00FFFFBFBFBFBFBFBF7F7F7F000000FFFF
          00BFBFBFFFFF00BFBFBFFFFF000000007F7F7FBFBFBFBFBFBF00FFFFBFBFBFBF
          BFBF7F7F7F000000FFFF00BFBFBFFFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFF0000000000007F7F7FBFBFBF7F7F7F000000000000FFFF00BFBF
          BFFFFF00BFBFBFFFFF00BFBFBFFFFF000000000000007F7F7FBFBFBF7F7F7F00
          0000000000FFFF00BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000000000BFBFBF00FFFFBFBFBF000000FFFF00BFBFBFFFFF
          00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00000000BFBFBF00FFFFBFBFBF00
          0000FFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F7F00FFFF00FFFF00FFFF7F7F7F000000FFFF00BFBF
          BFFFFF00BFBFBFFFFF00BFBFBFFFFF000000007F7F7F00FFFF00FFFF00FFFF7F
          7F7F000000FFFF00BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F7F00FFFF00FFFF00FFFF7F7F7F000000BFBFBFFFFF
          00BFBFBFFFFF00BFBFBFFFFF00BFBFBF0000007F7F7F00FFFF00FFFF00FFFF7F
          7F7F000000BFBFBFFFFF00BFBFBFFFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000000000BFBFBF00FFFFBFBFBF000000BFBFBFFFFF00BFBF
          BFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBF000000BFBFBF00FFFFBFBFBF00
          0000BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF000000000000000000BFBFBFFFFF00BFBFBFFFFF
          00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBF000000000000000000BF
          BFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBF
          BFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFF
          FF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF
          00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BF
          BFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBF7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBF
          BFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFF
          FF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF007F7F7F000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000007F7F7F7F7F007F
          7F7F7F7F007F7F7F7F7F007F7F7F7F7F007F7F7F7F7F00000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFFF
          FF00BFBFBFFFFF00BFBFBFFFFF00BFBFBFFFFF00000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000000000000000000000000000000000000000FFFFFFFFFFFF}
        ParentClipping = True
        RoundRectBias = 25
        ShadeColors.Btn3DLight = 10207162
        ShadeColors.BtnHighlight = 10207162
        ShadeColors.BtnShadow = 10207162
        ShadeColors.BtnBlack = 10207162
        ShadeColors.BtnFocus = 10207162
        ShadeColors.Shadow = 10207162
        ShadeStyle = fbsHighlight
        TabOrder = 13
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        Visible = False
        OnClick = fcShapeBtn4Click
      end
    end
    object pnlCoinsidencias: TPanel
      Left = 105
      Top = 296
      Width = 593
      Height = 146
      Color = 10207162
      TabOrder = 6
      Visible = False
      object dbgCoinsidencias: TwwDBGrid
        Left = 8
        Top = 20
        Width = 577
        Height = 120
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnDblClick = dbgCoinsidenciasDblClick
      end
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 591
        Height = 18
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'Coincidencias'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object fcShapeBtn1: TfcShapeBtn
        Left = 573
        Top = 3
        Width = 17
        Height = 16
        Hint = 'Aceptar'
        Caption = 'X'
        Color = 10207162
        DitherColor = clWhite
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn1Click
      end
    end
    object pnlAsoNI: TPanel
      Left = 120
      Top = 189
      Width = 561
      Height = 306
      BevelInner = bvLowered
      BorderStyle = bsSingle
      TabOrder = 7
      Visible = False
      object Label18: TLabel
        Left = 298
        Top = 228
        Width = 241
        Height = 17
        Caption = 'Existen Asociados Nuevos no identificados '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 291
        Top = 245
        Width = 258
        Height = 17
        Caption = 'confirme su creaci'#243'n en el maestro de asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object pnlAccIngLote: TPanel
        Left = 9
        Top = 229
        Width = 277
        Height = 47
        BorderStyle = bsSingle
        TabOrder = 0
        object Label2: TLabel
          Left = 10
          Top = 0
          Width = 46
          Height = 15
          Caption = 'Usuario :'
        end
        object Label17: TLabel
          Left = 139
          Top = 0
          Width = 63
          Height = 15
          Caption = 'Contrase'#241'a :'
        end
        object edtAccIngLote: TEdit
          Left = 138
          Top = 15
          Width = 98
          Height = 23
          PasswordChar = '*'
          TabOrder = 1
          OnExit = edtAccIngLoteExit
        end
        object edtUsuario: TEdit
          Left = 8
          Top = 14
          Width = 113
          Height = 23
          TabOrder = 0
        end
        object btnConfirma: TfcShapeBtn
          Left = 240
          Top = 12
          Width = 31
          Height = 27
          Hint = 'Aceptar '
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
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 2
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = btnConfirmaClick
        end
      end
      object StaticText4: TStaticText
        Left = 2
        Top = 2
        Width = 553
        Height = 22
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = ' Asociados  NO INDENTIFICADO ( N I )'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object dbgAsoNI: TwwDBGrid
        Left = 9
        Top = 39
        Width = 520
        Height = 171
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object fcShapeBtn5: TfcShapeBtn
        Left = 459
        Top = 268
        Width = 34
        Height = 31
        Hint = 'Reporte'
        Color = 10207162
        DitherColor = clWhite
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
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 3
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn5Click
      end
      object fcShapeBtn6: TfcShapeBtn
        Left = 499
        Top = 268
        Width = 34
        Height = 31
        Hint = 'Cerrar'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 4
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn6Click
      end
      object ProgressBar1: TProgressBar
        Left = 560
        Top = 8
        Width = 150
        Height = 16
        TabOrder = 5
      end
    end
    object pnlNAsoc: TPanel
      Left = 104
      Top = 198
      Width = 601
      Height = 324
      BevelInner = bvLowered
      BevelWidth = 2
      BorderStyle = bsSingle
      Color = 13165023
      TabOrder = 8
      Visible = False
      object Label3: TLabel
        Left = 16
        Top = 39
        Width = 67
        Height = 15
        Caption = 'Cod. Modular'
      end
      object Label5: TLabel
        Left = 16
        Top = 99
        Width = 49
        Height = 15
        Caption = 'Cod. Pago'
      end
      object Label6: TLabel
        Left = 16
        Top = 126
        Width = 104
        Height = 15
        Caption = 'Apellidos y Nombres'
      end
      object Label7: TLabel
        Left = 16
        Top = 158
        Width = 54
        Height = 15
        Caption = 'U. Proceso'
      end
      object Label8: TLabel
        Left = 16
        Top = 190
        Width = 38
        Height = 15
        Caption = 'U. Pago'
      end
      object Label9: TLabel
        Left = 16
        Top = 222
        Width = 32
        Height = 15
        Caption = 'U.S.E.'
      end
      object Label4: TLabel
        Left = 16
        Top = 67
        Width = 49
        Height = 15
        Caption = 'Cod. Aux.'
      end
      object Label12: TLabel
        Left = 281
        Top = 31
        Width = 79
        Height = 15
        Caption = 'Primer Apellido'
      end
      object Label13: TLabel
        Left = 280
        Top = 63
        Width = 89
        Height = 15
        Caption = 'Segundo Apellido'
      end
      object Label14: TLabel
        Left = 280
        Top = 95
        Width = 45
        Height = 15
        Caption = 'Nombres'
      end
      object Label15: TLabel
        Left = 67
        Top = 261
        Width = 72
        Height = 15
        Caption = 'Mto Aportes  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label16: TLabel
        Left = 216
        Top = 261
        Width = 66
        Height = 15
        Caption = 'Mto Cuotas  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object TLabel
        Left = 359
        Top = 261
        Width = 58
        Height = 15
        Caption = 'Mto Total  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object dbeCodMod: TwwDBEdit
        Left = 157
        Top = 33
        Width = 100
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbeCodModChange
        OnExit = dbeCodModExit
      end
      object dbeCodAux: TwwDBEdit
        Left = 157
        Top = 65
        Width = 100
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCodPago: TwwDBEdit
        Left = 157
        Top = 94
        Width = 100
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeUProc: TwwDBEdit
        Left = 157
        Top = 156
        Width = 348
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeUPago: TwwDBEdit
        Left = 157
        Top = 188
        Width = 348
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object fcShapeBtn3: TfcShapeBtn
        Left = 553
        Top = 280
        Width = 34
        Height = 31
        Hint = 'Cerrar'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 15
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn3Click
      end
      object bbtnAcepNAso: TfcShapeBtn
        Left = 513
        Top = 281
        Width = 34
        Height = 31
        Hint = 'Aceptar'
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
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 14
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAcepNAsoClick
      end
      object dblcdUseAso: TwwDBLookupComboDlg
        Left = 157
        Top = 219
        Width = 52
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Uses'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'USEID'#9'3'#9'Id'#9'F'
          'USENOM'#9'65'#9'USE'#9'F')
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 9
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcdUseAsoExit
      end
      object dbeApeyNom: TwwDBEdit
        Left = 157
        Top = 124
        Width = 348
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeUSE: TwwDBEdit
        Left = 221
        Top = 220
        Width = 283
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbePriApellido: TwwDBEdit
        Left = 384
        Top = 29
        Width = 201
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 30
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbePriApellidoExit
      end
      object dbeSegApellido: TwwDBEdit
        Left = 384
        Top = 59
        Width = 201
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 30
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeSegApellidoExit
      end
      object dbeNombres: TwwDBEdit
        Left = 336
        Top = 91
        Width = 249
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 30
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbeNombresChange
      end
      object StaticText3: TStaticText
        Left = 4
        Top = 4
        Width = 589
        Height = 22
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'Creaci'#243'n de Asociado NO INDENTIFICADO ( N I )'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
      end
      object dbeAporte2: TwwDBEdit
        Left = 143
        Top = 258
        Width = 67
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeAporte2Exit
      end
      object dbeCuota2: TwwDBEdit
        Left = 283
        Top = 258
        Width = 67
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeCuota2Exit
      end
      object dbeTotal2: TwwDBEdit
        Left = 419
        Top = 258
        Width = 67
        Height = 21
        BorderStyle = bsNone
        Color = 10207162
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 13
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeAsoid: TwwDBEdit
        Left = 493
        Top = 257
        Width = 100
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 17
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlAdvertencias: TPanel
      Left = 784
      Top = 420
      Width = 241
      Height = 242
      ParentBackground = False
      TabOrder = 9
      TabStop = True
      Visible = False
      object Shape15: TShape
        Left = 1
        Top = 1
        Width = 239
        Height = 24
        Align = alTop
        Brush.Color = clRed
      end
      object Label48: TLabel
        Left = 30
        Top = 4
        Width = 175
        Height = 20
        Caption = '* * ADVERTENCIA * *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape16: TShape
        Left = 1
        Top = 155
        Width = 239
        Height = 84
        Brush.Color = clRed
      end
      object Label49: TLabel
        Left = 16
        Top = 163
        Width = 217
        Height = 16
        Caption = 'DESCARGARA INFORMACION '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 48
        Top = 182
        Width = 154
        Height = 16
        Caption = 'CON ADVERTENCIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object wwDBGrid2: TwwDBGrid
        Left = 22
        Top = 32
        Width = 199
        Height = 114
        DisableThemesInTitle = False
        Selected.Strings = (
          'ADVERTENCIA'#9'25'#9'ADVERTENCIA')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DSADVERTENCIA
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object BitBtn5: TBitBtn
        Left = 86
        Top = 210
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object DTGDATA: TDBGrid
        Left = 8
        Top = 185
        Width = 41
        Height = 49
        DataSource = DM1.dsQry4
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        Visible = False
      end
    end
  end
  object pnlImprime: TPanel
    Left = 784
    Top = 216
    Width = 431
    Height = 201
    BevelInner = bvLowered
    BevelWidth = 2
    Color = clTeal
    TabOrder = 3
    Visible = False
    object RadioGroup1: TRadioGroup
      Left = 48
      Top = 16
      Width = 281
      Height = 113
      Caption = 'RadioGroup1'
      TabOrder = 0
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 520
    Width = 856
    Height = 50
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvNone
    Color = 13165023
    DragCursor = 1
    TabOrder = 1
    object Label21: TLabel
      Left = 532
      Top = 30
      Width = 68
      Height = 15
      Caption = 'Advertencias'
    end
    object pnlActAporte: TPanel
      Left = 417
      Top = 4
      Width = 52
      Height = 42
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 7
      object Z2bbtnInserta: TfcShapeBtn
        Left = 11
        Top = 8
        Width = 34
        Height = 29
        Hint = 'Actualiza Cuotas de Aportes'
        Color = 13165023
        DitherColor = clWhite
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000013000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          000087700000777777777700EEEE008000007777777770EE0000EE000000770F
          77777700EEEE008000007700F77770EE0000EE000000770B0F777700EEEE0070
          00007770B0F770EEEEEEEE70000077707B0F7700EEEE00700000777707B0F777
          000077700000777707BB0F777777777000000000007BB0F7777777700000707B
          BBB7770F7777777000007707BBB0000077777770000077707BBB0F7777777770
          0000777707BBB0F777777770000077777077770F777777700000777777000000
          777777700000777777777777777777700000}
        Margin = 0
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        Spacing = 1
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnInsertaClick
      end
    end
    object Z2bbtnOrdenCodMod: TfcShapeBtn
      Left = 151
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Ordenar por C'#243'digo Modular'
      Caption = '123'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnOrdenCodModClick
    end
    object Z2bbtnOrdenAlfab: TfcShapeBtn
      Left = 192
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Ordenar por Apellidos y Nombres'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777CCCCCC7777707777CC777C77778087777CC777777700077777CC77777800
        0877777CC77770000077C777CC7777707777CCCCCC7777707777777777777770
        7777444744477770777784777487777077777444447777707777784748777770
        7777774447777770777777848777777077777774777777707777}
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      Spacing = 1
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnOrdenAlfabClick
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 638
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Aceptar '
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 9
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 677
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Cancelar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 10
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
    object Z2bbtnSalir: TfcShapeBtn
      Left = 714
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Salir'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 24
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 11
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnSalirClick
    end
    object GroupBox1: TGroupBox
      Left = 36
      Top = 0
      Width = 105
      Height = 48
      Caption = 'Filtrar por Letra  '
      TabOrder = 1
      object dbeLetra: TwwDBEdit
        Left = 20
        Top = 21
        Width = 28
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 1
        Picture.PictureMask = '&'
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object Z2bbtnFiltro: TfcShapeBtn
        Left = 64
        Top = 14
        Width = 34
        Height = 31
        Hint = 'Filtrar por Letra'
        Caption = ' abc'
        Color = 10207162
        DitherColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [boFocusable]
        ParentClipping = True
        ParentFont = False
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnFiltroClick
      end
    end
    object Z2bbtnElimina: TfcShapeBtn
      Left = 243
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Eliminar Aportes Marcados'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000013000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777700000777F7777777777777770000077FFF77F7777777777700000FFFF
        FFFFF777777777700000FFFFFFF81117777777700000FFFFFF89DD5177777770
        0000FFFFFF9D9DD5177777700000FFFFF7D9F9DD507777700000F7FFF79DFD9D
        060777700000777F7779DFD0246077700000777777779D0A2246077000007777
        777770ABA2208070000077777777770ABA0488000000777777777770A07B4880
        000077777777777707FBB480000077777777777770FFBB400000777777777777
        770FFBB000007777777777777770FFB00000}
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      Spacing = 1
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnEliminaClick
    end
    object cbMarca: TCheckBox
      Left = 17
      Top = 9
      Width = 17
      Height = 17
      TabOrder = 0
      Visible = False
      OnClick = cbMarcaClick
    end
    object bbtnInconsistencia: TfcShapeBtn
      Left = 331
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Filtrar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB0000DBDBDB
        DBDBDBDBDBDBDBDBDBDBDB00E08000DBDBDBDBDBDBDBDBDBDBDBDBDB00E0E000
        92DBDBDBDBDBDBDBDBDBDBDBDB00E0E0000092DBDBDBDBDBDBDBDBDBDBDB00E0
        E080000092DBDBDBDBDBDBDBDBDBDB00E0E0E0000092DBDBDBDBDBDBDBDBDB00
        00E0E0E00000DBDBDBDBDBDBDBDB0000E0E0E00000DBDBDBDBDBDBDBDBDBDB00
        00E0E0E00000DBDBDBDBDBDBDBDBDBDBDB0000E0E00000DBDBDBDBDBDBDBDBDB
        DBDBDB00E0E00000DBDBDBDBDBDBDBDBDBDBDBDB0000E000DBDBDBDBDBDBDBDB
        DBDBDBDBDBDB0000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      Spacing = 1
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnInconsistenciaClick
    end
    object bbtnBuscaInc: TfcShapeBtn
      Left = 374
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Inconsistencias'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        8A050000424D8A05000000000000360400002800000011000000110000000100
        0800000000005401000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDB00DBDBDBDBDBDBDBDB000000DBDBDBDBDBDBDB00DB00DBDBDBDBDBDBDB00
        0000DBDBDBDBDBDB00DB00DB000000DB0000DB000000DBDBDBDBDB00DB00DB00
        FFDBFF000303DB000000DBDBDBDB00DB00DB00FFDBFFDBFF03FFDB000000DBDB
        DBDB0000DB00FFDBFFDBFFDB0303DB000000DBDBDB00000000FFDBFFDBFFDB00
        0303DB000000DBDB000092DBDB000000000000DB0000DB000000DB000092DBDB
        DBDBDBDBDBDBDBDBDBDBDB000000000092DBDBDBDBDBDBDBDBDBDBDBDBDBDB00
        00000092DBDBDBDBDBDBDBDBDBDBDBDBDBDBDB00000092DBDBFC92DBDBDBDBFC
        92DBDBDBDBDBDB000000DBDBDBDBDBDBDBDBDBDBDBDBDBFC92DBDB000000DBFC
        92FC92FC92DBFC92DBFC92DBDBDBDB000000DBDBDBDBDBDBFC92DBDBDBDBDBDB
        DBDBDB000000DBDBFC92FC92DBDBDBDBDBDBDBDBDBDBDB000000DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDB000000}
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      Spacing = 1
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnBuscaIncClick
    end
    object bbtnImprime: TfcShapeBtn
      Left = 595
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Reporte'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimeClick
    end
    object pnlActCredito: TPanel
      Left = 475
      Top = 4
      Width = 52
      Height = 42
      Hint = 'DESCARGO A PARTIR DE LAS 19:00 horas'
      BevelOuter = bvNone
      Color = 10207162
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      object Z2bbtnInsertaCre: TfcShapeBtn
        Left = 10
        Top = 6
        Width = 34
        Height = 31
        Hint = 'Actualiza Cuotas de Creditos'
        Caption = '  '
        Color = 13165023
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
          000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
          BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
          BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
          BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
          BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
          F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
          F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
          7055557FFFFFF777F7F555000000000000555577777777777755}
        NumGlyphs = 2
        Options = [boFocusable]
        Offsets.GlyphX = 5
        Offsets.GlyphY = 1
        Offsets.TextX = 1
        Offsets.TextY = 1
        Offsets.ImageDownX = 1
        Offsets.ImageDownY = 1
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = Z2bbtnInsertaCreClick
      end
    end
    object BitBtn1: TBitBtn
      Left = 768
      Top = 8
      Width = 33
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 13
      Visible = False
      OnClick = BitBtn1Click
    end
    object chkAdvertencias: TCheckBox
      Left = 559
      Top = 14
      Width = 14
      Height = 17
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 14
    end
    object bbtnAnulados: TfcShapeBtn
      Left = 277
      Top = 11
      Width = 34
      Height = 31
      Hint = 'Consulta de Anulados'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555999999
        999955555F77777777775555999FFFFFFFF9555F777F5FFFF55755999F9F9999
        FFF95F777F7F77775557999F9F9FFFFFFFF9777F7F7F5FFFFFF79F9F9F9F9999
        99F97F7F7F7F777777579F9F9F9FFFFFFFF97F7F7F7F5FFFFFF79F9F9F9F9999
        99F97F7F7F7F777777579F9F9F9FFFFFFFF97F7F7F7F5FFF55579F9F9F9F999F
        FFF97F7F7F7F77755FF79F9F9F9FFFFF99997F7F7F7F5FF577779F9F9F9F99FF
        9F957F7F7F7F77557F759F9F9F9FFFFF99557F7F7F7FFFFF77559F9F9F999999
        95557F7F7F77777775559F9F9999999555557F7F7777777555559F9999999555
        55557F7777777555555599999995555555557777777555555555}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 15
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAnuladosClick
    end
  end
  object pnlAsoFalt: TPanel
    Left = 45
    Top = 565
    Width = 745
    Height = 361
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 10207162
    TabOrder = 4
    Visible = False
    object dbgAsoFalt: TwwDBGrid
      Left = 9
      Top = 80
      Width = 727
      Height = 217
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgAsoFaltDblClick
      object dbgAsoFaltIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 26
        Height = 28
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = dbgAsoFaltIButtonClick
      end
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 680
      Top = 303
      Width = 34
      Height = 31
      Hint = 'Cerrar'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object pnlBusq: TPanel
      Left = 32
      Top = 16
      Width = 669
      Height = 57
      TabOrder = 2
      object lblApeMat: TLabel
        Left = 39
        Top = 6
        Width = 110
        Height = 15
        Caption = 'Apellidos y Nombres :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object edtAsociado: TEdit
        Left = 37
        Top = 27
        Width = 548
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object sbtnAceptar: TfcShapeBtn
        Left = 610
        Top = 14
        Width = 34
        Height = 31
        Hint = 'Guardar Datos del Asociado'
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
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = sbtnAceptarClick
      end
    end
  end
  object pnlBuscaInc: TPanel
    Left = 22
    Top = 178
    Width = 267
    Height = 309
    Color = 10207162
    TabOrder = 6
    Visible = False
    object Panel4: TPanel
      Left = 6
      Top = 20
      Width = 251
      Height = 280
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object SpeedButton4: TSpeedButton
        Left = 7
        Top = 463
        Width = 237
        Height = 22
        Caption = 'Asociado Nuevo * Todos                                  '
        Enabled = False
        Flat = True
        Visible = False
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 7
        Top = 487
        Width = 237
        Height = 22
        Caption = 'Asociado Nuevo * Marcados                            '
        Enabled = False
        Flat = True
        Visible = False
        OnClick = SpeedButton5Click
      end
      object spdCCodModTod: TSpeedButton
        Left = 7
        Top = 314
        Width = 237
        Height = 22
        BiDiMode = bdLeftToRight
        Caption = 'Cambio Cod Modular * Todos     '
        Flat = True
        ParentBiDiMode = False
        Visible = False
        OnClick = spdCCodModTodClick
      end
      object SpeedButton7: TSpeedButton
        Left = 7
        Top = 338
        Width = 237
        Height = 22
        Caption = 'Cambio Cod Modular * Marcados'
        Flat = True
        Visible = False
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 7
        Top = 386
        Width = 237
        Height = 22
        Caption = 'Cambio Cod Pago * Marcados    '
        Flat = True
        Visible = False
        OnClick = SpeedButton8Click
      end
      object SpeedButton9: TSpeedButton
        Left = 7
        Top = 362
        Width = 237
        Height = 22
        Caption = 'Cambio Cod Pago * Todos         '
        Flat = True
        Visible = False
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 7
        Top = 410
        Width = 237
        Height = 22
        Caption = 'Cambio USE * Todos                 '
        Flat = True
        Visible = False
        OnClick = SpeedButton10Click
      end
      object SpeedButton11: TSpeedButton
        Left = 7
        Top = 435
        Width = 237
        Height = 22
        Caption = 'Cambio USE * Marcados           '
        Flat = True
        Visible = False
        OnClick = SpeedButton11Click
      end
      object spdAporteMayT: TSpeedButton
        Left = 7
        Top = 58
        Width = 237
        Height = 22
        Caption = 'Aporte Mayor * Todos                                       '
        Flat = True
        OnClick = spdAporteMayTClick
      end
      object spdAporteMayM: TSpeedButton
        Left = 7
        Top = 83
        Width = 237
        Height = 22
        Caption = 'Aporte Mayor * Marcados                                 '
        Flat = True
        OnClick = spdAporteMayMClick
      end
      object spdAporteMenT: TSpeedButton
        Left = 7
        Top = 107
        Width = 237
        Height = 22
        Caption = 'Aporte Menor * Todos                                        '
        Flat = True
        OnClick = spdAporteMenTClick
      end
      object spdAporteMenM: TSpeedButton
        Left = 7
        Top = 131
        Width = 237
        Height = 22
        Caption = 'Aporte Menor * Marcados                                  '
        Flat = True
        OnClick = spdAporteMenMClick
      end
      object spdCModCPagUseTod: TSpeedButton
        Left = 7
        Top = 10
        Width = 237
        Height = 22
        Caption = 'Cambio U. Proceso, U. Pago, USE * Todos       '
        Flat = True
        OnClick = EventoModPagUse
      end
      object spdCModCPagUseMar: TSpeedButton
        Left = 7
        Top = 33
        Width = 237
        Height = 22
        Caption = 'Cambio U. Proceso, U. Pago, USE * Marcados '
        Flat = True
        OnClick = EventoModPagUse
      end
      object spdCodModT: TSpeedButton
        Left = 191
        Top = 59
        Width = 237
        Height = 22
        Caption = 'Cambio Cod. Modular * Todos                             '
        Flat = True
        Visible = False
      end
      object spdCodModM: TSpeedButton
        Left = 191
        Top = 84
        Width = 237
        Height = 22
        Caption = 'Cambio Cod. Modular * Marcados                       '
        Flat = True
        Visible = False
      end
      object spdCodPagT: TSpeedButton
        Left = 7
        Top = 154
        Width = 237
        Height = 22
        Caption = 'Cambio Cod. Pago * Todos                                '
        Flat = True
        OnClick = spdCodPagTClick
      end
      object spdCodPagM: TSpeedButton
        Left = 7
        Top = 178
        Width = 237
        Height = 22
        Caption = 'Cambio Cod. Pago * Marcados                           '
        Flat = True
        OnClick = spdCodPagTClick
      end
      object SpeedButton3: TSpeedButton
        Left = 7
        Top = 202
        Width = 237
        Height = 22
        Caption = 'Asociados Duplicados                                       '
        Flat = True
        OnClick = SpeedButton3Click
      end
      object spdAporteProv: TSpeedButton
        Left = 7
        Top = 226
        Width = 237
        Height = 22
        Caption = 'Aporte Provisional'
        Flat = True
        Margin = 9
        OnClick = spdAporteProvClick
      end
      object spdAporteRegistrados: TSpeedButton
        Left = 7
        Top = 251
        Width = 237
        Height = 22
        Caption = 'Aportes ya Registrados'
        Flat = True
        Margin = 9
        OnClick = spdAporteRegistradosClick
      end
    end
    object Button1: TButton
      Left = 245
      Top = 2
      Width = 16
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object pnlFiltros: TPanel
    Left = 705
    Top = 432
    Width = 156
    Height = 488
    Color = 10207162
    TabOrder = 7
    Visible = False
    object Panel2: TPanel
      Left = 6
      Top = 21
      Width = 145
      Height = 462
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object spdSinIncons: TSpeedButton
        Left = 4
        Top = 104
        Width = 138
        Height = 22
        Caption = 'Sin Inconsistencias  '
        Flat = True
        Margin = 10
        OnClick = spdSinInconsClick
      end
      object spdInconsist: TSpeedButton
        Left = 4
        Top = 80
        Width = 138
        Height = 22
        Caption = 'Inconsistencias       '
        Flat = True
        Margin = 10
        OnClick = spdInconsistClick
      end
      object spdTotalReg: TSpeedButton
        Left = 4
        Top = 6
        Width = 138
        Height = 22
        Caption = 'Todos los Registros  '
        Flat = True
        Margin = 10
        OnClick = spdTotalRegClick
      end
      object spdCamCodMod: TSpeedButton
        Left = 4
        Top = 128
        Width = 138
        Height = 22
        BiDiMode = bdLeftToRight
        Caption = 'Cambio Cod Modular '
        Flat = True
        Margin = 10
        ParentBiDiMode = False
        OnClick = spdCamCodModClick
      end
      object spdCamCodPag: TSpeedButton
        Left = 4
        Top = 152
        Width = 138
        Height = 22
        Caption = 'Cambio Cod Pago     '
        Flat = True
        Margin = 10
        OnClick = spdCamCodPagClick
      end
      object spdCamUse: TSpeedButton
        Left = 4
        Top = 176
        Width = 138
        Height = 22
        Caption = 'Cambio USE             '
        Flat = True
        Margin = 10
        OnClick = spdCamUseClick
      end
      object spdApoMay: TSpeedButton
        Left = 4
        Top = 200
        Width = 138
        Height = 22
        Caption = 'Aporte Mayor           '
        Flat = True
        Margin = 10
        OnClick = spdApoMayClick
      end
      object spdApDup: TSpeedButton
        Left = 4
        Top = 275
        Width = 138
        Height = 22
        Hint = 'Aporte Provisional'
        Caption = 'Aporte Provisional'
        Flat = True
        Margin = 10
        OnClick = spdApDupClick
      end
      object spdApoMen: TSpeedButton
        Left = 4
        Top = 224
        Width = 138
        Height = 22
        Caption = 'Aporte Menor          '
        Flat = True
        Margin = 10
        OnClick = spdApoMenClick
      end
      object spdTotalTransf: TSpeedButton
        Left = 4
        Top = 31
        Width = 138
        Height = 22
        Caption = 'Transferidos             '
        Flat = True
        Margin = 10
        OnClick = spdTotalTransfClick
      end
      object SpeedButton2: TSpeedButton
        Left = 4
        Top = 55
        Width = 138
        Height = 22
        Caption = 'Por Transferir          '
        Flat = True
        Margin = 10
        OnClick = SpeedButton2Click
      end
      object spdAsoDupl: TSpeedButton
        Left = 4
        Top = 249
        Width = 138
        Height = 22
        Caption = 'Asociados Duplicados'
        Flat = True
        Margin = 10
        OnClick = spdAsoDuplClick
      end
      object spdAsoCuotas: TSpeedButton
        Left = 4
        Top = 358
        Width = 138
        Height = 22
        Caption = 'Todos con Cuotas         '
        Flat = True
        Margin = 10
        OnClick = spdAsoCuotasClick
      end
      object spdCtastrans: TSpeedButton
        Left = 4
        Top = 382
        Width = 138
        Height = 22
        Caption = 'Cuotas por Transferir     '
        Flat = True
        Margin = 10
        OnClick = spdCtastransClick
      end
      object spdCtasxTransf: TSpeedButton
        Left = 4
        Top = 407
        Width = 138
        Height = 22
        Caption = 'Cuotas Transf. T. Cr'#233'ditos'
        Flat = True
        Margin = 10
        OnClick = spdCtasxTransfClick
      end
      object Bevel1: TBevel
        Left = 4
        Top = 350
        Width = 138
        Height = 4
      end
      object spdApRegistrados: TSpeedButton
        Left = 4
        Top = 299
        Width = 138
        Height = 22
        Caption = 'Aportes ya Registrados'
        Flat = True
        Margin = 9
      end
      object SpeedButton1: TSpeedButton
        Left = 4
        Top = 432
        Width = 138
        Height = 22
        Caption = 'Cuotas Transf. T. Inconsis'
        Flat = True
        Margin = 10
        OnClick = SpeedButton1Click
      end
      object bbtnUSESNoValidas: TSpeedButton
        Left = 4
        Top = 325
        Width = 138
        Height = 22
        Caption = 'USES No Pertenecen'
        Flat = True
        Margin = 9
        OnClick = bbtnUSESNoValidasClick
      end
    end
    object Button2: TButton
      Left = 136
      Top = 3
      Width = 15
      Height = 16
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object pnlIngObs: TPanel
    Left = -419
    Top = 457
    Width = 436
    Height = 105
    Color = 10207162
    TabOrder = 8
    Visible = False
    object Label39: TLabel
      Left = 9
      Top = 71
      Width = 201
      Height = 15
      Caption = '(Obs General, Maximo 250 Caracteres)'
    end
    object memObsAso: TMemo
      Left = 8
      Top = 27
      Width = 418
      Height = 43
      MaxLength = 250
      TabOrder = 0
    end
    object btnBorrar: TBitBtn
      Left = 323
      Top = 75
      Width = 104
      Height = 24
      Caption = 'Elimina Reg. Marc'
      TabOrder = 1
      OnClick = btnBorrarClick
    end
    object StaticText5: TStaticText
      Left = 1
      Top = 1
      Width = 434
      Height = 22
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Elimina registros marcados'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object btnSalirEliminaReg: TButton
      Left = 414
      Top = 2
      Width = 20
      Height = 20
      Caption = 'x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnSalirEliminaRegClick
    end
  end
  object ppRepInc: TppReport
    AutoStop = False
    DataPipeline = ppDBInc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\RepIngLote.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepIncPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 44
    Top = 474
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBInc'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object pplbTitulo: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Caption = ' Listado Detallado de Recaudaci'#243'n '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 265
        mmTop = 0
        mmWidth = 163248
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Periodo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 7144
        mmTop = 9525
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 166423
        mmTop = 265
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 168011
        mmTop = 6085
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '------------------------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 20902
        mmWidth = 193146
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3440
        mmTop = 15346
        mmWidth = 10964
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Cod. Mod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 20108
        mmTop = 15346
        mmWidth = 15409
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 48948
        mmTop = 15346
        mmWidth = 14309
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Use'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 128323
        mmTop = 15346
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 140759
        mmTop = 15346
        mmWidth = 10202
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 160602
        mmTop = 15346
        mmWidth = 11134
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 185209
        mmTop = 15610
        mmWidth = 7620
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 265
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 6085
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'TRANSANO'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 4191
        mmLeft = 23019
        mmTop = 9525
        mmWidth = 7938
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'TRANSMES'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 4191
        mmLeft = 33338
        mmTop = 9525
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Tip.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 39423
        mmTop = 15346
        mmWidth = 5673
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOID'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 20373
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 0
        mmWidth = 78052
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'USEID'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 128323
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'TRANSAPO'
        DataPipeline = ppDBInc
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 135996
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'TRANSCUO'
        DataPipeline = ppDBInc
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'TRANSMTO'
        DataPipeline = ppDBInc
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'ASOTIPID'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 38629
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Total Aportes :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 8996
        mmWidth = 22490
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '------------------------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 265
        mmWidth = 194205
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DBCalcType = dcCount
        DataPipelineName = 'ppDBInc'
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 7673
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        BlankWhenZero = True
        DataField = 'TRANSAPO'
        DataPipeline = ppDBInc
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 129382
        mmTop = 8996
        mmWidth = 24871
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'TRANSCUO'
        DataPipeline = ppDBInc
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 155311
        mmTop = 8996
        mmWidth = 19844
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'TRANSMTO'
        DataPipeline = ppDBInc
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 176477
        mmTop = 8996
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBInc'
        mmHeight = 4233
        mmLeft = 44450
        mmTop = 8996
        mmWidth = 17198
        BandType = 7
      end
      object pplFirma: TppLabel
        UserName = 'lFirma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 151342
        mmTop = 29104
        mmWidth = 35454
        BandType = 7
      end
      object ppLVB: TppLabel
        UserName = 'lFirma1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3979
        mmLeft = 151342
        mmTop = 32544
        mmWidth = 35433
        BandType = 7
      end
      object ppLFAUTORIZA: TppLabel
        UserName = 'LFAUTORIZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 141023
        mmTop = 36777
        mmWidth = 52917
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBInc: TppDBPipeline
    UserName = 'DBInc'
    Left = 78
    Top = 474
  end
  object ppDesInc: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepInc
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 54
    Top = 498
  end
  object CDSADVERTENCIA: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ADVERTENCIA'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 484
    Data = {
      3A0000009619E0BD0100000018000000010000000000030000003A000B414456
      455254454E43494101004900000001000557494454480200020019000000}
  end
  object DSADVERTENCIA: TDataSource
    DataSet = CDSADVERTENCIA
    Left = 447
    Top = 485
  end
  object RepAdvertencias: TppReport
    AutoStop = False
    DataPipeline = ppDBInc
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209815
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Documents and Settings\rmedina\Escritorio\COBRANZA_ULTIMO\Ult' +
      'imo CLiente\SRC_00035_COB\ADVERTENCIAS.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 568
    Top = 494
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBInc'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 11642
        mmLeft = 6879
        mmTop = 18785
        mmWidth = 205846
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Cod.Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 8996
        mmTop = 23813
        mmWidth = 19473
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 31485
        mmTop = 23813
        mmWidth = 31496
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'C.Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 166159
        mmTop = 25929
        mmWidth = 10964
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'U.Pro.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 116681
        mmTop = 23813
        mmWidth = 9356
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'U.Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 127000
        mmTop = 23813
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Ugel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 139171
        mmTop = 23813
        mmWidth = 6900
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 149754
        mmTop = 23813
        mmWidth = 9186
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Cambios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 177271
        mmTop = 19579
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'U.Pro.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 25929
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'U.Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 191030
        mmTop = 26194
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label202'
        Caption = 'Ugel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 202936
        mmTop = 26194
        mmWidth = 6879
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 29633
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 91281
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 116152
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 126207
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 137584
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 147373
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 164042
        mmTop = 18785
        mmWidth = 794
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Cod. Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 94721
        mmTop = 23813
        mmWidth = 15748
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 164042
        mmTop = 23813
        mmWidth = 48419
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 178065
        mmTop = 24077
        mmWidth = 794
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 189971
        mmTop = 23813
        mmWidth = 794
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 201613
        mmTop = 23813
        mmWidth = 794
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'LISTADO DE ADVERTENCIA EN EL DESCARGO DE PLANILLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 43392
        mmTop = 6350
        mmWidth = 128323
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 246449
        mmTop = 4498
        mmWidth = 11134
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 258498
        mmTop = 4498
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 248180
        mmTop = 8731
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 258498
        mmTop = 8731
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 245005
        mmTop = 13494
        mmWidth = 12435
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 258498
        mmTop = 13494
        mmWidth = 1778
        BandType = 0
      end
      object pplPeriodo: TppLabel
        UserName = 'lPeriodo'
        Caption = '200805'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 111390
        mmTop = 12171
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 93927
        mmTop = 11906
        mmWidth = 15875
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Cod.Mod.'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3598
        mmLeft = 8996
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Apelledios y Nombre'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 529
        mmWidth = 62177
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Cod.Pago'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 92075
        mmTop = 529
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'Ugel'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'U.pro'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3969
        mmLeft = 117211
        mmTop = 529
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'U.Pago'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3969
        mmLeft = 129382
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'Cargo'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3969
        mmLeft = 149490
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Camb.Cod.Pag'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 529
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'Camb.Upago'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 193411
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'Camb.Upro'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 182563
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Camb.Use'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBInc'
        mmHeight = 3704
        mmLeft = 203465
        mmTop = 529
        mmWidth = 7673
        BandType = 4
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'Cod.Mod.'
        DataPipeline = ppDBInc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBInc'
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
end
