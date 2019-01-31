object FSolApliFDDetalle: TFSolApliFDDetalle
  Left = 419
  Top = 209
  BorderStyle = bsDialog
  BorderWidth = 3
  Caption = 'Confirmar Aplicaci'#243'n de Fondo de Desgravamen'
  ClientHeight = 372
  ClientWidth = 528
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 88
    Top = 40
    Width = 28
    Height = 13
    Caption = 'D.N.I.'
  end
  object lbl2: TLabel
    Left = 72
    Top = 65
    Width = 44
    Height = 13
    Caption = 'Asociado'
  end
  object lbl3: TLabel
    Left = 272
    Top = 90
    Width = 100
    Height = 13
    Caption = 'Fecha de Ocurrencia'
  end
  object lbl4: TLabel
    Left = 52
    Top = 115
    Width = 64
    Height = 13
    Caption = 'Solicitado por'
  end
  object lbl5: TLabel
    Left = 283
    Top = 117
    Width = 88
    Height = 13
    Caption = 'Fecha de Solicitud'
  end
  object lbl6: TLabel
    Left = 56
    Top = 144
    Width = 60
    Height = 13
    Caption = 'Observacion'
  end
  object lblTituloCabecera: TLabel
    Left = 0
    Top = 0
    Width = 528
    Height = 48
    Align = alTop
    Alignment = taCenter
    Caption = 'NO INGRESO A LAS CONDICIONALES'#13#10'COMUNIQUESE CON SISTEMAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 5
    Top = 219
    Width = 521
    Height = 1
  end
  object lbl8: TLabel
    Left = 10
    Top = 223
    Width = 113
    Height = 13
    Caption = 'Ingrese el sustento.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMaxCaracteres: TLabel
    Left = 402
    Top = 313
    Width = 123
    Height = 13
    Alignment = taRightJustify
    BiDiMode = bdRightToLeft
    Caption = '0 de 1000 Caracteres'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 64
    Top = 90
    Width = 52
    Height = 13
    Caption = 'Ocurrencia'
  end
  object edDNI: TDBEdit
    Left = 120
    Top = 35
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edAsociado: TDBEdit
    Left = 120
    Top = 60
    Width = 345
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object edFechaOcurrencia: TDBEdit
    Left = 375
    Top = 86
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object edSolicitadoPor: TDBEdit
    Left = 120
    Top = 111
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edFechaSolicitud: TDBEdit
    Left = 375
    Top = 113
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object edObservacion: TDBMemo
    Left = 120
    Top = 139
    Width = 345
    Height = 73
    ReadOnly = True
    TabOrder = 5
  end
  object btnConfirmar: TButton
    Left = 9
    Top = 343
    Width = 140
    Height = 28
    Caption = 'Aplicar FDD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnConfirmarClick
  end
  object btnRechazar: TButton
    Left = 157
    Top = 343
    Width = 140
    Height = 28
    Caption = 'Rechazar FDD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnRechazarClick
  end
  object edSustento: TMemo
    Left = 5
    Top = 238
    Width = 521
    Height = 73
    Lines.Strings = (
      'edSustento')
    MaxLength = 1000
    TabOrder = 8
    OnExit = edSustentoExit
    OnKeyPress = edSustentoKeyPress
  end
  object BitSalir: TBitBtn
    Left = 449
    Top = 343
    Width = 77
    Height = 28
    Caption = '&Salir'
    TabOrder = 9
    OnClick = BitSalirClick
    Kind = bkClose
  end
  object edOcurrencia: TDBEdit
    Left = 120
    Top = 86
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 10
  end
  object btnRevierte: TButton
    Left = 304
    Top = 343
    Width = 101
    Height = 28
    Caption = 'Revertir Dif.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Visible = False
    OnClick = btnRevierteClick
  end
end
