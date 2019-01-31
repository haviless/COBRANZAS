object fIncTel: TfIncTel
  Left = 268
  Top = 256
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Inconsistencias TeleAhorro  MM/AAAA'
  ClientHeight = 237
  ClientWidth = 589
  Color = 10207162
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
  object GrpIncTel: TGroupBox
    Left = 4
    Top = -4
    Width = 581
    Height = 229
    TabOrder = 0
    object BitSeleccion: TBitBtn
      Left = 388
      Top = 194
      Width = 85
      Height = 26
      Caption = '&Seleccion'
      TabOrder = 1
      OnClick = BitSeleccionClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        333333777777777F33333330B00000003333337F7777777F3333333000000000
        333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
        333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
        03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
        03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
        3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
        333333333377F7F33333333333330F03333333333337F7F33333333333330B03
        3333333333373733333333333333303333333333333373333333}
      NumGlyphs = 2
    end
    object BitSalir: TBitBtn
      Left = 481
      Top = 194
      Width = 85
      Height = 26
      Caption = '&Salir'
      TabOrder = 2
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
    object dtgInconsistencias: TwwDBGrid
      Left = 9
      Top = 59
      Width = 562
      Height = 118
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOAPENOM'#9'55'#9'Apellidos y Nombres'#9#9
        'ASONCTA'#9'15'#9'Cuenta De Ahorros'#9#9
        'IMPORTE'#9'15'#9'Importe'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnCellChanged = dtgInconsistenciasCellChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCEdu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      Visible = False
      OnDblClick = dtgInconsistenciasDblClick
    end
    object GrpAsoid: TGroupBox
      Left = 8
      Top = 184
      Width = 358
      Height = 38
      Caption = 'ID Asociado'
      Enabled = False
      TabOrder = 3
      object Label1: TLabel
        Left = 7
        Top = 16
        Width = 54
        Height = 13
        Caption = 'En Maestro'
      end
      object Label2: TLabel
        Left = 169
        Top = 14
        Width = 84
        Height = 13
        Caption = 'En Inconsistencia'
      end
      object EdtMaestro: TEdit
        Left = 67
        Top = 10
        Width = 88
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object EdtInconsis: TwwDBEdit
        Left = 261
        Top = 10
        Width = 90
        Height = 24
        DataField = 'ASOID'
        DataSource = DM1.dsCEdu
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object dbgplanilla: TwwDBGrid
      Left = 8
      Top = 64
      Width = 562
      Height = 111
      DisableThemesInTitle = False
      PictureMasks.Strings = (
        'IMPORTE'#9'###,###.#0'#9'T'#9'T')
      Selected.Strings = (
        'ASOAPENOM'#9'30'#9'Nombres'#9#9
        'TRANSANO'#9'4'#9'A'#241'o'#9#9
        'TRANSMES'#9'2'#9'Mes'#9#9
        'IMPORTE'#9'10'#9'Importe'#9'F'#9
        'CREFPAG'#9'10'#9'F.Pago'#9#9
        'NROOPE'#9'15'#9'Nro.Oper.'#9#9
        'FOPERAC'#9'10'#9'F.Operac'#9#9
        'ASOCODMOD'#9'10'#9'Cod.Mod.'#9#9
        'UPROID'#9'3'#9'U.proid.'#9#9
        'UPAGOID'#9'3'#9'U.pagoid'#9#9
        'USEID'#9'3'#9'Use'#9#9
        'DETRCOBID'#9'7'#9'DETRCOBID'#9#9
        'RCOBID'#9'7'#9'RCOBID'#9#9
        'FL_OK'#9'1'#9'FL_OK'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCEdu
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      TabOrder = 4
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      Visible = False
    end
    object grbConsulta: TGroupBox
      Left = 10
      Top = 9
      Width = 561
      Height = 41
      TabOrder = 5
      object BitConsulta: TBitBtn
        Left = 481
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Consulta'
        TabOrder = 0
        OnClick = BitConsultaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333FF3FF3333333333CC30003333333333773777333333333C33
          3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
          33003377333337F33377333333333C333300333F333337F33377339333333C33
          3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
          330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
          330077F377F337F33377993399333C33330077FF773337F33377399993333C33
          33333777733337F333FF333333333C33300033333333373FF7773333333333CC
          3000333333333377377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object rdbNombres: TRadioButton
        Left = 8
        Top = 8
        Width = 126
        Height = 17
        Caption = 'Apellidos y Nombres'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rdbNombresClick
      end
      object rdbCtaAhor: TRadioButton
        Left = 8
        Top = 23
        Width = 126
        Height = 17
        Caption = 'Cuenta De Ahorros'
        TabOrder = 2
        OnClick = rdbCtaAhorClick
      end
      object EdtBuscar: TEdit
        Left = 133
        Top = 9
        Width = 343
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
