object FDAportes: TFDAportes
  Left = 124
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aportes'
  ClientHeight = 450
  ClientWidth = 779
  Color = 10207162
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
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
  object dbgDAportes: TwwDBGrid
    Left = 0
    Top = 48
    Width = 779
    Height = 402
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
    Align = alBottom
    BorderStyle = bsNone
    Color = 13165023
    DataSource = DM1.dsAportes
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
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    IndicatorColor = icBlack
  end
end
