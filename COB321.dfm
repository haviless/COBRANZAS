object FAcuerdosAdic: TFAcuerdosAdic
  Left = 368
  Top = 116
  Width = 1024
  Height = 600
  Caption = 'Acuerdos de Cobranza Adicional por Planilla'
  Color = 10207162
  Constraints.MaxHeight = 600
  Constraints.MaxWidth = 1024
  Constraints.MinHeight = 600
  Constraints.MinWidth = 1024
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgAcuerdos: TwwDBGrid
    Left = 5
    Top = 78
    Width = 998
    Height = 423
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsAcuerdos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = dbgAcuerdosTitleButtonClick
    OnDblClick = dbgAcuerdosDblClick
    object wwDBGrid1IButton: TwwIButton
      Left = 0
      Top = 0
      Width = 30
      Height = 30
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
      OnClick = wwDBGrid1IButtonClick
    end
  end
  object Panel1: TPanel
    Left = 5
    Top = 6
    Width = 998
    Height = 67
    TabOrder = 1
    object rgEstado: TRadioGroup
      Left = 12
      Top = 5
      Width = 373
      Height = 52
      Caption = 'Estado'
      Columns = 5
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Iniciado'
        'Proceso'
        'Finalizado'
        'Anulado')
      TabOrder = 0
      OnClick = rgEstadoClick
    end
    object pnlapenom: TPanel
      Left = 424
      Top = 5
      Width = 396
      Height = 56
      BorderStyle = bsSingle
      Color = 10207162
      TabOrder = 1
      object Label3: TLabel
        Left = 5
        Top = 3
        Width = 115
        Height = 15
        Caption = 'Apellidos y Nombre(s):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object pnlasoapenomdni: TPanel
        Left = 5
        Top = 22
        Width = 376
        Height = 23
        Caption = 'pnlasoapenomdni'
        TabOrder = 0
        object edtBuscarDet: TEdit
          Left = 1
          Top = 1
          Width = 373
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 60
          ParentFont = False
          TabOrder = 0
          OnChange = edtBuscarDetChange
          OnClick = edtBuscarDetClick
          OnKeyPress = edtBuscarDetKeyPress
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 506
    Width = 998
    Height = 50
    TabOrder = 2
    object btncerrar: TBitBtn
      Left = 918
      Top = 11
      Width = 69
      Height = 30
      Caption = 'Cerrar'
      TabOrder = 0
      OnClick = btncerrarClick
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
    end
    object btnExcel: TBitBtn
      Left = 797
      Top = 11
      Width = 86
      Height = 30
      Hint = 'Exportar a Excel'
      Caption = 'A Excel'
      TabOrder = 1
      OnClick = btnExcelClick
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
  end
end
