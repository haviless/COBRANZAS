object FPagoRecau: TFPagoRecau
  Left = 214
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pago de Recaudadores'
  ClientHeight = 573
  ClientWidth = 797
  Color = 12904163
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlDetalle: TPanel
    Left = 2
    Top = 218
    Width = 794
    Height = 301
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 687
      Top = 1
      Width = 76
      Height = 20
      Caption = 'Buscar'
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object TabbedNotebook1: TTabbedNotebook
      Left = 1
      Top = 1
      Width = 788
      Height = 295
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clBtnText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabOrder = 1
      object TTabPage
        Left = 4
        Top = 26
        Caption = 'Documentos Canje'
        object Label17: TLabel
          Left = -349
          Top = 97
          Width = 139
          Height = 13
          Caption = '     Documentos a Pagar'
          Color = clActiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object dbgDocPago: TwwDBGrid
          Left = 0
          Top = 143
          Width = 778
          Height = 123
          DisableThemesInTitle = False
          Selected.Strings = (
            'CPNOREG'#9'10'#9'No.Reg.'#9'F'
            'DOCID2'#9'2'#9'Doc.'#9'F'
            'CPSERIE'#9'4'#9'Serie'#9'T'
            'CPNODOC'#9'11'#9'No.~Documento'#9'T'
            'CPFVCMTO'#9'10'#9'Fecha~Vencimiento'#9'F'
            'TMONID'#9'2'#9'T.M.'#9'F'
            'DEMTOORI'#9'9'#9'Total'#9'T'
            'DETCPAG'#9'6'#9'Tipo~Cambio'#9'T'
            'DESALLOC'#9'10'#9'Saldo Mon.~Local'#9'T'
            'DESALEXT'#9'10'#9'Saldo Mon.~Extranjera'#9'T'
            'DEMTOLOC'#9'10'#9'A Pagar ~Mon. Local'#9'F'
            'DEMTOEXT'#9'10'#9'A Pagar ~Mon. Extranj.'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = 14811135
          DataSource = DM1.dsDocPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -12
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnCalcTitleAttributes = dbgDocPagoCalcTitleAttributes
          OnColExit = dbgDocPagoColExit
          OnDragOver = dbgDocPagoDragOver
          OnEndDrag = dbgDocPagoEndDrag
          OnMouseDown = dbgDocPagoMouseDown
          FooterColor = 10207162
        end
        object dbgPendientes: TwwDBGrid
          Left = 0
          Top = 0
          Width = 778
          Height = 140
          DisableThemesInTitle = False
          Selected.Strings = (
            'TDIARID'#9'2'#9'TD'#9'F'
            'CPANOMES'#9'5'#9'Periodo'#9'F'
            'CPNOREG'#9'10'#9'No.Reg'#9'F'
            'DOCID'#9'3'#9'DOC'#9'F'
            'CPSERIE'#9'4'#9'Serie'#9'F'
            'CPNODOC'#9'12'#9'No.Documento'#9'F'
            'CPFEMIS'#9'10'#9'Fecha~Emisi'#243'n'#9'F'
            'CPFVCMTO'#9'10'#9'Fecha~Vcmnto'#9'F'
            'CPTCAMPR'#9'6'#9'T.Cambio~Provi.'#9'F'
            'CPMTOORI'#9'10'#9'Total'#9'F'
            'CPSALLOC'#9'11'#9'Saldo Mon.~Local'#9'F'
            'CPSALEXT'#9'11'#9'Saldo Mon.~Extranjera'#9'F')
          MemoAttributes = [mSizeable, mWordWrap, mGridShow]
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clInfoBk
          DataSource = DM1.dsMovRec
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete]
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -12
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = True
          UseTFields = False
          OnTitleButtonClick = dbgPendientesTitleButtonClick
          OnDragOver = dbgPendientesDragOver
          OnEndDrag = dbgPendientesEndDrag
          OnMouseDown = dbgPendientesMouseDown
          FooterColor = 10207162
        end
        object dbeMPL: TwwDBEdit
          Left = 522
          Top = 200
          Width = 73
          Height = 23
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeMPE: TwwDBEdit
          Left = 604
          Top = 200
          Width = 73
          Height = 23
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeTC: TwwDBEdit
          Left = 408
          Top = 200
          Width = 49
          Height = 23
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object pnlBusca: TPanel
          Left = 291
          Top = 71
          Width = 233
          Height = 65
          BevelInner = bvLowered
          BevelWidth = 3
          BorderWidth = 2
          TabOrder = 5
          Visible = False
          object Label27: TLabel
            Left = 34
            Top = 27
            Width = 35
            Height = 15
            Caption = 'Buscar'
          end
          object isBusca: TwwIncrementalSearch
            Left = 86
            Top = 24
            Width = 121
            Height = 23
            TabOrder = 0
          end
        end
      end
    end
  end
  object pnlCabecera2: TPanel
    Left = 2
    Top = 50
    Width = 794
    Height = 167
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 10207162
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lblTMon: TLabel
      Left = 6
      Top = 44
      Width = 50
      Height = 15
      Caption = 'T.Moneda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblTCambio: TLabel
      Left = 6
      Top = 86
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
    object lblProvRuc: TLabel
      Left = 267
      Top = 1
      Width = 22
      Height = 15
      Caption = 'RUC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblProvDes: TLabel
      Left = 382
      Top = 1
      Width = 47
      Height = 15
      Caption = 'Girado a:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblNoChq: TLabel
      Left = 407
      Top = 44
      Width = 58
      Height = 15
      Caption = 'No. Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblFormPago: TLabel
      Left = 136
      Top = 44
      Width = 73
      Height = 15
      Caption = 'Forma de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblImporte: TLabel
      Left = 74
      Top = 86
      Width = 73
      Height = 15
      Caption = 'Monto a Pagar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblLote: TLabel
      Left = 185
      Top = 86
      Width = 22
      Height = 15
      Caption = 'Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblCuenta: TLabel
      Left = 305
      Top = 44
      Width = 35
      Height = 15
      Caption = 'Cuenta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 6
      Top = 1
      Width = 43
      Height = 15
      Caption = 'Auxiliar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblConcepto: TLabel
      Left = 253
      Top = 86
      Width = 47
      Height = 15
      Caption = 'Concepto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblGlosa: TLabel
      Left = 352
      Top = 86
      Width = 28
      Height = 15
      Caption = 'Glosa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 523
      Top = 44
      Width = 85
      Height = 15
      Caption = 'Fecha de Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 610
      Top = 86
      Width = 88
      Height = 15
      Caption = 'Flujo de Efectivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label22: TLabel
      Left = 635
      Top = 44
      Width = 98
      Height = 15
      Caption = 'Cta. Cte. Proveedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object z2bbtnCancel: TBitBtn
      Left = 715
      Top = 129
      Width = 30
      Height = 30
      Hint = 'Borra y Reinicia Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      OnClick = z2bbtnCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object z2bbtnOK: TBitBtn
      Left = 750
      Top = 129
      Width = 30
      Height = 30
      Hint = 'Pasa a Registrar Detalle'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = z2bbtnOKClick
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
    object edtAuxRuc: TEdit
      Left = 269
      Top = 17
      Width = 110
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtTMon: TEdit
      Left = 50
      Top = 60
      Width = 80
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbeTCambio: TwwDBEdit
      Left = 6
      Top = 102
      Width = 59
      Height = 23
      DataField = 'ECTCAMB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = dbeTCambioEnter
      OnExit = dbeTCambioExit
    end
    object dblcTMon: TwwDBLookupCombo
      Left = 6
      Top = 60
      Width = 42
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'3'#9'Moneda'#9'F'
        'TMONDES'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTMon
      LookupField = 'TMONID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTMonExit
    end
    object dbeGiradoA: TwwDBEdit
      Left = 381
      Top = 17
      Width = 386
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNoChq: TwwDBEdit
      Left = 407
      Top = 60
      Width = 107
      Height = 23
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeNoChqExit
    end
    object dblcFormPago: TwwDBLookupCombo
      Left = 134
      Top = 60
      Width = 44
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FPAGOID'#9'2'#9'Id'#9'F'
        'FPAGODES'#9'30'#9'Forma de Pago'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcFormPagoExit
    end
    object edtFormPago: TEdit
      Left = 180
      Top = 60
      Width = 121
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object dbeImporte: TwwDBEdit
      Left = 71
      Top = 102
      Width = 102
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
      OnExit = dbeImporteExit
      OnKeyPress = dbeImporteKeyPress
    end
    object dbeLote: TwwDBEdit
      Left = 177
      Top = 102
      Width = 70
      Height = 23
      DataField = 'ECLOTE'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 15
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeLoteExit
    end
    object dblcdAux: TwwDBLookupComboDlg
      Left = 156
      Top = 17
      Width = 110
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Recaudadores'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'AUXID'#9'8'#9'AUXID'#9'F'
        'AUXRUC'#9'10'#9'AUXRUC'#9'F'
        'AUXABR'#9'15'#9'AUXABR'#9'F'
        'AUXNOMB'#9'40'#9'AUXNOMB'#9'F')
      LookupTable = DM1.cdsAux
      LookupField = 'AUXID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      ShowMatchText = True
      OnDropDown = dblcdAuxDropDown
      OnEnter = dblcdAuxEnter
      OnExit = dblcdAuxExit
    end
    object dblcClase: TwwDBLookupCombo
      Left = 6
      Top = 17
      Width = 42
      Height = 23
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CLAUXID'#9'2'#9'Id'#9'F'
        'CLAUXDES'#9'30'#9'Clase Auxiliar'#9'F')
      LookupTable = DM1.cdsClaseAux
      LookupField = 'CLAUXID'
      Options = [loColLines, loRowLines, loTitles]
      AutoSelect = False
      DropDownCount = 15
      MaxLength = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      OrderByDisplay = False
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcClaseExit
    end
    object edtClase: TEdit
      Left = 50
      Top = 17
      Width = 104
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dblcdCnp: TwwDBLookupComboDlg
      Left = 250
      Top = 102
      Width = 94
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taCenter
      Caption = 'Conceptos'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CPTOID'#9'6'#9'Id'#9'F'
        'CPTODES'#9'40'#9'Concepto'#9'F'
        'CUENTAID'#9'15'#9'Cuenta'#9'F')
      DataField = 'CPTOID'
      LookupTable = DM1.cdsCnpEgr
      LookupField = 'CPTOID'
      ParentFont = False
      TabOrder = 16
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      ShowMatchText = True
      OnExit = dblcdCnpExit
    end
    object dbeGlosa: TwwDBEdit
      Left = 348
      Top = 102
      Width = 261
      Height = 23
      CharCase = ecUpperCase
      DataField = 'ECGLOSA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      TabOrder = 17
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdtpFEmis: TwwDBDateTimePicker
      Left = 524
      Top = 60
      Width = 100
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 11
    end
    object dblcdFEfec: TwwDBLookupComboDlg
      Left = 611
      Top = 102
      Width = 59
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'FLUEFEID'#9'15'#9'Id.'#9'F'
        'FLUEFEDES'#9'30'#9'Flujo de Efectivo'#9'F'
        'FLUEFEABR'#9'15'#9'Abreviatura'#9'F')
      DataField = 'FLUEID'
      LookupField = 'FLUEFEID'
      ParentFont = False
      TabOrder = 18
      Visible = False
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      ShowMatchText = True
      OnEnter = dblcdFEfecEnter
      OnExit = dblcdFEfecExit
    end
    object dbeFEfec: TwwDBEdit
      Left = 671
      Top = 102
      Width = 103
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object edtCuenta: TwwDBLookupComboDlg
      Left = 303
      Top = 60
      Width = 101
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CUENTAID'#9'15'#9'Id'#9'F'
        'CTAABR'#9'15'#9'Abr.'#9'F'
        'CTADES'#9'40'#9'Cuenta'#9'F')
      LookupTable = DM1.cdsCuentas
      LookupField = 'CUENTAID'
      Enabled = False
      ParentFont = False
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = edtCuentaExit
    end
    object edtAuxpnl: TEdit
      Left = 6
      Top = 136
      Width = 97
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
      Visible = False
    end
    object edtclasepnl: TEdit
      Left = 112
      Top = 136
      Width = 153
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
      Visible = False
    end
    object dblcdCtaCte: TwwDBLookupComboDlg
      Left = 635
      Top = 60
      Width = 134
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CCBCOID'#9'40'#9'Cta.Cte.'#9'F'
        'BANCOID'#9'2'#9'Banco'#9'F')
      DataField = 'PRVCCBCOID'
      LookupField = 'CCBCOID'
      Enabled = False
      ParentFont = False
      TabOrder = 12
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  object pnlCabecera1: TPanel
    Left = 2
    Top = 0
    Width = 794
    Height = 49
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 2
    object lblCia: TLabel
      Left = 6
      Top = 2
      Width = 49
      Height = 15
      Caption = 'Compa'#241#237'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblFComp: TLabel
      Left = 495
      Top = 2
      Width = 56
      Height = 15
      Caption = 'F.Comprob.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblTDiario: TLabel
      Left = 208
      Top = 2
      Width = 40
      Height = 15
      Caption = 'TDiario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblPeriodo: TLabel
      Left = 598
      Top = 2
      Width = 39
      Height = 15
      Caption = 'Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblNoComp: TLabel
      Left = 662
      Top = 2
      Width = 66
      Height = 15
      Caption = 'Comprobante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblBanco: TLabel
      Left = 214
      Top = 2
      Width = 65
      Height = 15
      Caption = 'Caja/Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblCCBco: TLabel
      Left = 379
      Top = 2
      Width = 43
      Height = 15
      Caption = 'Cta. Cte.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object edtCia: TEdit
      Left = 50
      Top = 18
      Width = 154
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dblcCia: TwwDBLookupCombo
      Left = 6
      Top = 18
      Width = 42
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'Id'#9'F'
        'CIADES'#9'40'#9'Compa'#241'ia'#9'F')
      LookupTable = DM1.cdsCia
      LookupField = 'CIAID'
      Options = [loColLines, loRowLines, loTitles]
      DropDownCount = 15
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcCiaExit
    end
    object dbdtpFComp: TwwDBDateTimePicker
      Left = 493
      Top = 18
      Width = 100
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 6
      OnExit = dbdtpFCompExit
    end
    object dblcTDiario: TwwDBLookupCombo
      Left = 207
      Top = 10
      Width = 42
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TDIARID'#9'2'#9'Id'#9'F'
        'TDIARDES'#9'40'#9'Tipo de Diario'#9'F')
      DataField = 'TDIARID'
      DataSource = DM1.dsAso
      LookupField = 'TDIARID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
      Visible = False
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTDiarioExit
    end
    object edtTDiario: TEdit
      Left = 256
      Top = 18
      Width = 141
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Visible = False
    end
    object edtPeriodo: TEdit
      Left = 597
      Top = 18
      Width = 56
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object dbeNoComp: TwwDBEdit
      Left = 659
      Top = 18
      Width = 82
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeNoCompKeyPress
    end
    object z2bbtnOKCab: TBitBtn
      Left = 748
      Top = 6
      Width = 36
      Height = 35
      Hint = 'Pasa a Registrar Detalle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = z2bbtnOKCabClick
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
    object dblcBanco: TwwDBLookupCombo
      Left = 207
      Top = 18
      Width = 42
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BANCOID'#9'3'#9'Id'#9'F'
        'BANCONOM'#9'40'#9'Banco'#9'F')
      LookupTable = DM1.cdsBancoEgr
      LookupField = 'BANCOID'
      Options = [loColLines, loRowLines, loTitles]
      DropDownCount = 15
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcBancoExit
    end
    object edtBanco: TEdit
      Left = 256
      Top = 18
      Width = 112
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object dblcCCBco: TwwDBLookupCombo
      Left = 372
      Top = 18
      Width = 117
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CCBCOID'#9'30'#9'Cuenta Corriente del Banco'#9'F'
        'CCBCODES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsCCBco
      LookupField = 'CCBCOID'
      Options = [loColLines, loRowLines, loTitles]
      DropDownCount = 15
      Enabled = False
      MaxLength = 30
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcCCBcoExit
    end
  end
  object pnlBotones: TPanel
    Left = 2
    Top = 520
    Width = 794
    Height = 51
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 3
    object lblEstado: TLabel
      Left = 66
      Top = 11
      Width = 82
      Height = 29
      Caption = 'Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object z2bbtnImprime: TBitBtn
      Left = 419
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Imprime Comprobante'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object z2bbtnGraba: TBitBtn
      Left = 508
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Grabar Comprobante'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = z2bbtnGrabaClick
      Glyph.Data = {
        8A010000424D8A01000000000000760000002800000017000000170000000100
        04000000000014010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333303000077777777777770003300000078888888888880000300000
        0780088888888800003000000780088888888800003000000780088888888800
        0030000007888888888888000030000000000000000000000030000000000000
        0000000000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
        FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF00
        00300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFF
        FFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
        FFFFFFFFFFFFFF07703000009999999999999907703000009999999999999900
        0030300099999999999999000330}
    end
    object z2bbtnCancelado: TBitBtn
      Left = 546
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Cuadrar y Cancelar Comprobante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
    object z2bbtnCancel2: TBitBtn
      Left = 736
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Cancela Actualizaciones'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
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
    end
    object z2bbtnNuevo: TBitBtn
      Left = 660
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Nuevo Comprobante'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      Glyph.Data = {
        96010000424D9601000000000000760000002800000017000000180000000100
        04000000000020010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        BBBBBBBBBBB08887777777777777777778B08800000000000000000078B0880F
        FFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF0
        78B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFF
        FFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880F
        FFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF0
        78B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFF
        FF00000078B0880FFFFFFFFFFF0FF88088B0880FFFFFFFFFFF0F880888B0880F
        FFFFFFFFFF08808888B0880FFFFFFFFFFF08088888B088000000000000008888
        88B08888888888888888888888B08888888888888888888888B0}
    end
    object z2bbtnSube: TBitBtn
      Left = 698
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Modifica Datos de Cabecera'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
      Glyph.Data = {
        96010000424D9601000000000000760000002800000015000000180000000100
        04000000000020010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        00000333300033330BB000000000033330003333000000000000033330003333
        300EEEEEEEE0033330003333300EEEEEEEE00333300033333000000000000033
        300033333330BFFBFFBF0333300033333300FFFFFFFF033330003333300BFBFB
        FBFB00333000333330BFBFBFBFBFB0333000333300FBFFFFFFFBF03330003333
        0FBFFBFBFB0FB033300033330BFFFFFFFF0BF033300033330F0B0FB0FB0FB033
        300033330B0F0BF0BF0B003330003333300B0FB0FB0003333000333333300BF0
        BF0333333000333333333000FB0333333000333333333330BF03333330003333
        33333330FB0333333000333333333330BF0333333000333333333330FB033333
        3000333333333330BF0333333000333333333333003333333000}
    end
    object z2bbtnCont: TBitBtn
      Left = 584
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Asientos Autom'#225'ticos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
      Glyph.Data = {
        06020000424D060200000000000076000000280000001A000000190000000100
        04000000000090010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888800000080000000000000000000000008000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000BBBBBB
        BBBBBBBBB00000000000000000000000000000000000000000000000BBBBBBBB
        BBBBBBBBBBB00000000000000000000000000000000000000000000000000000
        0000000000000000000000BBBB0BBB0B0B0B0BBB0BBB0000000000B00B0B0B0B
        0B0B0B0B0B0B0000000000B00B0B0B0B0B0B0BBB0B0B0000000000B0000B0B0B
        0B0B000B0B0B0000000000B0000BBB0BBB0B0BBB0BBB0000000000B000000000
        000B00000B000000000000B00B00000000BBB0000B000000000000BBBB000000
        000B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080000000000000000000000008000000888888888888
        88888888888888000000}
    end
    object z2bbtnAnula: TBitBtn
      Left = 622
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Anula Comprobante'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
      Glyph.Data = {
        96010000424D9601000000000000760000002800000015000000180000000100
        04000000000020010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880009988888888888888888990009990000000000000009990008999
        FFFFFFFFFFFFF999800088999FFFFFFFFFFF99988000880999FFFFFFFFF99908
        8000880F999FFFFFFF999F088000880FF999FFFFF999FF088000880FFF999FFF
        999FFF088000880FFFF999F999FFFF088000880FFFFF99999FFFFF088000880F
        FFFFF999FFFFFF088000880FFFFF99999FFFFF088000880FFFF999F999FFFF08
        8000880FFF999FFF999FFF088000880FF999FFFFF999FF088000880F999FFFFF
        FF999F088000880999FFFFFFFFF99908800088999FFFFFFFFFFF999880008999
        FFFFFFFFFFFFF9998000999FFFFFFFFFFFFFFF99900099000000000000000009
        9000888888888888888888888000888888888888888888888000}
    end
    object Z2bbtnEmiChq: TBitBtn
      Left = 381
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Emisi'#243'n de Cheques'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
        FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
        FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
        FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C880733777777777733700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object Z2bbtnNotaAbono: TBitBtn
      Left = 343
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Emisi'#243'n de Cheques'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Visible = False
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
    object Z2bbtnRetencion: TBitBtn
      Left = 305
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Comprobante de Retenci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F33F333F3337F330FF0FFF0FFF
        F03337F37F337F3337F330FF0FFF0FFFF03337F37FFF7FFF37F330F00000000F
        F03337F77777777337F330FFF0FFF0FFF03337F337F337F337F330FFF0FFF0FF
        F03337F337FFF7FFF7F330FF00000000F03337F37777777737F330FFFF0FFF0F
        F03337F3337F337F37F330FFFF0FFF0FF03337F33373337337F330FFFFFFFFFF
        F03337F33333333FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 72
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 11
      Visible = False
    end
    object Z2bbtChqVouch: TBitBtn
      Left = 464
      Top = 6
      Width = 36
      Height = 36
      Hint = 'Impresi'#243'n de Cheque Voucher'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
  end
  object z2bbtnCalc: TBitBtn
    Left = 12
    Top = 526
    Width = 38
    Height = 38
    Hint = 'Calculadora'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    Visible = False
    Glyph.Data = {
      36010000424D3601000000000000760000002800000010000000180000000100
      040000000000C0000000CE0E0000D80E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000000000007708888888888888070800800899999807080080089999
      9807088888888888880708008008008008070800800800800807088888888888
      8807080080080080080708008008008008070888888888888807080080080080
      0807080080080080080708888888888888070888888888888807088888888888
      8807080000000000080708000EE0EEEE080708000EE0EEEE0807080000000000
      0807088888888888880708888888888888077000000000000077}
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 524
    object N2: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object Buscar1: TMenuItem
      Caption = '&Seleccionar'
      ShortCut = 16467
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object lkdCxP: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 20
    Top = 306
  end
  object pprptNotaAbono: TppReport
    AutoStop = False
    DataPipeline = ppdbpNotaAbono
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'rRecibo'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 140000
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 157
    Template.FileName = 'C:\solcaja\solFormatos\NotaAbono.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 159
    Top = 525
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbpNotaAbono'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53711
      mmPrintPosition = 0
      object ppdbtCiaRuc: TppDBText
        UserName = 'dbtCiaRuc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 15875
        mmWidth = 34925
        BandType = 0
      end
      object pplblNNA: TppLabel
        UserName = 'lblNNA'
        Caption = 'N'#186' N. Abono :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 130440
        mmTop = 10054
        mmWidth = 19050
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'Nota de Abono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 84931
        mmTop = 10054
        mmWidth = 26458
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1000
        mmLeft = 265
        mmTop = 21696
        mmWidth = 182034
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 23019
        mmWidth = 182034
        BandType = 0
      end
      object ppsvFecha: TppSystemVariable
        UserName = 'svFecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 24871
        mmWidth = 14817
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 24871
        mmWidth = 10054
        BandType = 0
      end
      object pplblCliente: TppLabel
        UserName = 'lblCliente'
        Caption = 'Cliente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 30956
        mmWidth = 11377
        BandType = 0
      end
      object pplblNombreCli: TppLabel
        UserName = 'lblNombreCli'
        Caption = 'lblNombreCli'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 30956
        mmWidth = 18256
        BandType = 0
      end
      object pplblRucCli: TppLabel
        UserName = 'lblCliente1'
        Caption = 'R.U.C. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 36777
        mmWidth = 10583
        BandType = 0
      end
      object pplblNRucCli: TppLabel
        UserName = 'lblNombreCli1'
        Caption = 'pplblNRucCli'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 36777
        mmWidth = 18785
        BandType = 0
      end
      object ppRucCia: TppLabel
        UserName = 'RucCia'
        Caption = 'R.U.C. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 15875
        mmWidth = 10583
        BandType = 0
      end
      object pplblDirecCli: TppLabel
        UserName = 'lblDirecCli'
        Caption = 'Direcci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 42863
        mmWidth = 15081
        BandType = 0
      end
      object pplblNDirCli: TppLabel
        UserName = 'lblNDirCli'
        Caption = 'pplblNDirCli'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 42863
        mmWidth = 17463
        BandType = 0
      end
      object pplblCta: TppLabel
        UserName = 'lblDirecCli1'
        Caption = 'Cta. Ahorro / Cta.Cte. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 48948
        mmWidth = 32015
        BandType = 0
      end
      object pplblNCtaCte: TppLabel
        UserName = 'lblNDirCli1'
        Caption = 'pplblNCtaCte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 40481
        mmTop = 48948
        mmWidth = 19050
        BandType = 0
      end
      object pplblCia: TppLabel
        UserName = 'RucCia1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 11377
        mmWidth = 10583
        BandType = 0
      end
      object pplblNumero: TppLabel
        UserName = 'lblNumero'
        Caption = 'lblNumero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 158486
        mmTop = 10054
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppdbMonto: TppDBText
        UserName = 'dbMonto'
        AutoSize = True
        DataField = 'DEMTOORI'
        DataPipeline = ppdbpNotaAbono
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpNotaAbono'
        mmHeight = 3969
        mmLeft = 169863
        mmTop = 1588
        mmWidth = 11113
        BandType = 4
      end
      object pplblMoneda: TppLabel
        UserName = 'lblMoneda'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 1588
        mmWidth = 6085
        BandType = 4
      end
      object pplblConcepto: TppLabel
        UserName = 'lblConcepto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 1588
        mmWidth = 17992
        BandType = 4
      end
      object ppmmGlosa: TppMemo
        UserName = 'mmGlosa'
        Caption = 'mmGlosa'
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 1588
        mmWidth = 126736
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 529
        mmWidth = 182034
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 114565
        mmTop = 529
        mmWidth = 67998
        BandType = 8
      end
      object pplblTotal: TppLabel
        UserName = 'lblTotal'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 1323
        mmWidth = 7408
        BandType = 8
      end
      object ppMoneda1: TppLabel
        UserName = 'lblMoneda1'
        AutoSize = False
        Caption = 'lblMoneda1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 1323
        mmWidth = 6085
        BandType = 8
      end
      object ppdbcTotal: TppDBCalc
        UserName = 'dbcTotal'
        AutoSize = True
        DataField = 'DEMTOORI'
        DataPipeline = ppdbpNotaAbono
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpNotaAbono'
        mmHeight = 3969
        mmLeft = 154252
        mmTop = 1323
        mmWidth = 27252
        BandType = 8
      end
    end
  end
  object ppdbpNotaAbono: TppDBPipeline
    UserName = 'dbpNotaAbono'
    Left = 83
    Top = 306
    object ppField26: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField27: TppField
      FieldAlias = 'TDIARID'
      FieldName = 'TDIARID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField28: TppField
      FieldAlias = 'ECANOMM'
      FieldName = 'ECANOMM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField29: TppField
      FieldAlias = 'ECNOCOMP'
      FieldName = 'ECNOCOMP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppField30: TppField
      FieldAlias = 'TDIARID2'
      FieldName = 'TDIARID2'
      FieldLength = 2
      DisplayWidth = 2
      Position = 4
    end
    object ppField31: TppField
      FieldAlias = 'CPANOMM'
      FieldName = 'CPANOMM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 5
    end
    object ppField32: TppField
      FieldAlias = 'PROV'
      FieldName = 'PROV'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppField33: TppField
      FieldAlias = 'PROVRUC'
      FieldName = 'PROVRUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object ppField34: TppField
      FieldAlias = 'CPNOREG'
      FieldName = 'CPNOREG'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppField35: TppField
      FieldAlias = 'DOCID2'
      FieldName = 'DOCID2'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppField36: TppField
      FieldAlias = 'CPSERIE'
      FieldName = 'CPSERIE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 10
    end
    object ppField37: TppField
      FieldAlias = 'CPNODOC'
      FieldName = 'CPNODOC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppField38: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'DETCDOC'
      FieldName = 'DETCDOC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'DETCPAG'
      FieldName = 'DETCPAG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppField41: TppField
      FieldAlias = 'DEDH'
      FieldName = 'DEDH'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEMTOORI'
      FieldName = 'DEMTOORI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEMTOLOC'
      FieldName = 'DEMTOLOC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEMTOEXT'
      FieldName = 'DEMTOEXT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESALLOC'
      FieldName = 'DESALLOC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESALEXT'
      FieldName = 'DESALEXT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppField47: TppField
      FieldAlias = 'CPTOID'
      FieldName = 'CPTOID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppField48: TppField
      FieldAlias = 'CUENTAID'
      FieldName = 'CUENTAID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppField49: TppField
      FieldAlias = 'CCOSID'
      FieldName = 'CCOSID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 23
    end
    object ppField50: TppField
      FieldAlias = 'CPFEMIS'
      FieldName = 'CPFEMIS'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 24
    end
    object ppField51: TppField
      FieldAlias = 'CPFVCMTO'
      FieldName = 'CPFVCMTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 25
    end
    object ppField52: TppField
      FieldAlias = 'DEUSER'
      FieldName = 'DEUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField53: TppField
      FieldAlias = 'DEFREG'
      FieldName = 'DEFREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 27
    end
    object ppField54: TppField
      FieldAlias = 'DEHREG'
      FieldName = 'DEHREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 28
    end
    object ppField55: TppField
      FieldAlias = 'DEANO'
      FieldName = 'DEANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 29
    end
    object ppField56: TppField
      FieldAlias = 'DEMM'
      FieldName = 'DEMM'
      FieldLength = 2
      DisplayWidth = 2
      Position = 30
    end
    object ppField57: TppField
      FieldAlias = 'DEDD'
      FieldName = 'DEDD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 31
    end
    object ppField58: TppField
      FieldAlias = 'DESS'
      FieldName = 'DESS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppField59: TppField
      FieldAlias = 'DESEM'
      FieldName = 'DESEM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object ppField60: TppField
      FieldAlias = 'DETRI'
      FieldName = 'DETRI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object ppField61: TppField
      FieldAlias = 'DEAASS'
      FieldName = 'DEAASS'
      FieldLength = 6
      DisplayWidth = 6
      Position = 35
    end
    object ppField62: TppField
      FieldAlias = 'DEAASEM'
      FieldName = 'DEAASEM'
      FieldLength = 5
      DisplayWidth = 5
      Position = 36
    end
    object ppField63: TppField
      FieldAlias = 'DEAATRI'
      FieldName = 'DEAATRI'
      FieldLength = 5
      DisplayWidth = 5
      Position = 37
    end
    object ppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 2
      DisplayWidth = 2
      Position = 38
    end
    object ppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEANTMN'
      FieldName = 'DEANTMN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEANTME'
      FieldName = 'DEANTME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppField67: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 41
    end
    object ppField68: TppField
      FieldAlias = 'ECNOREPO'
      FieldName = 'ECNOREPO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
  end
  object ppdbRetencion: TppDBPipeline
    UserName = 'dbRetencion'
    Left = 61
    Top = 379
    object ppField1: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'TDIARID'
      FieldName = 'TDIARID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'ANOMM'
      FieldName = 'ANOMM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'ECNOCOMP'
      FieldName = 'ECNOCOMP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'FECPAGO'
      FieldName = 'FECPAGO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'AUXID'
      FieldName = 'AUXID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'AUXRUC'
      FieldName = 'AUXRUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'DOCID'
      FieldName = 'DOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'DOCDES'
      FieldName = 'DOCDES'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'NODOC'
      FieldName = 'NODOC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'TRANID'
      FieldName = 'TRANID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'TRANDES'
      FieldName = 'TRANDES'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'DH'
      FieldName = 'DH'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTOORI'
      FieldName = 'MTOORI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTOLOC'
      FieldName = 'MTOLOC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTOEXT'
      FieldName = 'MTOEXT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 20
    end
    object ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTORETORI'
      FieldName = 'MTORETORI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTORETLOC'
      FieldName = 'MTORETLOC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTORETEXT'
      FieldName = 'MTORETEXT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'FECEMI'
      FieldName = 'FECEMI'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 24
    end
    object ppField69: TppField
      FieldAlias = 'RETSERIE'
      FieldName = 'RETSERIE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 25
    end
    object ppField70: TppField
      FieldAlias = 'RETNUMERO'
      FieldName = 'RETNUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
  end
  object pprRetencion: TppReport
    AutoStop = False
    DataPipeline = ppdbRetencion
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6000
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 154000
    PrinterSetup.mmPaperWidth = 250000
    PrinterSetup.PaperSize = 157
    Template.FileName = 'C:\SOLExes\SolFormatos\Cnt\Incoresa\Retenciones.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 29
    Top = 435
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRetencion'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 51065
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'AUXRUC'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 18256
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FECPAGO'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 32015
        mmWidth = 22225
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'AUXNOMB'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 14288
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'AUXDIR'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 25929
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'RETNUMERO'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 21960
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'SERIE'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 34396
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'NODOC'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 60061
        mmTop = 1058
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'FECEMI'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 1058
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'MTORETLOC'
        DataPipeline = ppdbRetencion
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 189442
        mmTop = 1058
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'MTOLOC'
        DataPipeline = ppdbRetencion
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 155046
        mmTop = 1058
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DOCDESC'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 1058
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FECPAGO'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'MTOLOC'
        DataPipeline = ppdbRetencion
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ResetGroup = ppGroup1
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 8467
        mmWidth = 25400
        BandType = 8
      end
      object ppTotal: TppDBCalc
        UserName = 'Total'
        AutoSize = True
        DataField = 'MTORETLOC'
        DataPipeline = ppdbRetencion
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ResetGroup = ppGroup1
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 8467
        mmWidth = 32015
        BandType = 8
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'RETTOTDES'
        DataPipeline = ppdbRetencion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRetencion'
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 16140
        mmWidth = 20108
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'RETNUMERO'
      DataPipeline = ppdbRetencion
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbRetencion'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
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
    Report = pprChqVouch
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 89
    Top = 437
  end
  object ppdbpChqVouch: TppDBPipeline
    UserName = 'dbpChqVouch'
    Left = 97
    Top = 479
  end
  object pprChqVouch: TppReport
    AutoStop = False
    DataPipeline = ppdbpChqVouch
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report2'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 500
    PrinterSetup.mmMarginLeft = 500
    PrinterSetup.mmMarginRight = 500
    PrinterSetup.mmMarginTop = 500
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Caja\BHL\CHEQUEVOUCHER.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 193
    Top = 528
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbpChqVouch'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 91281
      mmPrintPosition = 0
      object ppImporte: TppLabel
        UserName = 'Importe'
        Caption = '*******2,633.56'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 100277
        mmTop = 1588
        mmWidth = 27781
        BandType = 0
      end
      object ppAno: TppLabel
        UserName = 'Ano'
        Caption = '2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 79375
        mmTop = 1588
        mmWidth = 7408
        BandType = 0
      end
      object ppMes: TppLabel
        UserName = 'Mes'
        Caption = '01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 1588
        mmWidth = 3704
        BandType = 0
      end
      object ppDia: TppLabel
        UserName = 'Dia'
        Caption = '03'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65088
        mmTop = 1588
        mmWidth = 3704
        BandType = 0
      end
      object ppGiradoA: TppLabel
        UserName = 'GiradoA'
        Caption = 'ALFRED H. KNIGHT DEL PERU S.R.L.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 13229
        mmWidth = 59267
        BandType = 0
      end
      object ppMontoLetras: TppLabel
        UserName = 'MontoLetras'
        Caption = '     DOS MIL SEISCIENTOS TREINTITRES y 56/100'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 19579
        mmWidth = 83344
        BandType = 0
      end
      object ppFecha: TppDBText
        UserName = 'Fecha'
        DataField = 'ECFCOMP'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 34925
        mmTop = 49213
        mmWidth = 17198
        BandType = 0
      end
      object ppTipoCambio: TppDBText
        UserName = 'TipoCambio'
        DataField = 'DCTCAMPA'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 109273
        mmTop = 49213
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 76729
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DEBE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 137054
        mmTop = 76729
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'HABER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 155840
        mmTop = 76729
        mmWidth = 9260
        BandType = 0
      end
      object ppCtaBanco: TppLabel
        UserName = 'CtaBanco'
        Caption = '00-027-0002328'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 55827
        mmWidth = 25929
        BandType = 0
      end
      object ppGiradoA2: TppLabel
        UserName = 'GiradoA2'
        Caption = 'ALFRED H. KNIGHT DEL PERU S.R.L.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 64823
        mmWidth = 59267
        BandType = 0
      end
      object ppGlosa: TppLabel
        UserName = 'Glosa'
        Caption = 'VARIAS FACTURAS ALFRED H KNIGHT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 69321
        mmWidth = 57415
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'ANEXO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 43392
        mmTop = 76729
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'PROVEEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76729
        mmTop = 76729
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'C.C.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 28310
        mmTop = 76729
        mmWidth = 7408
        BandType = 0
      end
      object ppImporte2: TppLabel
        UserName = 'Importe1'
        Caption = '*******2,633.56'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 99748
        mmTop = 59531
        mmWidth = 27781
        BandType = 0
      end
      object ppMoneda: TppLabel
        UserName = 'Moneda'
        Caption = 'US$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76465
        mmTop = 49213
        mmWidth = 5556
        BandType = 0
      end
      object ppComprobante: TppLabel
        UserName = 'Comprobante'
        Caption = '217'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5821
        mmTop = 49213
        mmWidth = 5556
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CUENTAID'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'DEBE'
        DataPipeline = ppdbpChqVouch
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 131234
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'HABER'
        DataPipeline = ppdbpChqVouch
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'DCAUXID'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 37571
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'DCGLOSA'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 63765
        mmTop = 0
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CCOSID'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'DEBE'
        DataPipeline = ppdbpChqVouch
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 131234
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'HABER'
        DataPipeline = ppdbpChqVouch
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'DCUSER'
        DataPipeline = ppdbpChqVouch
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpChqVouch'
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
    end
  end
end
