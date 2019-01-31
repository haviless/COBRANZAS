object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 241
  Top = 190
  Height = 570
  Width = 876
  object cdsUsuarios: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'USERID'
    Params = <>
    ProviderName = 'dspUsuario'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 62
    Top = 10
  end
  object dsUsuarios: TwwDataSource
    DataSet = cdsUsuarios
    Left = 62
    Top = 23
  end
  object cdsGrupos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 120
    Top = 10
  end
  object dsGrupos: TwwDataSource
    DataSet = cdsGrupos
    Left = 120
    Top = 23
  end
  object cdsMGrupo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMGrupo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 176
    Top = 10
  end
  object dsMGrupo: TwwDataSource
    DataSet = cdsMGrupo
    Left = 176
    Top = 23
  end
  object cdsAcceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcceso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 234
    Top = 10
  end
  object dsAcceso: TwwDataSource
    Left = 234
    Top = 23
  end
  object cdsDLabo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDLabo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 336
    Top = 10
  end
  object dsDLabo: TwwDataSource
    DataSet = cdsDLabo
    Left = 335
    Top = 23
  end
  object cdsDFam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDFam'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 392
    Top = 10
  end
  object dsDFam: TwwDataSource
    DataSet = cdsDFam
    Left = 394
    Top = 24
  end
  object cdsEjecuta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEjecuta'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 16
    Top = 199
  end
  object dsEjecuta: TwwDataSource
    DataSet = cdsEjecuta
    Left = 16
    Top = 212
  end
  object cdsAso: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    PictureMasks.Strings = (
      'ASORUC'#9'###########'#9'T'#9'F'
      'ASOID'#9'*15[#]'#9'T'#9'F'
      'ASONUMDIR'#9'*5[#]'#9'T'#9'F'
      'ASODPTO'#9'*5[#]'#9'T'#9'F'
      'ASORESNOM'#9'*15[#]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 282
    Top = 10
  end
  object dsAso: TwwDataSource
    DataSet = cdsAso
    Left = 282
    Top = 23
  end
  object cdsCtasBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtasBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 452
    Top = 10
  end
  object dsCtasBco: TwwDataSource
    DataSet = cdsCtasBco
    Left = 455
    Top = 23
  end
  object cdsResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 506
    Top = 10
  end
  object dsResol: TwwDataSource
    DataSet = cdsResol
    Left = 506
    Top = 23
  end
  object cdsDSocioE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDSocioE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 565
    Top = 10
  end
  object dsDSocioE: TwwDataSource
    DataSet = cdsDSocioE
    Left = 566
    Top = 23
  end
  object cdsUSES: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUSES'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 12
    Top = 71
  end
  object dsUSES: TwwDataSource
    DataSet = cdsUSES
    Left = 12
    Top = 84
  end
  object cdsUPro: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUPro'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 62
    Top = 71
  end
  object dsUPro: TwwDataSource
    DataSet = cdsUPro
    Left = 63
    Top = 84
  end
  object cdsUPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 115
    Top = 71
  end
  object dsUPago: TwwDataSource
    DataSet = cdsUPago
    Left = 115
    Top = 84
  end
  object cdsTResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 294
    Top = 579
  end
  object dsTResol: TwwDataSource
    DataSet = cdsTResol
    Left = 295
    Top = 592
  end
  object cdsTPension: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTPension'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 253
    Top = 71
  end
  object dsTPension: TwwDataSource
    DataSet = cdsTPension
    Left = 254
    Top = 84
  end
  object cdsTAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 647
    Top = 134
  end
  object dsTAso: TwwDataSource
    DataSet = cdsTAso
    Left = 648
    Top = 147
  end
  object cdsSAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 365
    Top = 71
  end
  object dsSAso: TwwDataSource
    DataSet = cdsSAso
    Left = 366
    Top = 84
  end
  object cdsCEdu: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvCEdu'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 414
    Top = 71
  end
  object dsCEdu: TwwDataSource
    DataSet = cdsCEdu
    Left = 414
    Top = 84
  end
  object cdsCAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 559
    Top = 71
  end
  object dsCAso: TwwDataSource
    DataSet = cdsCAso
    Left = 559
    Top = 84
  end
  object cdsTUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTUSE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 606
    Top = 71
  end
  object dsTUSE: TwwDataSource
    DataSet = cdsTUSE
    Left = 606
    Top = 84
  end
  object cdsOfDes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOfDes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 510
    Top = 71
  end
  object dsOfDes: TwwDataSource
    DataSet = cdsOfDes
    Left = 510
    Top = 84
  end
  object cdsCViv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCViv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 461
    Top = 71
  end
  object dsCViv: TwwDataSource
    DataSet = cdsCViv
    Left = 461
    Top = 84
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 12
    Top = 134
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 12
    Top = 147
  end
  object cdsDpto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDpto'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 53
    Top = 134
  end
  object cdsTVia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTVia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 100
    Top = 134
    object cdsTViaTIPVIAID: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 2
      FieldName = 'TIPVIAID'
      Size = 2
    end
    object cdsTViaTIPVIADES: TStringField
      DisplayLabel = 'DESCRIPCION'
      DisplayWidth = 30
      FieldName = 'TIPVIADES'
      Size = 30
    end
  end
  object cdsDist: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDist'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 142
    Top = 134
  end
  object cdsTZona: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTZona'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 245
    Top = 134
  end
  object cdsTDoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTDoc'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 342
    Top = 134
  end
  object cdsUbigeo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUbigeo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 394
    Top = 134
  end
  object cdsProvin: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProvin'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 447
    Top = 134
  end
  object cdsEstCiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEstCiv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 499
    Top = 134
  end
  object cdsBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 295
    Top = 134
  end
  object dsTDoc: TwwDataSource
    DataSet = cdsTDoc
    Left = 342
    Top = 147
  end
  object dsEstCiv: TwwDataSource
    DataSet = cdsEstCiv
    Left = 499
    Top = 147
  end
  object dsUbigeo: TwwDataSource
    DataSet = cdsUbigeo
    Left = 394
    Top = 147
  end
  object dsProvin: TwwDataSource
    DataSet = cdsProvin
    Left = 447
    Top = 147
  end
  object dsDpto: TwwDataSource
    DataSet = cdsDpto
    Left = 53
    Top = 147
  end
  object dsBcos: TwwDataSource
    DataSet = cdsBcos
    Left = 295
    Top = 147
  end
  object dsTVia: TwwDataSource
    DataSet = cdsTVia
    Left = 100
    Top = 147
  end
  object dsDist: TwwDataSource
    DataSet = cdsDist
    Left = 142
    Top = 147
  end
  object dsTZona: TwwDataSource
    DataSet = cdsTZona
    Left = 245
    Top = 147
  end
  object cdsPais: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPais'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 66
    Top = 199
  end
  object dsPais: TwwDataSource
    DataSet = cdsPais
    Left = 66
    Top = 212
  end
  object cdsGradoI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoI'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 113
    Top = 199
  end
  object dsGradoI: TwwDataSource
    DataSet = cdsGradoI
    Left = 113
    Top = 212
  end
  object cdsGradoA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoA'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 167
    Top = 199
  end
  object dsGradoA: TwwDataSource
    DataSet = cdsGradoA
    Left = 167
    Top = 212
  end
  object cdsProf: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProf'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 215
    Top = 199
  end
  object dsProf: TwwDataSource
    DataSet = cdsProf
    Left = 215
    Top = 212
  end
  object cdsTRela: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRela'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 261
    Top = 199
  end
  object cdsCtasAso: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvCtasAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 432
    Top = 199
  end
  object dsCtasAso: TwwDataSource
    DataSet = cdsCtasAso
    Left = 432
    Top = 212
  end
  object cdsAportes: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvAportes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 317
    Top = 199
  end
  object dsAportes: TwwDataSource
    DataSet = cdsAportes
    Left = 317
    Top = 212
  end
  object cdsSexo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 548
    Top = 134
  end
  object dsSexo: TwwDataSource
    DataSet = cdsSexo
    Left = 548
    Top = 147
  end
  object cdsLugNac: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUbigeo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 494
    Top = 199
  end
  object dsLugNac: TwwDataSource
    DataSet = cdsLugNac
    Left = 494
    Top = 212
  end
  object cdsTMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 828
    Top = 199
  end
  object cdsRepresentante: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRepresentante'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 155
    Top = 260
  end
  object cdsCuentas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuentas'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 15
    Top = 260
  end
  object dsCuentas: TwwDataSource
    DataSet = cdsCuentas
    Left = 15
    Top = 273
  end
  object dsTMoneda: TwwDataSource
    DataSet = cdsTMoneda
    Left = 829
    Top = 212
  end
  object dsRepresentante: TwwDataSource
    DataSet = cdsRepresentante
    Left = 155
    Top = 273
  end
  object cdsFPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 226
    Top = 260
  end
  object dsFPago: TwwDataSource
    DataSet = cdsFPago
    Left = 227
    Top = 273
  end
  object cdsDetRegCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDetRegCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 351
    Top = 260
  end
  object dsDetRegCob: TwwDataSource
    DataSet = cdsDetRegCob
    Left = 352
    Top = 273
  end
  object cdsRegCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRegCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 282
    Top = 260
  end
  object cdsSitRepr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitRepr'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 416
    Top = 260
  end
  object cdsFRepr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFRepr'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 469
    Top = 260
  end
  object dsSitRepr: TwwDataSource
    DataSet = cdsSitRepr
    Left = 416
    Top = 273
  end
  object dsFRepr: TwwDataSource
    DataSet = cdsFRepr
    Left = 471
    Top = 273
  end
  object cdsRepresentante1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRepresentante'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 594
    Top = 260
  end
  object dsRepresentante1: TwwDataSource
    DataSet = cdsRepresentante1
    Left = 595
    Top = 273
  end
  object cdsSitCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitCta'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 520
    Top = 260
  end
  object dsSitCta: TwwDataSource
    DataSet = cdsSitCta
    Left = 521
    Top = 273
  end
  object cdsFormaPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFormaPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 615
    Top = 199
  end
  object dsFormaPago: TwwDataSource
    DataSet = cdsFormaPago
    Left = 615
    Top = 212
  end
  object cdsModelo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModelo'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 15
    Top = 323
  end
  object cdsPlantilla: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 72
    Top = 323
  end
  object cdsPlanDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanDet'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 131
    Top = 323
  end
  object dsModelo: TwwDataSource
    DataSet = cdsModelo
    Left = 15
    Top = 336
  end
  object dsPlantilla: TwwDataSource
    DataSet = cdsPlantilla
    Left = 72
    Top = 336
  end
  object dsPlandet: TwwDataSource
    DataSet = cdsPlanDet
    Left = 131
    Top = 336
  end
  object cdsDetalle: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutdisk'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    PictureMasks.Strings = (
      'MONTOTOT'#9'###,###,##0.00'#9'T'#9'F')
    ValidateWithMask = True
    Left = 268
    Top = 323
  end
  object dsDetalle: TwwDataSource
    DataSet = cdsDetalle
    Left = 268
    Top = 336
  end
  object cdsCambios: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 327
    Top = 323
  end
  object dsCambios: TwwDataSource
    DataSet = cdsCambios
    Left = 329
    Top = 336
  end
  object ds1: TwwDataSource
    DataSet = tbOrigen
    Left = 776
    Top = 593
  end
  object cdsEstado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 622
    Top = 10
  end
  object dsEstado: TwwDataSource
    DataSet = cdsEstado
    Left = 622
    Top = 23
  end
  object cdsConvenio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvConvenio'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 662
    Top = 71
  end
  object dsConvenio: TwwDataSource
    DataSet = cdsConvenio
    Left = 662
    Top = 84
  end
  object cdsCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuotas'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 597
    Top = 134
  end
  object dsCuotas: TwwDataSource
    DataSet = cdsCuotas
    Left = 598
    Top = 147
  end
  object cdsDcuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuotas'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 764
    Top = 199
  end
  object dsDcuotas: TwwDataSource
    DataSet = cdsDcuotas
    Left = 764
    Top = 212
  end
  object cdsCredito: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCreditos'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 784
    Top = 71
  end
  object dsCredito: TwwDataSource
    DataSet = cdsCredito
    Left = 784
    Top = 84
  end
  object CdsCBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCbcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 551
    Top = 199
  end
  object dsCBcos: TwwDataSource
    DataSet = CdsCBcos
    Left = 551
    Top = 212
  end
  object cdsReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 681
    Top = 10
  end
  object dsReclamo: TwwDataSource
    DataSet = cdsReclamo
    Left = 682
    Top = 23
  end
  object cdsReclamoDCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoDCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 469
    Top = 323
  end
  object dsReclamoDCob: TwwDataSource
    DataSet = cdsReclamoDCob
    Left = 469
    Top = 336
  end
  object cdsTransacciones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransaccionCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 560
    Top = 323
  end
  object dstransacciones: TwwDataSource
    DataSet = cdsTransacciones
    Left = 562
    Top = 336
  end
  object cdsAsociados1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 679
    Top = 260
  end
  object dsAsociados1: TwwDataSource
    DataSet = cdsAsociados1
    Left = 679
    Top = 273
  end
  object cdsReclamoMotiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclMotivo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 650
    Top = 323
  end
  object dsReclamoMotiv: TwwDataSource
    DataSet = cdsReclamoMotiv
    Left = 650
    Top = 336
  end
  object cdsTCredito: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTCredito'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 726
    Top = 323
  end
  object dsTcredito: TwwDataSource
    DataSet = cdsTCredito
    Left = 726
    Top = 336
  end
  object cdsReclamo1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 21
    Top = 388
  end
  object dsReclamo1: TwwDataSource
    DataSet = cdsReclamo1
    Left = 21
    Top = 401
  end
  object cdsAsoX: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 77
    Top = 388
  end
  object dsAsoX: TwwDataSource
    DataSet = cdsAsoX
    Left = 76
    Top = 401
  end
  object cdsAsociados: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 135
    Top = 388
  end
  object dsAsociados: TwwDataSource
    DataSet = cdsAsociados
    Left = 135
    Top = 401
  end
  object cdsDevolucionCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDevolucionCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 216
    Top = 388
  end
  object cdsTransDevol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransaccion'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 302
    Top = 388
  end
  object cdsAgenciaBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAgenciaBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 422
    Top = 388
  end
  object dsAgenciaBco: TwwDataSource
    DataSet = cdsAgenciaBco
    Left = 422
    Top = 401
  end
  object cdsTmone: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 488
    Top = 388
  end
  object dsTmone: TwwDataSource
    DataSet = cdsTmone
    Left = 488
    Top = 401
  end
  object cdsTtransaccion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTtransaccion'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 557
    Top = 388
  end
  object cdsReporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 16
    Top = 452
  end
  object dsReporte: TwwDataSource
    DataSet = cdsReporte
    Left = 16
    Top = 465
  end
  object cdsATransp: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAtransp'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 76
    Top = 452
  end
  object cdsRecauda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRecauda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 391
    Top = 323
  end
  object cdsLiquid: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvLiquid'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 797
    Top = 388
  end
  object cdsPersRep: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPersRep'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 205
    Top = 452
  end
  object dsATransp: TwwDataSource
    DataSet = cdsATransp
    Left = 76
    Top = 465
  end
  object dsRecauda: TwwDataSource
    DataSet = cdsRecauda
    Left = 391
    Top = 336
  end
  object dsLiquid: TwwDataSource
    DataSet = cdsLiquid
    Left = 797
    Top = 401
  end
  object dsPersRep: TwwDataSource
    DataSet = cdsPersRep
    Left = 205
    Top = 465
  end
  object cdsDetRegGlob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDetRegGlob'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'DOCMTO'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 638
    Top = 388
  end
  object dsDetRegGlob: TwwDataSource
    DataSet = cdsDetRegGlob
    Left = 638
    Top = 401
  end
  object cdsCobxUse: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCobxUse'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'RCOBAPOVAL'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 677
    Top = 515
  end
  object dsCobxUse: TwwDataSource
    AutoEdit = False
    DataSet = cdsCobxUse
    Left = 680
    Top = 529
  end
  object cdsReporte1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 421
    Top = 452
  end
  object dsReporte1: TwwDataSource
    DataSet = cdsReporte1
    Left = 422
    Top = 465
  end
  object cdsAutdisk: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutdisk'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ControlType.Strings = (
      'FREGCOB;CheckBox;S;N')
    ValidateWithMask = True
    Left = 784
    Top = 323
  end
  object cdsTransferencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAportes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 759
    Top = 260
  end
  object dsTransferencia: TwwDataSource
    AutoEdit = False
    DataSet = cdsTransferencia
    Left = 759
    Top = 273
  end
  object cdsCtaCtes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtaCtes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 798
    Top = 515
  end
  object cdsPeriodo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPeriodo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 374
    Top = 199
  end
  object dsPeriodo: TwwDataSource
    DataSet = cdsPeriodo
    Left = 375
    Top = 212
  end
  object cdsBancos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBancos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 852
    Top = 388
  end
  object dsBancos: TwwDataSource
    DataSet = cdsBancos
    Left = 853
    Top = 401
  end
  object cdsTRecauda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRecauda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 481
    Top = 515
  end
  object dsTRecauda: TwwDataSource
    DataSet = cdsPadre
    Left = 481
    Top = 529
  end
  object cdsCuentaEst: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuentaEst'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 886
    Top = 10
  end
  object dsCuentaEst: TwwDataSource
    DataSet = cdsCuentaEst
    Left = 886
    Top = 23
  end
  object cdsPadre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPadre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 826
    Top = 10
  end
  object dsPadre: TwwDataSource
    DataSet = cdsPadre
    Left = 826
    Top = 23
  end
  object cdsHijo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvHijo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 781
    Top = 10
  end
  object dsHijo: TwwDataSource
    DataSet = cdsHijo
    Left = 781
    Top = 23
  end
  object cdsNieto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvNieto'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 834
    Top = 71
  end
  object dsNieto: TwwDataSource
    DataSet = cdsNieto
    Left = 834
    Top = 84
  end
  object cdsDevolucion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDevolucion'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 850
    Top = 323
  end
  object cdsCia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 543
    Top = 579
  end
  object cdsRTransporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuotas'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 693
    Top = 199
  end
  object dsRTransporte: TwwDataSource
    DataSet = cdsRTransporte
    Left = 693
    Top = 212
  end
  object cdsTransporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoDCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 802
    Top = 452
  end
  object dsTransporte: TwwDataSource
    DataSet = cdsTransporte
    Left = 802
    Top = 465
  end
  object cdsRRepresentante: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 848
    Top = 579
  end
  object dsRRepresentante: TwwDataSource
    DataSet = cdsRRepresentante
    Left = 849
    Top = 592
  end
  object wwDataSource1: TwwDataSource
    DataSet = cdsSQL
    Left = 657
    Top = 592
  end
  object cdsCCosto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransaccionCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 556
    Top = 452
  end
  object dsCCosto: TwwDataSource
    DataSet = cdsCCosto
    Left = 556
    Top = 465
  end
  object cdsBoletaDCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDetRegGlob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 200
    Top = 323
  end
  object dsBoletaDCob: TwwDataSource
    DataSet = cdsBoletaDCob
    Left = 200
    Top = 336
  end
  object cdsBoletaCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuotas'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 409
    Top = 515
  end
  object dsBoletaCob: TwwDataSource
    DataSet = cdsBoletaCob
    Left = 409
    Top = 529
  end
  object cdsconcepto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 89
    Top = 579
  end
  object dsconcepto: TwwDataSource
    DataSet = cdsconcepto
    Left = 88
    Top = 592
  end
  object cdsTipBoleta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAbonoCreditos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 703
    Top = 134
  end
  object dsTipBoleta: TwwDataSource
    DataSet = cdsTipBoleta
    Left = 703
    Top = 147
  end
  object cdsReprCtaCte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoDCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 490
    Top = 452
  end
  object dsReprCtaCte: TwwDataSource
    DataSet = cdsReprCtaCte
    Left = 490
    Top = 465
  end
  object cdssitreclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitReclamo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 157
    Top = 579
  end
  object dssitreclamo: TwwDataSource
    DataSet = cdssitreclamo
    Left = 158
    Top = 592
  end
  object cdsQry3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 503
    Top = 810
  end
  object cdsQry4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 860
    Top = 452
  end
  object dsQry3: TwwDataSource
    DataSet = cdsQry3
    Left = 511
    Top = 863
  end
  object dsQry4: TwwDataSource
    DataSet = cdsQry4
    Left = 860
    Top = 465
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 541
    Top = 515
  end
  object cdsSolicitudes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 229
    Top = 579
  end
  object dsSolicitudes: TwwDataSource
    DataSet = cdsSolicitudes
    Left = 231
    Top = 592
  end
  object cdsListaCred: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 77
    Top = 260
  end
  object dsListaCred: TwwDataSource
    DataSet = cdsListaCred
    Left = 77
    Top = 273
  end
  object cdsSolicitudA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 358
    Top = 579
  end
  object cdsSolicitud: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 767
    Top = 134
  end
  object cdsConcre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 741
    Top = 515
  end
  object dsConcre: TwwDataSource
    DataSet = cdsConcre
    Left = 742
    Top = 529
  end
  object cdsListaCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 835
    Top = 260
  end
  object dsListaCreA: TwwDataSource
    DataSet = cdsListaCreA
    Left = 835
    Top = 273
  end
  object cdsTipCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 827
    Top = 134
  end
  object dsTipCreA: TwwDataSource
    DataSet = cdsTipCreA
    Left = 828
    Top = 147
  end
  object cdsRelCapCuo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 182
    Top = 71
  end
  object dsRelCapCuo: TwwDataSource
    DataSet = cdsRelCapCuo
    Left = 181
    Top = 84
  end
  object cdsCompromiso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 82
    Top = 515
  end
  object dsCompromiso: TwwDataSource
    DataSet = cdsCompromiso
    Left = 82
    Top = 529
  end
  object cdsConsulta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 726
    Top = 71
  end
  object dsConsulta: TwwDataSource
    DataSet = cdsConsulta
    Left = 726
    Top = 84
  end
  object cdsParam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 312
    Top = 71
  end
  object dsParam: TwwDataSource
    DataSet = cdsParam
    Left = 312
    Top = 84
  end
  object cdsCob336: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 670
    Top = 452
  end
  object dsCob336: TwwDataSource
    DataSet = cdsCob336
    Left = 671
    Top = 465
  end
  object cdsSobrino: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSobrino'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 190
    Top = 134
  end
  object dsSobrino: TwwDataSource
    DataSet = cdsSobrino
    Left = 190
    Top = 147
  end
  object cdsQry5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 361
    Top = 388
  end
  object dsqry5: TwwDataSource
    DataSet = cdsQry5
    Left = 361
    Top = 401
  end
  object cdsResultSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 485
    Top = 579
  end
  object cdsMovCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCreditoCab'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 612
    Top = 452
  end
  object dsMovCre: TwwDataSource
    DataSet = cdsMovCre
    Left = 612
    Top = 465
  end
  object cdsAbonoCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAbonoCuotas'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 603
    Top = 515
  end
  object dsAbonoCuotas: TwwDataSource
    DataSet = cdsAbonoCuotas
    Left = 603
    Top = 529
  end
  object cdsUser: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUser'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 746
    Top = 388
  end
  object cdsBancoEgr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 21
    Top = 579
  end
  object cdsCCBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 15
    Top = 515
  end
  object dsCCBco: TwwDataSource
    DataSet = cdsCCBco
    Left = 15
    Top = 529
  end
  object cdsFormPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 140
    Top = 452
  end
  object dsFormPago: TwwDataSource
    DataSet = cdsFormPago
    Left = 143
    Top = 465
  end
  object cdsRec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 257
    Top = 452
  end
  object dsRec: TwwDataSource
    DataSet = cdsRec
    Left = 257
    Top = 465
  end
  object cdsClaseAux: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 600
    Top = 579
  end
  object cdsAux: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 25
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 724
    Top = 579
  end
  object cdsTMon: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 303
    Top = 452
  end
  object dsTMon: TwwDataSource
    DataSet = cdsTMon
    Left = 304
    Top = 465
  end
  object cdsProvCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 358
    Top = 452
  end
  object dsProvCta: TwwDataSource
    DataSet = cdsProvCta
    Left = 359
    Top = 465
  end
  object cdsEquiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 228
    Top = 515
  end
  object dsEquiv: TwwDataSource
    DataSet = cdsEquiv
    Left = 230
    Top = 529
  end
  object cdsCnpEgr: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CPTOID'
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 281
    Top = 515
  end
  object dsCnpEgr: TwwDataSource
    DataSet = cdsCnpEgr
    Left = 283
    Top = 529
  end
  object cdsFEfec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 424
    Top = 579
  end
  object cdsMovRec: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 340
    Top = 515
  end
  object dsMovRec: TwwDataSource
    DataSet = cdsMovRec
    Left = 342
    Top = 529
  end
  object cdsDocPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ControlType.Strings = (
      'TMONID;CustomEdit;dblcMoneda'
      'DETCPAG;CustomEdit;dbeTC'
      'DEMTOLOC;CustomEdit;dbeMPL'
      'DEMTOEXT;CustomEdit;dbeMPE')
    ValidateWithMask = True
    Left = 733
    Top = 452
  end
  object dsDocPago: TwwDataSource
    DataSet = cdsDocPago
    Left = 734
    Top = 465
  end
  object cdsDetRegCob1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDetRegCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 164
    Top = 515
  end
  object dsDetRegCob1: TwwDataSource
    DataSet = cdsDetRegCob1
    Left = 164
    Top = 529
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 541
    Top = 529
  end
  object dsTtransaccion: TwwDataSource
    DataSet = cdsTtransaccion
    Left = 557
    Top = 401
  end
  object dsDevolucionCob: TwwDataSource
    DataSet = cdsDevolucionCob
    Left = 216
    Top = 401
  end
  object dsTransDevol: TwwDataSource
    DataSet = cdsTransDevol
    Left = 302
    Top = 401
  end
  object dsUser: TwwDataSource
    DataSet = cdsUser
    Left = 746
    Top = 401
  end
  object dsSolicitud: TwwDataSource
    DataSet = cdsSolicitud
    Left = 768
    Top = 147
  end
  object dsTRela: TwwDataSource
    DataSet = cdsTRela
    Left = 261
    Top = 212
  end
  object dsRegCob: TwwDataSource
    DataSet = cdsRegCob
    Left = 283
    Top = 273
  end
  object dsAutdisk: TwwDataSource
    DataSet = cdsAutdisk
    Left = 784
    Top = 336
  end
  object dsDevolucion: TwwDataSource
    DataSet = cdsDevolucion
    Left = 851
    Top = 336
  end
  object dsCtaCtes: TwwDataSource
    DataSet = cdsCtaCtes
    Left = 799
    Top = 529
  end
  object dsSolicitudA: TwwDataSource
    DataSet = cdsSolicitudA
    Left = 359
    Top = 592
  end
  object MainMenu1: TMainMenu
    Left = 971
    Top = 217
  end
  object ExcelApp: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 971
    Top = 270
  end
  object ExcelBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 971
    Top = 326
  end
  object WS: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 971
    Top = 382
  end
  object cdsQry6: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 879
    Top = 134
  end
  object dsQry6: TwwDataSource
    DataSet = cdsQry6
    Left = 879
    Top = 147
  end
  object cdsMovCnt1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCreditos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 899
    Top = 260
  end
  object dsMovCnt1: TwwDataSource
    DataSet = cdsMovCnt1
    Left = 899
    Top = 273
  end
  object cdsTipDesem: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 896
    Top = 199
  end
  object dsTipdesem: TwwDataSource
    DataSet = cdsTipDesem
    Left = 896
    Top = 212
  end
  object dsinconsistencia: TDataSource
    DataSet = cdsinconsistencia
    Left = 938
    Top = 530
  end
  object cdsinconsistencia: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USEID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOCODMOD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CARGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ASODNI'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ASONCTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOAPENOM'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ASOCODMOD_I'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CARGO_I'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ASOAPENOM_I'
        DataType = ftString
        Size = 42
      end
      item
        Name = 'ASODNI_I'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ASONCTA_I'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'cdsinconsistenciaIndex1'
        Fields = 'ASOID'
      end
      item
        Name = 'cdsinconsistenciaIndex2'
        Fields = 'ASODNI'
      end>
    Params = <>
    StoreDefs = True
    Left = 938
    Top = 515
  end
  object cdsSoliRefi: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 888
    Top = 71
  end
  object dsSoliRefi: TwwDataSource
    DataSet = cdsSoliRefi
    Left = 888
    Top = 84
  end
  object cdsUsesMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 758
    Top = 642
  end
  object dsUsesMantUgel: TwwDataSource
    DataSet = cdsUsesMantUgel
    Left = 758
    Top = 656
  end
  object cdsDptoMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 31
    Top = 642
  end
  object dsDptoMantUgel: TwwDataSource
    DataSet = cdsDptoMantUgel
    Left = 31
    Top = 656
  end
  object cdsQryMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 119
    Top = 642
  end
  object dsQryMantUgel: TwwDataSource
    DataSet = cdsQryMantUgel
    Left = 119
    Top = 656
  end
  object cdsQry1MantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 300
    Top = 642
  end
  object dsQry1MantUgel: TwwDataSource
    DataSet = cdsQry1MantUgel
    Left = 300
    Top = 656
  end
  object cdsQry3MantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 392
    Top = 642
  end
  object dsQry3MantUgel: TwwDataSource
    DataSet = cdsQry3MantUgel
    Left = 392
    Top = 656
  end
  object cdsQry4MantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 482
    Top = 642
  end
  object dsQry4MantUgel: TwwDataSource
    DataSet = cdsQry4MantUgel
    Left = 482
    Top = 656
  end
  object wwClientDataSet7: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 574
    Top = 642
  end
  object wwDataSource8: TwwDataSource
    DataSet = wwClientDataSet7
    Left = 574
    Top = 660
  end
  object cdsQry5MantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 574
    Top = 642
  end
  object dsQry5MantUgel: TwwDataSource
    DataSet = cdsQry5MantUgel
    Left = 574
    Top = 656
  end
  object cdsQry6MantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 665
    Top = 642
  end
  object dsQry6MantUgel: TwwDataSource
    DataSet = cdsQry6MantUgel
    Left = 665
    Top = 656
  end
  object cdsUproMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 851
    Top = 642
  end
  object dsUproMantUgel: TwwDataSource
    DataSet = cdsUproMantUgel
    Left = 851
    Top = 656
  end
  object cdsUPagoMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 948
    Top = 642
  end
  object dsUPagoMantUgel: TwwDataSource
    DataSet = cdsUPagoMantUgel
    Left = 948
    Top = 656
  end
  object cdsQry2MantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 207
    Top = 642
  end
  object dsQry2MantUgel: TwwDataSource
    DataSet = cdsQry2MantUgel
    Left = 207
    Top = 656
  end
  object cdsDistMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 30
    Top = 709
  end
  object dsDistMantUgel: TwwDataSource
    DataSet = cdsDistMantUgel
    Left = 30
    Top = 722
  end
  object cdsProvinMantUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 123
    Top = 709
  end
  object dsProvinMantUgel: TwwDataSource
    DataSet = cdsProvinMantUgel
    Left = 123
    Top = 722
  end
  object TcpClient1: TTcpClient
    Left = 971
    Top = 441
  end
  object cdsExtornoPCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 372
    Top = 709
  end
  object dsExtornoPCab: TwwDataSource
    DataSet = cdsExtornoPCab
    Left = 372
    Top = 722
  end
  object cdsQry10: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 251
    Top = 709
  end
  object dsQry10: TwwDataSource
    DataSet = cdsQry10
    Left = 251
    Top = 722
  end
  object cdsQry11: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 304
    Top = 709
  end
  object dsQry11: TwwDataSource
    DataSet = cdsQry11
    Left = 304
    Top = 722
  end
  object cdsQry26: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 198
    Top = 709
  end
  object dsQry26: TwwDataSource
    DataSet = cdsQry26
    Left = 198
    Top = 722
  end
  object cdsQry30: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 815
    Top = 709
  end
  object dsQry30: TwwDataSource
    DataSet = cdsQry30
    Left = 815
    Top = 722
  end
  object cdsAsoBanAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 521
    Top = 709
  end
  object dsAsoBanAct: TwwDataSource
    DataSet = cdsAsoBanAct
    Left = 521
    Top = 722
  end
  object cdsAsoBanNoAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 603
    Top = 709
  end
  object dsAsoBanNoAct: TwwDataSource
    DataSet = cdsAsoBanNoAct
    Left = 603
    Top = 722
  end
  object cdsUtilidades: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 449
    Top = 709
  end
  object dsUtilidades: TwwDataSource
    DataSet = cdsUtilidades
    Left = 449
    Top = 722
  end
  object cdsAcuerdos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 681
    Top = 709
  end
  object dsAcuerdos: TwwDataSource
    DataSet = cdsAcuerdos
    Left = 681
    Top = 722
  end
  object cdsCuotasAnu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 752
    Top = 709
  end
  object dsCuotasAnu: TwwDataSource
    DataSet = cdsCuotasAnu
    Left = 752
    Top = 722
  end
  object cdsCorrONP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 862
    Top = 515
  end
  object dsCorrONP: TwwDataSource
    DataSet = cdsCorrONP
    Left = 862
    Top = 530
  end
  object cdsRepDev: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 933
    Top = 578
  end
  object dsRepDev: TwwDataSource
    DataSet = cdsRepDev
    Left = 933
    Top = 592
  end
  object cdsQry31: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 867
    Top = 709
  end
  object dsQry31: TwwDataSource
    DataSet = cdsQry31
    Left = 867
    Top = 722
  end
  object cdsQry32: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 918
    Top = 709
  end
  object dsQry32: TwwDataSource
    DataSet = cdsQry32
    Left = 918
    Top = 722
  end
  object cdsQry33: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 970
    Top = 709
  end
  object dsQry33: TwwDataSource
    DataSet = cdsQry33
    Left = 970
    Top = 722
  end
  object tbOrigen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBajaAutDisk'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 774
    Top = 579
  end
  object cdsSQL: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 660
    Top = 579
  end
  object DCOM1: TSocketConnection
    ServerGUID = '{A79BB76F-D8F7-4167-A98A-446A626A94D3}'
    ServerName = 'SrvAplCob.srvDMCob'
    Left = 10
    Top = 12
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 343
    Top = 794
  end
  object dsQry2: TwwDataSource
    DataSet = cdsQry2
    Left = 351
    Top = 847
  end
  object cdsQryCalfCartera: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 163
    Top = 773
  end
  object dsQryCalfCartera: TwwDataSource
    DataSet = cdsQryCalfCartera
    Left = 163
    Top = 786
  end
  object cdsQryPeriodoCartera: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 243
    Top = 773
  end
  object dsQryPeriodoCartera: TwwDataSource
    DataSet = cdsQryPeriodoCartera
    Left = 243
    Top = 786
  end
  object cdsQryMotAtraso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 627
    Top = 773
  end
  object dsQryMotAtraso: TwwDataSource
    DataSet = cdsQryMotAtraso
    Left = 627
    Top = 786
  end
end
