object FPreliminarRefinanciado: TFPreliminarRefinanciado
  Left = 173
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Preliminar de Operaci'#243'n a realizar'
  ClientHeight = 563
  ClientWidth = 782
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 6
    Top = 4
    Width = 771
    Height = 520
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Credito y Solicitud'
      object wwRecordViewPanel1: TwwRecordViewPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 492
        Align = alLeft
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        DataSource = dsCRE301
        EditFrame.Enabled = True
        ControlOptions = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
      end
      object wwRecordViewPanel2: TwwRecordViewPanel
        Left = 385
        Top = 0
        Width = 378
        Height = 492
        Align = alClient
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        DataSource = dsCRE303
        EditFrame.Enabled = True
        ControlOptions = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cronograma'
      ImageIndex = 1
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 492
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsCRE302
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
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
    object TabSheet3: TTabSheet
      Caption = 'Nota de Abono'
      ImageIndex = 2
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 289
        Width = 763
        Height = 203
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsCRE310
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 289
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        BorderStyle = bsNone
        DataSource = dsCRE302NAbono
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  object BitBtn1: TBitBtn
    Left = 622
    Top = 532
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 700
    Top = 532
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object cdsCRE301: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    ValidateWithMask = True
    Left = 524
    Top = 8
  end
  object cdsCRE310: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    ValidateWithMask = True
    Left = 720
    Top = 8
  end
  object cdsCRE302: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    ValidateWithMask = True
    Left = 614
    Top = 8
  end
  object cdsCRE303: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    ValidateWithMask = True
    Left = 569
    Top = 8
  end
  object dsCRE301: TwwDataSource
    DataSet = cdsCRE301
    Left = 534
    Top = 37
  end
  object dsCRE310: TwwDataSource
    DataSet = cdsCRE310
    Left = 736
    Top = 37
  end
  object dsCRE303: TwwDataSource
    DataSet = cdsCRE303
    Left = 628
    Top = 37
  end
  object dsCRE302: TwwDataSource
    DataSet = cdsCRE302
    Left = 581
    Top = 37
  end
  object cdsCRE302NAbono: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    AfterScroll = cdsCRE302NAbonoAfterScroll
    ValidateWithMask = True
    Left = 671
    Top = 8
  end
  object dsCRE302NAbono: TwwDataSource
    DataSet = cdsCRE302NAbono
    Left = 687
    Top = 37
  end
end
