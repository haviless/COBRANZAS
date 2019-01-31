object fExcesos: TfExcesos
  Left = 204
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Excesos Por Aplicar'
  ClientHeight = 206
  ClientWidth = 635
  Color = 10207162
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = -2
    Width = 630
    Height = 204
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 509
      Top = 172
      Width = 87
      Height = 27
      Caption = '&Salir'
      TabOrder = 0
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object dtgExcesos: TwwDBGrid
      Left = 9
      Top = 15
      Width = 617
      Height = 147
      DisableThemesInTitle = False
      Selected.Strings = (
        'CREDID'#9'16'#9'Numero De Credito'#9#9
        'CRECUOTA'#9'5'#9'N'#176'Cuota'#9#9
        'CREFPAG'#9'10'#9'F.Pago'#9#9
        'CREMTOCOB'#9'11'#9'Monto Cobrado'#9#9
        'CREMTOEXC'#9'11'#9'Monto Exceso'#9#9
        'CREAPLEXC'#9'11'#9'Exceso Aplicado'#9#9
        'PORAPLICA'#9'11'#9'Exceso Por Aplicar'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCambios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
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
