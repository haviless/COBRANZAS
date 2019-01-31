object FNueMesRep: TFNueMesRep
  Left = 385
  Top = 278
  BorderStyle = bsDialog
  Caption = 'Generar nuevo mes de reprogramaci'#243'n'
  ClientHeight = 153
  ClientWidth = 473
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn3: TBitBtn
    Left = 380
    Top = 118
    Width = 86
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
  object btnapertura: TBitBtn
    Left = 292
    Top = 118
    Width = 86
    Height = 27
    Caption = '&Aperturar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnaperturaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
      555555777777777FF5555500000000805555557777777777FF555550BBBBB008
      05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
      005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
      055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
      055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
      05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
      05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
      005555555775FFFF77F555555570000000555555555777777755}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 2
    Width = 465
    Height = 113
    Caption = ' Generando nuevo mes de proceso '
    TabOrder = 2
    object Label1: TLabel
      Left = 6
      Top = 30
      Width = 108
      Height = 13
      Caption = 'A'#241'o y mes de proceso:'
    end
    object Label2: TLabel
      Left = 6
      Top = 48
      Width = 96
      Height = 13
      Caption = 'Usuario que genera:'
    end
    object Label3: TLabel
      Left = 6
      Top = 74
      Width = 136
      Height = 13
      Caption = 'Fecha y hora de generaci'#243'n:'
    end
    object stanomesdeoroceso: TStaticText
      Left = 147
      Top = 24
      Width = 153
      Height = 21
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 0
    end
    object stusuarioqueprocesa: TStaticText
      Left = 147
      Top = 47
      Width = 233
      Height = 21
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 1
    end
    object stfechorproceso: TStaticText
      Left = 147
      Top = 70
      Width = 153
      Height = 21
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 2
    end
  end
end
