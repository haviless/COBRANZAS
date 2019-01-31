object fRegPorOficio: TfRegPorOficio
  Left = 458
  Top = 295
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'N'#250'm.de Devoluciones por Oficio'
  ClientHeight = 193
  ClientWidth = 441
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grbDetalle: TGroupBox
    Left = 5
    Top = 8
    Width = 430
    Height = 145
    Caption = 'Registros por oficio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGRID: TwwDBGrid
      Left = 15
      Top = 21
      Width = 404
      Height = 116
      DisableThemesInTitle = False
      ControlType.Strings = (
        'FLAG;CheckBox;1;0'
        'NUMREGOFI;CustomEdit;;F')
      Selected.Strings = (
        'USUMOD'#9'20'#9'Usuario~Modifica'
        'FECMOD'#9'10'#9'Fecha~Modifica'
        'NUMREGACT'#9'10'#9'Dev. por~Oficio Actual'#9'F'
        'NUMREGOFI'#9'10'#9'Dev. por~Oficio')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 3
      ShowHorzScrollBar = True
      DataSource = DSGRID
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
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
      OnCalcCellColors = DBGRIDCalcCellColors
      OnDblClick = DBGRIDDblClick
      FooterColor = clSkyBlue
      FooterCellColor = clCream
    end
  end
  object BitGrabar: TBitBtn
    Left = 241
    Top = 160
    Width = 98
    Height = 27
    Caption = '&Grabar'
    TabOrder = 1
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
  object BitSalir: TBitBtn
    Left = 348
    Top = 160
    Width = 88
    Height = 28
    Caption = '&Cerrar'
    TabOrder = 2
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
        Name = 'NUMREGOFI'
        DataType = ftInteger
      end
      item
        Name = 'NUMREGACT'
        DataType = ftInteger
      end
      item
        Name = 'USUCRE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECCRE'
        DataType = ftDate
      end
      item
        Name = 'USUMOD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECMOD'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 444
    Top = 46
    Data = {
      920000009619E0BD0100000018000000060000000000030000009200094E554D
      5245474F46490400010000000000094E554D5245474143540400010000000000
      0655535543524501004900000001000557494454480200020014000646454343
      52450400060000000000065553554D4F44010049000000010005574944544802
      0002001400064645434D4F4404000600000000000000}
  end
  object DSGRID: TDataSource
    DataSet = CDSGRID
    Left = 444
    Top = 94
  end
end
