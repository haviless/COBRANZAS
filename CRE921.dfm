object fDetRegBan: TfDetRegBan
  Left = 91
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalle De Registro Por Banco'
  ClientHeight = 427
  ClientWidth = 792
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 1
    Top = -5
    Width = 790
    Height = 430
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object lblGrid03: TLabel
      Left = 12
      Top = 14
      Width = 725
      Height = 17
      AutoSize = False
      Caption = 'Acumulados Por Banco y Cuenta '
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblGrid04: TLabel
      Left = 12
      Top = 36
      Width = 725
      Height = 17
      AutoSize = False
      Caption = 'Acumulados Por Banco y Cuenta '
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitSalir: TBitBtn
      Left = 685
      Top = 393
      Width = 89
      Height = 28
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 0
      OnClick = BitSalirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object dtgUserDet: TwwDBGrid
      Left = 4
      Top = 56
      Width = 782
      Height = 330
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'10'#9'Codigo~Modular'#9#9
        'ASOAPENOM'#9'28'#9'Apellidos y Nombres'#9#9
        'CREDOCPAG'#9'10'#9'Numero~Operaci'#243'n'#9#9
        'CREFPAG'#9'10'#9'Fecha~Documento'#9#9
        'FREG'#9'10'#9'Fecha~Registro'#9#9
        'CREMTOCOB'#9'10'#9'Monto~Registrado'#9#9
        'CREAMORT'#9'9'#9'Amortizaci'#243'n'#9#9
        'CREINTERES'#9'9'#9'Interes'#9#9
        'CREFLAT'#9'8'#9'Gastos / Flat'#9#9
        'MONCOBDESGRAV'#9'8'#9'Desgravamen'#9#9
        'CREMTOEXC'#9'9'#9'Excesos'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsQry2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = dtgUserDetDrawDataCell
      OnDrawFooterCell = dtgUserDetDrawFooterCell
      OnDrawTitleCell = dtgUserDetDrawTitleCell
    end
    object rdgFiltro: TRadioGroup
      Left = 62
      Top = 386
      Width = 294
      Height = 40
      Columns = 3
      Items.Strings = (
        'General'
        'Mismo Mes'
        'Distinto Mes')
      TabOrder = 2
      OnClick = rdgFiltroClick
    end
    object BitMostrar: TBitBtn
      Left = 361
      Top = 395
      Width = 89
      Height = 28
      Hint = 'Salir'
      Caption = 'Mostar'
      TabOrder = 3
      OnClick = BitMostrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
end
