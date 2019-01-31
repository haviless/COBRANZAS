object FToolConsistenciaTA: TFToolConsistenciaTA
  Left = 5
  Top = 129
  Width = 1005
  Height = 213
  Caption = 'Consistencia'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 997
    Height = 186
    Align = alClient
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object pnlInforma: TPanel
      Left = 584
      Top = 8
      Width = 220
      Height = 169
      Color = clYellow
      TabOrder = 6
      Visible = False
      object lblRegTot: TLabel
        Left = 8
        Top = 72
        Width = 149
        Height = 16
        Caption = 'Registros para Actualizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVan: TLabel
        Left = 8
        Top = 106
        Width = 31
        Height = 16
        Caption = 'Van :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblTitu1: TLabel
        Left = 8
        Top = 37
        Width = 8
        Height = 19
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTitu0: TLabel
        Left = 8
        Top = 5
        Width = 8
        Height = 19
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTitu2: TLabel
        Left = 8
        Top = 136
        Width = 7
        Height = 16
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object edtName: TEdit
      Left = 670
      Top = 160
      Width = 78
      Height = 23
      TabOrder = 0
      Text = 'edtName'
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 23
      Top = 4
      Width = 330
      Height = 120
      Caption = 'Condiciones de Busqueda'
      TabOrder = 1
      object cbUse: TCheckBox
        Left = 6
        Top = 82
        Width = 121
        Height = 14
        Caption = 'USE'
        TabOrder = 0
        Visible = False
      end
      object cbCM: TCheckBox
        Left = 6
        Top = 92
        Width = 121
        Height = 15
        Caption = 'C'#243'digo Modular'
        TabOrder = 1
        Visible = False
      end
      object cbAN: TCheckBox
        Left = 6
        Top = 60
        Width = 116
        Height = 17
        Caption = 'Apellidos y Nombres'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object cbCP: TCheckBox
        Left = 6
        Top = 100
        Width = 121
        Height = 17
        Caption = 'C'#243'digo de pago'
        TabOrder = 3
        Visible = False
      end
      object seLong: TSpinEdit
        Left = 131
        Top = 56
        Width = 38
        Height = 24
        MaxValue = 40
        MinValue = 1
        TabOrder = 4
        Value = 20
      end
      object cbLike: TCheckBox
        Left = 183
        Top = 59
        Width = 86
        Height = 17
        Caption = 'Ambos Lados'
        TabOrder = 5
      end
      object bbtnConsist1: TBitBtn
        Left = 131
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Buscar SQL'
        TabOrder = 6
        OnClick = bbtnConsist1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDD0000000DDDDD000DDDDD000D0000000DDDDD070DDDDD070D0000000DDDD
          D0008DDD8000D0000000DDDDD00000000000D0000000D444407000070000D000
          0000D4FFF07000070000D0000000D4F8800000000000D0000000D4FFFF000070
          000DD0000000D4F88F80088F00DDD0000000D4FFFFF00FFF00DDD0000000D4F8
          8F80088F00DDD0000000D4FFFFFFFFFF4DDDD0000000D444444444444DDDD000
          0000D474474474474DDDD0000000D444444444444DDDD0000000DDDDDDDDDDDD
          DDDDD0000000}
      end
      object BitBtn4: TBitBtn
        Left = 228
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Automatica'
        TabOrder = 7
        OnClick = BitBtn4Click
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777770000007777777777777777770000007777770007777700070000007777
          770F0777770F0700000077777700087778000700000077777700000000000700
          00007777770F0000F000070000007777770F0000F00007000000780000000000
          00000700000070FBFB00000800007700000070BFBFBF00B070077700000070FB
          FBFB00F070077700000070BFBFBF00B070077700000070FBFBFBFBF077777700
          000070BFBFBFBFB077777700000070FBF0000008777777000000770007777777
          777777000000777777777777777777000000}
      end
      object BitBtn5: TBitBtn
        Left = 202
        Top = 89
        Width = 122
        Height = 25
        Caption = 'Actualiza Cambios'
        TabOrder = 8
        OnClick = BitBtn5Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000000007777703300007030777770330000703000777033000000303
          0777033333333303000703300000330303070307777703030307030777770303
          0307030777770003030703077777070303070000000000000307770307777707
          0307770000000000000777770307777707077777000000000007}
      end
      object cbCC: TCheckBox
        Left = 6
        Top = 30
        Width = 121
        Height = 17
        Caption = 'Cuenta Corriente'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
    end
    object GroupBox2: TGroupBox
      Left = 380
      Top = 4
      Width = 197
      Height = 96
      Caption = 'Inconsistencias'
      TabOrder = 2
      object Busca: TLabel
        Left = 35
        Top = 48
        Width = 30
        Height = 15
        Caption = 'Busca'
      end
      object Reemplaza: TLabel
        Left = 116
        Top = 48
        Width = 54
        Height = 15
        Caption = 'Reemplaza'
      end
      object BitBtn1: TBitBtn
        Left = 10
        Top = 18
        Width = 87
        Height = 25
        Caption = 'Reemplazar'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777770000000007700000007777
          7708888888077000000077777708888888077000000070000008888888077000
          000070FBFB08888888077000000070BFBF08888888077000000070FBFB088888
          88077000000070BFBF00000000077000000070FBFBFBFBF077777000000070BF
          BFBFBFB077777000000070FBFBFBFBF077777000000070BFBFBFBFB077777000
          0000700000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
      object me1: TMaskEdit
        Left = 4
        Top = 65
        Width = 92
        Height = 23
        TabOrder = 1
      end
      object me2: TMaskEdit
        Left = 99
        Top = 65
        Width = 92
        Height = 23
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 104
        Top = 18
        Width = 87
        Height = 25
        Caption = 'Automatica'
        TabOrder = 3
        OnClick = BitBtn3Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777770000070000000777777777770BFB0700000007777
          77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
          0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
          B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
          FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
          0000770000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
    end
    object pbTot: TProgressBar
      Left = 381
      Top = 106
      Width = 195
      Height = 17
      TabOrder = 3
      Visible = False
    end
    object GroupBox3: TGroupBox
      Left = 22
      Top = 127
      Width = 554
      Height = 46
      TabOrder = 4
      object Label4: TLabel
        Left = 10
        Top = 19
        Width = 41
        Height = 15
        Caption = 'Archivo'
      end
      object Label5: TLabel
        Left = 189
        Top = 19
        Width = 42
        Height = 15
        Caption = 'Cobrado'
      end
      object Label6: TLabel
        Left = 368
        Top = 19
        Width = 57
        Height = 15
        Caption = 'Diferencia'
      end
      object meArc: TMaskEdit
        Left = 55
        Top = 15
        Width = 110
        Height = 23
        Enabled = False
        TabOrder = 0
        Text = 'meArc'
      end
      object meCob: TMaskEdit
        Left = 234
        Top = 14
        Width = 110
        Height = 23
        Enabled = False
        TabOrder = 1
        Text = 'meCob'
      end
      object meDif: TMaskEdit
        Left = 430
        Top = 14
        Width = 110
        Height = 23
        Enabled = False
        TabOrder = 2
        Text = 'meDif'
      end
    end
    object gbPorDataOk: TGroupBox
      Left = 593
      Top = 4
      Width = 154
      Height = 169
      TabOrder = 5
      object Z2bbtnMarTod: TBitBtn
        Left = 8
        Top = 19
        Width = 140
        Height = 31
        Caption = 'Marcar Todos'
        TabOrder = 0
        TabStop = False
        OnClick = Z2bbtnMarTodClick
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
      end
      object Z2bbtnGenAso: TBitBtn
        Left = 8
        Top = 96
        Width = 140
        Height = 31
        Caption = 'Generar Asociados'
        TabOrder = 1
        TabStop = False
        Visible = False
        OnClick = Z2bbtnGenAsoClick
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
      end
      object bbtnUbica: TBitBtn
        Left = 8
        Top = 96
        Width = 140
        Height = 31
        Caption = 'Ubicar Cuota '
        TabOrder = 2
        TabStop = False
        OnClick = bbtnUbicaClick
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
      end
      object bbtnCtaCte: TBitBtn
        Left = 9
        Top = 133
        Width = 140
        Height = 29
        Caption = 'Cuenta Corriente'
        TabOrder = 3
        TabStop = False
        OnClick = bbtnCtaCteClick
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
      end
      object BitBtn2: TBitBtn
        Left = 8
        Top = 57
        Width = 140
        Height = 31
        Caption = 'Reporte de Conciliaci'#243'n'
        TabOrder = 4
        TabStop = False
        Visible = False
        OnClick = BitBtn2Click
        NumGlyphs = 2
      end
    end
    object gbSumaTemporal: TGroupBox
      Left = 775
      Top = 3
      Width = 217
      Height = 77
      Caption = 'Suma Columna Importe y Comisi'#242'n'
      TabOrder = 7
      object Label1: TLabel
        Left = 7
        Top = 24
        Width = 41
        Height = 15
        Caption = 'Importe'
      end
      object Label2: TLabel
        Left = 8
        Top = 50
        Width = 46
        Height = 15
        Caption = 'Comisi'#242'n'
      end
      object SpeedButton1: TSpeedButton
        Left = 171
        Top = 26
        Width = 33
        Height = 33
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
          03333377777777777F33333003333330033333377FF333377F33333300333333
          0333333377FF33337F3333333003333303333333377FF3337333333333003333
          333333333377FF3333333333333003333333333333377FF33333333333330033
          3333333333337733333333333330033333333333333773333333333333003333
          33333333337733333F3333333003333303333333377333337F33333300333333
          03333333773333337F33333003333330033333377FFFFFF77F33330000000000
          0333337777777777733333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object GroupBox5: TGroupBox
        Left = 63
        Top = 14
        Width = 98
        Height = 56
        Enabled = False
        TabOrder = 0
        object mComision: TEdit
          Left = 1
          Top = 35
          Width = 97
          Height = 23
          Color = clYellow
          TabOrder = 0
        end
        object mImporte: TEdit
          Left = 1
          Top = 7
          Width = 97
          Height = 23
          Color = clYellow
          TabOrder = 1
        end
      end
    end
    object gbSumaDescargado: TGroupBox
      Left = 774
      Top = 80
      Width = 218
      Height = 70
      Caption = 'Suma Mto.Descargado '
      TabOrder = 8
      object Label3: TLabel
        Left = 7
        Top = 24
        Width = 56
        Height = 15
        Caption = 'F.Temporal'
      end
      object Label7: TLabel
        Left = 8
        Top = 53
        Width = 41
        Height = 15
        Caption = 'Importe'
      end
      object SpeedButton2: TSpeedButton
        Left = 176
        Top = 27
        Width = 31
        Height = 32
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
          03333377777777777F33333003333330033333377FF333377F33333300333333
          0333333377FF33337F3333333003333303333333377FF3337333333333003333
          333333333377FF3333333333333003333333333333377FF33333333333330033
          3333333333337733333333333330033333333333333773333333333333003333
          33333333337733333F3333333003333303333333377333337F33333300333333
          03333333773333337F33333003333330033333377FFFFFF77F33330000000000
          0333337777777777733333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object GroupBox7: TGroupBox
        Left = 63
        Top = 38
        Width = 102
        Height = 30
        Enabled = False
        TabOrder = 0
        object mImporte2: TEdit
          Left = 0
          Top = 5
          Width = 101
          Height = 23
          Color = clYellow
          TabOrder = 0
        end
      end
      object FecDescargo: TDateTimePicker
        Left = 63
        Top = 16
        Width = 102
        Height = 25
        Date = 38111.391862418980000000
        Time = 38111.391862418980000000
        Color = clYellow
        TabOrder = 1
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsPadre
    UserName = 'DBPipeline1'
    Left = 246
    Top = 127
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\incosistencias.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 310
    Top = 127
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Reporte para SOL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61648
        mmTop = 2646
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Tabla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 15081
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Asoid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 36777
        mmTop = 15081
        mmWidth = 9260
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 20373
        mmWidth = 75671
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 124090
        mmTop = 6085
        mmWidth = 39158
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'TABLA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 0
        mmWidth = 41540
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
    end
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 2.66'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    RTF.PixelFormat = pf8bit
    RTF.PixelsPerInch = 96
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.AutoEmbedFonts = True
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    DotMatrix.PrinterType = ptEpson
    Left = 351
    Top = 60
  end
end
