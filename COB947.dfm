object fGenCobTel: TfGenCobTel
  Left = 137
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Generaci'#243'n De Descuentos Por TeleAhorros'
  ClientHeight = 429
  ClientWidth = 790
  Color = 10207162
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
  object GroupBox1: TGroupBox
    Left = 3
    Top = -1
    Width = 784
    Height = 428
    TabOrder = 0
    object dtgData: TDBGrid
      Left = 588
      Top = 330
      Width = 50
      Height = 26
      DataSource = DM1.dsTPension
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
    object BitMarPer: TBitBtn
      Left = 227
      Top = 151
      Width = 206
      Height = 26
      Cursor = crHandPoint
      Caption = 'Marcar Mes En Proceso'
      TabOrder = 4
      Visible = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFF767676
        8686868686868686868686868686868686868686868686868D8D8D777777FFFF
        FFFFFFFFFFFFFFFFFFFF1D1D1D9292838E8E7F8E8E7F8A8A8377777777777777
        77777777777F7F7F2626267E7E7EFFFFFFFFFFFFFFFFFFFFFFFF9393845F5FF7
        2020BF2020C6575795FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080767676FFFF
        FFFFFFFFFFFFFFFFFFFF8787787C7CFFFFFFFFFFFFFF0F0FB8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF787878767676FFFFFFFFFFFFFFFFFFFFFFFF8787788080FF
        FFFFFFFFFFFF0F0FB1FFFFFFFFFFFF6F6F6FD3CFCFFFFFFF807878767676FFFF
        FFFFFFFFFFFFFFFFFFFF8F8F781919FF7B7BFF7373FF4848E1FFFFFFFFFFFF00
        00000000003FD5D53F78788D8282969696FFFFFFFFFFFFFFFFFF7C7C7CFFFFEC
        B1B19ADDDDC6D5D5B8FFFFFFFFFFFF8F707000DDDD00C4C400D2D258878E7689
        89969696FFFFFFFFFFFF8F8F783333FF00002248488F1D1DCAFFFFFFFFFFFFD3
        FFFF00BCBC00C0C600E8EFFF3300F00014679595969696FFFFFF8F8F805050E1
        0000000000003F3F8EFFFFFFFFFFFFFFFFFF26B7BF1DFFC4FF0000FF5800FF50
        00F00014679595A1A1A19797870000709F9F80FFFFF0000000FFFFFFFFFFFFFF
        FFFFBCCBCBFF0000FFC500FF0000FF5800FF5000F000146B99998787789A9AFF
        8E8EFF8E8EFF48482F1D1D1DFFFFFFFFFFFFFFFFFFFF2626FF0000FFC500FF00
        00FF5800FF5000E50F228B8B7C5F5FE82020B12525BB50508E000000141414FF
        FFFFFFFFFFFFFFFFFF3737FF0000FFC500FF0000FF5800FF4C008787787C7CFF
        FFFFFFFFFFFF1D1DC3E9E9DA6F6F6FB5B5B5FFFFFFFFFFFF5C8B8BEF1414FF00
        00FFC500FF0000FF58008787788080FFFFFFFFFFFFFF0F0FB1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF7878786A9999FF3737FF0000FFC500FF00009797802626FF
        7F7FFF7B7BFF5050E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080666666FFFF
        FFFF2626FF0000FFB50037373796967F8787778787778A8A7B77777777777777
        77777777777F7F7F1D1D1DFFFFFFFFFFFFFFFFFFFF3F3FFF0000}
    end
    object BitSalir: TBitBtn
      Left = 687
      Top = 393
      Width = 88
      Height = 27
      Caption = '&Salir'
      TabOrder = 0
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object grbParametros: TGroupBox
      Left = 5
      Top = 8
      Width = 198
      Height = 46
      Caption = 'Periodo De Proceso'
      TabOrder = 1
      object lblNomMes: TLabel
        Left = 104
        Top = 19
        Width = 89
        Height = 18
        AutoSize = False
        Caption = 'DICIEMBRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbsAnoIni: TwwDBSpinEdit
        Left = 4
        Top = 15
        Width = 56
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 2005.000000000000000000
        Value = 2005.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object dbsMesIni: TwwDBSpinEdit
        Left = 62
        Top = 15
        Width = 38
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 12.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UsePictureMask = False
        OnChange = dbsMesIniChange
      end
    end
    object BitGenerar: TBitBtn
      Left = 330
      Top = 23
      Width = 150
      Height = 26
      Cursor = crHandPoint
      Caption = 'Generar Descuento'
      TabOrder = 2
      OnClick = BitGenerarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000003737487F7F3F
        77773F77773F7777507979007C808FFFFFFFFFFFFF7C8F807D007D633B637B44
        7B773F777F3F7F37483780803FFFFF97FFFF8FFFFF9FFFFF44FFFF394E314A99
        1D1DA43737504C33FC24FFFF33FFFA8BFAFF93FFFF97FF803F8078783FFFFF8F
        FFFF97FFFF3BF4F433EFF744080000FFFDFD760000260000CA2FD2E522E5F42A
        F4ED84EDFF93FF783F7878783FFFFF9FFFFF3BF4F433E8E844000000E0E7EBD5
        E1E1D48C8C544C33CE00D2C32FC3E522E5F42AF4FA8BFA7C447C787850FFFF44
        F4F433D5D5447373002A2A4CFFFFFFBCBCBCE1ECEC587860E100E1770077D52F
        D5E522E5FF33FF643B647A7A00FFFF39DDE444CACE00E1E1006B6F00162431FF
        FFFF0000000B00006B006F2A4C2A000000DD2FE4FC24FF7E007E7B7F8E4D314A
        23000053334C575F770B00007700005A4E4E3B0000770000163124FFFFFFE0EB
        E70900004F4C337B8E7FFFFFFFA43737760000D48D8DE1ECEC0000003A000091
        00009100005A4E4EFFFFFFBCBCBCD5E1E1FFFDFD991D1DFFFFFFFFFFFF991D1D
        FFFDFDD5E1E1BCBCBCFFFFFF5A4E4E9100009100003E0000000000E1ECECD48D
        8D760000A43737FFFFFF8A7F8E65314A1E0000E3E7EBFFFFFF2424317700003B
        00005E4E4E4300001D00006F5F5F6B33333800006531318A7F7F007A0035FF39
        3BF7440000004C2A4C006F00190000000000FFFFFF5A2424006F6F00E1E100CE
        CE3BE4E435FFFF007A7A50785044FF4433F43344E84400730000E100706078E1
        ECECBCBCBCFFFFFF4C2A2A00737344D5D533F4F444FFFF5078783F783F9FFF9F
        3BFF3B33F43344D54400CE006C334CD48C8CD5E1E1E3E7E700000044E8E833F4
        F43BFFFF9FFFFF3F78783F783F8FFF8F97FF973BFF3B33F4333BE44439000076
        0000FFFDFD1F00003BF7F733F4F43BFFFF97FFFF8FFFFF3F78783F803F97FF97
        8FFF8F9FFF9F44FF4435FF3966314AA43737991D1D66313135FFFF44FFFF9FFF
        FF8FFFFF97FFFF3F80804837483F7F3F3F773F3F773F5077500079008B808FFF
        FFFFFFFFFF8B80800079795077773F77773F77773F7F7F483737}
    end
    object dtgCabTel: TwwDBGrid
      Left = 7
      Top = 61
      Width = 768
      Height = 300
      DisableThemesInTitle = False
      Selected.Strings = (
        'PERCOB'#9'6'#9'Periodo'
        'FECGEN'#9'10'#9'Informaci'#243'n~Generada El'
        'NUMOFI'#9'6'#9'Numero~Oficio'
        'NUMENV'#9'10'#9'N'#176'Cuotas~Enviadas'
        'MONENV'#9'15'#9'Montos~Enviados'
        'NUMCOB'#9'10'#9'N'#176'Cuotas~Cobradas'
        'MONCOB'#9'15'#9'Montos~Cobrados'
        'NUMSAL'#9'10'#9'N'#176'Cuotas~No Cobradas'
        'MONSAL'#9'15'#9'Montos~No Cobrados'
        'USUARIO'#9'15'#9'Hecho~Por'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgCabTelRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsSolicitud
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgCabTelDblClick
    end
    object grbProcesos: TGroupBox
      Left = 283
      Top = 196
      Width = 229
      Height = 37
      Caption = 'Procesando Informaci'#243'n'
      TabOrder = 5
      Visible = False
      object prbAvances: TProgressBar
        Left = 4
        Top = 14
        Width = 220
        Height = 16
        Min = 1
        Position = 1
        Step = 50
        TabOrder = 0
      end
    end
    object BitVrfGen: TBitBtn
      Left = 484
      Top = 23
      Width = 149
      Height = 26
      Cursor = crHandPoint
      Caption = 'Ver. y Genera Diskette'
      TabOrder = 6
      OnClick = BitVrfGenClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000013000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDAD7D4BBBFBDDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC5C4C161605C
        FFFFFFFFFFFF599497000000AFAFAFFFFDFC51514AFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC3C0C3C5C5C5CDCBCB5070733B4F5148474C51
        192034B0E73A7BB8514E3E617B711E605D000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFF6359636D716B474D464ABFD729CCFB1876AB2B879D36C8
        F93CB1E93298B014B3CD269DA0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFEDE7ED7477734B5047674D3E379CBB31DCFF09B8DF0361902280A4
        46E1FF2EC4F42C4D4659524E606363FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFE6DDDF9CCBE100B0C80FB6C031CAEF1DD1FF79DFF140AA9E0F1C092AA2C935
        C5F93587A427A8C560958EFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC9C2C5
        97B5ABAAEFFB6FA6B2279DC730DCFF4AF2EF38A3A0091E0F3BA4CB38BEF01F16
        2E00082F322825FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFBEBABE7D7E79FA
        F2F07D636C2992C333DDFF69F0F039A4A00C22132CA2C237C6FA281815E2E1DE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC1BCC13F493FB5B5AF678F
        9C58A7C8A7D7D52AEFF311928E0412094F3638186887003E51D4D8D6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDBD6DBB6BFB6BCC5BCBABBB5D0C8C1
        C2CFCF56FFFF3ED1F451A0A329503F190C08E6E0DEF8F7F7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFD2CED2C3C9C3E3E8E3DFE4DFD9E0D9C9C7C173
        CC9881D3A28FCCA73D564F1E1C1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFB7B4B77D827DA9AAA9C7C1C7E2E1E2979597B199ACAE97
        A9C9B6C6697167181918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFBBB7BB5C615CD9DAD98E878ED4CFD4B8B8B8C6BEC6C5BDC5D6CDD6
        636D63181918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFD0CED06F776F798279697169B0B8B0A2A1A2AEA2AEACA1ACC5BBC567726718
        1918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFE5CBE5
        E3D8E3E3D7E3E5D9E5E0D4E0DBCEDBDFD0DFDED0DEEBDBEB4B484B0D0E0DFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF20232030323031
        32313132313132313133313133313133313133313C3C3C616161FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
    end
    object BitAplDes: TBitBtn
      Left = 636
      Top = 23
      Width = 140
      Height = 26
      Cursor = crHandPoint
      Caption = 'Aplicar Descuentos'
      TabOrder = 7
      OnClick = BitAplDesClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8CAFDBA5B5D998BBD79CA3E090A6C19E97AE98A4A69999
        BA8B83A1FFFFFFFFFFFFEDEEE78E9187FFFFFFFFFFFFFFFFFF0087D72691BA00
        55961BA1D11DA6E1024BD1002F87006D93000000FFFFFFFFFFFF564C87000034
        222207FFFFFFFFFFFF0097EA0000720727502B555F08C0EF00007D002A530412
        1F00001DFFFFFFFFFFFF3D39790304EA0C1491202000FFFFFF009AE20064850E
        31892650832CB8E715378D03449D0B447A000000FFFFFFFFFFFFFFFFFF42366F
        180BE80B049D422F0300BDFF1982DD097EB247B7FF0FBDFB0F99E409476D1954
        CF000011FFFFFFFFFFFF898889ABAC9C00001E1815E9131A8C000004061D7C00
        276F0000564499D147BEE2006C9D1947B3000000FFFFFFFFFFFFB2B5B2FFFFFF
        FFFFFF5043B10C00DB18199F221500DDD0CDB4B1B40791C200007F0025520415
        0D000029FFFFFFFFFFFF9FAD9F7D687E87B6823959246F54AB0600BD04023E1E
        160830273A1174D3163F9002489E09467B000000FFFFFFFFFFFF848D84D5CDD5
        BEC4BFE1E4E2E2D9C69BA2E40800CB000046040000087FE013A8F50212641549
        D3000000FFFFFFFFFFFFA8AEA8AEC2AF4D684812030C97C89952623A5F489808
        00CA0E0845000000A2958C858279847F729B9996717172FFFFFFA5ADA5AFA4AA
        D7D8D4FFFFFFA8B4AADFD0DAEBE9E087909E0600D20700248A8B88FFFFFFFFFF
        FF4F524C0D0400898A8BABB4AC8981855B4A5C6986644E7548A274A3CCD1CCFF
        FFFF483C95B8C298232213D6D7D9F2F4F3070E00FFEFEE090800838D83D1CCD2
        C4CAC4B8AAB4D8D5D9E5E0E7A7A5A1E2DFE189898B25242890907B322C287371
        750B120C727374D4D4D5B3BBB3D7CAD2DCE5DDC9E4C4A3ABA5C5B1B5D3DADAFF
        FFFF87939C858383EEEEF00E0D0984777F7C7D7DFFFFFFFFFFFF0B0E0B060C06
        0409040709080B0F0B070E09060B040C120B000000BDC0BD6F666A2519195B5A
        5CC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD
        CDCDE3E2E24E5048252626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object pnlEfect: TPanel
      Left = 94
      Top = 384
      Width = 183
      Height = 39
      TabOrder = 8
      object rdbRes: TRadioButton
        Left = 5
        Top = 4
        Width = 68
        Height = 17
        Caption = 'Resumen'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdbDet: TRadioButton
        Left = 5
        Top = 22
        Width = 58
        Height = 15
        Caption = 'Detalle'
        TabOrder = 1
      end
      object BitEfecCob: TBitBtn
        Left = 79
        Top = 8
        Width = 99
        Height = 27
        Cursor = crHandPoint
        Caption = 'Efectividad '
        TabOrder = 2
        OnClick = BitEfecCobClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
    end
    object pnlNoCob: TPanel
      Left = 281
      Top = 384
      Width = 269
      Height = 38
      TabOrder = 9
      DesignSize = (
        269
        38)
      object BitNoCob: TBitBtn
        Left = 74
        Top = 7
        Width = 91
        Height = 27
        Cursor = crHandPoint
        Caption = 'No Cobrado'
        TabOrder = 0
        OnClick = BitNoCobClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object rdbResumen: TRadioButton
        Left = 3
        Top = 3
        Width = 69
        Height = 17
        Caption = 'Resumen'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rdbDetalle: TRadioButton
        Left = 3
        Top = 20
        Width = 66
        Height = 17
        Caption = 'Detalle'
        TabOrder = 2
      end
      object BitExporta: TBitBtn
        Left = 172
        Top = 7
        Width = 91
        Height = 27
        Anchors = [akTop, akRight]
        Caption = 'Exportar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitExportaClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
          000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
          0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
          080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
        Spacing = 10
      end
    end
    object BitGenMesPro: TBitBtn
      Left = 212
      Top = 23
      Width = 115
      Height = 26
      Cursor = crHandPoint
      Caption = 'Mes En Proceso'
      TabOrder = 10
      OnClick = BitGenMesProClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
        0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
        F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
        FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
        FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
        F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
        000337777FF7FF77773333703070007030733373777777737333333333330333
        333333333337FF33333333333330003333333333337773333333}
      NumGlyphs = 2
    end
    object Panel1: TPanel
      Left = 12
      Top = 367
      Width = 78
      Height = 54
      TabOrder = 11
      object rdbGeneral: TRadioButton
        Left = 8
        Top = 3
        Width = 67
        Height = 17
        Caption = 'General'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdbActivos: TRadioButton
        Left = 8
        Top = 18
        Width = 67
        Height = 17
        Caption = 'Activos'
        TabOrder = 1
      end
      object rdbCesantes: TRadioButton
        Left = 8
        Top = 34
        Width = 67
        Height = 17
        Caption = 'Cesantes'
        TabOrder = 2
      end
    end
    object BitOriRec: TBitBtn
      Left = 554
      Top = 393
      Width = 130
      Height = 27
      Cursor = crHandPoint
      Caption = 'Cobrado x Origen'
      TabOrder = 13
      OnClick = BitOriRecClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object chkCampo: TCheckBox
      Left = 98
      Top = 365
      Width = 161
      Height = 17
      Caption = 'Seg'#250'n Informaci'#243'n Diaria'
      TabOrder = 14
    end
  end
  object ppResumen: TppReport
    AutoStop = False
    DataPipeline = ppDBEstPre
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 165
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\RepEstDep.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 29
    Top = 311
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstPre'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 29369
        mmWidth = 197380
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 35190
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'COD.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 11906
        mmTop = 30427
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'PROVINCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 20638
        mmTop = 30427
        mmWidth = 15621
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#176' REGISTROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 115094
        mmTop = 30692
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'IMPORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 163777
        mmTop = 30956
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 29168
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label103'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'DESEMBOLSO EN EFECTIVO  DEL 10/06/2003    AL   13/06/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 15875
        mmWidth = 183092
        BandType = 0
      end
      object ppLblTitulo01: TppLabel
        UserName = 'LblTitulo01'
        AutoSize = False
        Caption = 'DESEMBOLSO EN EFECTIVO  DEL 10/06/2003    AL   13/06/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 21431
        mmWidth = 183092
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PROVBCOID'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PROVBCODES'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 0
        mmWidth = 69321
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'REGISTROS'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 95779
        mmTop = 0
        mmWidth = 40481
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SALDO'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 0
        mmWidth = 40481
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 2117
        mmWidth = 15875
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'REGISTROS'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 1588
        mmWidth = 39952
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'SALDO'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 1588
        mmWidth = 39952
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 529
        mmWidth = 197380
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 7144
        mmWidth = 197380
        BandType = 7
      end
    end
  end
  object ppDBEstPre: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DBEstPre'
    Left = 29
    Top = 279
  end
  object DbRepUser: TppDBPipeline
    DataSource = DM1.dsQry4
    UserName = 'DbRepUser'
    Left = 32
    Top = 96
  end
  object RepUser: TppReport
    AutoStop = False
    DataPipeline = DbRepUser
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 165
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 64
    Top = 96
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepUser'
    object ppHeaderBand32: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object lblTitulo01: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel681: TppLabel
        UserName = 'Label681'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel682: TppLabel
        UserName = 'Label682'
        Caption = 'Sistema De  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel683: TppLabel
        UserName = 'Label5702'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel684: TppLabel
        UserName = 'Label684'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel685: TppLabel
        UserName = 'Label685'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable65: TppSystemVariable
        UserName = 'SystemVariable65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable66: TppSystemVariable
        UserName = 'SystemVariable66'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable67: TppSystemVariable
        UserName = 'SystemVariable67'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel686: TppLabel
        UserName = 'Label686'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel687: TppLabel
        UserName = 'Label687'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel688: TppLabel
        UserName = 'Label688'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine169: TppLine
        UserName = 'Line169'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 27781
        mmWidth = 202936
        BandType = 0
      end
      object lblEfect01: TppLabel
        UserName = 'lblEfect01'
        AutoSize = False
        Caption = 'Efectividad De Cobranza   :    0%  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 21696
        mmWidth = 97102
        BandType = 0
      end
    end
    object ppDetailBand34: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText288: TppDBText
        UserName = 'DBText288'
        DataField = 'CRESALDO'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 47361
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText277: TppDBText
        UserName = 'DBText277'
        DataField = 'DESTIPCOB'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 0
        mmWidth = 44715
        BandType = 4
      end
      object ppDBText278: TppDBText
        UserName = 'DBText278'
        DataField = 'MONENVIO'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 70115
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText280: TppDBText
        UserName = 'DBText280'
        DataField = 'MONRECUP'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText281: TppDBText
        UserName = 'DBText2802'
        DataField = 'P_REC'
        DataPipeline = DbRepUser
        DisplayFormat = '##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 186796
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText282: TppDBText
        UserName = 'DBText2803'
        DataField = 'REGISTROS'
        DataPipeline = DbRepUser
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 114829
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText285: TppDBText
        UserName = 'DBText285'
        DataField = 'REGCOB'
        DataPipeline = DbRepUser
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText286: TppDBText
        UserName = 'DBText2804'
        DataField = 'SALDO'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText287: TppDBText
        UserName = 'DBText287'
        DataField = 'REGSAL'
        DataPipeline = DbRepUser
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppFooterBand27: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppSummaryBand32: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel679: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7408
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine167: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 202936
        BandType = 7
      end
      object ppLine168: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 6350
        mmWidth = 202936
        BandType = 7
      end
      object ppDBCalc222: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'CRESALDO'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 47361
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc223: TppDBCalc
        UserName = 'DBCalc223'
        DataField = 'MONENVIO'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 70115
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc237: TppDBCalc
        UserName = 'DBCalc237'
        DataField = 'MONRECUP'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc238: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'REGISTROS'
        DataPipeline = DbRepUser
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 114829
        mmTop = 1323
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc239: TppDBCalc
        UserName = 'DBCalc239'
        DataField = 'REGCOB'
        DataPipeline = DbRepUser
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 1323
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc240: TppDBCalc
        UserName = 'DBCalc240'
        DataField = 'SALDO'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc241: TppDBCalc
        UserName = 'DBCalc241'
        DataField = 'REGSAL'
        DataPipeline = DbRepUser
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 1323
        mmWidth = 12965
        BandType = 7
      end
    end
    object ppGroup41: TppGroup
      BreakName = 'PROVBCOID'
      DataPipeline = DbRepUser
      OutlineSettings.CreateNode = True
      UserName = 'Group41'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepUser'
      object ppGroupHeaderBand41: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 16669
        mmPrintPosition = 0
        object ppDBText276: TppDBText
          UserName = 'DBText276'
          DataField = 'PROVBCODES'
          DataPipeline = DbRepUser
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 10319
          mmTop = 2381
          mmWidth = 73290
          BandType = 3
          GroupNo = 0
        end
        object ppDBText279: TppDBText
          UserName = 'DBText2801'
          DataField = 'PROVBCOID'
          DataPipeline = DbRepUser
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3260
          mmLeft = 1588
          mmTop = 2381
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLine165: TppLine
          UserName = 'Line165'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 15610
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppLabel660: TppLabel
          UserName = 'Label660'
          AutoSize = False
          Caption = 'Tipo De Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 1588
          mmTop = 11642
          mmWidth = 39688
          BandType = 3
          GroupNo = 0
        end
        object ppLabel661: TppLabel
          UserName = 'Label6601'
          AutoSize = False
          Caption = 'Monto '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 52917
          mmTop = 8202
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel662: TppLabel
          UserName = 'Label662'
          AutoSize = False
          Caption = 'Procesado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 52917
          mmTop = 11906
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLine195: TppLine
          UserName = 'Line195'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 7144
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppLabel663: TppLabel
          UserName = 'Label663'
          AutoSize = False
          Caption = 'Monto '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 75671
          mmTop = 8202
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel664: TppLabel
          UserName = 'Label664'
          AutoSize = False
          Caption = 'Enviado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 75671
          mmTop = 11906
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppLabel665: TppLabel
          UserName = 'Label665'
          AutoSize = False
          Caption = 'Recuperado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 95250
          mmTop = 11906
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel666: TppLabel
          UserName = 'Label666'
          AutoSize = False
          Caption = 'Monto '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 95250
          mmTop = 8202
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel667: TppLabel
          UserName = 'Label667'
          AutoSize = False
          Caption = 'Totales'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 114565
          mmTop = 11906
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel668: TppLabel
          UserName = 'Label668'
          AutoSize = False
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 114565
          mmTop = 8202
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel669: TppLabel
          UserName = 'Label669'
          AutoSize = False
          Caption = 'Cobrados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 130175
          mmTop = 11906
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel670: TppLabel
          UserName = 'Label670'
          AutoSize = False
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 130175
          mmTop = 8202
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel671: TppLabel
          UserName = 'Label6701'
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 148961
          mmTop = 8202
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel672: TppLabel
          UserName = 'Label672'
          AutoSize = False
          Caption = 'No Cobrado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 148961
          mmTop = 11906
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel673: TppLabel
          UserName = 'Label673'
          AutoSize = False
          Caption = 'No Cobrados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 166952
          mmTop = 11906
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel674: TppLabel
          UserName = 'Label6702'
          AutoSize = False
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 166952
          mmTop = 8202
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel675: TppLabel
          UserName = 'Label675'
          AutoSize = False
          Caption = 'Efectiv. De'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 185738
          mmTop = 7938
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel676: TppLabel
          UserName = 'Label676'
          AutoSize = False
          Caption = 'Recup(%)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 186002
          mmTop = 11642
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand41: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppLabel678: TppLabel
          UserName = 'Label678'
          AutoSize = False
          Caption = 'Sub-Total '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 7144
          mmTop = 1588
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppLine166: TppLine
          UserName = 'Line166'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 265
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppLine164: TppLine
          UserName = 'Line164'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 6615
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc203: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CRESALDO'
          DataPipeline = DbRepUser
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 47361
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc204: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'MONENVIO'
          DataPipeline = DbRepUser
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 70114
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc206: TppDBCalc
          UserName = 'DBCalc206'
          DataField = 'MONRECUP'
          DataPipeline = DbRepUser
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 91547
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc233: TppDBCalc
          UserName = 'DBCalc233'
          DataField = 'SALDO'
          DataPipeline = DbRepUser
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 145522
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc234: TppDBCalc
          UserName = 'DBCalc234'
          DataField = 'REGISTROS'
          DataPipeline = DbRepUser
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 114829
          mmTop = 1852
          mmWidth = 12964
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc235: TppDBCalc
          UserName = 'DBCalc235'
          DataField = 'REGCOB'
          DataPipeline = DbRepUser
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 130175
          mmTop = 2117
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc236: TppDBCalc
          UserName = 'DBCalc236'
          DataField = 'REGSAL'
          DataPipeline = DbRepUser
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3175
          mmLeft = 170657
          mmTop = 1852
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DbRepUserDet: TppDBPipeline
    DataSource = DM1.dsQry4
    UserName = 'DbRepUserDet'
    Left = 32
    Top = 160
  end
  object ppDBData02: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DBData02'
    Left = 32
    Top = 192
  end
  object RepUserDet: TppReport
    AutoStop = False
    DataPipeline = DbRepUserDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 165
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 64
    Top = 176
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepUserDet'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object lblTitulo: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'RESUMEN DE EFECTIVIDAD DE COBRANZA POR TELEAHORROS DE AGOSTO - 2' +
          '006'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 9790
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label681'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label682'
        Caption = 'Sistema De  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label5702'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 0
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label684'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label685'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233628
        mmTop = 8996
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246857
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable66'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246592
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable67'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 247386
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label686'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label687'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label688'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line165'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29104
        mmWidth = 262203
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label6601'
        AutoSize = False
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 91811
        mmTop = 21696
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label662'
        AutoSize = False
        Caption = 'Procesado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 91811
        mmTop = 25400
        mmWidth = 14552
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line195'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 21167
        mmWidth = 262732
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label663'
        AutoSize = False
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 21696
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label664'
        AutoSize = False
        Caption = 'Enviado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 25400
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label665'
        AutoSize = False
        Caption = 'Recuperado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 25400
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label666'
        AutoSize = False
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 21696
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label667'
        AutoSize = False
        Caption = 'Totales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 25400
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label668'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 21696
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label669'
        AutoSize = False
        Caption = 'Cobrados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 25400
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label670'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 21696
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6701'
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 21696
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label672'
        AutoSize = False
        Caption = 'No Cobrado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 25400
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label673'
        AutoSize = False
        Caption = 'No Cobrados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 215107
        mmTop = 25400
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label6702'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 215107
        mmTop = 21696
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label675'
        AutoSize = False
        Caption = 'Efectiv. De'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 238655
        mmTop = 21696
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label676'
        AutoSize = False
        Caption = 'Recup(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 238919
        mmTop = 25400
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label660'
        AutoSize = False
        Caption = 'Provincias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 24871
        mmWidth = 20108
        BandType = 0
      end
      object lblEfect: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Efectividad De Cobranza   :    0%  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 16933
        mmWidth = 96044
        BandType = 0
      end
      object lblInfAct: TppLabel
        UserName = 'lblInfAct'
        AutoSize = False
        Caption = 'PRELIMINAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 192882
        mmTop = 16404
        mmWidth = 68263
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText288'
        DataField = 'CRESALDO'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 84931
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText278'
        DataField = 'MONENVIO'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 108479
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText280'
        DataField = 'MONRECUP'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2802'
        DataField = 'P_REC'
        DataPipeline = DbRepUserDet
        DisplayFormat = '##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText2803'
        DataField = 'REGISTROS'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText285'
        DataField = 'REGCOB'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText2804'
        DataField = 'SALDO'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 191030
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText287'
        DataField = 'REGSAL'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3175
        mmLeft = 218546
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText276'
        DataField = 'PROVBCODES'
        DataPipeline = DbRepUserDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 83344
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8996
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 261144
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 5556
        mmWidth = 260880
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'CRESALDO'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 84931
        mmTop = 1323
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc223'
        DataField = 'MONENVIO'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 108479
        mmTop = 1323
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc237'
        DataField = 'MONRECUP'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 133086
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'REGISTROS'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 157958
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc239'
        DataField = 'REGCOB'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 174361
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc240'
        DataField = 'SALDO'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 191031
        mmTop = 1588
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc241'
        DataField = 'REGSAL'
        DataPipeline = DbRepUserDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDet'
        mmHeight = 3260
        mmLeft = 218547
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBData02'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9790
        mmWidth = 266701
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBData02
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 165
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBData02'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14552
            mmPrintPosition = 0
            object ppLine9: TppLine
              UserName = 'Line5'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 15081
              mmTop = 13758
              mmWidth = 244475
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label28'
              AutoSize = False
              Caption = 'Monto '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 91811
              mmTop = 6350
              mmWidth = 14552
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label29'
              AutoSize = False
              Caption = 'Procesado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 91811
              mmTop = 10054
              mmWidth = 14552
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line6'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 15081
              mmTop = 5821
              mmWidth = 245005
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Caption = 'Monto '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 115623
              mmTop = 6350
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Caption = 'Enviado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 115623
              mmTop = 10054
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label32'
              AutoSize = False
              Caption = 'Recuperado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 136525
              mmTop = 10054
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Caption = 'Monto '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 136525
              mmTop = 6350
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Caption = 'Totales'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 157692
              mmTop = 10054
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label35'
              AutoSize = False
              Caption = 'Registros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 157692
              mmTop = 6350
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label36'
              AutoSize = False
              Caption = 'Cobrados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 174361
              mmTop = 10054
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label6703'
              AutoSize = False
              Caption = 'Registros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 174361
              mmTop = 6350
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label38'
              AutoSize = False
              Caption = 'Monto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 196586
              mmTop = 6350
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label39'
              AutoSize = False
              Caption = 'No Cobrado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 196586
              mmTop = 10054
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label40'
              AutoSize = False
              Caption = 'No Cobrados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 215107
              mmTop = 10054
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label41'
              AutoSize = False
              Caption = 'Registros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 215107
              mmTop = 6350
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label42'
              AutoSize = False
              Caption = 'Efectiv. De'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 238655
              mmTop = 6350
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label43'
              AutoSize = False
              Caption = 'Recup(%)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 238919
              mmTop = 10054
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel53: TppLabel
              UserName = 'Label6602'
              AutoSize = False
              Caption = 'Descripci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 18521
              mmTop = 8996
              mmWidth = 20108
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'Label45'
              AutoSize = False
              Caption = 'POR TIPO DE DESCUENTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 17727
              mmTop = 265
              mmWidth = 57415
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              UserName = 'DBText10'
              DataField = 'DESTIPCOB'
              DataPipeline = ppDBData02
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3440
              mmLeft = 18785
              mmTop = 265
              mmWidth = 63500
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText11'
              DataField = 'CRESALDO'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 84931
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText12'
              DataField = 'MONENVIO'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 108479
              mmTop = 265
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText2805'
              DataField = 'MONRECUP'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 133086
              mmTop = 265
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText14'
              DataField = 'REGISTROS'
              DataPipeline = ppDBData02
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 157957
              mmTop = 265
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText15'
              DataField = 'REGCOB'
              DataPipeline = ppDBData02
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 174361
              mmTop = 265
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText16'
              DataField = 'SALDO'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 191030
              mmTop = 265
              mmWidth = 21960
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText17'
              DataField = 'REGSAL'
              DataPipeline = ppDBData02
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 218546
              mmTop = 265
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText18'
              DataField = 'P_REC'
              DataPipeline = ppDBData02
              DisplayFormat = '##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3175
              mmLeft = 241036
              mmTop = 265
              mmWidth = 12171
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel55: TppLabel
              UserName = 'Label46'
              AutoSize = False
              Caption = 'Total General              '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 18785
              mmTop = 1323
              mmWidth = 32808
              BandType = 7
            end
            object ppLine11: TppLine
              UserName = 'Line7'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 15610
              mmTop = 529
              mmWidth = 243417
              BandType = 7
            end
            object ppLine12: TppLine
              UserName = 'Line8'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 15610
              mmTop = 5821
              mmWidth = 243153
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc8'
              DataField = 'CRESALDO'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 84667
              mmTop = 1588
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'MONENVIO'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 108215
              mmTop = 1588
              mmWidth = 21431
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'MONRECUP'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 132821
              mmTop = 1588
              mmWidth = 20108
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc11'
              DataField = 'REGISTROS'
              DataPipeline = ppDBData02
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 157692
              mmTop = 1852
              mmWidth = 12965
              BandType = 7
            end
            object ppDBCalc14: TppDBCalc
              UserName = 'DBCalc12'
              DataField = 'REGCOB'
              DataPipeline = ppDBData02
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 174096
              mmTop = 1852
              mmWidth = 12965
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc2401'
              DataField = 'SALDO'
              DataPipeline = ppDBData02
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 190765
              mmTop = 1852
              mmWidth = 21960
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc14'
              DataField = 'REGSAL'
              DataPipeline = ppDBData02
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02'
              mmHeight = 3260
              mmLeft = 218282
              mmTop = 1852
              mmWidth = 12965
              BandType = 7
            end
          end
        end
      end
    end
  end
  object ppDBData02No: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DBData02No'
    Left = 624
    Top = 120
  end
  object DbRepUserDetNo: TppDBPipeline
    DataSource = DM1.dsQry4
    UserName = 'DbRepUserDetNo'
    Left = 624
    Top = 88
  end
  object RepUserDetNo: TppReport
    AutoStop = False
    DataPipeline = DbRepUserDetNo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 165
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 656
    Top = 104
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepUserDetNo'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object lblTitulo02: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 9790
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label681'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label682'
        Caption = 'Sistema De  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label5702'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 0
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label684'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label685'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233628
        mmTop = 8996
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246857
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable66'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246592
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable67'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 247386
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label686'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label687'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label688'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line165'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29104
        mmWidth = 262203
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label6601'
        AutoSize = False
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 91811
        mmTop = 21696
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label662'
        AutoSize = False
        Caption = 'Procesado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 91811
        mmTop = 25400
        mmWidth = 14552
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line195'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 21167
        mmWidth = 262732
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label663'
        AutoSize = False
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 21696
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label664'
        AutoSize = False
        Caption = 'Enviado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 25400
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label665'
        AutoSize = False
        Caption = 'Recuperado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 25400
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label666'
        AutoSize = False
        Caption = 'Monto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 21696
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label667'
        AutoSize = False
        Caption = 'Totales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 25400
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label668'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 21696
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label669'
        AutoSize = False
        Caption = 'Cobrados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 25400
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label670'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 21696
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label6701'
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 21696
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label672'
        AutoSize = False
        Caption = 'No Cobrado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 25400
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label673'
        AutoSize = False
        Caption = 'No Cobrados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 215107
        mmTop = 25400
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label6702'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 215107
        mmTop = 21696
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label675'
        AutoSize = False
        Caption = 'Efectiv. De'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 238655
        mmTop = 21696
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label676'
        AutoSize = False
        Caption = 'Recup(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 238919
        mmTop = 25400
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label660'
        AutoSize = False
        Caption = 'Provincias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 24871
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Efectividad De Cobranza   :    0%  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 16933
        mmWidth = 99748
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        UserName = 'DBText288'
        DataField = 'CRESALDO'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 84931
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText278'
        DataField = 'MONENVIO'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 108479
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText280'
        DataField = 'MONRECUP'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText2802'
        DataField = 'P_REC'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText2803'
        DataField = 'REGISTROS'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText285'
        DataField = 'REGCOB'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText2804'
        DataField = 'SALDO'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 191030
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText287'
        DataField = 'REGSAL'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3175
        mmLeft = 218546
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText276'
        DataField = 'PROVBCODES'
        DataPipeline = DbRepUserDetNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 83344
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel83: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8996
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 261144
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 5556
        mmWidth = 260880
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'CRESALDO'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 84931
        mmTop = 1323
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc223'
        DataField = 'MONENVIO'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 108479
        mmTop = 1323
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc237'
        DataField = 'MONRECUP'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 133086
        mmTop = 1323
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'REGISTROS'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 157958
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc239'
        DataField = 'REGCOB'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 174361
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc240'
        DataField = 'SALDO'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 191031
        mmTop = 1588
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc241'
        DataField = 'REGSAL'
        DataPipeline = DbRepUserDetNo
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUserDetNo'
        mmHeight = 3260
        mmLeft = 218547
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBData02No'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9790
        mmWidth = 266701
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBData02No
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 165
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBData02No'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14552
            mmPrintPosition = 0
            object ppLine17: TppLine
              UserName = 'Line5'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 15081
              mmTop = 13758
              mmWidth = 244475
              BandType = 1
            end
            object ppLabel84: TppLabel
              UserName = 'Label28'
              AutoSize = False
              Caption = 'Monto '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 91811
              mmTop = 6350
              mmWidth = 14552
              BandType = 1
            end
            object ppLabel85: TppLabel
              UserName = 'Label29'
              AutoSize = False
              Caption = 'Procesado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 91811
              mmTop = 10054
              mmWidth = 14552
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line6'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 15081
              mmTop = 5821
              mmWidth = 245005
              BandType = 1
            end
            object ppLabel86: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Caption = 'Monto '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 115623
              mmTop = 6350
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel87: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Caption = 'Enviado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 115623
              mmTop = 10054
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel88: TppLabel
              UserName = 'Label32'
              AutoSize = False
              Caption = 'Recuperado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 136525
              mmTop = 10054
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel89: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Caption = 'Monto '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 136525
              mmTop = 6350
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel90: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Caption = 'Totales'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 157692
              mmTop = 10054
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel91: TppLabel
              UserName = 'Label35'
              AutoSize = False
              Caption = 'Registros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 157692
              mmTop = 6350
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel92: TppLabel
              UserName = 'Label36'
              AutoSize = False
              Caption = 'Cobrados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 174361
              mmTop = 10054
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel93: TppLabel
              UserName = 'Label6703'
              AutoSize = False
              Caption = 'Registros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 174361
              mmTop = 6350
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel94: TppLabel
              UserName = 'Label38'
              AutoSize = False
              Caption = 'Monto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 196586
              mmTop = 6350
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel95: TppLabel
              UserName = 'Label39'
              AutoSize = False
              Caption = 'No Cobrado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 196586
              mmTop = 10054
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel96: TppLabel
              UserName = 'Label40'
              AutoSize = False
              Caption = 'No Cobrados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 215107
              mmTop = 10054
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel97: TppLabel
              UserName = 'Label41'
              AutoSize = False
              Caption = 'Registros'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 215107
              mmTop = 6350
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel98: TppLabel
              UserName = 'Label42'
              AutoSize = False
              Caption = 'Efectiv. De'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 238655
              mmTop = 6350
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel99: TppLabel
              UserName = 'Label43'
              AutoSize = False
              Caption = 'Recup(%)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 238919
              mmTop = 10054
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel100: TppLabel
              UserName = 'Label6602'
              AutoSize = False
              Caption = 'Descripci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 18521
              mmTop = 8996
              mmWidth = 20108
              BandType = 1
            end
            object ppLabel101: TppLabel
              UserName = 'Label45'
              AutoSize = False
              Caption = 'POR TIPO DE DESCUENTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 17727
              mmTop = 265
              mmWidth = 57415
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText32: TppDBText
              UserName = 'DBText10'
              DataField = 'DESTIPCOB'
              DataPipeline = ppDBData02No
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3440
              mmLeft = 18785
              mmTop = 265
              mmWidth = 63500
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText11'
              DataField = 'CRESALDO'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 84931
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText12'
              DataField = 'MONENVIO'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 108479
              mmTop = 265
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText2805'
              DataField = 'MONRECUP'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 133086
              mmTop = 265
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText14'
              DataField = 'REGISTROS'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 157957
              mmTop = 265
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText15'
              DataField = 'REGCOB'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 174361
              mmTop = 265
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText16'
              DataField = 'SALDO'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 191030
              mmTop = 265
              mmWidth = 21960
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText17'
              DataField = 'REGSAL'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 218546
              mmTop = 265
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText18'
              DataField = 'P_REC'
              DataPipeline = ppDBData02No
              DisplayFormat = '##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3175
              mmLeft = 241036
              mmTop = 265
              mmWidth = 12171
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel102: TppLabel
              UserName = 'Label46'
              AutoSize = False
              Caption = 'Total General              '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 18785
              mmTop = 1323
              mmWidth = 32808
              BandType = 7
            end
            object ppLine19: TppLine
              UserName = 'Line7'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 15610
              mmTop = 529
              mmWidth = 243417
              BandType = 7
            end
            object ppLine20: TppLine
              UserName = 'Line8'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 15610
              mmTop = 5821
              mmWidth = 243153
              BandType = 7
            end
            object ppDBCalc24: TppDBCalc
              UserName = 'DBCalc8'
              DataField = 'CRESALDO'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 84667
              mmTop = 1588
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc25: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'MONENVIO'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 108215
              mmTop = 1588
              mmWidth = 21431
              BandType = 7
            end
            object ppDBCalc26: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'MONRECUP'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 132821
              mmTop = 1588
              mmWidth = 20108
              BandType = 7
            end
            object ppDBCalc27: TppDBCalc
              UserName = 'DBCalc11'
              DataField = 'REGISTROS'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 157692
              mmTop = 1852
              mmWidth = 12965
              BandType = 7
            end
            object ppDBCalc28: TppDBCalc
              UserName = 'DBCalc12'
              DataField = 'REGCOB'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 174096
              mmTop = 1852
              mmWidth = 12965
              BandType = 7
            end
            object ppDBCalc29: TppDBCalc
              UserName = 'DBCalc2401'
              DataField = 'SALDO'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,###,##0.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 190765
              mmTop = 1852
              mmWidth = 21960
              BandType = 7
            end
            object ppDBCalc30: TppDBCalc
              UserName = 'DBCalc14'
              DataField = 'REGSAL'
              DataPipeline = ppDBData02No
              DisplayFormat = '###,##0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 12cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBData02No'
              mmHeight = 3260
              mmLeft = 218282
              mmTop = 1852
              mmWidth = 12965
              BandType = 7
            end
          end
        end
      end
    end
  end
  object DbRepDetx: TppDBPipeline
    DataSource = DM1.dsQry4
    UserName = 'DbRepDetx'
    Left = 616
    Top = 280
  end
  object RepDetx: TppReport
    AutoStop = False
    DataPipeline = DbRepDetx
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 165
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 648
    Top = 280
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepDetx'
    object ppHeaderBand36: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object lblTitulo04: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel677: TppLabel
        UserName = 'Label681'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label682'
        Caption = 'Sistema De  Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel689: TppLabel
        UserName = 'Label5702'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel732: TppLabel
        UserName = 'Label684'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel733: TppLabel
        UserName = 'Label685'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable77: TppSystemVariable
        UserName = 'SystemVariable65'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable78: TppSystemVariable
        UserName = 'SystemVariable66'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable79: TppSystemVariable
        UserName = 'SystemVariable67'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel734: TppLabel
        UserName = 'Label686'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel735: TppLabel
        UserName = 'Label687'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel736: TppLabel
        UserName = 'Label688'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
    end
    object ppDetailBand38: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText41: TppDBText
        UserName = 'DBText288'
        DataField = 'ASONCTA'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 101336
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText277'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3598
        mmLeft = 17198
        mmTop = 0
        mmWidth = 82815
        BandType = 4
      end
      object ppDBText289: TppDBText
        UserName = 'DBText278'
        DataField = 'SITCTA'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText305: TppDBText
        UserName = 'DBText2803'
        DataField = 'MONENVIO'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 148961
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText291: TppDBText
        UserName = 'DBText291'
        DataField = 'ASODNI'
        DataPipeline = DbRepDetx
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 128852
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppFooterBand31: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppSummaryBand36: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel737: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 100806
        mmTop = 1058
        mmWidth = 32808
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 16934
        mmTop = 265
        mmWidth = 164042
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 16934
        mmTop = 10583
        mmWidth = 164042
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc222'
        DataField = 'MONENVIO'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3598
        mmLeft = 148961
        mmTop = 1323
        mmWidth = 27780
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc238'
        DataField = 'ASONCTA'
        DataPipeline = DbRepDetx
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepDetx'
        mmHeight = 3704
        mmLeft = 163248
        mmTop = 5556
        mmWidth = 12964
        BandType = 7
      end
      object ppLabel750: TppLabel
        UserName = 'Label750'
        AutoSize = False
        Caption = 'N'#176' De Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100806
        mmTop = 5556
        mmWidth = 32808
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PROVBCOID'
      DataPipeline = DbRepDetx
      OutlineSettings.CreateNode = True
      UserName = 'Group41'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepDetx'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18785
        mmPrintPosition = 0
        object ppLine196: TppLine
          UserName = 'Line165'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 16934
          mmTop = 17198
          mmWidth = 164042
          BandType = 3
          GroupNo = 0
        end
        object ppLabel738: TppLabel
          UserName = 'Label660'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 17463
          mmTop = 12171
          mmWidth = 39688
          BandType = 3
          GroupNo = 0
        end
        object ppLine197: TppLine
          UserName = 'Line195'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 16933
          mmTop = 7408
          mmWidth = 164042
          BandType = 3
          GroupNo = 0
        end
        object ppLabel741: TppLabel
          UserName = 'Label663'
          AutoSize = False
          Caption = 'Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 102129
          mmTop = 8731
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel742: TppLabel
          UserName = 'Label664'
          AutoSize = False
          Caption = 'De Ahorros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 102129
          mmTop = 12965
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel743: TppLabel
          UserName = 'Label665'
          AutoSize = False
          Caption = 'Cta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 121179
          mmTop = 12965
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel744: TppLabel
          UserName = 'Label666'
          AutoSize = False
          Caption = 'Sit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 121179
          mmTop = 8731
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel745: TppLabel
          UserName = 'Label667'
          AutoSize = False
          Caption = 'D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 129382
          mmTop = 12700
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel747: TppLabel
          UserName = 'Label669'
          AutoSize = False
          Caption = 'Enviado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 163777
          mmTop = 12700
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel748: TppLabel
          UserName = 'Label670'
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 163777
          mmTop = 8731
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppDBText310: TppDBText
          UserName = 'DBText2801'
          DataField = 'PROVBCOID'
          DataPipeline = DbRepDetx
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3598
          mmLeft = 16933
          mmTop = 3440
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppDBText309: TppDBText
          UserName = 'DBText276'
          DataField = 'PROVBCODES'
          DataPipeline = DbRepDetx
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3598
          mmLeft = 25400
          mmTop = 3440
          mmWidth = 73290
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15081
        mmPrintPosition = 0
        object ppLabel755: TppLabel
          UserName = 'Label678'
          AutoSize = False
          Caption = 'Sub-Total '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 100806
          mmTop = 1588
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppLine198: TppLine
          UserName = 'Line166'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 16934
          mmTop = 265
          mmWidth = 164042
          BandType = 5
          GroupNo = 0
        end
        object ppLine199: TppLine
          UserName = 'Line164'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 16934
          mmTop = 11377
          mmWidth = 164042
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc242: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONENVIO'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3598
          mmLeft = 148961
          mmTop = 1852
          mmWidth = 27780
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc246: TppDBCalc
          UserName = 'DBCalc234'
          DataField = 'ASONCTA'
          DataPipeline = DbRepDetx
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbRepDetx'
          mmHeight = 3704
          mmLeft = 163248
          mmTop = 6615
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppLabel749: TppLabel
          UserName = 'Label749'
          AutoSize = False
          Caption = 'N'#176' De Asociados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 100806
          mmTop = 6085
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DbRepCobOri: TppDBPipeline
    DataSource = DM1.dsQry6
    AutoCreateFields = False
    UserName = 'DbRepCobOri'
    Left = 309
    Top = 296
  end
  object RepCobOri: TppReport
    AutoStop = False
    DataPipeline = DbRepCobOri
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 165
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\RepDesb.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 309
    Top = 264
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepCobOri'
    object ppHeaderBand41: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppLine211: TppLine
        UserName = 'Line101'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 36513
        mmWidth = 198967
        BandType = 0
      end
      object ppLine212: TppLine
        UserName = 'Line12'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 25400
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel850: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = 'Orig'#233'n Del  Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 31221
        mmWidth = 37571
        BandType = 0
      end
      object ppLabel851: TppLabel
        UserName = 'Label36'
        Caption = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 131234
        mmTop = 32015
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel852: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Monto Cobrado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 66146
        mmTop = 32015
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel853: TppLabel
        UserName = 'Label38'
        Caption = 'Gatos/Flat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 157692
        mmTop = 32015
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel855: TppLabel
        UserName = 'Label40'
        Caption = 'Amortizacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 96044
        mmTop = 32279
        mmWidth = 19304
        BandType = 0
      end
      object ppLabel857: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = 'Excesos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 178594
        mmTop = 32015
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel858: TppLabel
        UserName = 'Label43'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel859: TppLabel
        UserName = 'Label106'
        Caption = 'Sistema De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 4498
        mmWidth = 31623
        BandType = 0
      end
      object ppLabel860: TppLabel
        UserName = 'Label45'
        Caption = 'Fecha   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 0
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel861: TppLabel
        UserName = 'Label46'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel862: TppLabel
        UserName = 'Label47'
        Caption = 'Pag      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 8996
        mmWidth = 11430
        BandType = 0
      end
      object ppSystemVariable83: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable84: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable85: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179388
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object LblTit: TppLabel
        UserName = 'LblTit'
        AutoSize = False
        Caption = 'RESUMEN DE COBRANZA POR ORIGEN DEL ASOCIADO DE JULIO 2006'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3937
        mmLeft = 3704
        mmTop = 17727
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel863: TppLabel
        UserName = 'Label48'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel864: TppLabel
        UserName = 'Label49'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel865: TppLabel
        UserName = 'Label50'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel350: TppLabel
        UserName = 'Label350'
        Caption = 'N'#176' Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 44979
        mmTop = 28046
        mmWidth = 14139
        BandType = 0
      end
      object ppLabel353: TppLabel
        UserName = 'Label3501'
        Caption = 'Descontadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 40746
        mmTop = 32015
        mmWidth = 18330
        BandType = 0
      end
    end
    object ppDetailBand44: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText341: TppDBText
        UserName = 'DBText18'
        DataField = 'NUMCUO'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 41010
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText342: TppDBText
        UserName = 'DBText19'
        DataField = 'CREMTOCOB'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 60061
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText343: TppDBText
        UserName = 'DBText20'
        DataField = 'CREAMORT'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 88636
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText368: TppDBText
        UserName = 'DBText368'
        DataField = 'OFDESNOM'
        DataPipeline = DbRepCobOri
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 1058
        mmTop = 0
        mmWidth = 39158
        BandType = 4
      end
      object ppDBText172: TppDBText
        UserName = 'DBText202'
        DataField = 'CREINTERES'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 117740
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText175: TppDBText
        UserName = 'DBText203'
        DataField = 'CREFLAT'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 146315
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText344: TppDBText
        UserName = 'DBText204'
        DataField = 'CREMTOEXC'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3895
        mmLeft = 175155
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
    end
    object ppFooterBand36: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand41: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppDBCalc249: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'NUMCUO'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3937
        mmLeft = 41010
        mmTop = 2117
        mmWidth = 17463
        BandType = 7
      end
      object ppDBCalc250: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CREMTOCOB'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3937
        mmLeft = 60325
        mmTop = 2117
        mmWidth = 27517
        BandType = 7
      end
      object ppDBCalc251: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'CREAMORT'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3937
        mmLeft = 88636
        mmTop = 2117
        mmWidth = 27517
        BandType = 7
      end
      object ppLine213: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 794
        mmWidth = 198967
        BandType = 7
      end
      object ppLabel866: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'TOTAL GENERAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3895
        mmLeft = 5821
        mmTop = 2117
        mmWidth = 31750
        BandType = 7
      end
      object ppLine214: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 8202
        mmWidth = 198967
        BandType = 7
      end
      object ppDBCalc155: TppDBCalc
        UserName = 'DBCalc155'
        DataField = 'CREINTERES'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3937
        mmLeft = 117739
        mmTop = 2117
        mmWidth = 27517
        BandType = 7
      end
      object ppDBCalc252: TppDBCalc
        UserName = 'DBCalc252'
        DataField = 'CREFLAT'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3937
        mmLeft = 146314
        mmTop = 2117
        mmWidth = 27517
        BandType = 7
      end
      object ppDBCalc285: TppDBCalc
        UserName = 'DBCalc285'
        DataField = 'CREMTOEXC'
        DataPipeline = DbRepCobOri
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepCobOri'
        mmHeight = 3937
        mmLeft = 175156
        mmTop = 2117
        mmWidth = 20638
        BandType = 7
      end
    end
  end
end
