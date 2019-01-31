object FToolDetalle: TFToolDetalle
  Left = 104
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Plantillas'
  ClientHeight = 149
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 149
    Align = alClient
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 47
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Archivo'
    end
    object Label8: TLabel
      Left = 46
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Periodo'
    end
    object Image1: TImage
      Left = 0
      Top = 192
      Width = 785
      Height = 38
      ParentShowHint = False
      ShowHint = False
      Transparent = True
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
    end
    object GroupBox1: TGroupBox
      Left = 125
      Top = 3
      Width = 217
      Height = 141
      Caption = 'Lineas'
      TabOrder = 0
      object Label4: TLabel
        Left = 168
        Top = 98
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label3: TLabel
        Left = 115
        Top = 98
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Bevel3: TBevel
        Left = 4
        Top = 92
        Width = 209
        Height = 3
      end
      object Bevel4: TBevel
        Left = 4
        Top = 51
        Width = 209
        Height = 3
      end
      object Bevel5: TBevel
        Left = 106
        Top = 10
        Width = 3
        Height = 80
      end
      object bbtnEliminaL: TBitBtn
        Left = 116
        Top = 61
        Width = 88
        Height = 25
        Caption = 'Elimina'
        TabOrder = 0
        OnClick = bbtnEliminaLClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
      end
      object BitBtn2: TBitBtn
        Left = 116
        Top = 20
        Width = 88
        Height = 25
        Caption = 'Des-Marcar'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 11
        Top = 106
        Width = 88
        Height = 25
        Caption = 'Marcar Lineas'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 11
        Top = 61
        Width = 88
        Height = 25
        Caption = 'Lineas Iguales'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object seIni: TSpinEdit
        Left = 106
        Top = 112
        Width = 50
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
      object seFin: TSpinEdit
        Left = 159
        Top = 112
        Width = 50
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 5
        Value = 0
      end
      object BitBtn5: TBitBtn
        Left = 11
        Top = 20
        Width = 88
        Height = 25
        Caption = 'Marcar Todo'
        TabOrder = 6
        OnClick = BitBtn5Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 351
      Top = 3
      Width = 413
      Height = 141
      Caption = 'Columna'
      TabOrder = 1
      object Label5: TLabel
        Left = 91
        Top = 10
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label6: TLabel
        Left = 140
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label7: TLabel
        Left = 322
        Top = 11
        Width = 27
        Height = 13
        Caption = 'Texto'
      end
      object Label9: TLabel
        Left = 91
        Top = 55
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label10: TLabel
        Left = 141
        Top = 55
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label13: TLabel
        Left = 226
        Top = 55
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label14: TLabel
        Left = 275
        Top = 55
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label15: TLabel
        Left = 190
        Top = 69
        Width = 23
        Height = 20
        Caption = '-->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel8: TBevel
        Left = 4
        Top = 50
        Width = 353
        Height = 3
      end
      object Bevel1: TBevel
        Left = 4
        Top = 94
        Width = 353
        Height = 3
      end
      object Label11: TLabel
        Left = 277
        Top = 11
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Bevel2: TBevel
        Left = 359
        Top = 11
        Width = 3
        Height = 125
      end
      object Label12: TLabel
        Left = 363
        Top = 27
        Width = 46
        Height = 13
        Caption = 'Deshacer'
      end
      object Label16: TLabel
        Left = 363
        Top = 110
        Width = 46
        Height = 13
        Caption = 'Deshacer'
      end
      object Bevel6: TBevel
        Left = 184
        Top = 9
        Width = 4
        Height = 40
      end
      object Label1: TLabel
        Left = 113
        Top = 99
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label17: TLabel
        Left = 162
        Top = 99
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label18: TLabel
        Left = 209
        Top = 98
        Width = 30
        Height = 13
        Caption = 'Busca'
      end
      object Label19: TLabel
        Left = 247
        Top = 98
        Width = 53
        Height = 13
        Caption = 'Reemplaza'
      end
      object Label20: TLabel
        Left = 306
        Top = 99
        Width = 51
        Height = 13
        Caption = 'Mayuscula'
      end
      object bbtnInserta: TBitBtn
        Left = 195
        Top = 20
        Width = 70
        Height = 25
        Caption = 'Añadir '
        TabOrder = 10
        OnClick = bbtnInsertaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000000000077777777770000000FFFFFF077777777770000000FFFF
          FF077777777770000000FFFFFF07777777777000000000000007777777777000
          0000777777774770000070000000777777744770EFEF70000000777777444440
          FEFE70000000777777744770EFEF700000007777777747700000700000000000
          00077777777770000000FFFFFF077777777770000000FFFFFF07777777777000
          0000FFFFFF077777777770000000000000077777777770000000777777777777
          777770000000}
      end
      object bbtnEliminaC: TBitBtn
        Left = 10
        Top = 19
        Width = 70
        Height = 25
        Caption = 'Eliminar'
        TabOrder = 2
        OnClick = bbtnEliminaCClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
      end
      object me1: TMaskEdit
        Left = 320
        Top = 24
        Width = 32
        Height = 21
        MaxLength = 10
        TabOrder = 9
      end
      object seFinC: TSpinEdit
        Left = 135
        Top = 23
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnExit = seFinCExit
      end
      object seIniC: TSpinEdit
        Left = 86
        Top = 23
        Width = 45
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 0
        OnExit = seIniCExit
      end
      object seIniC2: TSpinEdit
        Left = 86
        Top = 68
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
      object seFinC2: TSpinEdit
        Left = 135
        Top = 68
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
      object bbtnUnir: TBitBtn
        Left = 10
        Top = 64
        Width = 70
        Height = 25
        Caption = 'Unir    '
        TabOrder = 7
        OnClick = bbtnUnirClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007000000007777777700000007FFF
          FFFF07777777700000007FFFFFFF07777777700000007FFFFFFF077777777000
          00007000000000007747700000007EFEFEFEFEF07744700000007FEFEFEFEFE0
          4444400000007EFEFEFEFEF07744700000007000000000007747700000007FFF
          FFFF07777777700000007FFFFFFF07777777700000007FFFFFFF077777777000
          0000700000000777777770000000777777777777777770000000777777777777
          777770000000}
      end
      object seIniC3: TSpinEdit
        Left = 222
        Top = 68
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 5
        Value = 0
      end
      object seFinC3: TSpinEdit
        Left = 271
        Top = 68
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 6
        Value = 0
      end
      object seIniC4: TSpinEdit
        Left = 272
        Top = 24
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 8
        Value = 0
        OnExit = seIniCExit
      end
      object BitBtn1: TBitBtn
        Left = 366
        Top = 60
        Width = 40
        Height = 32
        TabOrder = 11
        OnClick = BitBtn1Click
        Glyph.Data = {
          96010000424D9601000000000000760000002800000017000000180000000100
          04000000000020010000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          BBBBBBBBBBB08888888888888888888888B08888888888888888888888B08888
          888888888888888888B08888888888888888888888B088888888888888888888
          88B08888888888888884488888B08888888888888888448888B0884444444448
          8888844888B08844444444888888884488B08844444448888888884448B08844
          444488888888888448B08844444488888888888448B088444484488888888844
          48B08844488844888888884488B08844888844488888844888B0884888888444
          8888444888B08888888888444444448888B08888888888844444488888B08888
          888888888888888888B08888888888888888888888B088888888888888888888
          88B08888888888888888888888B08888888888888888888888B0}
      end
      object bbtnReemplaza: TBitBtn
        Left = 10
        Top = 108
        Width = 89
        Height = 25
        Caption = 'Reemplazar'
        TabOrder = 12
        OnClick = bbtnReemplazaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000000000077777777770000000FFFFFF077777777770000000FFFF
          FF077777777770000000FFFFFF07777777777000000000000007777777777000
          0000777777774770000070000000777777744770EFEF70000000777777444440
          FEFE70000000777777744770EFEF700000007777777747700000700000000000
          00077777777770000000FFFFFF077777777770000000FFFFFF07777777777000
          0000FFFFFF077777777770000000000000077777777770000000777777777777
          777770000000}
      end
      object seIni3: TSpinEdit
        Left = 107
        Top = 112
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 13
        Value = 0
      end
      object seFin3: TSpinEdit
        Left = 156
        Top = 112
        Width = 45
        Height = 22
        MaxLength = 3
        MaxValue = 500
        MinValue = 0
        TabOrder = 14
        Value = 0
      end
      object meBusca: TMaskEdit
        Left = 209
        Top = 112
        Width = 32
        Height = 21
        MaxLength = 10
        TabOrder = 15
      end
      object meReemp: TMaskEdit
        Left = 258
        Top = 112
        Width = 32
        Height = 21
        MaxLength = 10
        TabOrder = 16
      end
      object cbMay: TCheckBox
        Left = 323
        Top = 116
        Width = 25
        Height = 17
        Caption = ' '
        TabOrder = 17
      end
    end
    object wwDBEdit1: TwwDBEdit
      Left = 14
      Top = 22
      Width = 100
      Height = 21
      DataField = 'ARCHIVO'
      DataSource = DM1.dsEjecuta
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 33
      Top = 70
      Width = 60
      Height = 21
      DataField = 'PERIODO'
      DataSource = DM1.dsEjecuta
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object pgPla: TProgressBar
      Left = 10
      Top = 104
      Width = 109
      Height = 15
      Min = 0
      Max = 100
      TabOrder = 4
      Visible = False
    end
  end
end
