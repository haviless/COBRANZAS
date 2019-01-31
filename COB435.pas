unit COB435;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ppEndUsr, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppBands;

type
  TFActualizaSaldos = class(TForm)
    bbtnCancelado: TBitBtn;
    bbtnCanceladoA: TBitBtn;
    bbtnParcial: TBitBtn;
    bbtnIncCA: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    bbtnRepC: TBitBtn;
    bbtnIncC: TBitBtn;
    pprC: TppReport;
    ppdC: TppDesigner;
    ppdbC: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    BitBtn1: TBitBtn;
    procedure bbtnCanceladoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnParcialClick(Sender: TObject);
    procedure bbtnCanceladoAClick(Sender: TObject);
    procedure bbtnIncCClick(Sender: TObject);
    procedure bbtnRepCClick(Sender: TObject);
    procedure bbtnIncCAClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    xEstado1 : String;
    xEstid1  : String;
    //** CANCELADO A
    xEstado2 : String;
    xEstid2  : String;
    //** PARCIAL
    xEstado3 : String;
    xEstid3  : String;
  public
    { Public declarations }
    procedure ActualizaCobranza( wAsoid, wCreid, wAno, wMes, wCuota, wDocPago, wEstAct, wFlgInt, wArea : String;
                                 xMtoCob, xMtoExc, xSaldo : Double );
  end;

var
  FActualizaSaldos: TFActualizaSaldos;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFActualizaSaldos.FormActivate(Sender: TObject);
begin
  //** CANCELADO
  xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
  xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** CANCELADO A
  xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Z'),'ESTDES');
  xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PARCIAL
  xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;
end;


procedure TFActualizaSaldos.bbtnCanceladoClick(Sender: TObject);
var
   xSQL : String;
begin

