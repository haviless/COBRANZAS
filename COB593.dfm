object FConvenioAlerta: TFConvenioAlerta
  Left = 325
  Top = 35
  Width = 900
  Height = 700
  Caption = 'Cobranzas'
  Color = 10207162
  Constraints.MaxHeight = 700
  Constraints.MaxWidth = 900
  Constraints.MinHeight = 700
  Constraints.MinWidth = 900
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 2
    Width = 474
    Height = 45
    Caption = 'Alerta Temprana de Convenios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitSalir: TBitBtn
    Left = 790
    Top = 629
    Width = 85
    Height = 27
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Kind = bkClose
  end
  object PageControl1: TPageControl
    Left = 6
    Top = 51
    Width = 872
    Height = 572
    ActivePage = TabSheet2
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Convenios por Vencer'
      DesignSize = (
        864
        538)
      object dbgCabecera: TwwDBGrid
        Left = 6
        Top = 4
        Width = 850
        Height = 475
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsAcuerdos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        OnCalcCellColors = dbgCabeceraCalcCellColors
        PaintOptions.AlternatingRowColor = clInfoBk
      end
      object Panel1: TPanel
        Left = 6
        Top = 488
        Width = 810
        Height = 47
        Enabled = False
        TabOrder = 1
        object Shape1: TShape
          Left = 7
          Top = 7
          Width = 28
          Height = 32
          Brush.Color = clRed
          Shape = stCircle
        end
        object Shape2: TShape
          Left = 281
          Top = 7
          Width = 28
          Height = 32
          Brush.Color = 234492
          Shape = stCircle
        end
        object Shape3: TShape
          Left = 548
          Top = 7
          Width = 28
          Height = 32
          Brush.Color = clGreen
          Shape = stCircle
        end
        object dbeRojo: TwwDBEdit
          Left = 39
          Top = 11
          Width = 220
          Height = 25
          BorderStyle = bsNone
          DataField = 'ROJO'
          DataSource = DM1.dsQry2
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeAmbar: TwwDBEdit
          Left = 314
          Top = 11
          Width = 220
          Height = 25
          BorderStyle = bsNone
          DataField = 'AMBAR'
          DataSource = DM1.dsQry2
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeVerde: TwwDBEdit
          Left = 579
          Top = 11
          Width = 220
          Height = 25
          BorderStyle = bsNone
          DataField = 'VERDE'
          DataSource = DM1.dsQry2
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object bbtnExcel: TBitBtn
        Left = 823
        Top = 496
        Width = 35
        Height = 32
        Hint = 'Exportar a Excel'
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbtnExcelClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
          000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
          0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
          080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
        Spacing = 10
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Convenios Vencidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      DesignSize = (
        864
        538)
      object Panel2: TPanel
        Left = 6
        Top = 488
        Width = 810
        Height = 47
        Enabled = False
        TabOrder = 0
        object Shape4: TShape
          Left = 7
          Top = 7
          Width = 28
          Height = 32
          Brush.Color = clBlack
          Shape = stCircle
        end
        object wwDBEdit1: TwwDBEdit
          Left = 39
          Top = 11
          Width = 220
          Height = 24
          BorderStyle = bsNone
          DataField = 'NEGRO'
          DataSource = DM1.dsQry3
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object dbgVencidos: TwwDBGrid
        Left = 6
        Top = 4
        Width = 850
        Height = 475
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsUtilidades
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        OnCalcCellColors = dbgVencidosCalcCellColors
        PaintOptions.AlternatingRowColor = clInfoBk
      end
      object BitBtn1: TBitBtn
        Left = 823
        Top = 496
        Width = 35
        Height = 32
        Hint = 'Exportar a Excel'
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
          000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
          0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
          080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
        Spacing = 10
      end
    end
  end
end
