object FCtaRecBcoCon: TFCtaRecBcoCon
  Left = 62
  Top = 54
  Width = 665
  Height = 493
  BorderIcons = [biSystemMenu]
  Caption = 'Cabecera de TeleTransfer'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 0
    Width = 129
    Height = 23
    Caption = 'Banco Continental'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 288
    Top = 0
    Width = 33
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
    Visible = False
  end
  object Memo1: TMemo
    Left = 240
    Top = 0
    Width = 41
    Height = 17
    Lines.Strings = (
      'Me'
      'mo'
      '1')
    TabOrder = 1
    Visible = False
  end
  object BtnCerrar: TBitBtn
    Left = 10
    Top = 148
    Width = 72
    Height = 33
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = BtnCerrarClick
  end
  object btnDesOra: TBitBtn
    Left = 9
    Top = 68
    Width = 73
    Height = 33
    Caption = 'Descargo'
    TabOrder = 2
    OnClick = btnDesOraClick
  end
  object gbDriver: TGroupBox
    Left = 99
    Top = 25
    Width = 441
    Height = 145
    Caption = ' Informaci'#243'n del Banco Continental '
    TabOrder = 3
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 40
      Width = 145
      Height = 89
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 168
      Top = 16
      Width = 153
      Height = 105
      ItemHeight = 13
      Mask = '*.TXT'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 344
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Procesar'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 344
      Top = 64
      Width = 81
      Height = 33
      Caption = 'Salir'
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object gbProceso: TGroupBox
      Left = 152
      Top = 40
      Width = 185
      Height = 57
      Caption = ' Procesando '
      TabOrder = 5
      Visible = False
      object Edit2: TEdit
        Left = 8
        Top = 21
        Width = 169
        Height = 21
        TabOrder = 0
        Text = 'Edit2'
      end
    end
  end
  object btnInconsistencias: TBitBtn
    Left = 10
    Top = 112
    Width = 72
    Height = 29
    Caption = 'Validar'
    TabOrder = 6
    OnClick = btnVerCobClick
  end
  object TabTeletransfer: TPageControl
    Left = 9
    Top = 190
    Width = 632
    Height = 265
    ActivePage = TabSheet4
    MultiLine = True
    TabOrder = 4
    OnChange = TabTeletransferChange
    object TabSheet1: TTabSheet
      Caption = 'Cabecera'
      object dbgCabecera: TwwDBGrid
        Left = 3
        Top = 8
        Width = 602
        Height = 190
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnCellChanged = dbgCabeceraCellChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsCuentas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object fcShapeBtn1: TfcShapeBtn
        Left = 3
        Top = 203
        Width = 34
        Height = 34
        Hint = 'Impresi'#243'n Boletas de Depositos'
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
        TabOrder = 1
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn1Click
      end
      object fcShapeBtn2: TfcShapeBtn
        Left = 96
        Top = 203
        Width = 34
        Height = 34
        Hint = 'Eliminar descargo'
        Color = clBtnFace
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 2
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn2Click
      end
      object fcShapeBtn3: TfcShapeBtn
        Left = 51
        Top = 203
        Width = 34
        Height = 34
        Hint = 'Impresi'#243'n de Resumen Diario'
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
        TabOrder = 3
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalle'
      ImageIndex = 1
      object dbgDetalle: TwwDBGrid
        Left = 3
        Top = 8
        Width = 603
        Height = 193
        DisableThemesInTitle = False
        Selected.Strings = (
          'ASOCODMOD'#9'10'#9'C'#243'digo~Modular'#9#9
          'ASOAPENOM'#9'30'#9'Apellidos~y Nombre(s)'#9#9
          'NUMMOV'#9'12'#9'Documento de~Pago'#9#9
          'IMPDEP'#9'15'#9'Monto total~Cobrado'#9#9
          'FECPAG'#9'10'#9'Fecha~de Pago'#9#9
          'AGENBCODES'#9'15'#9'Agencia del~Banco'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsDFam
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object fcsbDetDia: TfcShapeBtn
        Left = 3
        Top = 203
        Width = 34
        Height = 34
        Hint = 'Impresi'#243'n del detalle de pagos diarios'
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
        TabOrder = 1
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcsbDetDiaClick
      end
      object fcsbAportes: TfcShapeBtn
        Left = 51
        Top = 203
        Width = 34
        Height = 34
        Hint = 'Marcar aportes '
        Color = clBtnFace
        DitherColor = clWhite
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
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 2
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcsbAportesClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'No Registrados'
      ImageIndex = 3
      object fcLabel1: TfcLabel
        Left = 114
        Top = 208
        Width = 1
        Height = 0
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
      end
      object fcShapeBtn4: TfcShapeBtn
        Left = 54
        Top = 199
        Width = 34
        Height = 34
        Hint = 'Descargo automatico en el Sistema'
        Color = clBtnFace
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn4Click
      end
      object dbgNoReg: TDBGrid
        Left = 8
        Top = 8
        Width = 593
        Height = 184
        DataSource = DM1.dsDLabo
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ASOID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Identificaci'#243'n'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ASOAPENOM'
            Title.Caption = 'Apellidos y Nombre(s)'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECPAG'
            Title.Caption = 'F. Pago'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPDEP'
            Title.Caption = 'Total'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMMOV'
            Title.Caption = 'N. Operaci'#243'n'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENBCODES'
            Title.Caption = 'Agencia'
            Width = 100
            Visible = True
          end>
      end
      object fcsbImpNoReg: TfcShapeBtn
        Left = 8
        Top = 199
        Width = 34
        Height = 34
        Hint = 'Impresi'#243'n de pagos no registrados del dia'
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
        TabOrder = 2
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcsbImpNoRegClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pagos con inconsistencias'
      ImageIndex = 4
      object dbgIncon: TDBGrid
        Left = 8
        Top = 8
        Width = 593
        Height = 184
        DataSource = DM1.dsTRela
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ASOID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Identificaci'#243'n'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ASOAPENOM'
            Title.Caption = 'Apellidos y Nombre(s)'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECPAG'
            Title.Caption = 'F. Pago'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MONTOT'
            Title.Caption = 'Total'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMMOV'
            Title.Caption = 'N. Operaci'#243'n'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENBCODES'
            Title.Caption = 'Agencia'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object gbTrans: TGroupBox
    Left = 112
    Top = 322
    Width = 417
    Height = 81
    Caption = ' Transfiriendo informaci'#243'n '
    TabOrder = 7
    object lblMensaje: TLabel
      Left = 16
      Top = 24
      Width = 341
      Height = 15
      Caption = 'GENERANDO INFORMACION PARA SER EXPORTADA A TEXTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object pbtransfiere: TProgressBar
      Left = 17
      Top = 49
      Width = 389
      Height = 16
      TabOrder = 0
    end
  end
  object gbBuscaInco: TGroupBox
    Left = 88
    Top = 301
    Width = 417
    Height = 65
    Caption = 'Buscando Asociado'
    TabOrder = 8
    object Label2: TLabel
      Left = 16
      Top = 14
      Width = 201
      Height = 15
      Caption = 'APELLIDOS Y NOMBRE(S) A BUSCAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object EdtBuscarInc: TEdit
      Left = 28
      Top = 31
      Width = 373
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EdtBuscarIncChange
      OnKeyPress = EdtBuscarIncKeyPress
    end
  end
  object gbBuscaDet: TGroupBox
    Left = 80
    Top = 279
    Width = 417
    Height = 65
    Caption = 'Buscando Asociado'
    TabOrder = 9
    object Label3: TLabel
      Left = 16
      Top = 14
      Width = 201
      Height = 15
      Caption = 'APELLIDOS Y NOMBRE(S) A BUSCAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object edtBuscarDet: TEdit
      Left = 28
      Top = 31
      Width = 373
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtBuscarDetChange
      OnKeyPress = edtBuscarDetKeyPress
    end
  end
  object btnEnviar: TBitBtn
    Left = 9
    Top = 28
    Width = 73
    Height = 33
    Caption = 'Envio'
    TabOrder = 10
    OnClick = btnEnviarClick
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsDFam
    UserName = 'DBPipeline1'
    Left = 600
    Top = 51
  end
  object ppRepDescargo: TppReport
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 592
    Top = 43
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DEPOSITOS EFECTUADOS EN CUENTA RECAUDADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 32808
        mmTop = 0
        mmWidth = 93134
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 148432
        mmTop = 0
        mmWidth = 10816
        BandType = 0
      end
      object pplblHora: TppLabel
        UserName = 'lblHora'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 4233
        mmWidth = 8731
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6614
        mmLeft = 3175
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 13758
        mmWidth = 3175
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6614
        mmLeft = 13229
        mmTop = 12700
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 11377
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 6614
        mmLeft = 35983
        mmTop = 12700
        mmWidth = 59796
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 12700
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 15610
        mmWidth = 21167
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 6615
        mmLeft = 95515
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 12700
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'PAGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 15610
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 15610
        mmWidth = 14023
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 6615
        mmLeft = 113242
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 12700
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'OPERACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 15610
        mmWidth = 16933
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6615
        mmLeft = 130969
        mmTop = 12700
        mmWidth = 51329
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'NOMBRE DE LA AGENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 12700
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 15610
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 4233
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'FECHA DEL ARCHIVO 18/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 4233
        mmWidth = 55563
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 265
        mmWidth = 57679
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'IMPDEP'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 96045
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NUMMOV'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'AGENBCODES'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 265
        mmWidth = 47890
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'NUMERO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 529
        mmWidth = 8731
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 3175
        mmTop = 5292
        mmWidth = 179652
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3175
        mmTop = 529
        mmWidth = 179652
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'IMPDEP'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3239
        mmLeft = 96045
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object pplImpreso: TppLabel
        UserName = 'Label12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125677
        mmTop = 6615
        mmWidth = 57415
        BandType = 7
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DM1.dsTRela
    UserName = 'DBPipeline2'
    Left = 552
    Top = 47
  end
  object ppRepInconsistencias: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 39
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 265
        mmWidth = 75671
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MONTOT'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 103188
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'NUMMOV'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 121444
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'REFERENCIA'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 265
        mmWidth = 51858
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object cdsFantasmas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOAPENOM'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CREDOCPAG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FECPAG'
        DataType = ftTime
      end
      item
        Name = 'MONTO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 544
    Data = {
      A10000009619E0BD010000001800000005000000000003000000A1000541534F
      49440100490000000100055749445448020002000A000941534F4150454E4F4D
      010049000000010005574944544802000200280009435245444F435041470100
      490000000100055749445448020002000A000646454350414704000700000000
      00054D4F4E544F080004000000010007535542545950450200490006004D6F6E
      6579000000}
  end
  object dsFantasmas: TDataSource
    DataSet = cdsFantasmas
    Left = 552
    Top = 8
  end
  object bdeNoReg: TppBDEPipeline
    DataSource = DM1.dsDFam
    UserName = 'bdeNoReg'
    Left = 628
    Top = 92
  end
  object pprNoReg: TppReport
    AutoStop = False
    DataPipeline = bdeNoReg
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 620
    Top = 84
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'bdeNoReg'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand4BeforePrint
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'PAGOS EFECTUADOS EN LA CUENTA RECAUDADORA NO DETECTADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 13050
        mmTop = 0
        mmWidth = 124545
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'lblFecha1'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 148432
        mmTop = 0
        mmWidth = 10816
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'lblHora1'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 4233
        mmWidth = 8731
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 6614
        mmLeft = 3175
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4234
        mmTop = 13758
        mmWidth = 3175
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 6614
        mmLeft = 13229
        mmTop = 12700
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 12700
        mmWidth = 11377
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 6614
        mmLeft = 35983
        mmTop = 12700
        mmWidth = 59796
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 12700
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'DEL ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37041
        mmTop = 15610
        mmWidth = 21167
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 6615
        mmLeft = 95515
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 12700
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'PAGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96045
        mmTop = 15610
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 15610
        mmWidth = 14023
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 6615
        mmLeft = 113242
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 12700
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label102'
        Caption = 'OPERACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 15610
        mmWidth = 16933
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 6615
        mmLeft = 130969
        mmTop = 12700
        mmWidth = 51329
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'NOMBRE DE LA AGENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 12700
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'DEL BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132822
        mmTop = 15610
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 0
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 4233
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = ' EN EL SISTEMA DE FECHA  : 18/12/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 39878
        mmTop = 4233
        mmWidth = 68284
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CUENTA'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3260
        mmLeft = 4234
        mmTop = 264
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'ASOCODMOD'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'ASOAPENOM'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 37042
        mmTop = 265
        mmWidth = 57415
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'MONTOT'
        DataPipeline = bdeNoReg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 96045
        mmTop = 265
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'NUMMOV'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'AGENBCODES'
        DataPipeline = bdeNoReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 264
        mmWidth = 47890
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3175
        mmTop = 7144
        mmWidth = 179652
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3175
        mmTop = 529
        mmWidth = 179652
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTOT'
        DataPipeline = bdeNoReg
        DisplayFormat = '#,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'bdeNoReg'
        mmHeight = 3239
        mmLeft = 96045
        mmTop = 1588
        mmWidth = 15611
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Label29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 125677
        mmTop = 9260
        mmWidth = 57415
        BandType = 7
      end
    end
  end
  object cdsAsoid: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOAPENOMDNI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ASODNI'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 589
    Top = 65531
    Data = {
      700000009619E0BD01000000180000000300000000000300000070000541534F
      49440100490000000100055749445448020002000A000C41534F4150454E4F4D
      444E490100490000000100055749445448020002001E000641534F444E490100
      4900000001000557494454480200020008000000}
  end
  object dsAsoid: TDataSource
    DataSet = cdsAsoid
    Left = 597
    Top = 3
  end
end
