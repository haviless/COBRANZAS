object FElegirAso: TFElegirAso
  Left = 185
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Elegir Asociado'
  ClientHeight = 511
  ClientWidth = 727
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 6
    Top = 6
    Width = 717
    Height = 67
    BevelInner = bvLowered
    Color = 10207162
    Enabled = False
    TabOrder = 0
    object lblUse: TLabel
      Left = 27
      Top = 16
      Width = 23
      Height = 15
      Caption = 'USE'
    end
    object lblCMod: TLabel
      Left = 82
      Top = 16
      Width = 80
      Height = 15
      Caption = 'C'#243'digo Modular'
    end
    object lblCPag: TLabel
      Left = 194
      Top = 16
      Width = 77
      Height = 15
      Caption = 'C'#243'digo de Pago'
    end
    object Label4: TLabel
      Left = 367
      Top = 16
      Width = 104
      Height = 15
      Caption = 'Apellidos y Nombres'
    end
    object lblImp: TLabel
      Left = 653
      Top = 16
      Width = 41
      Height = 15
      Caption = 'Importe'
    end
    object lblCta: TLabel
      Left = 133
      Top = 16
      Width = 35
      Height = 15
      Caption = 'Cuenta'
    end
    object Label5: TLabel
      Left = 284
      Top = 16
      Width = 23
      Height = 15
      Caption = 'DNI'
    end
    object dbeUse: TwwDBEdit
      Left = 17
      Top = 32
      Width = 37
      Height = 23
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCMod: TwwDBEdit
      Left = 69
      Top = 32
      Width = 100
      Height = 23
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCPag: TwwDBEdit
      Left = 184
      Top = 32
      Width = 100
      Height = 23
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNombre: TwwDBEdit
      Left = 364
      Top = 32
      Width = 285
      Height = 23
      DataField = 'ASOAPENOM'
      DataSource = DM1.dsEjecuta
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeImp: TwwDBEdit
      Left = 652
      Top = 32
      Width = 59
      Height = 23
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCta: TwwDBEdit
      Left = 112
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDNI: TwwDBEdit
      Left = 285
      Top = 32
      Width = 76
      Height = 23
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 80
    Width = 719
    Height = 425
    BevelInner = bvLowered
    Caption = 'Panel2'
    Color = 10207162
    TabOrder = 1
    object dbgSocio: TwwDBGrid
      Left = 8
      Top = 14
      Width = 702
      Height = 229
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = DM1.dsQry
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      OnTitleButtonClick = dbgSocioTitleButtonClick
      OnDblClick = dbgSocioDblClick
      OnEnter = dbgSocioEnter
    end
    object pnlNombre: TPanel
      Left = 281
      Top = 249
      Width = 417
      Height = 57
      BevelInner = bvLowered
      BevelWidth = 2
      Color = 12838627
      TabOrder = 1
      object Label6: TLabel
        Left = 118
        Top = 26
        Width = 44
        Height = 15
        Caption = 'Longitud'
      end
      object Label1: TLabel
        Left = 11
        Top = 11
        Width = 43
        Height = 30
        Caption = 'Posicion Inicial'
        WordWrap = True
      end
      object seLong: TSpinEdit
        Left = 170
        Top = 17
        Width = 40
        Height = 24
        MaxValue = 40
        MinValue = 1
        TabOrder = 0
        Value = 15
      end
      object BitBtn2: TBitBtn
        Left = 323
        Top = 14
        Width = 86
        Height = 27
        Caption = 'Buscar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000070000077777000007000000070B0
          00777770F0007000000070F000777770B0007000000070000000700000007000
          0000700B000000B0000070000000700F000700F0000070000000700B000700B0
          0000700000007700000000000007700000007770B00070B00077700000007770
          0000700000777000000077770007770007777000000077770B07770B07777000
          0000777700077700077770000000777777777777777770000000777777777777
          777770000000}
      end
      object cbLike: TCheckBox
        Left = 223
        Top = 24
        Width = 86
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ambos Lados'
        TabOrder = 2
      end
      object seIni: TSpinEdit
        Left = 60
        Top = 17
        Width = 40
        Height = 24
        MaxValue = 40
        MinValue = 1
        TabOrder = 3
        Value = 1
      end
    end
    object Panel3: TPanel
      Left = 281
      Top = 308
      Width = 417
      Height = 57
      BevelInner = bvLowered
      BevelWidth = 2
      Color = 12838627
      TabOrder = 2
      object Label2: TLabel
        Left = 15
        Top = 24
        Width = 106
        Height = 15
        Caption = 'Busqueda por Cuenta'
      end
      object BitBtn1: TBitBtn
        Left = 323
        Top = 19
        Width = 86
        Height = 27
        Caption = 'Buscar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000070000077777000007000000070B0
          00777770F0007000000070F000777770B0007000000070000000700000007000
          0000700B000000B0000070000000700F000700F0000070000000700B000700B0
          0000700000007700000000000007700000007770B00070B00077700000007770
          0000700000777000000077770007770007777000000077770B07770B07777000
          0000777700077700077770000000777777777777777770000000777777777777
          777770000000}
      end
      object edtCodMod: TEdit
        Left = 166
        Top = 21
        Width = 121
        Height = 23
        TabOrder = 0
        OnExit = edtCodModExit
      end
    end
    object Panel4: TPanel
      Left = 281
      Top = 367
      Width = 417
      Height = 52
      BevelInner = bvLowered
      BevelWidth = 2
      Color = 12838627
      TabOrder = 3
      object Label3: TLabel
        Left = 15
        Top = 18
        Width = 94
        Height = 15
        Caption = 'Busqueda por DNI'
      end
      object BitBtn3: TBitBtn
        Left = 323
        Top = 12
        Width = 86
        Height = 27
        Caption = 'Buscar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn3Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000070000077777000007000000070B0
          00777770F0007000000070F000777770B0007000000070000000700000007000
          0000700B000000B0000070000000700F000700F0000070000000700B000700B0
          0000700000007700000000000007700000007770B00070B00077700000007770
          0000700000777000000077770007770007777000000077770B07770B07777000
          0000777700077700077770000000777777777777777770000000777777777777
          777770000000}
      end
      object edtDNI: TEdit
        Left = 166
        Top = 14
        Width = 121
        Height = 23
        TabOrder = 0
        OnExit = edtCodModExit
      end
    end
  end
  object pnlOrden: TPanel
    Left = 16
    Top = 330
    Width = 257
    Height = 58
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 12838627
    TabOrder = 2
    Visible = False
    object lblBusca: TLabel
      Left = 16
      Top = 4
      Width = 39
      Height = 16
      Caption = 'Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 10
      Top = 24
      Width = 235
      Height = 2
    end
    object isBusca: TwwIncrementalSearch
      Left = 21
      Top = 28
      Width = 220
      Height = 23
      DataSource = DM1.dsQry
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object btnSalir: TBitBtn
      Left = 232
      Top = 4
      Width = 20
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        7A010000424D7A0100000000000036000000280000000C000000090000000100
        18000000000044010000C40E0000C40E00000000000000000000C6C3C6C6C3C6
        C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3
        C6C6C3C6000000000000C6C3C6C6C3C6C6C3C6C6C3C6000000000000C6C3C6C6
        C3C6C6C3C6C6C3C6C6C3C6000000000000C6C3C6C6C3C6000000000000C6C3C6
        C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6000000000000000000000000C6C3
        C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6000000000000C6
        C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6000000000000
        000000000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C60000000000
        00C6C3C6C6C3C6000000000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C600000000
        0000C6C3C6C6C3C6C6C3C6C6C3C6000000000000C6C3C6C6C3C6C6C3C6C6C3C6
        C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6}
    end
  end
end
