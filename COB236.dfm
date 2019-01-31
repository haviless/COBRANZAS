object FSolConFallecidosAddEdit: TFSolConFallecidosAddEdit
  Left = 136
  Top = 153
  BorderStyle = bsDialog
  BorderWidth = 3
  Caption = 'Ingresar/Editar Solicitud'
  ClientHeight = 440
  ClientWidth = 503
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 405
    Width = 503
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      503
      35)
    object btnGrabarAdd: TBitBtn
      Left = 334
      Top = 3
      Width = 77
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Grabar'
      TabOrder = 0
      OnClick = btnGrabarAddClick
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
    end
    object btnSalir: TBitBtn
      Left = 419
      Top = 3
      Width = 77
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
      OnClick = btnSalirClick
      Kind = bkClose
    end
  end
  object gbSolicitud: TGroupBox
    Left = 0
    Top = 0
    Width = 503
    Height = 121
    Align = alTop
    Caption = 'Solicitud - Memo'
    TabOrder = 1
    object lbl1: TLabel
      Left = 16
      Top = 24
      Width = 84
      Height = 13
      Caption = 'Numero de Memo'
    end
    object lbl2: TLabel
      Left = 312
      Top = 24
      Width = 77
      Height = 13
      Caption = 'Fecha de Memo'
    end
    object lbl3: TLabel
      Left = 40
      Top = 56
      Width = 60
      Height = 13
      Caption = 'Observaci'#243'n'
    end
    object lblMaxCaracteres: TLabel
      Left = 379
      Top = 105
      Width = 116
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      Caption = '0 de 500 Caracteres'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object edNroMemo: TEdit
      Left = 106
      Top = 20
      Width = 191
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 25
      TabOrder = 0
    end
    object dtpFechaMemo: TDateTimePicker
      Left = 395
      Top = 20
      Width = 102
      Height = 21
      Date = 41081.671729965280000000
      Time = 41081.671729965280000000
      TabOrder = 1
    end
    object edObservacion: TMemo
      Left = 106
      Top = 48
      Width = 391
      Height = 52
      MaxLength = 500
      TabOrder = 2
      OnExit = edObservacionExit
      OnKeyPress = edObservacionKeyPress
    end
  end
  object gbFallecidos: TGroupBox
    Left = 0
    Top = 121
    Width = 503
    Height = 284
    Align = alClient
    Caption = 'Fallecidos'
    TabOrder = 2
    object pnl2: TPanel
      Left = 2
      Top = 15
      Width = 499
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object lbl4: TLabel
        Left = 10
        Top = 6
        Width = 44
        Height = 13
        Caption = 'Asociado'
      end
      object lbl6: TLabel
        Left = 222
        Top = 32
        Width = 94
        Height = 13
        Caption = 'Fecha Fallecimiento'
      end
      object lbl5: TLabel
        Left = 73
        Top = 32
        Width = 83
        Height = 13
        Caption = 'Tipo de Asociado'
      end
      object edAsoid: TEdit
        Left = 458
        Top = 2
        Width = 31
        Height = 21
        ReadOnly = True
        TabOrder = 6
        Visible = False
      end
      object edDNI: TEdit
        Left = 58
        Top = 2
        Width = 73
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object edAsoapenomdni: TEdit
        Left = 161
        Top = 1
        Width = 256
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object dtpFechaFallecimiento: TDateTimePicker
        Left = 320
        Top = 28
        Width = 97
        Height = 21
        Date = 41081.693509456020000000
        Time = 41081.693509456020000000
        TabOrder = 4
      end
      object btnBuscarAsociado: TButton
        Left = 132
        Top = 2
        Width = 25
        Height = 22
        Caption = '...'
        TabOrder = 3
        OnClick = btnBuscarAsociadoClick
      end
      object btnAgregar: TButton
        Left = 421
        Top = 28
        Width = 75
        Height = 22
        Caption = 'Agregar'
        Enabled = False
        TabOrder = 0
        OnClick = btnAgregarClick
      end
      object edAsotipid: TEdit
        Left = 161
        Top = 28
        Width = 47
        Height = 21
        ReadOnly = True
        TabOrder = 5
      end
    end
    object pnl3: TPanel
      Left = 2
      Top = 73
      Width = 499
      Height = 209
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnl3'
      ParentColor = True
      TabOrder = 1
      object pnl4: TPanel
        Left = 415
        Top = 0
        Width = 84
        Height = 209
        Align = alRight
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object btnRetirar: TButton
          Left = 6
          Top = 3
          Width = 75
          Height = 22
          Caption = 'Retirar'
          TabOrder = 0
          OnClick = btnRetirarClick
        end
      end
      object dbgAsoSeleccionados: TwwDBGrid
        Left = 0
        Top = 0
        Width = 415
        Height = 209
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsAsoSeleccionados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object cdsAsoSeleccionados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 50
    Top = 226
    object cdsAsoSeleccionadosASOID: TStringField
      FieldName = 'ASOID'
      Size = 10
    end
    object cdsAsoSeleccionadosASODNI: TStringField
      FieldName = 'ASODNI'
      Size = 10
    end
    object cdsAsoSeleccionadosASOAPENOMDNI: TStringField
      FieldName = 'ASOAPENOMDNI'
      Size = 120
    end
    object cdsAsoSeleccionadosFECFALGES: TDateField
      FieldName = 'FECFALGES'
    end
    object cdsAsoSeleccionadosASOTIPID: TStringField
      FieldName = 'ASOTIPID'
    end
  end
  object dsAsoSeleccionados: TDataSource
    DataSet = cdsAsoSeleccionados
    Left = 122
    Top = 234
  end
end