//////////////////////
//  21 - CANCELADO  //
//////////////////////

   xSQL:='Update CRE302 '
        +  'SET CREMTOFLAT=CREFLAT, CREMTOINT=CREINTERES, CREAMORT=CRECAPITAL '
        +      'CRESALDO=0 '
        +'Where CREESTID='''+xEstid1+''' '
        +  'and NVL(CREMTOCOB,0)=NVL(CREMTOFLAT,0)+NVL(CREMTOINT,0)+NVL(CREAMORT,0)';


   xSQL:='Update CRE302 '
        +  'SET CREMTOFLAT=CREFLAT, CREMTOINT=CREINTERES, CREAMORT=CRECAPITAL '
        +      'CRESALDO=0 '
        +'Where CREESTID='''+xEstid1+''' and CREMTOCOB<>CREMTOFLAT+CREMTOINT+CREAMORT';
end;


procedure TFActualizaSaldos.bbtnParcialClick(Sender: TObject);
var
   xSQL : String;
begin

////////////////////
//  27 - PARCIAL  //
////////////////////

// 274
  xSQL:='UPDATE CRE302 '
       +  'SET CREMTOFLAT=CASE WHEN CREMTOCOB>=CREFLAT THEN CREFLAT ELSE CREMTOCOB END, '
       +      'CREMTOINT =CASE WHEN CREMTOCOB>=CREFLAT + CREINTERES '
       +                      'THEN CREINTERES '
       +                      'ELSE CASE WHEN CREMTOCOB-CREFLAT>0 '
       +                                'THEN CREMTOCOB-CREFLAT '
       +                                'ELSE 0 '
       +                           'END '
       +                 'END, '
       +      'CREAMORT  =CASE WHEN CREMTOCOB-( CREFLAT + CREINTERES )>0 '
       +                      'THEN CREMTOCOB-( CREFLAT + CREINTERES ) '
       +                      'ELSE 0 '
       +                 'END '
       +'WHERE CREESTID='''+xEstid3+''' '
       +  'AND NVL(CREMTOCOB,0)<>( NVL(CREMTOFLAT,0) + NVL(CREMTOINT,0) + NVL(CRECAPITAL,0) ) '
       +  'AND NVL(CREMTOCOB,0)>0 ';

//
  xSQL:='UPDATE CRE302 '
       +  'SET CREMTOFLAT=CASE WHEN CREMTOCOB>=CREFLAT THEN CREFLAT ELSE CREMTOCOB END, '
       +      'CREMTOINT =CASE WHEN CREMTOCOB>=CREFLAT + CREINTERES '
       +                      'THEN CREINTERES '
       +                      'ELSE CASE WHEN CREMTOCOB-CREFLAT>0 '
       +                                'THEN CREMTOCOB-CREFLAT '
       +                                'ELSE 0 '
       +                           'END '
       +                 'END, '
       +      'CREAMORT  =CASE WHEN CREMTOCOB-( CREFLAT + CREINTERES )>0 '
       +                      'THEN CREMTOCOB-( CREFLAT + CREINTERES ) ELSE 0 END '
       +'FROM CRE302 '
       +'WHERE CREESTID='''+xEstid3+''' '
       +  'AND NVL(CREMTOCOB,0)=( NVL(CREMTOFLAT,0) + NVL(CREMTOINT,0) + NVL(CRECAPITAL,0) ) '
       +  'AND NVL(CREMTOCOB,0)>0 ';
end;


procedure TFActualizaSaldos.bbtnCanceladoAClick(Sender: TObject);
var
   xSQL : String;
begin

////////////////////////
//  23 - CANCELADO A  //
////////////////////////


// SON LOS REGISTROS CORRECTOS

  xSQL:='UPDATE CRE302 '
       +  'SET CREMTOINT=0, CREMTOFLAT=CREFLAT, CRECAPITAL=CREAMORT '
       +'WHERE CREESTID='''+xEstid2+''' '
       +  'AND NVL(CREMTOCOB,0)=( NVL(CREFLAT,0) + NVL(CREAMORT,0) ) ';


// ESTOS DEBEN CAMBIA DE ESTADO ( CANCELADO A ) A ( CANCELADO )

  xSQL:='UPDATE CRE302 '
       +  'SET CREESTID='''+xEstid1+''', '
       +      'CREMTOINT=CREINTERES, CREMTOFLAT=CREFLAT, CRECAPITAL=CREAMORT '
       +'WHERE CREESTID='''+xEstid2+''' '
       +  'AND NVL(CREMTOCOB,0)<>( NVL(CREFLAT,0)+NVL(CREAMORT,0) ) '
       +  'AND CREMTOCOB=CREMTO '


end;

procedure TFActualizaSaldos.bbtnIncCClick(Sender: TObject);
var
   xSQL : String;
begin
  xSQL:='SELECT '
       +  'CREMTO, CREFLAT, CREINTERES, CREAMORT, CREMTOCOB, '
       +  'CREMTOFLAT, CREMTOINT, CRECAPITAL, CREMTOEXC, '
       +  'NVL(CREMTOCOB,0)-( NVL(CREMTOFLAT,0)+NVL(CRECAPITAL,0)) DIF, '
       +  'CREESTID, ASOCODMOD, TIPCREID, CREDID, CREANO, CREMES, CRECUOTA, USUARIO '
       +'FROM CRE302 '
       +'WHERE CREESTID='''+xEstid1+''' '
       +  'AND NVL(CREMTOCOB,0)<>( NVL(CREFLAT,0)+NVL(CREINTERES,0)+NVL(CREAMORT,0) ) ';

  dm1.cdsQry2.Close;
  dm1.cdsQry2.DataRequest( xSQL );
  dm1.cdsQry2.Open;
end;

procedure TFActualizaSaldos.bbtnRepCClick(Sender: TObject);
var
   x10 : Integer;
begin
  pprC.Template.FileName := wRutaRpt+'\InconsistenciaC.rtm';
  pprC.Template.LoadFromFile ;
//  pprC.Print;
  ppdC.ShowModal;
  pprC.Stop;
  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;
end;

procedure TFActualizaSaldos.bbtnIncCAClick(Sender: TObject);
var
  xSQL : String;
begin
  xSQL:='SELECT '
       +  'CREMTO, CREFLAT, CREINTERES, CREAMORT, CREMTOCOB, '
       +  'CREMTOFLAT, CREMTOINT, CRECAPITAL, CREMTOEXC, '
       +  'NVL(CREMTOCOB,0)-( NVL(CREMTOFLAT,0)+NVL(CRECAPITAL,0)) DIF, '
       +  'CREESTID, ASOCODMOD, TIPCREID, CREDID, CREANO, CREMES, CRECUOTA, USUARIO '
       +'FROM CRE302 '
       +'WHERE CREESTID='''+xEstid2+''' '
       +  'AND NVL(CREMTOCOB,0)<>( NVL(CREFLAT,0)+NVL(CREAMORT,0) ) '
       +  'and CREMTOCOB<>CREMTO';

  dm1.cdsQry2.Close;
  dm1.cdsQry2.DataRequest( xSQL );
  dm1.cdsQry2.Open;

end;


procedure TFActualizaSaldos.ActualizaCobranza( wAsoid, wCreid, wAno, wMes, wCuota, wDocPago, wEstAct, wFlgInt, wArea : String;
                                               xMtoCob, xMtoExc, xSaldo : Double );
var
   xSQL, sSQL : String;
   xxEstid1, xxEstid2, xxEstid3, xxEstdes1, xxEstdes2, xxEstdes3 : String;
   xxEstid4, xxEstid5, xxEstid6, xxEstdes4, xxEstdes5, xxEstdes6 : String;
   xMtoPag, xMtoFlat, xMtoInt, xCapital, xMtoSal : Double;
   xCount : Integer;
   xEstadoZ, xEstidZ : String;
begin

   //** CANCELADO
   xxEstdes1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
   xxEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** CANCELADO A
   xxEstdes2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Z'),'ESTDES');
   xxEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PARCIAL
   xxEstdes3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
   xxEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** POR COBRAR
   xxEstdes4 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xxEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;

   //////////////////////////////////////////////////////////
   //   Primero Actualiza el Cobrado Anterior si Tuviera   //
   //////////////////////////////////////////////////////////

   xSQL:='Select * from CRE302 '
        +'Where ASOID='   +QuotedStr( wAsoid )
        + ' AND CREDID='  +QuotedStr( wCreid )
        + ' AND CREANO='  +QuotedStr( wAno )
        + ' AND CREMES='  +QuotedStr( wMes )
        + ' AND CRECUOTA='+QuotedStr( wCuota );
   dm1.cdsqry1.close;
   dm1.cdsqry1.datarequest(xSql);
   dm1.cdsqry1.open;

   if dm1.cdsqry1.fieldByname('CREMTOCOB').Asfloat>0 then
   begin

      //** CANCELADO
      if xxEstid1=dm1.cdsqry1.fieldByname('CREESTID').AsString then
      begin
         xSQL:='Update CRE302 '
              +'SET CREMTOFLAT=CREFLAT, CREMTOINT=CREINTERES, CRECAPITAL=CREAMORT, '
              +    'FLGINT=''S'', CRESALDO=0.00 '
              +'Where ASOID='   +QuotedStr( wAsoid )
              + ' AND CREDID='  +QuotedStr( wCreid )
              + ' AND CREANO='  +QuotedStr( wAno )
              + ' AND CREMES='  +QuotedStr( wMes )
              + ' AND CRECUOTA='+QuotedStr( wCuota );
      end;

      //** CANCELADO A
      if xxEstid2=dm1.cdsqry1.fieldByname('CREESTID').AsString then
      begin
         xSQL:='Update CRE302 '
              +  'SET CREMTOFLAT=CREFLAT, CREMTOINT=0, CRECAPITAL=CREAMORT, '
              +      'FLGINT=''N'', CRESALDO=CREMTO-CREMTOCOB '
              +'Where ASOID='   +QuotedStr( wAsoid )
              + ' AND CREDID='  +QuotedStr( wCreid )
              + ' AND CREANO='  +QuotedStr( wAno )
              + ' AND CREMES='  +QuotedStr( wMes )
              + ' AND CRECUOTA='+QuotedStr( wCuota );
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      end;

      //** PARCIAL
      if xxEstid3=dm1.cdsqry1.fieldByname('CREESTID').AsString then
      begin

         xMtoPag:=dm1.cdsqry1.FieldByName('CREMTOCOB').AsFloat;

         if xMtoPag>dm1.cdsqry1.FieldByName('CREFLAT').AsFloat then
         begin
            xMtoFlat:= dm1.cdsqry1.FieldByName('CREFLAT').AsFloat;
            xMtoPag := xMtoPag - xMtoFlat;
         end
         else
         begin
            xMtoFlat:= xMtoPag;
            xMtoPag := 0.00;
         end;

         if xMtoPag > 0 then
         begin
            if xMtoPag > dm1.cdsqry1.FieldByName('CREINTERES').AsFloat then
            begin
               xMtoInt:=dm1.cdsqry1.FieldByName('CREINTERES').AsFloat;
               xMtoPag:=xMtoPag-dm1.cdsqry1.FieldByName('CREINTERES').AsFloat;
            end
            else
            begin
               xMtoInt:=xMtoPag;
               xMtoPag:= 0.00;
            end;
         end;

         if xMtoPag > 0 then
         begin
            if xMtoPag>dm1.cdsqry1.FieldByName('CREAMORT').AsFloat then
            begin
               xCapital:=dm1.cdsqry1.FieldByName('CREAMORT').AsFloat;
               xMtoPag :=xMtoPag-dm1.cdsqry1.FieldByName('CREAMORT').AsFloat;
            end
            else
            begin
               xCapital := xMtoPag;
               xMtoPag := 0.00;
            end;
         end;

         xSQL:='Update CRE302 '
              +  'SET CREMTOFLAT='+ FloatToStr( xMtoFlat )+', '
              +      'CREMTOINT=' + FloatToStr( xMtoInt  )+', '
              +      'CRECAPITAL='+ FloatToStr( xCapital )+', FLGINT=''N'', '
              +      'CRESALDO=CREMTO-CREMTOCOB '
              +'Where ASOID='   +QuotedStr( wAsoid )
              + ' AND CREDID='  +QuotedStr( wCreid )
              + ' AND CREANO='  +QuotedStr( wAno )
              + ' AND CREMES='  +QuotedStr( wMes )
              + ' AND CRECUOTA='+QuotedStr( wCuota );
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      end;

      xSQL:='Select * from CRE302 '
           +'Where ASOID='   +QuotedStr( wAsoid )
           + ' AND CREDID='  +QuotedStr( wCreid )
           + ' AND CREANO='  +QuotedStr( wAno )
           + ' AND CREMES='  +QuotedStr( wMes )
           + ' AND CRECUOTA='+QuotedStr( wCuota );
      dm1.cdsqry1.close;
      dm1.cdsqry1.datarequest(xSql);
      dm1.cdsqry1.open;

   end;


   //////////////////////////////////////////////////////////
   //       Primero Actualiza el Cobrado Actual            //
   //////////////////////////////////////////////////////////

   xSQL:='UPDATE CRE302 SET CREMTOCOB=nvl(CREMTOCOB,0) + '+FloatToStrF( xMtoCob, ffFixed, 15, 2 )+' ';

   //** se setea los estados dependiendo del saldo y el estado que tuvo

   if dm1.FRound( xSaldo,15,2) = 0 then
   begin

      if dm1.cdsqry1.fieldByname('CREMTOCOB').Asfloat>0 then
      begin
         // Cancelado
         xEstadoZ := xxEstdes1;
         xEstidZ  := xxEstid1;
         xSql:=xSql + ', CRESALDO=0, FLGINT=''S''';
      end
      else
      begin
         //** SI ESTA POR COBRAR
         If wEstAct = xxEstid4 then
         begin
            if wFlgInt='S' then
            begin
               // cancelado
               xEstadoZ := xxEstdes1;
               xEstidZ  := xxEstid1;
               xSql := xSql + ', CRESALDO = 0.00, FLGINT=''S'''
            end
            else
            begin
               // cancelado A
               xEstadoZ := xxEstdes2;
               xEstidZ  := xxEstid2;
               xSql:=xSql + ', CRESALDO=CRESALDO-'+FloatToStrF(xMtoCob,ffFixed,15,2)+', FLGINT=''N''';
            end;
         end
         else
         begin
            //** SI ES PARCIAL PENDIENTE
            // Cancelado
            xEstadoZ := xxEstdes1;
            xEstidZ  := xxEstid1;
            xSql:=xSql + ', CRESALDO=0, FLGINT=''S''';
         end;
      end;
   end
   else
   begin
      // Si el Pago es Parcial

      xEstadoZ := xxEstdes3;
      xEstidZ  := xxEstid3;

      xSql:=xSql + ', CRESALDO=CRESALDO-'+FloatToStrF(xMtoCob,ffFixed,15,2)+', FLGINT=''S''';
   end;

   //
   xMtoSal:=xMtoCob;

   if xMtoSal > 0 then
   begin
      //** cuando el xMtoSal es mayor que el flat
      if xMtoSal > (DM1.cdsQry1.FieldByName('CREFLAT').AsFloat-
                    DM1.cdsqry1.FieldByName('CREMTOFLAT').AsFloat) then
      begin
         xMtoFlat:=DM1.cdsqry1.FieldByName('CREFLAT').AsFloat-DM1.cdsqry1.FieldByName('CREMTOFLAT').AsFloat;
         xMtoSal :=xMtoSal -(DM1.cdsqry1.FieldByName('CREFLAT').AsFloat-
                             DM1.cdsqry1.FieldByName('CREMTOFLAT').AsFloat);
      end
      else
      begin
         xMtoFlat := xMtoSal;
         xMtoSal  := 0.00;
      end;
   end;

   if ( xMtoSal > 0 ) and ( wFlgInt='S' ) then
   begin
      if xMtoSal > (DM1.cdsqry1.FieldByName('CREINTERES').AsFloat-
                    DM1.cdsqry1.FieldByName('CREMTOINT').AsFloat) then
      begin
         xMtoInt := DM1.cdsqry1.FieldByName('CREINTERES').AsFloat-
                    DM1.cdsqry1.FieldByName('CREMTOINT').AsFloat;
         xMtoSal := xMtoSal - (DM1.cdsqry1.FieldByName('CREINTERES').AsFloat-
                               DM1.cdsqry1.FieldByName('CREMTOINT').AsFloat);
      end
      else
      begin
         xMtoInt := xMtoSal;
         xMtoSal := 0.00;
      end;
   end
   else
   begin
      xMtoInt := 0;
      //xMtoSal := 0.00;
   end;

   if xMtoSal > 0 then
   begin
      if xMtoSal > (DM1.cdsqry1.FieldByName('CREAMORT').AsFloat-
                    DM1.cdsqry1.FieldByName('CRECAPITAL').AsFloat) then
      begin
         xCapital := DM1.cdsqry1.FieldByName('CREAMORT').AsFloat-
                     DM1.cdsqry1.FieldByName('CRECAPITAL').AsFloat;
         xMtoSal := xMtoSal - (DM1.cdsqry1.FieldByName('CREAMORT').AsFloat-
                               DM1.cdsqry1.FieldByName('CRECAPITAL').AsFloat);
      end
      else
      begin
         xCapital := xMtoSal;
         xMtoSal := 0.00;
      end;
   end
   else
   begin
      xCapital := 0.00;
      xMtoSal := 0.00;
   end;

   xSql := xSql +', AREAID='+QuotedStr('COB');

   xSql := xSql + ', CREESTID='+QuotedStr(xEstidZ)+ ', CREESTADO='+QuotedStr(xEstadoZ);
   xSql := xSql +
           ' ,CRECAPITAL = CRECAPITAL +'+FloatToStrF( xCapital, ffFixed,15,2)+
           ' ,CREMTOINT  = CREMTOINT +' +FloatToStrF( xmtoint,  ffFixed,15,2)+
           ' ,CREMTOFLAT = CREMTOFLAT +'+FloatToStrF( xmtoFlat, ffFixed,15,2)+
           ' ,CREDOCPAG ='+quotedstr( wDocPago )+
           ' ,NROOPE ='   +quotedstr( wDocPago )+
           ' ,FOPERAC = TO_DATE('+wRepFecServi+','+QuotedStr('DD/MM/YYY')+')'+
           ' ,CREFPAG = TO_DATE('+wRepFecServi+','+QuotedStr('DD/MM/YYY')+')';

   xSql := xSql +' ,CREMTOEXC='+FloatToStr(xMtoExc);

   xSql:=xSql+' Where ASOID = ' +QuotedStr( wAsoid  )+
                ' AND CREDID='  +QuotedStr( wCreid )+
                ' AND CREANO='  +QuotedStr( wAno   )+
                ' AND CREMES='  +QuotedStr( wMes   )+
                ' AND CRECUOTA='+QuotedStr( wCuota );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


   ///////////////////////////////////
   //   Actualiza CRE301 y CRE303   //
   ///////////////////////////////////
   xCount:= 0;
   xSql  := 'SELECT count(asoid) TOTAL FROM CRE302 WHERE ASOID='+quotedstr( wAsoid )+
            ' AND CREDID = '+quotedstr( wCreid )+
            ' AND CREESTID in ('+quotedstr( xxEstid1 )+', '+quotedstr( xxEstid2 )+' ) ';
   dm1.cdsqry1.close;
   dm1.cdsqry1.datarequest(xSql);
   dm1.cdsqry1.open;
   xCount := dm1.cdsQry1.FieldByName('TOTAL').AsInteger;

   xSql := 'SELECT crenumcuo FROM CRE303 WHERE ASOID='+quotedstr( wAsoid )+
           ' AND CREDID = '+quotedstr( wCreid );
   dm1.cdsqry1.close;
   dm1.cdsqry1.datarequest(xSql);
   dm1.cdsqry1.open;

   if xCount = dm1.cdsQry1.FieldByName('CRENUMCUO').AsInteger then
   begin
      xSQL:='UPDATE CRE301 SET CREESTID='+QuotedStr( xxEstid1 )+', CREESTADO='+QuotedStr( xxEstdes1 );

      xSql:=xSql+', CRESDOACT=0.00, CREMTOPAG=CREMTOPAG+CREMTOTAL, CRECUOPAG=CRENUMCUO ';

      xSql:=xSql+'Where ASOID ='+QuotedStr( wAsoid )+
                  ' AND CREDID='+QuotedStr( wCreid );
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


      xSQL:='UPDATE CRE303 SET CREESTID='+QuotedStr( xxEstid1 )+', CREESTADO='+QuotedStr( xxEstdes1 );

      xSql:=xSql+', CRESDOACT=0.00, CREMTOPAG=CREMTOPAG+CREMTOTAL, CRECUOPAG= CRENUMCUO ';

      xSql:=xSql+'Where ASOID ='+QuotedStr( wAsoid )+
                 ' AND CREDID=' +QuotedStr( wCreid );
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   end
   else
   begin
      xSQL:='SELECT SUM(CREMTOCOB) TOT FROM CRE302 '
           +'Where ASOID='+QuotedStr( wAsoid )
           + ' AND CREDID=' +QuotedStr( wCreid )
           + ' AND CREESTID in ( '+QuotedStr(xxEstid1)+','+quotedstr(xxEstid2)+','+quotedstr(xxEstid3)+' )';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSQL);
      DM1.cdsQry1.Open;

      xSQL:='UPDATE CRE301 SET CRESDOACT=CREMTOTAL-'+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
             ', CREMTOPAG='+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
             ', CRECUOPAG='+IntToStr(xCount)+' ';

      xSql:=xSql+'Where ASOID ='+QuotedStr( wAsoid )+
                 ' AND CREDID=' +QuotedStr( wCreid );
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      xSQL:='UPDATE CRE303 SET CRESDOACT=CREMTOTAL-'+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ', CREMTOPAG='+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ', CRECUOPAG='+IntToStr(xCount)+' ';

      xSql:=xSql+'Where ASOID ='+QuotedStr( wAsoid )+
                  ' AND CREDID='+QuotedStr( wCreid );

      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   end;
end;


procedure TFActualizaSaldos.BitBtn1Click(Sender: TObject);
begin
{
SELECT A.ASOID, A.CREDID, A.CREANO, A.CREMES, A.CRECUOTA, A.CREESTID, A.CREESTADO,
  A.CREMTOCUO, A.CREFLAT, A.CREINTERES, A.CREAMORT, A.CREMTOCOB,
  B.CREESTID, B.CREESTADO, B.CRECUOTA, B.CREMTO, B.CREFLAT, B.CREINTERES, B.CREAMORT,
  B.CREMTOCOB, B.CREMTOFLAT, B.CREMTOINT, B.CRECAPITAL
FROM CRE310 A, CRE302 B
Where B.ASOID(+)   = A.ASOID
  AND B.CREDID(+)  = A.CREDID
  AND B.CREANO(+)  = A.CREANO
  AND B.CREMES(+)  = A.CREMES
  AND B.CRECUOTA(+)= A.CRECUOTA
 }
end;

end.
