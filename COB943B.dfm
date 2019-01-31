object fAprDev: TfAprDev
  Left = 790
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Aprobaci'#243'n o Desaprobaci'#243'n de la Devoluci'#243'n'
  ClientHeight = 582
  ClientWidth = 685
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpDevPreAprobadas: TGroupBox
    Left = 26
    Top = 160
    Width = 645
    Height = 214
    Caption = 'Solicitud de Devoluciones '
    TabOrder = 12
    object Shape2: TShape
      Left = 145
      Top = 195
      Width = 25
      Height = 13
      Brush.Color = 43690
      Shape = stCircle
    end
    object Shape3: TShape
      Left = 5
      Top = 195
      Width = 25
      Height = 13
      Brush.Color = clBlue
      Shape = stCircle
    end
    object Label2: TLabel
      Left = 166
      Top = 195
      Width = 64
      Height = 13
      Caption = 'Desaprobado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 26
      Top = 195
      Width = 102
      Height = 13
      Caption = 'Procesado /Devuelto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 303
      Top = 195
      Width = 25
      Height = 13
      Brush.Color = clBlack
      Shape = stCircle
    end
    object Label4: TLabel
      Left = 324
      Top = 195
      Width = 56
      Height = 13
      Caption = 'Por Aprobar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape5: TShape
      Left = 234
      Top = 195
      Width = 25
      Height = 13
      Brush.Color = clGreen
      Shape = stCircle
    end
    object Label5: TLabel
      Left = 255
      Top = 195
      Width = 46
      Height = 13
      Caption = 'Aprobado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape6: TShape
      Left = 385
      Top = 195
      Width = 25
      Height = 13
      Brush.Color = clRed
      Shape = stCircle
    end
    object Label6: TLabel
      Left = 408
      Top = 195
      Width = 39
      Height = 13
      Caption = 'Anulado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbgDevPreAprobadas: TwwDBGrid
      Left = 9
      Top = 17
      Width = 625
      Height = 146
      DisableThemesInTitle = False
      ControlInfoInDataset = False
      ControlType.Strings = (
        'FLAEXTPRE;CheckBox;1;')
      Selected.Strings = (
        'ESTADO'#9'25'#9'Estado'
        'ASOAPENOM'#9'35'#9'Nombres'
        'ASOCODMOD'#9'10'#9'Cod.Mod.'
        'CREDITO'#9'7'#9'N'#170' Credito'
        'TIPCREID'#9'3'#9'T.Cred.'
        'IMPDEV'#9'8'#9'Imp.Devo'
        'IMPAPL'#9'8'#9'Imp.Apli'
        'FLAEXTPRE'#9'3'#9'Ext.'
        'FORPAGID'#9'2'#9'F.Pag.'
        'AGEBAN'#9'10'#9'Agencia'
        'USUCRE'#9'20'#9'USUCRE'
        'FECCRE'#9'34'#9'FECCRE'
        'HORCRE'#9'34'#9'HORCRE'
        'FLAAPR'#9'6'#9'FLAAPR'
        'USUAPR'#9'20'#9'USUAPR'
        'FECAPR'#9'34'#9'FECAPR'
        'HORAPR'#9'34'#9'HORAPR'
        'FLADEVEFE'#9'1'#9'FLADEVEFE'
        'FECDEV'#9'34'#9'FECDEV'
        'HORDEV'#9'34'#9'HORDEV'
        'USUDEV'#9'20'#9'USUDEV')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dbgDevPreAprobadasRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnCalcCellColors = dbgDevPreAprobadasCalcCellColors
      OnDrawDataCell = dbgDevPreAprobadasDrawDataCell
      OnDblClick = dbgDevPreAprobadasDblClick
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 546
      Top = 181
      Width = 90
      Height = 24
      Caption = 'Anulaci'#243'n'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888889800008898888888888888898800008899
        88777777777798880000889990000000000998880000888990BFFFBFFF998888
        0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
        990788880000888880999FB99F0788880000888880FC9999CF07888800008888
        80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
        0000888880999F099998888800008888999FBF0F089988880000889999000000
        8889988800008899988888888888898800008888888888888888889800008888
        88888888888888880000}
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 461
      Top = 181
      Width = 80
      Height = 24
      Caption = 'Modificar'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object fcShapeBtn3: TfcShapeBtn
      Left = 11
      Top = 170
      Width = 91
      Height = 21
      Hint = 'Archivo Excel'
      Caption = 'Excel'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000DFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDF00000000000000000000000000000000000000
        00003F3F007F7F007F7F007F7F00505050BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF
        0000000000000000000000000000003F3F00FFFF3FFFFF7FFFFF005F5F208080
        80808080BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF0000000000000000003F3F00FF
        FF3FFFFFBFFFFF005F5F20808080808080808080909090BFBFBFDFDFDFDFDFDF
        DFDFDFAFAFAF0000003F3F00FFFF3FFFFFBFFFFF003F3F008080808080808080
        80808080808080808080DFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFF
        FF003F3F00000000AFAFAFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F00000000000000000000AFAFAFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F0000
        0000000000000000000000000000AFAFAFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00
        FFFF00FFFF7FFFFF003F3F009F9F9F9F9F9F0000000000000000000000000000
        00AFAFAFDFDFDFDFDFDF0000000000000000000000000000009F9F9FDFDFDFDF
        DFDF9F9F9F000000000000000000000000000000DFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFAFAFDFDFDF
        CFAFAFCFAFAFDFDFDFBF7F7FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFBF7F7FDFDF
        DFCFAFAFCFAFAFDFDFDFAF6F6FDFDFDFAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF
        6F6FAF6F6FCFAFAFBF9F9FAF6F6FAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF6F6F
        9F3F3FBF9F9FDFDFDFA06060BF9F9FBF9F9FA06060BF9F9FBF9F9FBF9F9FA060
        60903030903030BF9F9FBF9F9FDFDFDFBF9F9FBF9F9FDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF9F9FBF9F9FDFDFDF}
      NumGlyphs = 0
      Offsets.ImageDownX = 1
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnHighlight = clBtnFace
      ShadeColors.Shadow = clBtnFace
      ShadeStyle = fbsNormal
      ShowHint = True
      TabOrder = 3
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn3Click
    end
  end
  object Panel1: TPanel
    Left = 29
    Top = 1
    Width = 641
    Height = 38
    BevelInner = bvRaised
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 7
      Width = 611
      Height = 20
      Caption = 
        'En esta pantalla el SECTORISTA Aprobar'#225' o Desaprobar'#225' la DEVOLUC' +
        'I'#211'N'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object grbAprobacion: TGroupBox
    Left = 27
    Top = 382
    Width = 644
    Height = 131
    Caption = 'Aprobaci'#243'n o Desaprobaci'#243'n de SECTORISTA :'
    Enabled = False
    TabOrder = 1
    object grbMotivoDev: TGroupBox
      Left = 8
      Top = 62
      Width = 269
      Height = 62
      Caption = 'Observaci'#243'n'
      Enabled = False
      TabOrder = 0
      object MotivoDevolucion: TwwDBRichEdit
        Left = 4
        Top = 16
        Width = 260
        Height = 41
        AutoURLDetect = False
        Color = 8454143
        PrintJobName = 'Delphi 7'
        TabOrder = 0
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muInches
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'MS Sans Serif'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'MS Sans Serif'
        PrintFooter.Font.Style = []
        RichEditVersion = 2
        Data = {
          730000007B5C727466315C616E73695C616E7369637067313235325C64656666
          305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C20
          4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
          5C706172645C66305C667331365C7061720D0A7D0D0A00}
      end
    end
    object btAprueba: TBitBtn
      Left = 536
      Top = 26
      Width = 92
      Height = 24
      Caption = 'Aprueba'
      TabOrder = 1
      OnClick = btApruebaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object btDesaprueba: TBitBtn
      Left = 538
      Top = 57
      Width = 91
      Height = 26
      Caption = 'Desaprueba'
      TabOrder = 2
      OnClick = btDesapruebaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btOtro: TBitBtn
      Left = 539
      Top = 89
      Width = 92
      Height = 22
      Caption = 'Otro'
      TabOrder = 3
      OnClick = btOtroClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        333333777777777F33333330B00000003333337F7777777F3333333000000000
        333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
        333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
        03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
        03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
        3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
        333333333377F7F33333333333330F03333333333337F7F33333333333330B03
        3333333333373733333333333333303333333333333373333333}
      NumGlyphs = 2
    end
    object grbMotivoDesap: TGroupBox
      Left = 284
      Top = 18
      Width = 234
      Height = 99
      Caption = 'Motivo de Desaprobaci'#243'n (max 512 carateres)'
      TabOrder = 4
      object memMotivoDesapro: TwwDBRichEdit
        Left = 7
        Top = 14
        Width = 217
        Height = 79
        AutoURLDetect = False
        MaxLength = 512
        PrintJobName = 'Delphi 7'
        TabOrder = 0
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muInches
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'MS Sans Serif'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'MS Sans Serif'
        PrintFooter.Font.Style = []
        RichEditVersion = 2
        Data = {
          730000007B5C727466315C616E73695C616E7369637067313235325C64656666
          305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C20
          4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
          5C706172645C66305C667331365C7061720D0A7D0D0A00}
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 19
      Width = 269
      Height = 41
      Enabled = False
      TabOrder = 5
      object Label15: TLabel
        Left = 2
        Top = 0
        Width = 104
        Height = 13
        Caption = 'Motivo de Devoluci'#243'n'
      end
      object edtMotivoDev: TEdit
        Left = 56
        Top = 14
        Width = 210
        Height = 24
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dblMotivoDev: TwwDBLookupCombo
        Left = 3
        Top = 14
        Width = 50
        Height = 21
        DropDownAlignment = taLeftJustify
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblMotivoDevChange
        OnExit = dblMotivoDevExit
      end
    end
  end
  object grbPorFecha: TGroupBox
    Left = 202
    Top = 41
    Width = 468
    Height = 70
    Caption = 'Por Fecha'
    TabOrder = 3
    object Label14: TLabel
      Left = 127
      Top = 18
      Width = 9
      Height = 13
      Caption = 'Al'
    end
    object lblCargo: TLabel
      Left = 256
      Top = 16
      Width = 106
      Height = 16
      Caption = 'SECTORISTAX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtpFechaIni: TwwDBDateTimePicker
      Left = 12
      Top = 14
      Width = 107
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
    object dtpFechaFin: TwwDBDateTimePicker
      Left = 143
      Top = 14
      Width = 107
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      OnExit = dtpFechaFinExit
    end
    object rdbProcDev: TRadioButton
      Left = 54
      Top = 53
      Width = 125
      Height = 11
      Caption = 'Procesado /Devuelto'
      TabOrder = 2
      OnClick = rdbProcDevClick
    end
    object rdbDesaprobado: TRadioButton
      Left = 175
      Top = 53
      Width = 86
      Height = 11
      Caption = 'Desaprobado'
      TabOrder = 3
      OnClick = rdbDesaprobadoClick
    end
    object rdbAprobado: TRadioButton
      Left = 258
      Top = 53
      Width = 71
      Height = 11
      Caption = 'Aprobado'
      TabOrder = 4
      OnClick = rdbAprobadoClick
    end
    object rdbAnulado: TRadioButton
      Left = 403
      Top = 53
      Width = 60
      Height = 11
      Caption = 'Anulado'
      TabOrder = 5
      OnClick = rdbAnuladoClick
    end
    object rdbPorAprobar: TRadioButton
      Left = 325
      Top = 53
      Width = 76
      Height = 11
      Caption = 'Por Aprobar'
      TabOrder = 6
      OnClick = rdbPorAprobarClick
    end
    object rdbTodos: TRadioButton
      Left = 3
      Top = 51
      Width = 52
      Height = 16
      Caption = 'Todos'
      TabOrder = 7
      OnClick = rdbTodosClick
    end
  end
  object rdgFiltro: TRadioGroup
    Left = 31
    Top = 41
    Width = 168
    Height = 39
    Caption = 'Fltrar : '
    Columns = 2
    Items.Strings = (
      'Cliente'
      'Fecha')
    TabOrder = 4
    OnClick = rdgFiltroClick
  end
  object grbAsociados: TGroupBox
    Left = 25
    Top = 112
    Width = 643
    Height = 45
    Caption = 'Por Asociado'
    TabOrder = 5
    object EdtCodMod: TEdit
      Left = 12
      Top = 14
      Width = 94
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = EdtCodModExit
    end
    object BitBuscar: TBitBtn
      Left = 112
      Top = 15
      Width = 23
      Height = 22
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBuscarClick
    end
    object Panel3: TPanel
      Left = 146
      Top = 13
      Width = 484
      Height = 27
      Enabled = False
      TabOrder = 2
      object edtNomGen: TEdit
        Left = 3
        Top = 1
        Width = 480
        Height = 24
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object btnFlitrar: TBitBtn
    Left = 621
    Top = 50
    Width = 46
    Height = 40
    TabOrder = 10
    OnClick = btnFlitrarClick
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFF007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFF007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFF007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFBFBFBF7F7F007F7F00000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFF00FFFF00BFBFBF7F7F007F7F00000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFF00FFFFFFBFBFBFFFFF00BFBFBF7F7F007F7F00000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFF00FFFFFFFFFF00FFFF00BFBFBF7F7F00BFBFBF7F7F007F7F00000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF
      00FFFFFFFFFF00FFFFFFBFBFBFFFFF00BFBFBF7F7F00BFBFBF7F7F007F7F0000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF00FFFF
      FFFFFF00FFFFFFFFFF00FFFF00BFBFBF7F7F00BFBFBF7F7F00BFBFBF7F7F007F
      7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF00FFFFFFFFFF
      00FFFFFFFFFF00FFFFFFBFBFBFFFFF00BFBFBF7F7F00BFBFBF7F7F00BFBFBF7F
      7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF00FFFFFF0000000000
      000000000000000000000000000000000000000000000000000000000000007F
      7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000007F7F7F7F7F
      7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F00000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000007F7F007F7F00000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000BFBFBF0000007F
      7F007F7F007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000007F7F007F7F007F7F007F7F000000007F7F7F7F7F7F7F7F
      7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7FBFBFBF00
      00007F7F007F7F007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000007F7F007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF0000007F7F7FBFBFBF7F7F7F00
      00007F7F007F7F007F7F007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFF
      FFFFFF0000007F7F007F7F007F7F007F7F000000007F7F7F7F7F7F7F7F7F7F7F
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF7F7F7FBFBFBF7F
      7F7F0000007F7F007F7F007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFF
      FFFFFF0000007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000BFBFBFBFBFBF7F7F7FBF
      BFBF0000007F7F007F7F007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000007F7F007F7F000000007F7F7F7F7F7F7F7F7F7F7F7FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBF7F
      7F7FBFBFBF0000007F7F007F7F007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000FFFFFFBFBFBFFFFFFF7F7F7FBF
      BFBF7F7F7F0000007F7F00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFFFFFFFBFBFBFBFBFBF7F
      7F7FBFBFBF7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7FFFFFFF000000000000FFFFFFBFBFBFFFFFFFBFBFBFBF
      BFBF7F7F7FBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000007F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBF
      BFBFBFBFBF7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000000000000000000000FFFFFFFFFFFFBFBFBFFFFFFFBFBFBFFF
      FFFFBFBFBFBFBFBF7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFF000000000000000000000000000000000000BFBF
      BFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFF00
      0000000000000000BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000007F7F7F7F7F7FBFBFBF7F7F7FBFBFBF7F7F7FBFBF
      BFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FF
      FFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000007F7F7F7F7F7F7F7F7FBFBFBF7F7F7FBFBFBF7F7F7FBFBFBFBFBF
      BFBFBFBF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBF7F7F7FBFBFBFBFBFBFBFBF
      BFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000007F7F7FBFBFBF7F7F7FBFBFBF7F7F7FBFBFBFFFFF
      FFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBF7F7F7FBFBFBFBFBFBFBFBF
      BFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000BFBFBFFFFF
      FFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFF00000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn7: TBitBtn
    Left = 569
    Top = 519
    Width = 90
    Height = 23
    Caption = '&Salir'
    TabOrder = 11
    OnClick = BitBtn7Click
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
  object pnlSeleccion: TPanel
    Left = 696
    Top = 49
    Width = 673
    Height = 243
    Color = 9090478
    TabOrder = 2
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 671
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label7: TLabel
      Left = 7
      Top = 4
      Width = 131
      Height = 13
      Caption = 'Selecci'#242'n de Asociado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object GbAsociados: TGroupBox
      Left = 8
      Top = 28
      Width = 656
      Height = 209
      Caption = 'Buscar'
      Color = 10207162
      ParentColor = False
      TabOrder = 0
      object BitMostrar: TBitBtn
        Left = 450
        Top = 40
        Width = 92
        Height = 27
        Caption = 'Resultados'
        TabOrder = 1
        OnClick = BitMostrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
          33333333373F33333333333330B03333333333337F7F33333333333330F03333
          333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
          333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
          333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
          3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
          33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
          33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
          03333337777777F7F33333330000000003333337777777773333}
        NumGlyphs = 2
      end
      object gbBuscar: TGroupBox
        Left = 11
        Top = 30
        Width = 137
        Height = 40
        TabOrder = 0
        object edtBuscar: TEdit
          Left = 10
          Top = 9
          Width = 114
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object dtgAsociado: TwwDBGrid
        Left = 11
        Top = 75
        Width = 630
        Height = 123
        DisableThemesInTitle = False
        Selected.Strings = (
          'ASOCODMOD'#9'15'#9'Cod.Modular'
          'ASOCODAUX'#9'6'#9'Orden'
          'ASOAPENOM'#9'50'#9'Apellidos y Nombres'#9'F'
          'USEID'#9'3'#9'Use'
          'UPROID'#9'3'#9'Lug.Proceso'
          'ASODNI'#9'10'#9'D.N.I.')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = dtgAsociadoDblClick
      end
      object BitSalir: TBitBtn
        Left = 550
        Top = 40
        Width = 91
        Height = 27
        Caption = '&Salir'
        TabOrder = 3
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
      object rbtApeNom: TRadioButton
        Left = 242
        Top = 8
        Width = 135
        Height = 17
        Caption = 'Apellidos y Nombres(D.N.I.)'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = rbtApeNomClick
      end
      object rbtDni: TRadioButton
        Left = 394
        Top = 8
        Width = 57
        Height = 17
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rbtDniClick
      end
      object rbtCuenta: TRadioButton
        Left = 463
        Top = 8
        Width = 89
        Height = 17
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rbtCuentaClick
      end
      object rbtCodMod: TRadioButton
        Left = 559
        Top = 9
        Width = 89
        Height = 17
        Caption = 'Codigo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rbtCodModClick
      end
    end
    object Button1: TButton
      Left = 652
      Top = 3
      Width = 19
      Height = 16
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
  object pnlModificaciones: TPanel
    Left = 696
    Top = 352
    Width = 217
    Height = 120
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 7
    Visible = False
    object Shape8: TShape
      Left = 1
      Top = 1
      Width = 211
      Height = 24
      Align = alTop
      Brush.Color = clRed
    end
    object Label11: TLabel
      Left = 26
      Top = 3
      Width = 155
      Height = 20
      Caption = 'MODIFICACIONES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn3: TBitBtn
      Left = 7
      Top = 32
      Width = 201
      Height = 23
      Caption = 'IMPORTES POR DEVOLVER/APLICAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 60
      Width = 199
      Height = 23
      Caption = 'TIPO DESEMBOLSO'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn6: TBitBtn
      Left = 7
      Top = 89
      Width = 199
      Height = 22
      Caption = 'EXTORNA PRESTAMO'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object Button2: TButton
      Left = 192
      Top = 3
      Width = 19
      Height = 20
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object pnlAdvertencias: TPanel
    Left = 917
    Top = 220
    Width = 241
    Height = 242
    ParentBackground = False
    TabOrder = 6
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
      Left = 46
      Top = 4
      Width = 134
      Height = 20
      Caption = '* * APRUEBA * *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape16: TShape
      Left = 0
      Top = 186
      Width = 240
      Height = 56
      Brush.Color = clRed
    end
    object lblextorno: TLabel
      Left = 4
      Top = 187
      Width = 237
      Height = 23
      Caption = 'EXTORNO DEL PRESTAMO '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object wwDBGrid2: TwwDBGrid
      Left = 8
      Top = 33
      Width = 225
      Height = 140
      DisableThemesInTitle = False
      Selected.Strings = (
        'APRUEBA'#9'20'#9'APRUEBA'
        'VALOR'#9'15'#9'VALOR'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSAPRUEBA
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object BitBtn5: TBitBtn
      Left = 15
      Top = 211
      Width = 75
      Height = 25
      Caption = 'Acepta'
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn1: TBitBtn
      Left = 153
      Top = 212
      Width = 75
      Height = 25
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object pnlTipodesembolso: TPanel
    Left = 712
    Top = 579
    Width = 561
    Height = 158
    Color = 10207162
    TabOrder = 8
    Visible = False
    object Shape9: TShape
      Left = 1
      Top = 1
      Width = 559
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label21: TLabel
      Left = 10
      Top = 28
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
      Top = 67
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
      Left = 326
      Top = 28
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
    object Label12: TLabel
      Left = 8
      Top = 4
      Width = 97
      Height = 13
      Caption = 'Tipo de Desembolso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBLkuCTipDes: TwwDBLookupCombo
      Left = 12
      Top = 41
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
      OnExit = DBLkuCTipDesExit
    end
    object EdtTipDes: TEdit
      Left = 65
      Top = 41
      Width = 246
      Height = 24
      Color = 12975869
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBLkCDAgencias: TwwDBLookupComboDlg
      Left = 13
      Top = 80
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
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = DBLkCDAgenciasChange
    end
    object EdtCodAgen: TEdit
      Left = 209
      Top = 80
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
      TabOrder = 3
    end
    object EdtDepGir: TEdit
      Left = 339
      Top = 80
      Width = 207
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
      TabOrder = 4
    end
    object BtnCerrar: TButton
      Left = 541
      Top = 3
      Width = 19
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnCerrarClick
    end
    object BtnSalir: TBitBtn
      Left = 450
      Top = 118
      Width = 97
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 6
      OnClick = BtnSalirClick
    end
    object EdtCtaAhorros: TEdit
      Left = 322
      Top = 41
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
      TabOrder = 7
    end
    object EdtSitCta: TEdit
      Left = 429
      Top = 41
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
      TabOrder = 8
    end
    object pnlOficinas: TPanel
      Left = 24
      Top = 112
      Width = 309
      Height = 35
      Locked = True
      TabOrder = 9
      Visible = False
      object Label13: TLabel
        Left = 7
        Top = 8
        Width = 86
        Height = 13
        Caption = 'Desembolsar En : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 147
        Top = 2
        Width = 158
        Height = 30
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 0
        object EdtOfiDes: TEdit
          Left = 3
          Top = 3
          Width = 151
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object DBLkOfiDes: TwwDBLookupCombo
        Left = 101
        Top = 5
        Width = 44
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'OFDESID'#9'2'#9'Codigo'#9'F'
          'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsOfDes
        LookupField = 'OFDESID'
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DBLkOfiDesChange
      end
    end
  end
  object pnlModifica: TPanel
    Left = 759
    Top = 479
    Width = 293
    Height = 145
    Color = 10207162
    TabOrder = 9
    Visible = False
    object Shape7: TShape
      Left = 1
      Top = 1
      Width = 291
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label24: TLabel
      Left = 6
      Top = 3
      Width = 165
      Height = 13
      Caption = 'Importe por Devolver/Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 14
      Top = 26
      Width = 83
      Height = 13
      Caption = 'Total Revertir:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImpRev: TLabel
      Left = 106
      Top = 27
      Width = 65
      Height = 13
      Caption = '999,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSuma: TLabel
      Left = 14
      Top = 102
      Width = 65
      Height = 13
      Caption = '999,999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 40
      Width = 268
      Height = 58
      TabOrder = 0
      object Label8: TLabel
        Left = 14
        Top = 12
        Width = 52
        Height = 13
        Caption = 'Devolver'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 141
        Top = 12
        Width = 40
        Height = 13
        Caption = 'Aplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtDevolver: TEdit
        Left = 12
        Top = 27
        Width = 105
        Height = 21
        TabOrder = 0
        OnChange = edtDevolverChange
        OnExit = edtDevolverExit
        OnKeyPress = edtDevolverKeyPress
      end
      object edtAplicar: TEdit
        Left = 138
        Top = 27
        Width = 113
        Height = 21
        TabOrder = 1
        OnChange = edtAplicarChange
        OnExit = edtAplicarExit
        OnKeyPress = edtAplicarKeyPress
      end
    end
    object btnAceptarModifica: TBitBtn
      Left = 103
      Top = 105
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 1
      OnClick = btnAceptarModificaClick
    end
    object BitBtn2: TBitBtn
      Left = 198
      Top = 104
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Salir'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object grborigino: TGroupBox
    Left = 27
    Top = 515
    Width = 334
    Height = 55
    Caption = 'Que origin'#243' la devoluci'#243'n'
    Enabled = False
    TabOrder = 13
    object dblOrigenDev: TwwDBLookupCombo
      Left = 11
      Top = 20
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODREF'#9'3'#9'Codigo'#9'F'
        'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblOrigenDevChange
      OnExit = dblOrigenDevExit
    end
    object Panel2: TPanel
      Left = 68
      Top = 18
      Width = 261
      Height = 30
      TabOrder = 1
      object edtOrigeanDev: TEdit
        Left = 2
        Top = 3
        Width = 255
        Height = 24
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlDevxOFi: TPanel
    Left = 385
    Top = 517
    Width = 107
    Height = 63
    TabOrder = 14
    object Shape10: TShape
      Left = 1
      Top = 28
      Width = 103
      Height = 33
    end
    object Shape11: TShape
      Left = 1
      Top = 1
      Width = 103
      Height = 28
      Brush.Color = clSilver
    end
    object Label16: TLabel
      Left = 3
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Actual'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 53
      Top = 3
      Width = 50
      Height = 13
      Caption = 'Dev. por'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 62
      Top = 15
      Width = 34
      Height = 13
      Caption = 'Oficio'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Shape12: TShape
      Left = 48
      Top = 1
      Width = 1
      Height = 60
    end
    object lblactual: TLabel
      Left = 9
      Top = 33
      Width = 31
      Height = 20
      Caption = '999'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbldevxofi: TLabel
      Left = 65
      Top = 33
      Width = 31
      Height = 20
      Caption = '999'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object CDSAPRUEBA: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'APRUEBA'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'VALOR'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 704
    Top = 524
    Data = {
      500000009619E0BD010000001800000002000000000003000000500007415052
      5545424101004900000001000557494454480200020019000556414C4F520100
      4900000001000557494454480200020014000000}
  end
  object DSAPRUEBA: TDataSource
    DataSet = CDSAPRUEBA
    Left = 703
    Top = 493
  end
end
