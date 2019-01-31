object FAsoEnBanco: TFAsoEnBanco
  Left = 516
  Top = 128
  Width = 880
  Height = 600
  Caption = 'Cobranzas'
  Color = 10207162
  Constraints.MaxHeight = 600
  Constraints.MaxWidth = 880
  Constraints.MinHeight = 600
  Constraints.MinWidth = 880
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
  object Panel1: TPanel
    Left = 4
    Top = 517
    Width = 856
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10207162
    ParentBackground = False
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 759
      Top = 8
      Width = 80
      Height = 28
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitSalirClick
      Kind = bkClose
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 3
    Width = 856
    Height = 60
    Color = 10207162
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 9
      Width = 464
      Height = 38
      Caption = 'Docentes que NO pagan por Planilla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnBuscarNuevo: TBitBtn
      Left = 721
      Top = 10
      Width = 120
      Height = 40
      Hint = 'Agregar nuevos Docentes que NO pagan por Planilla '
      Caption = 'Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnBuscarNuevoClick
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E60FFFFFFFFFFFFFFFFFFFFFFFFF
        FFF0E60FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E60FFFFFFFFFFFFFFFFFFFFFFFFF
        FF0F8660FFFFFFFFFFFFFFFFFFFFFFFFF0FEE8660FFFFFFFFFFFFFFFFFFFFFFF
        0FEF8E8660FFFFFFFFFFFFFFFFFFFFF0FEFEE868660FFFFFFFFFFFFFFFFFFF0F
        EFEF8E868660FFFFFFFFFFFFFFFFF0FEFEFEE86868660FFFFFFFFFFFFFFF0FEF
        EFEF8E86868660FFFFFFFFFFFFF0FEF0000000000006660FFFFFFFFFFF000007
        777FFFFF07000000FFFFFFFFF00660FFFFF7777F080666660FFFFFFF06666077
        77FFFFFF0780666660FFFFF066660FFFFF7777F078706666660FFFF066660777
        7FFFFFF087870666660FFFF06660FFFFF77777F088780666660FFFFF06607777
        FFFFFFF0F887806660FFFFFFF00FFFFF77777F0F8F7870600FFFFFFFFF07777F
        FFFFFF08F887870FFFFFFFFFF0FFFFF77777F00F8F88780FFFFFFFFFF07777FF
        FFFFF0F8F8F8870FFFFFFFFF0FFFFFFF000000FF8F8F8870FFFFFFFF0F000000
        880FFFFFF8F00080FFFFFFFF007787878F0FFFF0000FFF000FFFFFF077787878
        8800000FFFFFFFFF0FFFFFF0777787888F8F8FFFFFFFFFFF0FFFFFFF00787878
        F8F8F8FFFFFFFFF0FFFFFFFFFF0087888F8F8FFFFFFF000FFFFFFFFFFFFF0008
        F8F8F8FF0000FFFFFFFFFFFFFFFFFFF000000000FFFFFFFFFFFF}
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 68
    Width = 855
    Height = 445
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Asociados Habilitados'
      object dbgActivos: TwwDBGrid
        Left = 0
        Top = 0
        Width = 847
        Height = 352
        DisableThemesInTitle = False
        MemoAttributes = [mSizeable, mWordWrap, mGridShow, mDisableDialog]
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DM1.dsAsoBanAct
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
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnDblClick = dbgActivosDblClick
      end
      object Panel3: TPanel
        Left = 0
        Top = 352
        Width = 847
        Height = 60
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          847
          60)
        object BitExportaAct: TBitBtn
          Left = 755
          Top = 16
          Width = 80
          Height = 28
          Hint = 'Exportar a Excel'
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitExportaActClick
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
        object GroupBox2: TGroupBox
          Left = 15
          Top = 1
          Width = 529
          Height = 53
          TabOrder = 1
          object edtBuscarOG: TEdit
            Left = 167
            Top = 17
            Width = 342
            Height = 27
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            MaxLength = 60
            ParentFont = False
            TabOrder = 2
            OnChange = edtBuscarOGChange
          end
          object BitBtn3: TBitBtn
            Left = 703
            Top = 279
            Width = 100
            Height = 27
            Hint = 'Salir'
            Caption = '&Salir'
            TabOrder = 4
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
          object BitAsigna: TBitBtn
            Left = 595
            Top = 279
            Width = 100
            Height = 27
            Cursor = crHandPoint
            Caption = 'AutoAsignar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
          object rdbNombre: TRadioButton
            Left = 15
            Top = 13
            Width = 146
            Height = 17
            Caption = 'Apellidos y Nombres'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rdbNombreClick
          end
          object rdbDni: TRadioButton
            Left = 15
            Top = 32
            Width = 113
            Height = 17
            Caption = 'DNI'
            TabOrder = 1
            OnClick = rdbDniClick
          end
          object bbtnAsignar: TBitBtn
            Left = 488
            Top = 279
            Width = 100
            Height = 27
            Cursor = crHandPoint
            Caption = 'Asignar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
        end
        object BitAnulaRep: TBitBtn
          Left = 603
          Top = 16
          Width = 110
          Height = 28
          Hint = 'Cambiar al docente a estado NO Activo'
          Caption = 'No Habilitado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitAnulaRepClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Asociados Deshabilitados'
      ImageIndex = 1
      object dbgNoActivos: TwwDBGrid
        Left = 0
        Top = 0
        Width = 847
        Height = 352
        DisableThemesInTitle = False
        MemoAttributes = [mSizeable, mWordWrap, mGridShow, mDisableDialog]
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DM1.dsAsoBanNoAct
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
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnDblClick = dbgNoActivosDblClick
      end
      object Panel4: TPanel
        Left = 0
        Top = 352
        Width = 847
        Height = 60
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          847
          60)
        object btnExportaDes: TBitBtn
          Left = 755
          Top = 16
          Width = 80
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnExportaDesClick
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
        object GroupBox1: TGroupBox
          Left = 15
          Top = 1
          Width = 529
          Height = 53
          TabOrder = 1
          object edtBuscarDes: TEdit
            Left = 167
            Top = 17
            Width = 342
            Height = 27
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            MaxLength = 60
            ParentFont = False
            TabOrder = 2
            OnChange = edtBuscarDesChange
          end
          object BitBtn4: TBitBtn
            Left = 703
            Top = 279
            Width = 100
            Height = 27
            Hint = 'Salir'
            Caption = '&Salir'
            TabOrder = 4
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
          object BitBtn5: TBitBtn
            Left = 595
            Top = 279
            Width = 100
            Height = 27
            Cursor = crHandPoint
            Caption = 'AutoAsignar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
          object rdbNombre2: TRadioButton
            Left = 15
            Top = 13
            Width = 146
            Height = 17
            Caption = 'Apellidos y Nombres'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rdbNombre2Click
          end
          object RadioButton2: TRadioButton
            Left = 15
            Top = 32
            Width = 113
            Height = 17
            Caption = 'DNI'
            TabOrder = 1
            OnClick = RadioButton2Click
          end
          object BitBtn6: TBitBtn
            Left = 488
            Top = 279
            Width = 100
            Height = 27
            Cursor = crHandPoint
            Caption = 'Asignar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
        end
      end
    end
  end
end
