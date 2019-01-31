object FProgProcInfpla: TFProgProcInfpla
  Left = 283
  Top = 102
  Width = 767
  Height = 533
  Caption = 'Visor de Procesos Programados de envios'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 759
    Height = 65
    Align = alTop
    Caption = 'Informaci'#243'n a Buscar'
    TabOrder = 0
    object Label3: TLabel
      Left = 12
      Top = 30
      Width = 60
      Height = 13
      Caption = 'A'#241'o / Mes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 172
      Top = 30
      Width = 40
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rgtipaso: TRadioGroup
      Left = 438
      Top = 19
      Width = 171
      Height = 32
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Docentes'
        'Cesantes')
      ParentFont = False
      TabOrder = 0
      OnClick = rgtipasoClick
    end
    object seanopro: TwwDBSpinEdit
      Left = 77
      Top = 26
      Width = 50
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2020.000000000000000000
      MinValue = 2007.000000000000000000
      TabOrder = 1
      UnboundDataType = wwDefault
      OnChange = seanoproChange
    end
    object semespro: TwwDBSpinEdit
      Left = 128
      Top = 26
      Width = 37
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 2
      UnboundDataType = wwDefault
      OnChange = semesproChange
    end
    object btnBuscar: TBitBtn
      Left = 629
      Top = 24
      Width = 86
      Height = 28
      Caption = 'Buscar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnBuscarClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000077777777777777777000000070000077777000007000000070B0
        00777770F0007000000070F000777770B0007000000070000000700000007000
        0000700B000000B0000070000000700F000700F0000070000000700B000700B0
        0000700000007700000000000007700000007770B00070B00077700000007770
        0000700000777000000077770007770007777000000077770B07770B07777000
        0000777700077700077770000000777777777777777770000000777777777777
        777770000000}
    end
    object dbCboEstado: TwwDBLookupCombo
      Left = 214
      Top = 27
      Width = 219
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Options = [loColLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dbCboEstadoChange
    end
  end
  object TPanel
    Left = 0
    Top = 400
    Width = 759
    Height = 99
    Align = alBottom
    ParentColor = True
    TabOrder = 1
    object gbAnular: TGroupBox
      Left = 422
      Top = 1
      Width = 336
      Height = 97
      Align = alRight
      Caption = 'Anular Prog de Generaci'#243'n de Planilla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        336
        97)
      object Label1: TLabel
        Left = 232
        Top = 72
        Width = 98
        Height = 13
        Caption = 'Max. 100 Caracteres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnAnular: TBitBtn
        Left = 230
        Top = 16
        Width = 75
        Height = 30
        Anchors = [akTop, akRight]
        Caption = 'Anular'
        TabOrder = 0
        OnClick = btnAnularClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
      object mObservacion: TMemo
        Left = 8
        Top = 16
        Width = 217
        Height = 73
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'mObservacion')
        MaxLength = 100
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object dbgPrincipal: TwwDBGrid
    Left = 0
    Top = 65
    Width = 759
    Height = 335
    DisableThemesInTitle = False
    Selected.Strings = (
      'IDECON'#9'8'#9'Convenio'
      'ANOPRO'#9'4'#9'A'#241'o~Proc.'
      'MESPRO'#9'4'#9'Mes~Proc.'
      'ASOTIPID'#9'4'#9'Tip~Aso'
      'ESTADO'#9'15'#9'Estado'
      'USUARIO'#9'10'#9'Usuario~Prog.Gen.'
      'HREG'#9'23'#9'Fecha~Prog.Gen.'
      'TURNO'#9'5'#9'Turno~Generacion'
      'INIPRO'#9'23'#9'Inicio~Generacion'
      'FINPRO'#9'23'#9'Fin~Generacion'
      'USUANU'#9'20'#9'Usuario~Anul.Gen.'
      'FECANU'#9'23'#9'Fecha~Anul.Gen.'
      'OBSANU'#9'40'#9'Observacion~Anul.Gen.'
      'USUPROCOB'#9'10'#9'Usuario~Prog.Pro.Cob.'
      'FECPROGPROCOB'#9'23'#9'Fecha~Prog.Pro.Cob.'
      'INIPROCOB'#9'23'#9'Inicio~Pro.Cob.'
      'FINPROCOB'#9'23'#9'Fin~Pro.Cob.'
      'USUANUPROCOB'#9'20'#9'Usuario~Anul.Pro.Cob.'
      'FECANUPROCOB'#9'23'#9'Fecha~Anul.Pro.Cob.'
      'OBSANUPROCOB'#9'40'#9'Observacion~Anul.Pro.Cob.')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
end
