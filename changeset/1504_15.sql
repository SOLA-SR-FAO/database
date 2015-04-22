CREATE OR REPLACE FUNCTION application.getlodgement(fromdate character varying, todate character varying)
  RETURNS SETOF record AS
$BODY$
DECLARE 
    resultType  varchar;
    resultGroup varchar;
    resultTotal integer :=0 ;
    resultTotalPerc decimal:=0 ;
    resultDailyAvg  decimal:=0 ;
    resultTotalReq integer:=0 ;
    resultReqPerc  decimal:=0 ;
    TotalTot integer:=0 ;
    appoDiff integer:=0 ;
    rec     record;
    sqlSt varchar;
    lodgementFound boolean;
    recToReturn record;

    
BEGIN  
    appoDiff := (to_date(''|| toDate || '','yyyy-mm-dd') - to_date(''|| fromDate || '','yyyy-mm-dd'));
     if  appoDiff= 0 then 
            appoDiff:= 1;
     end if; 
    sqlSt:= '';
    
    sqlSt:= 'select   1 as order,
         get_translation(application.request_type.display_value, null) as type,
         application.request_type.request_category_code as group,
         count(application.service_historic.id) as total,
         round((CAST(count(application.service_historic.id) as decimal)
         /
         '||appoDiff||'
         ),2) as dailyaverage
from     application.service_historic,
         application.request_type
where    application.service_historic.request_type_code = application.request_type.code
         and
         application.service_historic.lodging_datetime between to_date('''|| fromDate || ''',''yyyy-mm-dd'')  and to_date('''|| toDate || ''',''yyyy-mm-dd'')
         and application.service_historic.action_code=''lodge''
         and application.service_historic.application_id in
	      (select distinct(application.application_historic.id)
	       from application.application_historic)
group by application.service_historic.request_type_code, application.request_type.display_value,
         application.request_type.request_category_code
union
select   2 as order,
         ''Total'' as type,
         ''All'' as group,
         count(distinct(application.service_historic.id)) as total,
         round((CAST(count(distinct(application.service_historic.id)) as decimal)
         /
         '||appoDiff||'
         ),2) as dailyaverage
from     application.service_historic,
         application.request_type
where    application.service_historic.request_type_code = application.request_type.code
         and
         application.service_historic.lodging_datetime between to_date('''|| fromDate || ''',''yyyy-mm-dd'')  and to_date('''|| toDate || ''',''yyyy-mm-dd'')
         and application.service_historic.action_code=''lodge''
         and application.service_historic.application_id in
	      (select distinct(application.application_historic.id)
	       from application.application_historic)
order by 1,3,2;
';




  

    --raise exception '%',sqlSt;
    lodgementFound = false;
    -- Loop through results
         select   
         count(distinct(application.service_historic.id))
         into TotalTot
from     application.service_historic,
         application.request_type
where    application.service_historic.request_type_code = application.request_type.code
         and
         application.service_historic.lodging_datetime between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd')
         and application.service_historic.application_id in
	      (select distinct(application.application_historic.id)
	       from application.application_historic);

    
    FOR rec in EXECUTE sqlSt loop
            resultType:= rec.type;
	    resultGroup:= rec.group;
	    resultTotal:= rec.total;
	    if  TotalTot= 0 then 
               TotalTot:= 1;
            end if; 
	    resultTotalPerc:= round((CAST(rec.total as decimal)*100/TotalTot),2);
	    resultDailyAvg:= rec.dailyaverage;
            resultTotalReq:= 0;

           

            if rec.type = 'Total' then
                 select   count(application.service_historic.id) into resultTotalReq
		from application.service_historic
		where application.service_historic.action_code='lodge'
                      and
                      application.service_historic.lodging_datetime between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd')
                      and application.service_historic.application_id in
		      (select application.application_historic.id
		       from application.application_historic
		       where application.application_historic.action_code='requisition');
            else
                  select  count(application.service_historic.id) into resultTotalReq
		from application.service_historic
		where application.service_historic.action_code='lodge'
                      and
                      application.service_historic.lodging_datetime between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd')
                      and application.service_historic.application_id in
		      (select application.application_historic.id
		       from application.application_historic
		       where application.application_historic.action_code='requisition'
		      )   
		and   application.service_historic.request_type_code = rec.type     
		group by application.service_historic.request_type_code;
            end if;

             if  rec.total= 0 then 
               appoDiff:= 1;
             else
               appoDiff:= rec.total;
             end if; 
            resultReqPerc:= round((CAST(resultTotalReq as decimal)*100/appoDiff),2);

            if resultType is null then
              resultType :=0 ;
            end if;
	    if resultTotal is null then
              resultTotal  :=0 ;
            end if;  
	    if resultTotalPerc is null then
	         resultTotalPerc  :=0 ;
            end if;  
	    if resultDailyAvg is null then
	        resultDailyAvg  :=0 ;
            end if;  
	    if resultTotalReq is null then
	        resultTotalReq  :=0 ;
            end if;  
	    if resultReqPerc is null then
	        resultReqPerc  :=0 ;
            end if;  

	    if TotalTot is null then
	       TotalTot  :=0 ;
            end if;  
	  
          select into recToReturn resultType::varchar, resultGroup::varchar, resultTotal::integer, resultTotalPerc::decimal,resultDailyAvg::decimal,resultTotalReq::integer,resultReqPerc::decimal;
          return next recToReturn;
          lodgementFound = true;
    end loop;
   
    if (not lodgementFound) then
        RAISE EXCEPTION 'no_lodgement_found';
    end if;
    return;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
ALTER FUNCTION application.getlodgement(character varying, character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION application.getlodgement(character varying, character varying) IS 'Not used. Replaced by get_work_summary.';
