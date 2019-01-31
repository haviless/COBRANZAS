object FRegCheAnu: TFRegCheAnu
  Left = 546
  Top = 271
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Registro de Cheques Anulados'
  ClientHeight = 322
  ClientWidth = 584
  Color = 10207162
  Constraints.MaxHeight = 360
  Constraints.MaxWidth = 600
  Constraints.MinHeight = 360
  Constraints.MinWidth = 600
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
    Top = 4
    Width = 576
    Height = 267
    Color = 10207162
    Enabled = False
    TabOrder = 0
    object TLabel
      Left = 20
      Top = 46
      Width = 20
      Height = 15
      Caption = 'N'#176' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 20
      Top = 81
      Width = 36
      Height = 15
      Caption = 'Fecha :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 20
      Top = 116
      Width = 38
      Height = 15
      Caption = 'Monto :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 320
      Top = 46
      Width = 20
      Height = 15
      Caption = 'N'#176' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 320
      Top = 116
      Width = 38
      Height = 15
      Caption = 'Monto :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 364
      Top = 8
      Width = 127
      Height = 19
      Caption = 'Operaci'#243'n Afectada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 73
      Top = 8
      Width = 100
      Height = 19
      Caption = 'Cheque Anulado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 320
      Top = 81
      Width = 36
      Height = 15
      Caption = 'Fecha :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel1: TBevel
      Left = 6
      Top = 144
      Width = 560
      Height = 3
    end
    object TLabel
      Left = 20
      Top = 165
      Width = 57
      Height = 15
      Caption = 'U.Proceso :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 20
      Top = 198
      Width = 41
      Height = 15
      Caption = 'U.Pago :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TLabel
      Left = 20
      Top = 231
      Width = 29
      Height = 15
      Caption = 'Ugel :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      Visible = False
    end
    object Bevel2: TBevel
      Left = 6
      Top = 34
      Width = 560
      Height = 3
    end
    object Bevel3: TBevel
      Left = 281
      Top = 39
      Width = 3
      Height = 104
    end
    object Bevel4: TBevel
      Left = 346
      Top = 149
      Width = 3
      Height = 116
    end
    object TLabel
      Left = 381
      Top = 165
      Width = 79
      Height = 15
      Caption = 'Tipo Asociado :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 248
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object dbeChqNum: TwwDBEdit
      Left = 88
      Top = 49
      Width = 120
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'DOCID'
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 88
      Top = 81
      Width = 120
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'DOCFECHA'
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 88
      Top = 113
      Width = 120
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'DOCMTO'
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 378
      Top = 113
      Width = 120
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'RCOBMTO'
      DataSource = DM1.dsRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit5: TwwDBEdit
      Left = 378
      Top = 49
      Width = 120
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'RCOBNOPE'
      DataSource = DM1.dsRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 378
      Top = 81
      Width = 120
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'RCOBFOPE'
      DataSource = DM1.dsRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUProceso: TwwDBEdit
      Left = 135
      Top = 165
      Width = 187
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUPago: TwwDBEdit
      Left = 135
      Top = 198
      Width = 186
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit6: TwwDBEdit
      Left = 135
      Top = 231
      Width = 187
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit7: TwwDBEdit
      Left = 475
      Top = 165
      Width = 33
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOTIPID'
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcUProceso: TwwDBEdit
      Left = 88
      Top = 165
      Width = 40
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'UPROID'
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcdUPago: TwwDBEdit
      Left = 88
      Top = 198
      Width = 40
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'UPAGOID'
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit10: TwwDBEdit
      Left = 88
      Top = 231
      Width = 40
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 12
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 274
    Width = 576
    Height = 44
    Color = 10207162
    TabOrder = 1
    object Z2bbtnCierra: TfcShapeBtn
      Left = 21
      Top = 7
      Width = 34
      Height = 31
      Hint = 'Anular Cheque'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCierraClick
    end
    object Z2bbtnSalir: TfcShapeBtn
      Left = 518
      Top = 7
      Width = 34
      Height = 31
      Hint = 'Salir'
      Color = 13165023
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnSalirClick
    end
  end
end
