object FEditaCuota: TFEditaCuota
  Left = 509
  Top = 202
  BorderStyle = bsDialog
  Caption = 'Editar Cuota'
  ClientHeight = 362
  ClientWidth = 684
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 110
    Top = 139
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label13: TLabel
    Left = 534
    Top = 142
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label15: TLabel
    Left = 342
    Top = 143
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label17: TLabel
    Left = 131
    Top = 139
    Width = 3
    Height = 13
    Caption = ':'
  end
  object pnlactualiza: TPanel
    Left = 8
    Top = 6
    Width = 667
    Height = 351
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 0
    object Panel15: TPanel
      Left = 1
      Top = 303
      Width = 661
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object btncerrar: TBitBtn
        Left = 569
        Top = 7
        Width = 80
        Height = 32
        Caption = 'Cerrar'
        TabOrder = 0
        OnClick = btncerrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F3333333F7F333301111111B10333337F333333737F33330111111111
          0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
          0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
          0333337F377777337F333301111111110333337F333333337F33330111111111
          0333337FFFFFFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object btnActualizar: TBitBtn
        Left = 475
        Top = 7
        Width = 80
        Height = 32
        BiDiMode = bdLeftToRight
        Caption = 'Grabar'
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = btnActualizarClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FFFFFFFAF9F8
          F2EFEDB5B4AD97938C8B8983A09B99B3AFA8C0BFB7CDC6BEE0DCD7F2F2F0F7F6
          F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE0DEDA908B86514A474C3C4047393E4C3F42564E4C6A65617F7C79
          928A87A19E99BCB8B1D6D6D1E0DDD9E6E3DFE8E6E2FAF9F8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC0BDBC3E3C3C4330366141495B404953353D4F
          363D867A7C837D7E71696A60585852524A69696087837EA5A49CB6B2ACC9C8C3
          DAD6CEDDDAD4F8F6F5FFFFFFFFFFFFFFFFFFFFFFFFAEACAC393636523F446546
          4A63424A5C42445F4A4BA09C9CA3636BA76C74BAA0A2D0CBCAADACA5857B7D60
          5E5C5B56526054526D6262787670908F88ACA59FBCB9B3CECAC2FFFFFFA5A5A3
          403A3D6047486D464C68424A624249695154A49C9D89545C905C64AF999BD9D4
          D4D2CCCACEC7C6BFBAB7A9A3A19973717C5259382B32322E30453F3F605E5AA9
          A5A0FFFFFF9D9D9A4A3F3F6C4A517249516D444C68464A72595DA89E9D6C4648
          7A5055B2A1A3DCD5D5D2D0D0CECCCCC5C2C2BAB1B1A5787D935D64382D322725
          28231D242A29298B8982FCFCFB928E8D52444A765258784E53734A526B444C7A
          67689D95935031395F444CB6AAACDEDEDCDADAD7D6D6D1CEC8C8BDB1B18A676D
          6C484D352C2D2D25292925292E2A2E8E8E88F0EFED7D77735D4C5280555A7D50
          58784B53714850856B6F948E8E3A2A2E4D3F43BBB5B6E1E1E1DCDCDAD7D7D6D7
          D7D3C4BBBB75595C553B4137292F32292D2C2428352F3195948EEBEAE879736F
          6B565884585F83525A7D5159774A50876C6DB5B2B28B89898C8A8BD6D5D6EBE6
          E6E1E1E0DCDCDCD9D9D7B4AFAF5C484D4330393929313829312F272C3C3737A0
          9B95E5E3E3776C6E80626689586189545B84525A7B50587A5156764F567B5E60
          876F738A7C7C9B8D8FA89F9FB2ADADD2D0D08D8C8F41373C33292F3A2B31392B
          3133262D434240A8A6A1DFDFDE786B6B85666D935A638E5A6089545B9B9299A5
          B3B79EAEB38F9B9F888D927D7D837271766D676B686062685C5F5A4A50433839
          3F2E314031313E2E3133282C4B4548B4ADAADBD9D97764688E6D74985F639057
          5F95656DC9F4F5C9FEFEC4FEFEBBFBFBB8F5F6B5EFF1AAE8E9A4DEE39DD5D892
          C1C888B5BB7FA8AD6B8E9452575A423033372B2B52504DBCB6AECBCBC8766665
          9C737A9E636B985E67A88891D4FEFECFFDFEC9FDFEC7FEFEC2FEFEBFFEFEBBFE
          FEB7FEFEB5FEFEAEFEFEAAFEFEA5FEFEA0FEFE8ED1D15150503A2B315F5858C2
          BFB9ACABA37C6565A4787DA4636B9C6067B1999DD8FCFCCBECEEC5E5E6C4E6E6
          BFE6E6BDE6E6B9EAEAB9ECECB6EEF1B3F2F2ADF2F4AAF5F8A9F8FA97DADC5958
          593E2E34656260C4C2BBA4A29B82676AA67D80A9676BA0636AB9AAABDDFDFDD5
          F6F6D0F2F2CAEDF1C9EDEDC3E8EDC0E8E9BBE7EABBE6E8B4E5E5B3DDE1AEDCDE
          ADE5E599CFD45D4E55432F356D6A66CAC5BD9D9993896A6DB47F81B16B73AC68
          70C6B6BDE0FDFDDEFCFCDEFCFDD6FDFED6FEFED1FEFECEFEFECBFEFEC8FEFEC4
          FEFEBEFEFEB8FEFEB7FEFE98C0C45B4B4D463137797370D6D1CA99948D947175
          B88288B16B73B26D75D0C5C7E4FAFAD6E8E8D2E2E5CDE3E6C9E6E6C9E6E6C5E6
          E6C5E6E6C5E6E6C0E6E6BBE6E8B9E6EABAF5F598B9BD5D484D463438837B79EF
          EDEB958A899B767ABD7B83B86F77B7737BDBCCD3EAFCFCE1F5F5DFF2F2D8F2F2
          D6F2F2D6F2F2D0F1F1CDEDEDCAEDEDC8EDEDC2EAEBC2E7E9BDF6F69CAEB36047
          4B4738388E8A85F1F0ED89807BA87D81C48289BF737BBB7E84E1D7D8EEFCFCEB
          FAFAE6FAFAE4FAFAE3FAFADFFCFCDCFCFCD9FCFCD6FCFCD4FCFCD1FCFCCEFCFC
          C7FDFD9CA7AA68474D4A3D3C99958EF3F1EE7E716FAF8589C98389BC7277C083
          89E9E1E3E7F0F0DAE6E6DAE6E6D5E6E6D2E4E4D5E5E5CEE6E6CEE6E6CEE6E6CA
          E6E6CAE6E6C6E6E6CCF8FB979FA16A4A4E4C3C3DA29A99F3F2EF796D67BB8B92
          B2747C966060B78388F0E9EBF2F9F9EFF6F6EFF6F6E7F6F6E7F5F5E7F4F4DFF4
          F4DFF4F4D9F4F4D8F4F4D8F4F4D2F4F4D0F7F8959297724B4E463C3CA7A29FF3
          F3F1735F61C79199AF6F777B5053BA8991F8EEF0F8FEFEF7FEFEF7FEFEF1FEFE
          F0FEFEEFFEFEEDFEFEE9FEFEE9FEFEE0FEFEE0FEFEE0FEFED8F2F391868A603F
          4457534FBEBCB5F7F6F4765D5FD098A0D68B94CE8088DCAAAEF6F0F0F5F6F6F1
          F4F4EFF2F2EAEEEEE6ECECF2F9F9DEE6E6DCE4E4DAE2E2CEDCDCCED9D9CBD6D6
          BEC1C28673776C5C5AA3A39CEEEEECFFFFFF6F62627B5E647A5D658064648678
          768986868C86868B85858A888B8E88898E8A8D9695949696909898929F9A999E
          9E99A29C9CA69F9BA39A99A59E99D5D3CFF6F6F4FFFFFFFFFFFF}
        Layout = blGlyphRight
      end
      object btnCuotaManual: TBitBtn
        Left = 385
        Top = 10
        Width = 75
        Height = 27
        Hint = 'Cuota Manual'
        Caption = 'Cuota'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Visible = False
        OnClick = btnCuotaManualClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFBFBF40404040404040404040404040404040404040
          4040404040404040404040404040404040BFBFBFFFFFFFFFFFFF7F7F7FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
          7FBFBFBFFFFFFFFFFFFF7F7F7FBFBFBF60808080808080808080808080808080
          8080808080808080808080808080404040808080808080BFBFBF7F7F7FBFDFDF
          009F9F3F7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFFFFFF7F7F
          7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFFBF7F7F00FFFF3F7F7FFF7F7FFF7F7FFF
          7F7FFF7F7FFF7F7FFF7F7FFFFFFF7F7F7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFF
          FF7F7FBF7F7F00FFFF3F7F7FFF7F7FFF7F7FFF7F7FFF7F7FFFBFBFFFFFFF7F7F
          7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFBFBFBF7F7F00FFFF3F7F7FFF
          7F7FFF7F7FFF7F7FFFBFBFFFFFFF7F7F7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFF
          FF7F7FFF7F7FFF7F7FBF7F7F00FFFF3F7F7FFF7F7FFF7F7FFF7F7FFFFFFF7F7F
          7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFFFF7F7FFF7F7FFF7F7FFF7F7FBF7F7F00
          FFFF3F7F7FFF7F7FFF7F7FFFFFFF7F7F7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFF
          FF7F7FFF7F7FFF7F7FFF7F7FFF7F7FBF7F7F00FFFF3F7F7FFF7F7FFFFFFF7F7F
          7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFFFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF
          7F7FBF7F7F00FFFF3F7F7FFFFFFF7F7F7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFF
          FF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FBF7F7F00FFFF3F7F7F7F7F
          7FBFBFBFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFBFBFFF7F7FFF7F7FFF7F7FFF
          7F7FFF7F7FFF7F7FBF7F7F00DFDF002020BFBFBFFFFFFFFFFFFF7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F3F5F5F0060
          9F9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FFF0000FFFFFFFFFFFFFF}
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 9
      Width = 638
      Height = 198
      Caption = ' Datos del asociado '
      TabOrder = 0
      object Label22: TLabel
        Left = 449
        Top = 58
        Width = 75
        Height = 13
        Caption = 'C'#243'digo de pago'
      end
      object Label23: TLabel
        Left = 27
        Top = 58
        Width = 101
        Height = 13
        Caption = 'Apellidos y Nombre(s)'
      end
      object lblTipAso: TLabel
        Left = 27
        Top = 87
        Width = 83
        Height = 13
        Caption = 'Tipo de Asociado'
      end
      object Label24: TLabel
        Left = 534
        Top = 58
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label25: TLabel
        Left = 131
        Top = 58
        Width = 3
        Height = 13
        Caption = ':'
      end
      object lblDosPuntosTipAso: TLabel
        Left = 131
        Top = 87
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label26: TLabel
        Left = 27
        Top = 31
        Width = 73
        Height = 13
        Caption = 'C'#243'digo modular'
      end
      object Label27: TLabel
        Left = 131
        Top = 31
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label28: TLabel
        Left = 449
        Top = 31
        Width = 28
        Height = 13
        Caption = 'Cargo'
      end
      object Label29: TLabel
        Left = 534
        Top = 31
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label30: TLabel
        Left = 449
        Top = 87
        Width = 60
        Height = 13
        Caption = 'Saldo Actual'
      end
      object Label31: TLabel
        Left = 534
        Top = 88
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label1: TLabel
        Left = 449
        Top = 115
        Width = 66
        Height = 13
        Caption = 'Saldo Diferido'
      end
      object Label2: TLabel
        Left = 534
        Top = 115
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label3: TLabel
        Left = 449
        Top = 142
        Width = 66
        Height = 13
        Caption = 'Haber Liquido'
      end
      object Label4: TLabel
        Left = 534
        Top = 142
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label5: TLabel
        Left = 246
        Top = 142
        Width = 84
        Height = 13
        Caption = 'Haber Descuento'
      end
      object Label6: TLabel
        Left = 337
        Top = 143
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label7: TLabel
        Left = 29
        Top = 142
        Width = 57
        Height = 13
        Caption = 'Haber Bruto'
      end
      object Label8: TLabel
        Left = 131
        Top = 139
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label11: TLabel
        Left = 29
        Top = 115
        Width = 71
        Height = 13
        Caption = 'Cuota Pactada'
      end
      object Label12: TLabel
        Left = 131
        Top = 113
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label18: TLabel
        Left = 449
        Top = 170
        Width = 82
        Height = 13
        Caption = 'Monto Disponible'
      end
      object Label19: TLabel
        Left = 534
        Top = 170
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label20: TLabel
        Left = 246
        Top = 170
        Width = 73
        Height = 13
        Caption = 'Monto Cobrado'
      end
      object Label21: TLabel
        Left = 337
        Top = 171
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label32: TLabel
        Left = 29
        Top = 170
        Width = 72
        Height = 13
        Caption = 'Monto Enviado'
      end
      object Label33: TLabel
        Left = 131
        Top = 167
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Panel10: TPanel
        Left = 547
        Top = 55
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 0
        object measocodpago: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel11: TPanel
        Left = 140
        Top = 55
        Width = 261
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 1
        object measoapenom: TMaskEdit
          Left = 1
          Top = 1
          Width = 259
          Height = 21
          TabOrder = 0
          Text = 'ABCDEABCDEABCDEABCDEABCDEABCDEABCDE'
        end
      end
      object pnlTipAso: TPanel
        Left = 140
        Top = 83
        Width = 32
        Height = 23
        Enabled = False
        TabOrder = 2
        object meAsoTip: TMaskEdit
          Left = 1
          Top = 1
          Width = 28
          Height = 21
          TabOrder = 0
          Text = '80'
        end
      end
      object Panel12: TPanel
        Left = 140
        Top = 28
        Width = 70
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 3
        object measocodmod: TMaskEdit
          Left = 1
          Top = 1
          Width = 68
          Height = 21
          TabOrder = 0
          Text = '8080808080'
        end
      end
      object Panel13: TPanel
        Left = 547
        Top = 28
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 4
        object mecargo: TMaskEdit
          Left = 1
          Top = 1
          Width = 58
          Height = 21
          TabOrder = 0
          Text = 'ABCDEABCDEABCDEABCDEABCDEABCDEABCDE'
        end
      end
      object Panel14: TPanel
        Left = 547
        Top = 83
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 5
        object meCresdoact: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel1: TPanel
        Left = 547
        Top = 110
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 6
        object meSalDif: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel2: TPanel
        Left = 547
        Top = 137
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 7
        object meLiq: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel3: TPanel
        Left = 350
        Top = 137
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 8
        object meDcto: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel4: TPanel
        Left = 140
        Top = 137
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 9
        object meBruto: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel5: TPanel
        Left = 140
        Top = 110
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 10
        object meCuoPac: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel6: TPanel
        Left = 547
        Top = 165
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 11
        object meMonDis: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel7: TPanel
        Left = 350
        Top = 165
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 12
        object meMonCob: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
      object Panel8: TPanel
        Left = 140
        Top = 165
        Width = 60
        Height = 23
        Caption = 'Panel9'
        Enabled = False
        TabOrder = 13
        object meMonEnv: TMaskEdit
          Left = 1
          Top = 1
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '80808080'
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 235
      Width = 640
      Height = 68
      Caption = 'Cuota de Envio'
      TabOrder = 2
      object lblCuotaPactada: TLabel
        Left = 193
        Top = 27
        Width = 120
        Height = 20
        Caption = 'Cuota Pactada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object meCuotaPactada: TMaskEdit
        Left = 330
        Top = 24
        Width = 93
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '80808080'
      end
      object pnlCuotaManual: TPanel
        Left = 445
        Top = 16
        Width = 188
        Height = 41
        TabOrder = 1
        Visible = False
        object Label10: TLabel
          Left = 6
          Top = 10
          Width = 59
          Height = 20
          Caption = 'Manual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object meCuoManual: TMaskEdit
          Left = 86
          Top = 7
          Width = 93
          Height = 28
          Color = 13431295
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '80808080'
        end
      end
    end
    object bbtnMD: TBitBtn
      Left = 622
      Top = 176
      Width = 20
      Height = 20
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbtnMDClick
      Margin = 2
    end
    object bbtnCP: TBitBtn
      Left = 216
      Top = 121
      Width = 20
      Height = 19
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbtnCPClick
      Margin = 2
    end
    object bbtnCPmas: TBitBtn
      Left = 242
      Top = 121
      Width = 55
      Height = 19
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bbtnCPmasClick
      Margin = 2
    end
  end
end
