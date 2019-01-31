object FActualizaSaldos: TFActualizaSaldos
  Left = 234
  Top = 194
  Width = 753
  Height = 500
  Caption = 'Actualiza Saldos de Cobranzas'
  Color = clBtnFace
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
  object bbtnCancelado: TBitBtn
    Left = 25
    Top = 16
    Width = 150
    Height = 25
    Caption = 'Actualiza Cancelados'
    TabOrder = 0
    OnClick = bbtnCanceladoClick
  end
  object bbtnCanceladoA: TBitBtn
    Left = 201
    Top = 16
    Width = 150
    Height = 25
    Caption = 'Actualiza Cancelado A'
    TabOrder = 1
    OnClick = bbtnCanceladoAClick
  end
  object bbtnParcial: TBitBtn
    Left = 380
    Top = 16
    Width = 150
    Height = 25
    Caption = 'Actualiza Parcial'
    TabOrder = 2
    OnClick = bbtnParcialClick
  end
  object bbtnIncCA: TBitBtn
    Left = 236
    Top = 56
    Width = 81
    Height = 25
    Caption = 'Inconsistencia'
    TabOrder = 3
    OnClick = bbtnIncCAClick
  end
  object wwDBGrid1: TwwDBGrid
    Left = 16
    Top = 96
    Width = 713
    Height = 329
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsqry2
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object bbtnRepC: TBitBtn
    Left = 80
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Reporte'
    TabOrder = 5
    OnClick = bbtnRepCClick
  end
  object bbtnIncC: TBitBtn
    Left = 59
    Top = 56
    Width = 81
    Height = 25
    Caption = 'Inconsistencia'
    TabOrder = 6
    OnClick = bbtnIncCClick
  end
  object BitBtn1: TBitBtn
    Left = 560
    Top = 16
    Width = 150
    Height = 25
    Caption = 'Actualiza CRE310'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object pprC: TppReport
    AutoStop = False
    DataPipeline = ppdbC
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Cob\Dema\InconsistenciaC.rtm'
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 80
    Top = 208
    Version = '4.22 Pro'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppdC: TppDesigner
    Caption = 'ReportBuilder'
    Position = poScreenCenter
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.SQLType = sqBDELocal
    Report = pprC
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 80
    Top = 248
  end
  object ppdbC: TppDBPipeline
    DataSource = DM1.dsqry2
    UserName = 'dbC'
    Left = 80
    Top = 168
  end
end
