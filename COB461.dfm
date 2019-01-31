object FMantAsoBan: TFMantAsoBan
  Left = 565
  Top = 176
  Width = 520
  Height = 500
  Caption = 'Cobranzas'
  Color = clBtnFace
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 520
  Constraints.MinHeight = 500
  Constraints.MinWidth = 520
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 45
    Align = alTop
    Color = 10207162
    TabOrder = 0
    object lblMotivo: TLabel
      Left = 1
      Top = 1
      Width = 502
      Height = 43
      Align = alClient
      Alignment = taCenter
      Caption = 'MOTIVO DE HABILITACION'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlMotivo: TPanel
    Left = 0
    Top = 252
    Width = 504
    Height = 165
    Align = alClient
    Color = 10207162
    TabOrder = 1
    object lblDesAct: TLabel
      Left = 41
      Top = 12
      Width = 38
      Height = 16
      Caption = 'Motivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mMotivo: TMemo
      Left = 32
      Top = 30
      Width = 440
      Height = 88
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
      TabOrder = 0
    end
    object pnlNoActivo: TPanel
      Left = 1
      Top = 126
      Width = 502
      Height = 38
      Align = alBottom
      Color = 10207162
      TabOrder = 1
      object Label8: TLabel
        Left = 32
        Top = 11
        Width = 43
        Height = 16
        Caption = 'Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 251
        Top = 11
        Width = 79
        Height = 16
        Caption = 'Fecha y Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeUsuNoAct: TwwDBEdit
        Left = 86
        Top = 6
        Width = 121
        Height = 21
        DataField = 'USUNOACT'
        DataSource = DM1.dsAsoBanAct
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeFecNoAct: TwwDBEdit
        Left = 337
        Top = 6
        Width = 133
        Height = 21
        DataField = 'FECNOACT'
        DataSource = DM1.dsAsoBanAct
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 417
    Width = 504
    Height = 45
    Align = alBottom
    Color = 10207162
    TabOrder = 2
    object btnActiva: TBitBtn
      Left = 13
      Top = 7
      Width = 120
      Height = 32
      Cursor = crHandPoint
      Caption = 'Habilitar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnActivaClick
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
    object BitSalir: TBitBtn
      Left = 394
      Top = 10
      Width = 80
      Height = 28
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Kind = bkClose
    end
    object btnDesactiva: TBitBtn
      Left = 140
      Top = 7
      Width = 120
      Height = 32
      Cursor = crHandPoint
      Caption = 'Deshabilitar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnDesactivaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 45
    Width = 504
    Height = 50
    Align = alTop
    Color = 10207162
    Enabled = False
    TabOrder = 3
    object Label2: TLabel
      Left = 51
      Top = 3
      Width = 41
      Height = 16
      Caption = 'D.N.I.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 126
      Top = 3
      Width = 78
      Height = 16
      Caption = 'Tipo Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 282
      Top = 3
      Width = 118
      Height = 16
      Caption = 'Apellidos y Nombres'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeDNI: TwwDBEdit
      Left = 26
      Top = 21
      Width = 90
      Height = 21
      DataField = 'ASODNI'
      DataSource = DM1.dsAso
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTipo: TwwDBEdit
      Left = 145
      Top = 21
      Width = 40
      Height = 21
      DataField = 'ASOTIPID'
      DataSource = DM1.dsAso
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNombres: TwwDBEdit
      Left = 212
      Top = 21
      Width = 263
      Height = 21
      DataField = 'ASOAPENOM'
      DataSource = DM1.dsAso
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlActiva: TPanel
    Left = 0
    Top = 95
    Width = 504
    Height = 157
    Align = alTop
    Color = 10207162
    Enabled = False
    TabOrder = 4
    object Label1: TLabel
      Left = 41
      Top = 5
      Width = 128
      Height = 16
      Caption = 'Motivo de Habilitaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 34
      Top = 125
      Width = 43
      Height = 16
      Caption = 'Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 253
      Top = 125
      Width = 79
      Height = 16
      Caption = 'Fecha y Hora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mActiva: TMemo
      Left = 32
      Top = 23
      Width = 440
      Height = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
      TabOrder = 0
    end
    object dbeFecAct: TwwDBEdit
      Left = 339
      Top = 123
      Width = 133
      Height = 21
      DataField = 'FECACT'
      DataSource = DM1.dsAsoBanAct
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUsuAct: TwwDBEdit
      Left = 88
      Top = 123
      Width = 121
      Height = 21
      DataField = 'USUACT'
      DataSource = DM1.dsAsoBanAct
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
end
