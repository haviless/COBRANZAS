object FVariableCuota: TFVariableCuota
  Left = 311
  Top = 159
  BorderStyle = bsDialog
  Caption = 'Variable Cuota'
  ClientHeight = 152
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 242
    Height = 152
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 20
      Width = 66
      Height = 13
      Caption = 'Periodo Inicial'
    end
    object Label2: TLabel
      Left = 36
      Top = 44
      Width = 61
      Height = 13
      Caption = 'Periodo Final'
    end
    object Label3: TLabel
      Left = 36
      Top = 68
      Width = 69
      Height = 13
      Caption = 'Flag Actualiza.'
    end
    object Label4: TLabel
      Left = 36
      Top = 92
      Width = 73
      Height = 13
      Caption = 'Número Cuotas'
    end
    object bbtnOk: TBitBtn
      Left = 172
      Top = 120
      Width = 30
      Height = 25
      Enabled = False
      TabOrder = 5
      OnClick = bbtnOkClick
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
    object bbtnCancel: TBitBtn
      Left = 204
      Top = 120
      Width = 30
      Height = 25
      TabOrder = 6
      OnClick = bbtnCancelClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object dblcPerini: TwwDBLookupCombo
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'PERINI'
      DataSource = DM1.dsQry1
      LookupTable = DM1.cdsPeriodo
      LookupField = 'ANOMES'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcPeriniExit
      OnNotInList = NotInList
    end
    object dblcPerFin: TwwDBLookupCombo
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'PERFIN'
      DataSource = DM1.dsQry1
      LookupTable = DM1.cdsPeriodo
      LookupField = 'ANOMES'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcPerFinExit
      OnNotInList = NotInList
    end
    object dblcFlag: TwwDBLookupCombo
      Left = 112
      Top = 64
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'FLAGACT'
      DataSource = DM1.dsQry1
      LookupTable = DM1.cdsQry2
      LookupField = 'VALOR'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnNotInList = NotInList
    end
    object edtNumCuo: TwwDBEdit
      Left = 112
      Top = 88
      Width = 117
      Height = 21
      DataField = 'CRENCUOTA'
      DataSource = DM1.dsQry1
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object bbtnActMaes: TBitBtn
      Left = 32
      Top = 120
      Width = 109
      Height = 25
      Caption = 'Actualiza Maestro'
      Enabled = False
      TabOrder = 4
      OnClick = bbtnActMaesClick
    end
  end
end
