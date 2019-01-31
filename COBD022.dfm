object fMotDevolucion: TfMotDevolucion
  Left = 362
  Top = 261
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Motivo de Devoluci'#243'n'
  ClientHeight = 312
  ClientWidth = 677
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grbDetalle: TGroupBox
    Left = 5
    Top = 8
    Width = 662
    Height = 257
    Caption = 'Origen de Devoluci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGRID: TwwDBGrid
      Left = 13
      Top = 21
      Width = 639
      Height = 220
      DisableThemesInTitle = False
      ControlType.Strings = (
        'FLAG;CheckBox;1;0'
        'NUMREGOFI;CustomEdit;;F')
      Selected.Strings = (
        'CODREF'#9'3'#9'Cod.Motivo~Devoluci'#243'n'
        'DESCRIPCION'#9'50'#9'Motivo de Devoluci'#243'n'
        'USUCRE'#9'15'#9'Usuario~Crea'
        'FECCRE'#9'10'#9'Fecha~Crea')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSGRID
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = [fsBold]
      TitleLines = 3
      TitleButtons = False
      OnDblClick = DBGRIDDblClick
      FooterColor = clSkyBlue
      FooterCellColor = clCream
      object ButtonAdd: TwwIButton
        Left = 0
        Top = 0
        Width = 41
        Height = 49
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
        OnClick = ButtonAddClick
      end
    end
    object pnlactualiza: TPanel
      Left = 136
      Top = 96
      Width = 385
      Height = 97
      TabOrder = 1
      Visible = False
      object Shape1: TShape
        Left = 1
        Top = 1
        Width = 383
        Height = 24
        Align = alTop
        Brush.Color = clNavy
        Pen.Style = psClear
      end
      object lblactualiza: TLabel
        Left = 3
        Top = 4
        Width = 151
        Height = 16
        Caption = 'Origen de Devoluci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object BitGrabar: TBitBtn
        Left = 284
        Top = 67
        Width = 93
        Height = 27
        Caption = '&Grabar'
        TabOrder = 0
        OnClick = BitGrabarClick
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
      object BitBtn1: TBitBtn
        Left = 359
        Top = 2
        Width = 24
        Height = 22
        Caption = 'X'
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object edtdescripcion: TEdit
        Left = 7
        Top = 29
        Width = 370
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyPress = edtdescripcionKeyPress
      end
    end
  end
  object BitSalir: TBitBtn
    Left = 580
    Top = 274
    Width = 88
    Height = 28
    Caption = '&Cerrar'
    TabOrder = 1
    OnClick = BitSalirClick
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
  object CDSGRID: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODREF'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'USUCRE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECCRE'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 708
    Top = 62
    Data = {
      7F0000009619E0BD0100000018000000040000000000030000007F0006434F44
      52454601004900000001000557494454480200020003000B4445534352495043
      494F4E0100490000000100055749445448020002003C00065553554352450100
      4900000001000557494454480200020014000646454343524504000600000000
      000000}
  end
  object DSGRID: TDataSource
    DataSet = CDSGRID
    Left = 708
    Top = 22
  end
end
