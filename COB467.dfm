object FSolicitudDevo: TFSolicitudDevo
  Left = 497
  Top = 171
  Width = 700
  Height = 420
  Caption = 'Env'#237'a a Devoluci'#243'n'
  Color = 10207162
  Constraints.MaxHeight = 420
  Constraints.MaxWidth = 700
  Constraints.MinHeight = 420
  Constraints.MinWidth = 700
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
  object grbacciones: TGroupBox
    Left = 19
    Top = 4
    Width = 641
    Height = 339
    TabOrder = 0
    object Label3: TLabel
      Left = 22
      Top = 32
      Width = 121
      Height = 19
      Caption = 'Importe a Devolver'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 14
      Top = 73
      Width = 138
      Height = 19
      Caption = 'Motivo de devoluci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 331
      Top = 70
      Width = 81
      Height = 19
      Caption = 'Observaci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 151
      Top = 24
      Width = 110
      Height = 34
      BevelInner = bvLowered
      Enabled = False
      TabOrder = 0
      object edtDevuelve: TEdit
        Left = 2
        Top = 1
        Width = 105
        Height = 31
        Color = 8454143
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlTipodesembolso: TPanel
      Left = 19
      Top = 165
      Width = 602
      Height = 158
      Color = 10207162
      TabOrder = 1
      object Label21: TLabel
        Left = 37
        Top = 28
        Width = 21
        Height = 13
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblAgencia: TLabel
        Left = 29
        Top = 67
        Width = 84
        Height = 13
        Caption = 'Agencia Bancaria'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblCtaAhorros: TLabel
        Left = 343
        Top = 28
        Width = 90
        Height = 13
        Caption = 'Cuenta De Ahorros'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 3
        Width = 125
        Height = 19
        Caption = 'Tipo de Desembolso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBLkuCTipDes: TwwDBLookupCombo
        Left = 29
        Top = 41
        Width = 49
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TIPDESEID'#9'2'#9'Codigo'#9'F'
          'TIPDESEABR'#9'25'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsFormPago
        LookupField = 'TIPDESEID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DBLkuCTipDesChange
        OnExit = DBLkuCTipDesExit
      end
      object EdtTipDes: TEdit
        Left = 82
        Top = 41
        Width = 246
        Height = 24
        Color = 12975869
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBLkCDAgencias: TwwDBLookupComboDlg
        Left = 30
        Top = 80
        Width = 191
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit, dgDblClickColSizing]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Agencia Bancarias'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'AGENBCODES'#9'25'#9'Agencia'#9'F'
          'DPTODES'#9'20'#9'Departamento'#9'F'
          'AGENBCOID'#9'8'#9'Codigo de Agencia'#9'F')
        LookupTable = DM1.cdsAgenciaBco
        LookupField = 'AGENBCODES'
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object EdtCodAgen: TEdit
        Left = 226
        Top = 80
        Width = 124
        Height = 24
        Color = 12975869
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtDepGir: TEdit
        Left = 356
        Top = 80
        Width = 207
        Height = 24
        Color = 12975869
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdtCtaAhorros: TEdit
        Left = 339
        Top = 41
        Width = 100
        Height = 23
        Color = 12975869
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdtSitCta: TEdit
        Left = 446
        Top = 41
        Width = 115
        Height = 23
        Color = 12975869
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object pnlOficinas: TPanel
        Left = 41
        Top = 112
        Width = 309
        Height = 35
        Locked = True
        TabOrder = 7
        Visible = False
        object Label12: TLabel
          Left = 7
          Top = 8
          Width = 86
          Height = 13
          Caption = 'Desembolsar En : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel4: TPanel
          Left = 147
          Top = 2
          Width = 158
          Height = 30
          Caption = 'Panel1'
          Enabled = False
          TabOrder = 0
          object EdtOfiDes: TEdit
            Left = 3
            Top = 3
            Width = 151
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object DBLkOfiDes: TwwDBLookupCombo
          Left = 101
          Top = 5
          Width = 44
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'OFDESID'#9'2'#9'Codigo'#9'F'
            'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
          LookupTable = DM1.cdsOfDes
          LookupField = 'OFDESID'
          Options = [loColLines, loRowLines, loTitles]
          ParentFont = False
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
      object pnlDevxOFi: TPanel
        Left = 426
        Top = 108
        Width = 107
        Height = 63
        TabOrder = 8
        Visible = False
        object Shape10: TShape
          Left = 1
          Top = 28
          Width = 103
          Height = 33
        end
        object Shape11: TShape
          Left = 1
          Top = 1
          Width = 103
          Height = 28
          Brush.Color = clSilver
        end
        object Label16: TLabel
          Left = 3
          Top = 8
          Width = 37
          Height = 13
          Caption = 'Actual'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 53
          Top = 3
          Width = 50
          Height = 13
          Caption = 'Dev. por'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 62
          Top = 15
          Width = 34
          Height = 13
          Caption = 'Oficio'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Shape12: TShape
          Left = 48
          Top = 1
          Width = 1
          Height = 60
        end
        object lblactual: TLabel
          Left = 9
          Top = 33
          Width = 31
          Height = 20
          Caption = '999'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lbldevxofi: TLabel
          Left = 65
          Top = 33
          Width = 31
          Height = 20
          Caption = '999'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object dblMotivoDev: TwwDBLookupCombo
      Left = 15
      Top = 91
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODREF'#9'3'#9'Codigo'#9'F'
        'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblMotivoDevChange
      OnExit = dblMotivoDevExit
    end
    object Panel6: TPanel
      Left = 71
      Top = 91
      Width = 257
      Height = 27
      Enabled = False
      TabOrder = 3
      object edtMotivoDev: TEdit
        Left = 3
        Top = 1
        Width = 250
        Height = 24
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Motdevo: TMemo
      Left = 331
      Top = 89
      Width = 288
      Height = 52
      MaxLength = 450
      TabOrder = 4
      OnKeyPress = MotdevoKeyPress
    end
  end
  object btnAceptar: TfcShapeBtn
    Left = 474
    Top = 350
    Width = 87
    Height = 29
    Caption = 'Aceptar'
    Color = clBtnFace
    DitherColor = clWhite
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentClipping = True
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    TabOrder = 1
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    TextOptions.WordWrap = True
    OnClick = btnAceptarClick
  end
  object BitBtn1: TBitBtn
    Left = 577
    Top = 349
    Width = 80
    Height = 29
    Caption = '&Salir'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333301BBBBBBBB033333011BBBBBBB0333330111BBBBBB03333301110BBBBB
      03333301110BBBBB03333301110BBBBB03333301110BBBBB03333301110BBBBB
      03333301110BBBBB0333330111B0BBBB03333301110BBBBB03333301110BBBBB
      03333301E10BBBBB03333301EE0BBBBB03333300000000000333}
  end
end
