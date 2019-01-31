object FValidaRefi2: TFValidaRefi2
  Left = 3
  Top = 3
  BorderStyle = bsDialog
  ClientHeight = 543
  ClientWidth = 790
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgCronograma: TwwDBGrid
    Left = 0
    Top = 24
    Width = 790
    Height = 217
    DisableThemesInTitle = False
    Selected.Strings = (
      'CRECUOTA'#9'5'#9'N'#186'~Cuota'#9'F'
      'CREANO'#9'8'#9'~A'#241'o'#9'F'
      'CREMES'#9'4'#9'~Mes'#9'F'
      'CREMTO'#9'10'#9'Cuota'#9'F'#9'Pactado'
      'CREAMORT'#9'10'#9'A'#9'F'#9'Pactado'
      'CREINTERES'#9'8'#9'I'#9'F'#9'Pactado'
      'CREFLAT'#9'5'#9'F'#9'F'#9'Pactado'
      'CREMTOCOB'#9'11'#9'Total'#9'F'#9'Cobrado'
      'CRECAPITAL'#9'11'#9'A'#9'F'#9'Cobrado'
      'CREMTOINT'#9'8'#9'I'#9'F'#9'Cobrado'
      'CREMTOFLAT'#9'5'#9'F'#9'F'#9'Cobrado'
      'CREMTOEXC'#9'11'#9'E'#9'F'#9'Cobrado'
      'CREESTADO'#9'40'#9'~Estado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    BorderStyle = bsNone
    DataSource = dsCRE302Inconsis
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object dbgCalculo: TwwDBGrid
    Left = 0
    Top = 265
    Width = 790
    Height = 108
    DisableThemesInTitle = False
    Selected.Strings = (
      'CREANO'#9'8'#9'~A'#241'o'#9'F'
      'CREMES'#9'4'#9'~Mes'#9'F'
      'C_FREG'#9'10'#9'Fecha~Reg.'#9'F'
      'C_CREFPAG'#9'10'#9'Fecha~Doc.'#9'F'
      'C_CREMTOCOB'#9'10'#9'~Cobrado'#9'F'
      'C_CREAMORT'#9'10'#9'A'#9'F'#9'Distribuci'#243'n'
      'C_CREINTERES'#9'5'#9'I'#9'F'#9'Distribuci'#243'n'
      'C_CREFLAT'#9'5'#9'F'#9'F'#9'Distribuci'#243'n'
      'C_CREMTOEXC'#9'10'#9'E'#9'F'#9'Distribuci'#243'n')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    BorderStyle = bsNone
    DataSource = dsCRE302Inconsis
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object dbgCobrado: TwwDBGrid
    Left = 0
    Top = 397
    Width = 790
    Height = 102
    DisableThemesInTitle = False
    Selected.Strings = (
      'CREANO'#9'8'#9'~A'#241'o'
      'CREMES'#9'4'#9'~Mes'
      'FREG'#9'10'#9'Fecha~Reg.'
      'CREFPAG'#9'10'#9'Fecha~Doc.'
      'CREMTOCOB'#9'10'#9'~Cobrado'
      'CREAMORT'#9'10'#9'A'
      'CREINTERES'#9'5'#9'I'
      'CREFLAT'#9'5'#9'F'
      'CREMTOEXC'#9'10'#9'E')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    BorderStyle = bsNone
    DataSource = dsCRE310Inconsis
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
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
  object BitBtn1: TBitBtn
    Left = 630
    Top = 508
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 709
    Top = 508
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    Kind = bkCancel
  end
  object stTitulo: TStaticText
    Left = 0
    Top = 0
    Width = 790
    Height = 24
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'CRONOGRAMA'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 241
    Width = 790
    Height = 24
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'CALCULADO'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 0
    Top = 373
    Width = 790
    Height = 24
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'COBRADO'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object cdsCRE302Inconsis: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRECUOTA'
        DataType = ftInteger
      end
      item
        Name = 'CREMTO'
        DataType = ftFloat
      end
      item
        Name = 'CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTOCOB'
        DataType = ftFloat
      end
      item
        Name = 'CRECAPITAL'
        DataType = ftFloat
      end
      item
        Name = 'CREMTOINT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTOFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTOEXC'
        DataType = ftFloat
      end
      item
        Name = 'CREESTADO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'C_FREG'
        DataType = ftDateTime
      end
      item
        Name = 'C_CREFPAG'
        DataType = ftDateTime
      end
      item
        Name = 'C_CREMTOCOB'
        DataType = ftFloat
      end
      item
        Name = 'C_CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'C_CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'C_CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'C_CREMTOEXC'
        DataType = ftFloat
      end
      item
        Name = 'CREANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CREMES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CREDID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterScroll = cdsCRE302InconsisAfterScroll
    ValidateWithMask = True
    Left = 232
    Top = 59
    Data = {
      D60100009619E0BD010000001800000016000000000003000000D60108435245
      43554F54410400010000000000064352454D544F080004000000000008435245
      414D4F525408000400000000000A435245494E54455245530800040000000000
      07435245464C41540800040000000000094352454D544F434F42080004000000
      00000A4352454341504954414C0800040000000000094352454D544F494E5408
      000400000000000A4352454D544F464C41540800040000000000094352454D54
      4F45584308000400000000000943524545535441444F01004900000001000557
      4944544802000200280006435F46524547080008000000000009435F43524546
      50414708000800000000000B435F4352454D544F434F4208000400000000000A
      435F435245414D4F525408000400000000000C435F435245494E544552455308
      0004000000000009435F435245464C415408000400000000000B435F4352454D
      544F455843080004000000000006435245414E4F010049000000010005574944
      5448020002000400064352454D45530100490000000100055749445448020002
      0002000643524544494401004900000001000557494454480200020014000541
      534F49440100490000000100055749445448020002000A000000}
  end
  object cdsCRE310Inconsis: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FREG'
        DataType = ftDateTime
      end
      item
        Name = 'CREFPAG'
        DataType = ftDateTime
      end
      item
        Name = 'CREMTOCOB'
        DataType = ftFloat
      end
      item
        Name = 'CREAMORT'
        DataType = ftFloat
      end
      item
        Name = 'CREINTERES'
        DataType = ftFloat
      end
      item
        Name = 'CREFLAT'
        DataType = ftFloat
      end
      item
        Name = 'CREMTOEXC'
        DataType = ftFloat
      end
      item
        Name = 'CREANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CREMES'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 584
    Top = 328
    Data = {
      C50000009619E0BD010000001800000009000000000003000000C50004465245
      47080008000000000007435245465041470800080000000000094352454D544F
      434F42080004000000000008435245414D4F525408000400000000000A435245
      494E5445524553080004000000000007435245464C4154080004000000000009
      4352454D544F455843080004000000000006435245414E4F0100490000000100
      055749445448020002000400064352454D455301004900000001000557494454
      480200020002000000}
  end
  object dsCRE302Inconsis: TwwDataSource
    DataSet = cdsCRE302Inconsis
    Left = 248
    Top = 75
  end
  object dsCRE310Inconsis: TwwDataSource
    DataSet = cdsCRE310Inconsis
    Left = 600
    Top = 336
  end
end
