object FDSituaciones: TFDSituaciones
  Left = 271
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Situaciones'
  ClientHeight = 378
  ClientWidth = 688
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TfcLabel
    Left = 12
    Top = 8
    Width = 109
    Height = 19
    Caption = 'Código Modular :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object lbTitulo: TfcLabel
    Left = 256
    Top = 8
    Width = 68
    Height = 19
    Caption = 'Asociado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object dbgDFam: TwwDBGrid
    Left = 5
    Top = 39
    Width = 674
    Height = 329
    Selected.Strings = (
      'FAMAPEPAT'#9'20'#9'FAMAPEPAT'#9'F'
      'FAMAPEMAT'#9'20'#9'FAMAPEMAT'#9'F'
      'FAMNOMBRE'#9'20'#9'FAMNOMBRE'#9'F'
      'FAMAPENOM'#9'50'#9'FAMAPENOM'#9'F'
      'FAMRELID'#9'2'#9'FAMRELID'#9'F'
      'FAMDIRECC'#9'75'#9'FAMDIRECC'#9'F'
      'DEPTID'#9'3'#9'DEPTID'#9'F'
      'PROVINID'#9'3'#9'PROVINID'#9'F'
      'DISTID'#9'3'#9'DISTID'#9'F'
      'FAMTELF'#9'15'#9'FAMTELF'#9'F'
      'FAMSEXO'#9'1'#9'FAMSEXO'#9'F'
      'TIPDOCCOD'#9'2'#9'TIPDOCCOD'#9'F'
      'FAMNUMDOC'#9'15'#9'FAMNUMDOC'#9'F'
      'ESTCIVID'#9'2'#9'ESTCIVID'#9'F'
      'FAMFECNAC'#9'18'#9'FAMFECNAC'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    IndicatorColor = icBlack
    object btnDFam: TwwIButton
      Left = 0
      Top = 0
      Width = 28
      Height = 28
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
    end
  end
end
