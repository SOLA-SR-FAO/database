DROP VIEW if exists application.systematic_registration_certificates;

-- DROP FUNCTION system.set_system_id(character varying);

CREATE OR REPLACE FUNCTION system.set_system_id(input_label character varying)
  RETURNS character varying AS
$BODY$
declare
lga_exists integer;
val_to_return character varying;
   
begin

   if input_label  != '' then   

    if input_label  = 'SR' then   
        --select sg.id
        --into val_to_return
        --from  cadastre.spatial_unit_group sg
        --where hierarchy_level='1';
	val_to_return= input_label;	
		update system.setting
		set vl = val_to_return
		where name = 'system-id';
    else
          select count('X')
          into lga_exists
          from  cadastre.spatial_unit_group
          where hierarchy_level='2' and label = input_label;
       if lga_exists > 0 then
          select count('X')
          into lga_exists
          from  cadastre.spatial_unit_group
          where hierarchy_level='2' and seq_nr = 1;
         if lga_exists > 0 then
           RAISE EXCEPTION 'system id already set';
         else
      
		---  update the cadastre.spatial_unit_group table for setting the lga as system-id
		update cadastre.spatial_unit_group
		set seq_nr = 1 
		-- NB  to be uncommented only the line correspondent to the lga office  database
		where hierarchy_level='2' and label = input_label;
		  
		select sg.id
		into val_to_return
		from  cadastre.spatial_unit_group sg
		where hierarchy_level='2' and label = input_label;
         end if;
        else
          val_to_return= input_label;
        end if;  
    end if;
		
		update system.setting set vl = 
		val_to_return
		where name = 'system-id';   
		Update system.setting set vl = replace(vl, '/', '-') where name = 'system-id';

	---------------------------------------
	-- update existing generated numbers --
	---------------------------------------
	----ADMINISTRATIVE SCHEMA ------------
    
	-- administrative.dispute 
	update administrative.dispute
	set nr = val_to_return||'-'||nr;
	--historic
	update administrative.dispute_historic
	set nr = val_to_return||'-'||nr;

	-- administrative.dispute_comments
	update administrative.dispute_comments
	set dispute_nr = val_to_return||'-'||dispute_nr;
	--historic
	update administrative.dispute_comments_historic
	set dispute_nr = val_to_return||'-'||dispute_nr;

	-- administrative.dispute_party
	update administrative.dispute_party
	set dispute_nr = val_to_return||'-'||dispute_nr;
	--historic
	update administrative.dispute_party_historic
	set dispute_nr = val_to_return||'-'||dispute_nr;

	-- administrative.notation
	--  increasing size of reference_nr column
	update administrative.notation
	set reference_nr = val_to_return||'-'||reference_nr;
	--historic
	update administrative.notation_historic
	set reference_nr = val_to_return||'-'||reference_nr;

	-- administrative.rrr
	update administrative.rrr
	set nr = val_to_return||'-'||nr;
	--historic
	update administrative.rrr_historic
	set nr = val_to_return||'-'||nr;

	----APPLICATION SCHEMA ------------

  
	-- update application.application table
	update application.application
	set nr = val_to_return||'-'||nr;
	--historic
	update application.application_historic
	set nr = val_to_return||'-'||nr;

	----DOCUMENT SCHEMA ------------

	-- document.document
	update document.document
	set nr = val_to_return||'-'||nr;
	--historic
	update document.document_historic
	set nr = val_to_return||'-'||nr;

	----SOURCE SCHEMA ------------
	-- source.source
	update source.source
	set la_nr = val_to_return||'-'||la_nr;
	--historic
	update source.source_historic
	set la_nr = val_to_return||'-'||la_nr;


        
	----------------------------------------------------------------------------------------------------------
	--- update the generators

	---'generate-title-nr'

	--update system.br_definition
	--set  body = 'select sg.id ||''-''|| trim(to_char(nextval(''administrative.title_nr_seq''), ''0000000000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-title-nr';

    update system.br_definition
	set  body = 'select '''||val_to_return||'-''|| trim(to_char(nextval(''administrative.title_nr_seq''), ''0000000000'')) AS vl'
	where br_id = 'generate-title-nr';
   
         
	-- generate-dispute-nr
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymm'') || trim(to_char(nextval(''administrative.dispute_nr_seq''), ''0000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-dispute-nr';


        update system.br_definition
	set  body = 'select '''||val_to_return||'-''|| to_char(now(), ''yymm'') || trim(to_char(nextval(''administrative.dispute_nr_seq''), ''0000'')) AS vl'
	where br_id = 'generate-dispute-nr';


	----------------------------------------------------------------------------------------------------
	---generate-application-nr

        update system.br_definition
	set  body = 'select '''||val_to_return||'-''||to_char(now(), ''yymm'') || trim(to_char(nextval(''application.application_nr_seq''), ''0000'')) AS vl'
	where br_id = 'generate-application-nr';

	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymm'') || trim(to_char(nextval(''application.application_nr_seq''), ''0000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-application-nr';


	----------------------------------------------------------------------------------------------------
	---'generate-notation-reference-nr'
	 

        update system.br_definition
	set  body = 'select '''||val_to_return||'-''||to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''administrative.notation_reference_nr_seq''), ''0000'')) AS vl'
	where br_id = 'generate-notation-reference-nr';


	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''administrative.notation_reference_nr_seq''), ''0000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-notation-reference-nr';
       
	----------------------------------------------------------------------------------------------------
	----'generate-rrr-nr'
	 

        update system.br_definition
	set  body = 'select '''||val_to_return||'-''||to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''administrative.rrr_nr_seq''), ''0000'')) AS vl'
	where br_id = 'generate-rrr-nr';
  
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''administrative.rrr_nr_seq''), ''0000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-rrr-nr';

	----------------------------------------------------------------------------------------------------
	-----'generate-source-nr'
	 
        update system.br_definition
	set  body = 'select '''||val_to_return||'-''||to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''source.source_la_nr_seq''), ''000000000'')) AS vl'
	where br_id = 'generate-source-nr';
 
        
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''source.source_la_nr_seq''), ''000000000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-source-nr';

	----------------------------------------------------------------------------------------------------
	---- 'generate-baunit-nr'
	update system.br_definition
	set  body = 'select '''||val_to_return||'-''||to_char(now(), ''yymmdd'') || ''-'' ||  trim(to_char(nextval(''administrative.ba_unit_first_name_part_seq''), ''0000''))
	|| ''/'' || trim(to_char(nextval(''administrative.ba_unit_last_name_part_seq''), ''0000'')) AS vl'
	where br_id = 'generate-baunit-nr';
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||  to_char(now(), ''yymmdd'') || ''-'' ||  trim(to_char(nextval(''administrative.ba_unit_first_name_part_seq''), ''0000''))
	--|| ''/'' || trim(to_char(nextval(''administrative.ba_unit_last_name_part_seq''), ''0000'')) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-baunit-nr';

	-----------------------------------------------------------------------------------------------
	--------------- keep commented ---------------------------------------------------------------------
	----------------------------------------------------------------------------------------------------
	----'generate-cadastre-object-lastpart'
	 
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymmdd'') || ''-'' ||  to_char(now(), ''yymmdd'') || ''-'' || cadastre.get_new_cadastre_object_identifier_last_part(#{geom}, #{cadastre_object_type}) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-cadastre-object-lastpart';
 

	----------------------------------------------------------------------------------------------------
	----- 'generate-cadastre-object-firstpart'
	 
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymmdd'') || ''-'' ||  to_char(now(), ''yymmdd'') || ''-'' || cadastre.get_new_cadastre_object_identifier_first_part(#{last_part}, #{cadastre_object_type}) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-cadastre-object-firstpart';


	----------------------------------------------------------------------------------------------------
	---- generate-spatial-unit-group-name'
	--update system.br_definition
	--set  body = 'select sg.id ||''-''||to_char(now(), ''yymmdd'') || ''-'' ||  to_char(now(), ''yymmdd'') || ''-'' ||  cadastre.generate_spatial_unit_group_name(get_geometry_with_srid(#{geom_v}), #{hierarchy_level_v}, #{label_v}) AS vl from cadastre.spatial_unit_group sg where sg.hierarchy_level=''2'' and sg.seq_nr >0'
	--where br_id = 'generate-spatial-unit-group-name';
         end if;
       --end if; 
     --end if; 
   --end if; 
   if val_to_return is not null then
          val_to_return := val_to_return;
   else
       RAISE EXCEPTION 'no lga with such a label';
   end if;
  return val_to_return;        
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION system.set_system_id(character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION system.set_system_id(character varying) IS 'This function generates the systemid.';






DROP FUNCTION cadastre.generate_spatial_unit_group_name(geometry, integer, character varying);

CREATE OR REPLACE FUNCTION cadastre.generate_spatial_unit_group_name(geom_v geometry, hierarchy_level_v integer, label_v character varying)
  RETURNS character varying AS
$BODY$
declare
  name_parent varchar;  
BEGIN
  if (hierarchy_level_v = 0 or hierarchy_level_v = 1) then
    return label_v;
  end if;
  name_parent =  coalesce( (select name 
  from cadastre.spatial_unit_group 
  where hierarchy_level = hierarchy_level_v - 1 and st_intersects(st_centroid(geom_v), geom)), '');

  if (hierarchy_level_v = 5 and name_parent = '') then 
   name_parent =  coalesce( (select name 
   from cadastre.spatial_unit_group 
   where hierarchy_level = hierarchy_level_v - 2 and st_intersects(st_centroid(geom_v), geom)), '');
   name_parent =  name_parent ||'/';  
  end if;
  return name_parent || '/' || label_v;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cadastre.generate_spatial_unit_group_name(geometry, integer, character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION cadastre.generate_spatial_unit_group_name(geometry, integer, character varying) IS 'It generates the name of a new spatial unit group.';


----  populate cadastre.sr_work_unit table  -------------------------

-- Function: cadastre.f_for_tbl_spatial_unit_group_trg_new()

-- DROP FUNCTION cadastre.f_for_tbl_spatial_unit_group_trg_new();


CREATE OR REPLACE FUNCTION cadastre.f_for_tbl_spatial_unit_group_trg_new()
  RETURNS trigger AS
$BODY$
BEGIN
 if (new.hierarchy_level = 4) then
  if (select count(*)=0 from cadastre.sr_work_unit where id=new.id) then
    insert into cadastre.sr_work_unit(id, name, rowidentifier, change_user, rowversion) 
    values(new.id, new.name, new.rowidentifier, new.change_user, new.rowversion);
  end if;
 end if; 
  return new;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cadastre.f_for_tbl_spatial_unit_group_trg_new() OWNER TO postgres;

CREATE TRIGGER add_srwu AFTER INSERT
   ON cadastre.spatial_unit_group FOR EACH ROW
  EXECUTE PROCEDURE cadastre.f_for_tbl_spatial_unit_group_trg_new();


CREATE TRIGGER __track_changes BEFORE INSERT OR UPDATE ON cadastre.sr_work_unit FOR EACH ROW EXECUTE PROCEDURE public.f_for_trg_track_changes();

----------------------------------------------
---- update for map label
CREATE OR REPLACE FUNCTION cadastre.get_map_center_label(center_point geometry)
RETURNS character varying AS $BODY$ begin
return coalesce((select 'Public Display Area:' || label from cadastre.spatial_unit_group
where hierarchy_level = 4 and st_within(center_point, geom) limit 1), ''); end;
$BODY$ LANGUAGE plpgsql;

--- get_section ----
-- Function: application.getSection(character varying)

-- DROP FUNCTION application.getSection(character varying);

CREATE OR REPLACE FUNCTION application.getSection(inputnr character varying)
  RETURNS character varying AS
$BODY$
declare
  rec record;
  section character varying;
  
BEGIN

section = '';
   
	SELECT  sg.name 
	into section
		    FROM  application.application aa,
			  application.service s,
			  application.application_property ap,
		          cadastre.spatial_unit_group sg,
		          cadastre.cadastre_object co
	            WHERE   aa.nr = inputnr
	                    AND s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
                            AND   aa.id::text = ap.application_id::text
			    AND   ap.name_firstpart||ap.name_lastpart= co.name_firstpart||co.name_lastpart
                            AND   ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                            AND sg.hierarchy_level=4;
        if section = '' then
	  section = 'No section ';
       end if;

	
return section;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION application.getSection(character varying)
 OWNER TO postgres;
      
-- Function: document.get_document_nr()

-- DROP FUNCTION document.get_document_nr();

CREATE OR REPLACE FUNCTION document.get_document_nr()
  RETURNS character varying AS
$BODY$
BEGIN
  return (
          select ss.vl ||'-'
          from system.setting ss 
		  where ss.name = 'system-id'
         );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION document.get_document_nr() OWNER TO postgres;
COMMENT ON FUNCTION document.get_document_nr() IS 'It returns the document nr sequence nextval prefixed with system id';





-----  cadastre.GET_CO_IDENTIFIER  --------------------
CREATE OR REPLACE FUNCTION cadastre.get_new_cadastre_object_identifier_first_part(
 last_part varchar
  , cadastre_object_type varchar
) RETURNS varchar 
AS $$
declare
newseqnr integer;
parcel_number_exists integer;
val_to_return character varying;

apponewseqnr  character varying;
   
begin
   if last_part != 'NO LGA/WARD' then    
          
          select cadastre.spatial_unit_group.seq_nr+1
          into newseqnr
          from cadastre.spatial_unit_group
          where name=last_part
          and cadastre.spatial_unit_group.hierarchy_level = 3;

          select count (*) 
          into parcel_number_exists
          from cadastre.cadastre_object
          where name_firstpart||name_lastpart= newseqnr||last_part;
        if parcel_number_exists > 0 then
          select max (name_firstpart)
          into apponewseqnr
          from  cadastre.cadastre_object
          where name_lastpart= last_part;
          apponewseqnr:= replace( apponewseqnr, 'X ', '0');
          apponewseqnr:= replace( apponewseqnr, 'NC', '0');
          newseqnr:=apponewseqnr;
          newseqnr:=newseqnr+1;
        end if;  

          
      if newseqnr is not null then

          update cadastre.spatial_unit_group
          set seq_nr = newseqnr
          where name=last_part
          and cadastre.spatial_unit_group.hierarchy_level = 3;
      end if;
   else
       RAISE EXCEPTION 'no_lga/ward_found';

   end if;

  val_to_return := 'X '||newseqnr;
  return val_to_return;        
end;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION cadastre.get_new_cadastre_object_identifier_first_part(
 last_part varchar
  , cadastre_object_type varchar
) IS 'This function generates the first part of the cadastre object identifier.
It has to be overridden to apply the algorithm specific to the situation.';

-- Function cadastre.get_new_cadastre_object_identifier_last_part --
CREATE OR REPLACE FUNCTION cadastre.get_new_cadastre_object_identifier_last_part(
 geom geometry
  , cadastre_object_type varchar
) RETURNS varchar 
AS $$
declare
last_part geometry;
val_to_return character varying;
srid_found integer;
begin
  
  srid_found = (select srid from system.crs);
  
   
   last_part := ST_SetSRID(geom,srid_found);

   select name 
   into val_to_return
   from cadastre.spatial_unit_group sg
   where ST_Intersects(ST_PointOnSurface(last_part), sg.geom)
   and sg.hierarchy_level = 3
   ;

   if val_to_return is null then
    val_to_return := 'NO LGA/WARD';
   end if;

  return val_to_return;
end;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION cadastre.get_new_cadastre_object_identifier_last_part(
 geom geometry
  , cadastre_object_type varchar
) IS 'This function generates the last part of the cadastre object identifier.
It has to be overridden to apply the algorithm specific to the situation.';

--cadastre-object-check-name for UPI Standard

CREATE OR REPLACE FUNCTION cadastre.cadastre_object_name_is_valid(name_firstpart character varying, name_lastpart character varying)
  RETURNS boolean AS
$BODY$

  
BEGIN
 if name_firstpart is null then return false; end if;
  if name_lastpart is null then return false; end if;
  if not (name_firstpart similar to 'NC[0-9]+' or name_firstpart similar to '[0-9]+') then return false;  end if;
  
  if name_lastpart not in (select sg.name 
			   from cadastre.spatial_unit_group sg
		           where  sg.hierarchy_level = 3) then return false;  end if;

  return true;
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cadastre.cadastre_object_name_is_valid(character varying, character varying) OWNER TO postgres;    

----  GET PD PARCELS  -----

DROP TRIGGER if exists trg_remove ON cadastre.cadastre_object;

CREATE TRIGGER trg_remove
  AFTER DELETE
  ON cadastre.cadastre_object
  FOR EACH ROW
  EXECUTE PROCEDURE cadastre.f_for_tbl_cadastre_object_trg_remove();

create or replace function cadastre.get_pd_parcels(section varchar)
returns table(id varchar(40), label varchar(200),  the_geom geometry)
as
$$
declare
  sg_id varchar;
begin
  sg_id = (select sg.id from cadastre.spatial_unit_group sg where sg.name = section
  and sg.hierarchy_level=4 
  and sg.name in ( select ss.reference_nr from   source.source ss where ss.type_code='publicNotification') );
  return query
    select co.id, co.name_firstpart as label,  co.geom_polygon as the_geom 
    from cadastre.cadastre_object co
    where co.type_code= 'parcel' and co.status_code= 'current'
      and co.id in (select spatial_unit_id from cadastre.spatial_unit_in_group sg where sg.spatial_unit_group_id = sg_id); 
end;
$$
language plpgsql;

COMMENT ON FUNCTION cadastre.get_pd_parcels(varchar) IS 'It returns all the parcels falling inside a certain section.';

create or replace function cadastre.get_pd_parcels_next(section varchar)
returns table(id varchar(40), label varchar(200),  the_geom geometry)
as
$$
declare
  sg_id varchar;
  sg_geometry geometry;
  filter_polygon geometry;
begin
  sg_id = (select sg.id from cadastre.spatial_unit_group sg where sg.name = section
  and sg.hierarchy_level=4 
  and sg.name in ( select ss.reference_nr from   source.source ss where ss.type_code='publicNotification') );
  sg_geometry = (select geom from cadastre.spatial_unit_group sg where sg.id= sg_id);
  filter_polygon = (select st_buffer(st_union(co.geom_polygon), 5)
    from cadastre.cadastre_object co
    where co.type_code= 'parcel' and co.status_code= 'current'
      and co.id in (select spatial_unit_id from cadastre.spatial_unit_in_group sg where sg.spatial_unit_group_id = sg_id)); 
  
  return query
    select  co_next.id, (co_next.name_lastpart||'/'||co_next.name_firstpart)::varchar as label, co_next.geom_polygon as the_geom  
    from cadastre.cadastre_object co_next
    where co_next.type_code= 'parcel' and co_next.status_code= 'current'
      and filter_polygon && co_next.geom_polygon and st_intersects(filter_polygon, co_next.geom_polygon)
      and co_next.id not in (select spatial_unit_id from cadastre.spatial_unit_in_group sg where sg.spatial_unit_group_id = sg_id); 
end;
$$
language plpgsql;

COMMENT ON FUNCTION cadastre.get_pd_parcels(varchar) IS 'It returns all the neighbouring parcels of a given section that do not belong to that section.';

-- Add index to cadastre.spatial_unit_group.name
DROP INDEX if exists cadastre.spatial_unit_group_name_ind;
CREATE INDEX spatial_unit_group_name_ind  ON cadastre.spatial_unit_group(name);

-- Add index to cadastre.spatial_unit_group.hierarchy_level
DROP INDEX if exists cadastre.spatial_unit_group_hierarchy_level_ind;
CREATE INDEX spatial_unit_group_hierarchy_level_ind  ON cadastre.spatial_unit_group(hierarchy_level);

-- Modify the function of the trigger after insert update of cadastre.cadastre_object.geom_polygon
CREATE OR REPLACE FUNCTION cadastre.f_for_tbl_cadastre_object_trg_geommodify()
  RETURNS trigger AS
$BODY$
declare
  rec record;
  rec_snap record;
  tolerance float;
  modified_geom geometry;
begin
  -- Maintain relation with spatial_unit_group
  -- Remove existing relation if it exists
  delete from cadastre.spatial_unit_in_group where spatial_unit_id = new.id;
  -- Insert new relation
  insert into cadastre.spatial_unit_in_group(spatial_unit_group_id,spatial_unit_id)
  select sg.id, new.id
  from cadastre.spatial_unit_group sg
  where sg.hierarchy_level = 4 and new.geom_polygon && sg.geom and ST_Contains(sg.geom, ST_PointOnSurface(new.geom_polygon));
  
  if new.status_code != 'current' then
    return new;
  end if;

  if new.type_code not in (select code from cadastre.cadastre_object_type where in_topology) then
    return new;
  end if;

  tolerance = coalesce(system.get_setting('map-tolerance')::double precision, 0.01);
  for rec in select co.id, co.geom_polygon 
                 from cadastre.cadastre_object co 
                 where  co.id != new.id and co.type_code = new.type_code and co.status_code = 'current'
                     and co.geom_polygon is not null 
                     and new.geom_polygon && co.geom_polygon 
                     and st_dwithin(new.geom_polygon, co.geom_polygon, tolerance)
  loop
    modified_geom = cadastre.add_topo_points(new.geom_polygon, rec.geom_polygon);
    if not st_equals(modified_geom, rec.geom_polygon) then
      update cadastre.cadastre_object 
        set geom_polygon= modified_geom, change_user= new.change_user 
      where id= rec.id;
    end if;
  end loop;
  return new;
end;
$BODY$
  LANGUAGE plpgsql;

-- It is added the trigger that is called when spatial_unit_group.geom is changed or added
CREATE OR REPLACE FUNCTION cadastre.f_for_tbl_spatial_unit_group_trg_geommodify()
  RETURNS trigger AS
$BODY$
begin
  -- Only if hierarchy level is 4 = section is executed
  if new.hierarchy_level = 4 then
    return new;
  end if;
  -- Maintain relation with spatial_unit
  
  -- Insert new relations
  insert into cadastre.spatial_unit_in_group(spatial_unit_group_id,spatial_unit_id)
  select new.id, co.id
  from cadastre.cadastre_object co
  where co.id not in (select spatial_unit_id from cadastre.spatial_unit_in_group where spatial_unit_group_id=new.id) 
    and co.geom_polygon && new.geom and ST_Contains(new.geom, ST_PointOnSurface(co.geom_polygon));

  -- Remove relations that are not anymore relevant
  delete from cadastre.spatial_unit_in_group 
  where spatial_unit_group_id = new.id 
    and spatial_unit_id not in (select id from cadastre.cadastre_object co where co.geom_polygon && new.geom and ST_Contains(new.geom, ST_PointOnSurface(co.geom_polygon)));
  
  return new;
end;
$BODY$
  LANGUAGE plpgsql;

DROP TRIGGER if exists trg_geommodify ON cadastre.spatial_unit_group;

CREATE TRIGGER trg_geommodify
  AFTER INSERT OR UPDATE OF geom
  ON cadastre.spatial_unit_group
  FOR EACH ROW
  EXECUTE PROCEDURE cadastre.f_for_tbl_spatial_unit_group_trg_geommodify();

--- FINE GET PD PARCELS ------

-- Function: administrative.get_parcel_rrr(character varying)

-- DROP FUNCTION administrative.get_parcel_rrr(character varying);

CREATE OR REPLACE FUNCTION administrative.get_parcel_rrr(baunit_id character varying)
  RETURNS character varying AS
$BODY$
declare
  rec record;
  rrr character varying;
  
BEGIN
  rrr = '';
   
	for rec in 
              select distinct (rrrt.display_value)  as value
              from party.party pp,
		     administrative.party_for_rrr  pr,
		     administrative.rrr rrr,
		     administrative.rrr_share  rrrsh,
		     administrative.rrr_type  rrrt
		where pp.id=pr.party_id
		and   pr.rrr_id=rrr.id
		and rrrsh.id = pr.share_id
		AND rrr.type_code = rrrt.code
		and   rrr.ba_unit_id= baunit_id
	loop
           rrr = rrr || ', ' || rec.value;
	end loop;

        if rrr = '' then
	  rrr = 'No Other rrr claimed ';
       end if;

	if substr(rrr, 1, 1) = ',' then
          rrr = substr(rrr,2);
        end if;
return rrr;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION administrative.get_parcel_rrr(character varying) OWNER TO postgres;

 
--DROP FUNCTION administrative.get_parcel_share(character varying);

DROP FUNCTION administrative.get_parcel_share(character varying);

CREATE OR REPLACE FUNCTION administrative.get_parcel_share(baunit_id character varying)
  RETURNS character varying AS
$BODY$
declare
  rec record;
  rrr character varying;
  i integer =0 ;
BEGIN
  rrr = '';
              

	for rec in 
              select  (rrrt.display_value)  as tiporrr,
              initcap(pp.name)||' '||initcap(pp.last_name) || ' ( '||rrrsh.nominator||'/'||rrrsh.denominator||' )'
               as value,
               rrrsh.nominator||'/'||rrrsh.denominator as shareFraction
              from party.party pp,
		     administrative.party_for_rrr  pr,
		     administrative.rrr rrr,
		     administrative.rrr_share  rrrsh,
		     administrative.rrr_type  rrrt
		where pp.id=pr.party_id
		and   pr.rrr_id=rrr.id
		and rrrsh.id = pr.share_id
		AND rrr.type_code = rrrt.code
		and   rrr.ba_unit_id= baunit_id
	loop
           rrr = rrr || ', ' || rec.value;
           i = i+1;
	end loop;

        if rrr = '' then
	  rrr = 'No rrr claimed ';
       end if;

        
	if substr(rrr, 1, 1) = ',' then
          rrr = substr(rrr,2);
        end if;
        if i = 2 then
          rrr= replace(rrr, '( 1/1 )','Joint');
        end if;
        if i > 2 then
          rrr= replace(rrr, '( 1/1 )','Undevided Share');
        end if;
        rrr= replace(rrr, '( 1/1 )','');
return rrr;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION administrative.get_parcel_share(character varying) OWNER TO postgres;


--  FUNCTION administrative.get_parcel_ownernames(character varying);     
-- DROP FUNCTION administrative.get_parcel_ownernames(character varying);

CREATE OR REPLACE FUNCTION administrative.get_parcel_ownernames(baunit_id character varying)
  RETURNS character varying AS
$BODY$
declare
  rec record;
  name character varying;
  
BEGIN
  name = '';
   
	for rec in 
           select pp.name||' '||pp.last_name as value
		from party.party pp,
		     administrative.party_for_rrr  pr,
		     administrative.rrr rrr
		where pp.id=pr.party_id
		and   pr.rrr_id=rrr.id
		and   rrr.ba_unit_id= baunit_id
		and   (rrr.type_code='ownership'
		       or rrr.type_code='apartment'
		       or rrr.type_code='commonOwnership'
		       or rrr.type_code='stateOwnership')
		
	loop
           name = name || ', ' || rec.value;
	end loop;

        if name = '' then
	  name = 'No claimant identified ';
       end if;
         if substr(name, 1, 1) = ',' then
          name = substr(name,2);
        end if;
return name;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION administrative.get_parcel_ownernames(character varying) OWNER TO postgres;



---  SR REPORTS  ----------------------------

--------------
--  PROGRESS REPORT
--------------

CREATE OR REPLACE FUNCTION administrative.getsysregprogress(fromdate character varying, todate character varying, namelastpart character varying)
  RETURNS SETOF record AS
$BODY$
DECLARE 

       	block  			varchar;	
       	TotAppLod		decimal:=0 ;	
        TotParcLoaded		varchar:='none' ;	
        TotRecObj		decimal:=0 ;	
        TotSolvedObj		decimal:=0 ;	
        TotAppPDisp		decimal:=0 ;	
        TotPrepCertificate      decimal:=0 ;	
        TotIssuedCertificate	decimal:=0 ;	


        Total  			varchar;	
       	TotalAppLod		decimal:=0 ;	
        TotalParcLoaded		varchar:='none' ;	
        TotalRecObj		decimal:=0 ;	
        TotalSolvedObj		decimal:=0 ;	
        TotalAppPDisp		decimal:=0 ;	
        TotalPrepCertificate      decimal:=0 ;	
        TotalIssuedCertificate	decimal:=0 ;	


  
      
       rec     record;
       sqlSt varchar;
       workFound boolean;
       recToReturn record;

       recTotalToReturn record;

        -- From Neil's email 9 march 2013
	    -- PROGRESS REPORT
		--0. Block	
		--1. Total Number of Applications Lodged	
		--2. No of Parcel loaded	
		--3. No of Objections received
		--4. No of Objections resolved
		--5. No of Applications in Public Display	               
		--6. No of Applications with Prepared Certificate	
		--7. No of Applications with Issued Certificate	
		
    
BEGIN  


   sqlSt:= '';
    
     sqlSt:= 'select sg.name   as area
			  from  
			  cadastre.spatial_unit_group sg 
			  where 
			  sg.hierarchy_level=4
    ';
    if namelastpart != '' then
    sqlSt:= sqlSt|| ' AND  sg.name =  '''||namelastpart||'''';  --1. block
          --sqlSt:= sqlSt|| ' AND compare_strings('''||namelastpart||''', sg.name) ';
    end if;
    --raise exception '%',sqlSt;
       workFound = false;

    -- Loop through results
    
    FOR rec in EXECUTE sqlSt loop

    
    select  (      
                  ( SELECT  
		    count( aa.nr)
		    FROM  application.application aa,
			  application.service s,
			  administrative.ba_unit bu, 
		          application.application_property ap
			     WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
			    AND   aa.action_code ='lodge'
                            AND   aa.id::text = ap.application_id::text
			    AND   ap.name_firstpart||ap.name_lastpart= bu.name_firstpart||bu.name_lastpart
                            and bu.name_firstpart||bu.name_lastpart in
                            ( select co.name_firstpart||co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''|| rec.area ||''
                            )
                        AND  (
		          (aa.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
		           or
		          (aa.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
		          )
			    ) + 
	           ( SELECT  
		    count( aa.nr)
		    FROM  application.application_historic aa,
			  application.service s,
			  administrative.ba_unit bu, 
		          application.application_property ap
			     WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
			    AND   aa.action_code ='lodge'
                            AND   aa.id::text = ap.application_id::text
			    AND   ap.name_firstpart||ap.name_lastpart= bu.name_firstpart||bu.name_lastpart
                            and bu.name_firstpart||bu.name_lastpart in
                            ( select co.name_firstpart||co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''|| rec.area ||''
                            )
                            AND  (
		          (aa.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
		           or
		          (aa.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
		          )
			    )
		    

	      ),  --- TotApp
          (           
	   
	   (
	    SELECT count (DISTINCT co.id)
	    FROM cadastre.land_use_type lu, cadastre.cadastre_object co, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s, administrative.ba_unit bu
	    WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text 
	    AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) 
	    AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text 
	    AND s.status_code::text = 'completed'::text AND COALESCE(co.land_use_code, 'residential'::character varying)::text = lu.code::text AND bu.id::text = su.ba_unit_id::text
	    AND co.id in 
                            ( select su.spatial_unit_id
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg,
                              administrative.ba_unit_contains_spatial_unit su
                              where co.id = su.spatial_unit_id
                              and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''|| rec.area ||''
                            )
	    )
            ||'/'||
	    (SELECT count (*)
	            FROM cadastre.cadastre_object co, 
	            cadastre.spatial_unit_group sg
		    WHERE co.type_code='parcel'
	            and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                    and sg.name = ''|| rec.area ||''
                            
	     )

	   )
                 ,  ---TotParcelLoaded
                  
                (SELECT (COUNT(*)) 
 	                         FROM  application.application aasr,
				      application.application aad,
				      application.application_property apsr,
				      application.application_property apd,  
				      application.service ssr,
				      application.service sd
				  WHERE  ssr.application_id::text = aasr.id::text 
				  AND    ssr.request_type_code::text = 'systematicRegn'::text
				  AND    sd.application_id::text = aad.id::text 
				  AND    sd.request_type_code::text = 'dispute'::text
				  --AND    (sd.status_code::text != 'cancelled'::text AND (aad.status_code != 'annulled'))
				  AND    apsr.application_id = aasr.id
				  AND    apd.application_id = aad.id
				  AND    apsr.name_firstpart||apsr.name_lastpart = apd.name_firstpart||apd.name_lastpart

			  AND apd.name_firstpart||apd.name_lastpart in ( select co.name_firstpart||co.name_lastpart 
                              from cadastre.cadastre_object co
                              where co.id in 
				    ( select su.spatial_unit_id
				      from cadastre.cadastre_object co, cadastre.spatial_unit_group sg,
				      administrative.ba_unit_contains_spatial_unit su
				      where co.id = su.spatial_unit_id
				      and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
				      and sg.name = ''|| rec.area ||''
				    )
                            )
			  AND  (
		          (aasr.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
		           or
		          (aasr.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
		          )
		),  --TotLodgedObj

                (
	          SELECT (COUNT(*)) 
		 
 	                         FROM  application.application aasr,
				      application.application aad,
				      application.application_property apsr,
				      application.application_property apd,  
				      application.service ssr,
				      application.service sd
				  WHERE  ssr.application_id::text = aasr.id::text 
				  AND    ssr.request_type_code::text = 'systematicRegn'::text
				  AND    sd.application_id::text = aad.id::text 
				  AND    sd.request_type_code::text = 'dispute'::text
				  AND    (sd.status_code::text = 'cancelled'::text OR (aad.status_code = 'annulled'))
				  AND    apsr.application_id = aasr.id
				  AND    apd.application_id = aad.id
				  AND    apsr.name_firstpart||apsr.name_lastpart = apd.name_firstpart||apd.name_lastpart
				  AND apd.name_firstpart||apd.name_lastpart in 
					    ( select co.name_firstpart||co.name_lastpart 
					      from cadastre.cadastre_object co
					      where co.id in 
						    ( select su.spatial_unit_id
						      from cadastre.cadastre_object co, cadastre.spatial_unit_group sg,
						      administrative.ba_unit_contains_spatial_unit su
						      where co.id = su.spatial_unit_id
						      and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
						      and sg.name = ''|| rec.area ||''
						    )
							      
					   )
				  AND  (
					  (aasr.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
					   or
					  (aasr.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
					  )
				), --TotSolvedObj
		
		(select count(*) FROM administrative.systematic_registration_listing WHERE (name = ''|| rec.area ||'')
                and ''|| rec.area ||'' in( 
		                             select distinct(ss.reference_nr) from   source.source ss 
					     where ss.type_code='publicNotification'
					     and ss.recordation  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                                             and ss.expiration_date < to_date(''|| toDate ||'','yyyy-mm-dd')
                                             and ss.reference_nr = ''|| rec.area ||'' 
					   )
		),  ---TotAppPubDispl


                 (
                  select count(distinct (aa.id))
                   from application.service s, application.application aa, 
                   application.application_property ap
                   where s.request_type_code::text = 'systematicRegn'::text
		   AND s.application_id = aa.id
		   AND ap.application_id = aa.id
		   AND ap.name_lastpart in 
                            ( select co.name_lastpart 
                              from cadastre.cadastre_object co
                              where co.id in 
						    ( select su.spatial_unit_id
						      from cadastre.cadastre_object co, cadastre.spatial_unit_group sg,
						      administrative.ba_unit_contains_spatial_unit su
						      where co.id = su.spatial_unit_id
						      and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
						      and sg.name = ''|| rec.area ||''
						    )
                              
                            )
		   AND ap.name_lastpart in (select co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name in( 
		                             select ss.reference_nr 
					     from   source.source ss 
					     where ss.type_code='publicNotification'
					     and ss.expiration_date < to_date(''|| toDate ||'','yyyy-mm-dd')
                                             and   ss.reference_nr in ( select ss.reference_nr from   source.source ss 
					     where ss.type_code='title'
					     and ss.recordation  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                                             and ss.reference_nr = ''|| rec.area ||''
                                             )   
					   )
			      )  

                 ),  ---TotCertificatesPrepared
                 (select count (distinct(s.id))
                   FROM 
                       application.service s   --,
		   WHERE s.request_type_code::text = 'documentCopy'::text
		   AND s.lodging_datetime between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                   AND s.action_notes = ''|| rec.area ||'')  --TotCertificatesIssued

                    
              INTO       TotAppLod,
                         TotParcLoaded,
                         TotRecObj,
                         TotSolvedObj,
                         TotAppPDisp,
                         TotPrepCertificate,
                         TotIssuedCertificate
          ;        

                block = rec.area;
                TotAppLod = TotAppLod;
                TotParcLoaded = TotParcLoaded;
                TotRecObj = TotRecObj;
                TotSolvedObj = TotSolvedObj;
                TotAppPDisp = TotAppPDisp;
                TotPrepCertificate = TotPrepCertificate;
                TotIssuedCertificate = TotIssuedCertificate;
	  
	  select into recToReturn
	       	block::			varchar,
		TotAppLod::  		decimal,	
		TotParcLoaded::  	varchar,	
		TotRecObj::  		decimal,	
		TotSolvedObj::  	decimal,	
		TotAppPDisp::  		decimal,	
		TotPrepCertificate::  	decimal,	
		TotIssuedCertificate::  decimal;	
		                         
		return next recToReturn;
		workFound = true;
          
    end loop;
   
    if (not workFound) then
         block = 'none';
                
        select into recToReturn
	       	block::			varchar,
		TotAppLod::  		decimal,	
		TotParcLoaded::  	varchar,	
		TotRecObj::  		decimal,	
		TotSolvedObj::  	decimal,	
		TotAppPDisp::  		decimal,	
		TotPrepCertificate::  	decimal,	
		TotIssuedCertificate::  decimal;		
		                         
		return next recToReturn;

    end if;

------ TOTALS ------------------
                
              select  (      
                  ( SELECT  
		    count (distinct(aa.id)) 
		    FROM  application.application aa,
			  application.service s
			    WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
			    AND   aa.action_code='lodge'
                            AND  (
		          (aa.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
		           or
		          (aa.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
		          )
			    ) +
	           ( SELECT  
		    count (distinct(aa.id)) 
		    FROM  application.application_historic aa,
			  application.service s
			    WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
			    AND   aa.action_code='lodge'
                            AND  (
		          (aa.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
		           or
		          (aa.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
		          )
			    )
		    

	      ),  --- TotApp

		   
	          (           
	   
	   (
	    SELECT count (DISTINCT co.id)
	    FROM cadastre.land_use_type lu, cadastre.cadastre_object co, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s, administrative.ba_unit bu
	    WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text 
	    AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) 
	    AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text 
	    AND s.status_code::text = 'completed'::text AND COALESCE(co.land_use_code, 'residential'::character varying)::text = lu.code::text AND bu.id::text = su.ba_unit_id::text
	    )
            ||'/'||
	    (SELECT count (*)
	            FROM cadastre.cadastre_object co
			    WHERE co.type_code='parcel'
	    )

	   ),  ---TotParcelLoaded
                  
                    (SELECT (COUNT(*)) 
	                 	 FROM  application.application aasr,
				      application.application aad,
				      application.application_property apsr,
				      application.application_property apd,  
				      application.service ssr,
				      application.service sd
				  WHERE  ssr.application_id::text = aasr.id::text 
				  AND    ssr.request_type_code::text = 'systematicRegn'::text
				  AND    sd.application_id::text = aad.id::text 
				  AND    sd.request_type_code::text = 'dispute'::text
				  --AND    (sd.status_code::text != 'cancelled'::text AND (aad.status_code != 'annulled'))
				  AND    apsr.application_id = aasr.id
				  AND    apd.application_id = aad.id
				  AND    apsr.name_firstpart||apsr.name_lastpart = apd.name_firstpart||apd.name_lastpart
   				  AND  (
				  (aasr.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
				   or
				  (aasr.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
				  )
		        ),  --TotLodgedObj

                (
	          SELECT (COUNT(*)) 
		  FROM  application.application aasr,
				      application.application aad,
				      application.application_property apsr,
				      application.application_property apd,  
				      application.service ssr,
				      application.service sd
				  WHERE  ssr.application_id::text = aasr.id::text 
				  AND    ssr.request_type_code::text = 'systematicRegn'::text
				  AND    sd.application_id::text = aad.id::text 
				  AND    sd.request_type_code::text = 'dispute'::text
				  AND    (sd.status_code::text = 'cancelled'::text OR (aad.status_code = 'annulled'))
				  AND    apsr.application_id = aasr.id
				  AND    apd.application_id = aad.id
				  AND    apsr.name_firstpart||apsr.name_lastpart = apd.name_firstpart||apd.name_lastpart
				  AND  (
					  (aasr.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
					   or
					  (aasr.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
					  )
		), --TotSolvedObj
		
		(
		SELECT  
		    count (distinct(aa.id)) 
		    FROM  application.application aa,
			  application.service s,
			  application.application_property ap
			    WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
			    AND   aa.id::text = ap.application_id::text
			    AND ap.name_lastpart in (select co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name in( select ss.reference_nr 
									from   source.source ss 
									where ss.type_code='publicNotification'
									AND ss.recordation  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                                                                        )
                              )                   

                 ),  ---TotAppPubDispl


                 (
                  select count(distinct (aa.id))
                   from application.service s, application.application aa, 
                   application.application_property ap
                   where s.request_type_code::text = 'systematicRegn'::text
		   AND s.application_id = aa.id
		   AND ap.application_id = aa.id
		   AND ap.name_lastpart in (select co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name  in ( select ss.reference_nr 
					     from   source.source ss 
					     where ss.type_code='publicNotification'
					     and ss.expiration_date < to_date(''|| toDate ||'','yyyy-mm-dd')
                                             and   ss.reference_nr in ( select ss.reference_nr from   source.source ss 
					     where ss.type_code='title'
					     and ss.recordation  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                                             )   
					   ) 
	                      ) 

                 ),  ---TotCertificatesPrepared
                 (select count (distinct(s.id))
                   FROM 
                       application.service s   --,
		   WHERE s.request_type_code::text = 'documentCopy'::text
		   AND s.lodging_datetime between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                   AND s.action_notes is not null )  --TotCertificatesIssued

      

                     
              INTO       TotalAppLod,
                         TotalParcLoaded,
                         TotalRecObj,
                         TotalSolvedObj,
                         TotalAppPDisp,
                         TotalPrepCertificate,
                         TotalIssuedCertificate
               ;        
                Total = 'Total';
                TotalAppLod = TotalAppLod;
                TotalParcLoaded = TotalParcLoaded;
                TotalRecObj = TotalRecObj;
                TotalSolvedObj = TotalSolvedObj;
                TotalAppPDisp = TotalAppPDisp;
                TotalPrepCertificate = TotalPrepCertificate;
                TotalIssuedCertificate = TotalIssuedCertificate;
	  
	  select into recTotalToReturn
                Total::                 varchar, 
                TotalAppLod::  		decimal,	
		TotalParcLoaded::  	varchar,	
		TotalRecObj::  		decimal,	
		TotalSolvedObj::  	decimal,	
		TotalAppPDisp::  	decimal,	
		TotalPrepCertificate:: 	decimal,	
		TotalIssuedCertificate::  decimal;	

	                         
		return next recTotalToReturn;

                
    return;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
ALTER FUNCTION administrative.getsysregprogress(character varying, character varying, character varying) OWNER TO postgres;

--------------
--  STATUS REPORT
--------------

CREATE OR REPLACE FUNCTION administrative.getsysregstatus(fromdate character varying, todate character varying, namelastpart character varying)
  RETURNS SETOF record AS
$BODY$
DECLARE 

       	
                SRWU				varchar;
		estimatedparcel			decimal:=0 ;
		recordedparcel			decimal:=0 ;
		recordedclaims		     	decimal:=0 ;
		scanneddemarcation 		decimal:=0 ;
		scannedclaims			decimal:=0 ;        
		digitizedparcels		decimal:=0 ;
		claimsentered			decimal:=0 ;               
		parcelsreadyPD			decimal:=0 ;	-- ready for PD
		parcelsPD			decimal:=0 ;	
		parcelscompletedPD		decimal:=0 ;	-- ready for CofO
		unsolveddisputes 		decimal:=0 ;
		generatedcertificates	 	decimal:=0 ;
		distributedcertificates 	decimal:=0 ;


      
		rec     			record;
		sqlSt 				varchar;
		statusFound 			boolean;
		recToReturn 			record;

        
        -- From Sean's suggestions  10 February 2014
          -- NEW STATUS REPORT
		--1. Systematic Registration Work Unit	
		--2. Estimated parcel	
		--3. recorded parcel	
		--4.recorded claims	     
		--5.scanned demarcation
		--6.scanned claims	        
		--7. digitized parcels	
		--8.claims entered	               
		--9.parcels/claims completed  ready for PD	 
		--10. parcels in Public Display	
		--11. parcels completed Public Display/Ready for CofO	
		--12. No not solved Disputes 	
		--13. Generated Certificates
		--14. Distributed Certificates
    
BEGIN  


   sqlSt:= '';

     sqlSt:= 'select sg.name   as area
			  from  
			  cadastre.spatial_unit_group sg 
			  where 
			  sg.hierarchy_level=4
			  
    ';  -- 1. Systematic Registration Work Unit
    if namelastpart != '' then
	sqlSt:= sqlSt|| ' AND  sg.name =  '''||namelastpart||'''';  --1. SRWU
    end if;   
        sqlSt:= sqlSt|| ' order by name asc ';
    --raise exception '%',sqlSt;
       statusFound = false;

    -- Loop through results
    
    FOR rec in EXECUTE sqlSt loop
    statusFound = true;
    
    select        ( SELECT  
		    srwu.parcel_estimated
		    from cadastre.sr_work_unit  srwu
                    where srwu.name = ''|| rec.area ||''
                  ) as estimatedparcel 		--2. Estimated parcel
		,

		( SELECT  
		    srwu.parcel_recorded
		    from cadastre.sr_work_unit  srwu
                    where srwu.name = ''|| rec.area ||''
                 ) as recordedparcel 		--3. recorded parcel
                ,
                 ( SELECT  
		    srwu.claims_recorded
		    from cadastre.sr_work_unit  srwu
                    where srwu.name = ''|| rec.area ||''
                  ) as recordedclaims		--4.recorded claims
                ,
                 ( SELECT  
		    srwu.demarcation_scanned
		    from cadastre.sr_work_unit  srwu
                    where srwu.name = ''|| rec.area ||''
                  ) as scanneddemarcation	--5.scanned demarcation
                ,
                 ( SELECT  
		    srwu.claims_scanned
		    from cadastre.sr_work_unit  srwu
                    where srwu.name = ''|| rec.area ||''
                  ) as scannedclaims		--6.scanned claims
                  ,
                 ( SELECT count (distinct(co.id) )
		    from cadastre.cadastre_object  co,
		    cadastre.spatial_unit_group sg
		    where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                    and  sg.name = ''|| rec.area ||''
                  ) as digitizedparcels		--7.digitized parcels
                  ,
                 ( SELECT  
		    count (distinct(aa.id)) 
		    FROM  application.application aa,
			  application.service s,
			  administrative.ba_unit bu, 
		          application.application_property ap
			    WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
                            AND   aa.id::text = ap.application_id::text
			    AND   ap.name_firstpart||ap.name_lastpart= bu.name_firstpart||bu.name_lastpart
                            and bu.name_firstpart||bu.name_lastpart in
                            ( select co.name_firstpart||co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''||rec.area||''
                            )
                   ) as claimsentered		--8.claims entered
                  ,
                 ( SELECT  
		    count (distinct(aa.id)) 
		    FROM  application.application aa,
			  application.service s,
			  administrative.ba_unit bu, 
		          application.application_property ap
			    WHERE s.application_id = aa.id
			    AND   s.request_type_code::text = 'systematicRegn'::text
			    AND   s.action_code::text = 'complete'::text 
                            AND   aa.id::text = ap.application_id::text
			    AND   ap.name_firstpart||ap.name_lastpart= bu.name_firstpart||bu.name_lastpart
                            and bu.name_firstpart||bu.name_lastpart in
                            ( select co.name_firstpart||co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''||rec.area||''
                            )
                   ) as parcelsreadyPD		--9.parcels/claims completed  ready for PD
                   ,
                   (select count(*) FROM administrative.systematic_registration_listing srl,
                    cadastre.sr_work_unit  srwu
                    WHERE srwu.name = ''||rec.area||''
                    and srwu.name = srl.name
                    --and srwu.public_display_start_date between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
		    and (srwu.public_display_start_date + CAST(coalesce(system.get_setting('public-notification-duration'), '0') AS integer))>= now()
                    )as parcelsPD		--10. parcels in Public Display
                   ,
                   (select count(*) FROM administrative.systematic_registration_listing srl,
                    cadastre.sr_work_unit  srwu
                    WHERE srwu.name = ''||rec.area||''
                    and srwu.name = srl.name
                    and (srwu.public_display_start_date + CAST(coalesce(system.get_setting('public-notification-duration'), '0') AS integer))< now()
                    ) as parcelscompletedPD	--11. parcels completed Public Display/Ready for CofO
                  ,

                  (
	          SELECT (COUNT(*)) 
                 FROM  application.application aasr,
				      application.application aad,
				      application.application_property apsr,
				      application.application_property apd,  
				      application.service ssr,
				      application.service sd
				  WHERE  ssr.application_id::text = aasr.id::text 
				  AND    ssr.request_type_code::text = 'systematicRegn'::text
				  AND    sd.application_id::text = aad.id::text 
				  AND    sd.request_type_code::text = 'dispute'::text
				  AND    (sd.status_code::text != 'cancelled'::text AND (aad.status_code != 'annulled'))
				  AND    apsr.application_id = aasr.id
				  AND    apd.application_id = aad.id
				  AND    apsr.name_firstpart||apsr.name_lastpart = apd.name_firstpart||apd.name_lastpart
   		  AND apd.name_firstpart||apd.name_lastpart in
   		  (select bu.name_firstpart||bu.name_lastpart
   		    from administrative.ba_unit bu
   		    where  bu.id in 
                            ( select su.ba_unit_id
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg,
                              administrative.ba_unit_contains_spatial_unit su
                              where co.id = su.spatial_unit_id
                              and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''||rec.area||''
                            ) 
                    )
		  AND  (
		          (aasr.lodging_datetime  between to_date(''|| fromDate || '','yyyy-mm-dd')  and to_date(''|| toDate || '','yyyy-mm-dd'))
		           or
		          (aasr.change_time  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd'))
		          )
		) as unsolveddisputes		--12. No solved Disputes	
		, 
                 

                 (
                   select count(distinct (aa.id))
                   from application.service s, application.application aa, 
                   application.application_property ap
                   where s.request_type_code::text = 'systematicRegn'::text
		   AND s.application_id = aa.id
		   AND ap.application_id = aa.id
		    AND ap.name_firstpart||ap.name_lastpart in
   		  (select bu.name_firstpart||bu.name_lastpart
   		    from administrative.ba_unit bu
   		    where  bu.id in 
                            ( select su.ba_unit_id
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg,
                              administrative.ba_unit_contains_spatial_unit su
                              where co.id = su.spatial_unit_id
                              and  ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name = ''||rec.area||''
                            ) 
                    )
		   AND ap.name_lastpart in (select co.name_lastpart 
                              from cadastre.cadastre_object co, cadastre.spatial_unit_group sg
                              where ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom)
                              and sg.name in( 
		                             select ss.reference_nr 
					     from   source.source ss 
					     where  ss.type_code='title'
				--	     and ss.recordation  between to_date(''|| fromDate ||'','yyyy-mm-dd')  and to_date(''|| toDate ||'','yyyy-mm-dd')
                                             and ss.reference_nr = ''||rec.area||''
                                             )  
			      )		   
                ) as generatedcertificates		--13. Generated Certificates	 
		 , 	
                 ( SELECT  
		    srwu.certificates_distributed
		    from cadastre.sr_work_unit  srwu
                    where srwu.name = ''||rec.area||''
                  ) as distributedcertificates		--14. Distributed Certificates	
		   
              INTO       
                estimatedparcel,
		recordedparcel,
		recordedclaims,
		scanneddemarcation,
		scannedclaims, 
		digitizedparcels,
		claimsentered,               
		parcelsreadyPD,	-- ready for PD
		parcelsPD,	
		parcelscompletedPD,	-- ready for CofO
		unsolveddisputes,
		generatedcertificates,
		distributedcertificates;


                  

                SRWU 			= rec.area;
                estimatedparcel		= estimatedparcel;
		recordedparcel		= recordedparcel;
		recordedclaims		= recordedclaims;
		scanneddemarcation	= scanneddemarcation;
		scannedclaims		= scannedclaims; 
		digitizedparcels	= digitizedparcels;
		claimsentered		= claimsentered;               
		parcelsreadyPD		= parcelsreadyPD;	-- ready for PD
		parcelsPD		= parcelsPD;	
		parcelscompletedPD	= parcelscompletedPD;	-- ready for CofO
		unsolveddisputes	= unsolveddisputes;
		generatedcertificates	= generatedcertificates;
		distributedcertificates	= distributedcertificates;
		


	  
	  select into recToReturn
	        SRWU::				varchar,
		estimatedparcel::		decimal,
		recordedparcel::		decimal,
		recordedclaims::	     	decimal,
		scanneddemarcation:: 		decimal,
		scannedclaims::			decimal, 
		digitizedparcels::		decimal,
		claimsentered::			decimal,
		parcelsreadyPD::		decimal,
		parcelsPD::			decimal,
		parcelscompletedPD::		decimal,
		unsolveddisputes:: 		decimal,
		generatedcertificates::	 	decimal,
		distributedcertificates:: 	decimal;
		                         
          return next recToReturn;
          statusFound = true;
          
    end loop;
   
    if (not statusFound) then
         SRWU = 'none';
                
        select into recToReturn
	       	SRWU::				varchar,
		estimatedparcel::		decimal,
		recordedparcel::		decimal,
		recordedclaims::	     	decimal,
		scanneddemarcation:: 		decimal,
		scannedclaims::			decimal, 
		digitizedparcels::		decimal,
		claimsentered::			decimal,
		parcelsreadyPD::		decimal,
		parcelsPD::			decimal,
		parcelscompletedPD::		decimal,
		unsolveddisputes:: 		decimal,
		generatedcertificates::	 	decimal,
		distributedcertificates:: 	decimal;
		                         
          return next recToReturn;

    end if;
    return;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
ALTER FUNCTION administrative.getsysregstatus(character varying, character varying, character varying) OWNER TO postgres;

-----
--  Production report
-----
-- Function: application.getsysregproduction(character varying, character varying)

-- DROP FUNCTION application.getsysregproduction(character varying, character varying);

-----
--  Production report
-----
-- Function: application.getsysregproduction(character varying, character varying)

-- DROP FUNCTION application.getsysregproduction(character varying, character varying);

CREATE OR REPLACE FUNCTION application.getsysregproduction(fromdate character varying, todate character varying)
  RETURNS SETOF record AS
$BODY$
DECLARE 

            ownerName  varchar:='na';	
            typeCode   varchar='na';	
            monday     decimal:=0 ;
            tuesday    decimal:=0 ;
            wednesday  decimal:=0 ;
            thursday   decimal:=0 ;
            friday     decimal:=0 ;
            saturday   decimal:=0 ;
            sunday     decimal:=0 ;
            rec     record;
            sqlSt varchar;
	    workFound boolean;
            recToReturn record;

      
BEGIN  

sqlSt :=
                  '
                  SELECT s.owner_name ownerName, 
		         ''Demarcation Officer'' typeCode,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and EXTRACT(DOW FROM ss.recordation) = 1 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) monday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 2 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) tuesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 3 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) wednesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 4 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) thursday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 5 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) friday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and EXTRACT(DOW FROM ss.recordation) = 6 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) saturday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 0 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) sunday,
                         1 as ord
		  FROM source.source s
		  WHERE s.type_code::text = ''sketchMap''::text
		  and s.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)
		  GROUP BY s.owner_name, s.type_code
                  UNION
                  SELECT ''Total'' as ownerName,
                        ''Demarcation Officer'' as typeCode,
                        (select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and EXTRACT(DOW FROM ss.recordation) = 1 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) monday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and  EXTRACT(DOW FROM ss.recordation) = 2 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) tuesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and  EXTRACT(DOW FROM ss.recordation) = 3 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) wednesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and  EXTRACT(DOW FROM ss.recordation) = 4 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) thursday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and  EXTRACT(DOW FROM ss.recordation) = 5 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) friday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and EXTRACT(DOW FROM ss.recordation) = 6 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) saturday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''sketchMap''::text and  EXTRACT(DOW FROM ss.recordation) = 0 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) sunday,
                         2 as ord
		   FROM source.source s
                   WHERE s.type_code::text = ''sketchMap''::text
		   and s.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)
		  UNION  
		  SELECT  s.owner_name ownerName, 
		         ''Recording Officer'' typeCode,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and EXTRACT(DOW FROM ss.recordation) = 1 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) monday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 2 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) tuesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 3 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) wednesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 4 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) thursday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 5 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) friday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and EXTRACT(DOW FROM ss.recordation) = 6 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) saturday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and ss.owner_name=s.owner_name and  EXTRACT(DOW FROM ss.recordation) = 0 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) sunday,
                        4 as ord
                  FROM source.source s
		  WHERE s.type_code::text = ''systematicRegn''::text
		  and s.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)
		  GROUP BY s.owner_name, s.type_code
                  UNION
                  SELECT ''Total''  as ownerName,
                         ''Recording Officer'' as typeCode,
                      	(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and EXTRACT(DOW FROM ss.recordation) = 1 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) monday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and  EXTRACT(DOW FROM ss.recordation) = 2 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) tuesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and  EXTRACT(DOW FROM ss.recordation) = 3 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) wednesday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and  EXTRACT(DOW FROM ss.recordation) = 4 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) thursday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and  EXTRACT(DOW FROM ss.recordation) = 5 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) friday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and EXTRACT(DOW FROM ss.recordation) = 6 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) saturday,
			(select count(DISTINCT ss.id) FROM source.source ss where  ss.type_code::text = ''systematicRegn''::text and  EXTRACT(DOW FROM ss.recordation) = 0 and ss.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)) sunday,
                        5 as ord
		   FROM source.source s
		  WHERE s.type_code::text = ''systematicRegn''::text
		  and s.recordation between to_date('''|| fromdate || ''',''yyyy-mm-dd'')  and ((to_date('''|| fromdate || ''',''yyyy-mm-dd''))+6)
		  order by ord, ownerName
		  ';
	         
	         
      --raise exception '%',sqlSt;
       workFound = false;

    -- Loop through results
    
    FOR rec in EXECUTE sqlSt loop


                    ownerName = rec.ownerName;	
		    typeCode = rec.typeCode;	
		    monday = rec.monday;
		    tuesday = rec.tuesday;
		    wednesday = rec.wednesday;
		    thursday = rec.thursday;
		    friday = rec.friday;
		    saturday = rec.saturday;
		    sunday = rec.sunday;
		    
	  select into recToReturn
	     	    ownerName::	varchar,	
		    typeCode::	varchar,	
		    monday::	decimal,
		    tuesday::	decimal,
		    wednesday::	decimal,
		    thursday::	decimal,
		    friday::	decimal,
		    saturday::	decimal,
		    sunday::	decimal;	
		    
                    return next recToReturn;
                    workFound = true;
          
    end loop;
    if (not workFound) then
         select into recToReturn
	     	    ownerName::	varchar,	
		    typeCode::	varchar,	
		    monday::	decimal,
		    tuesday::	decimal,
		    wednesday::	decimal,
		    thursday::	decimal,
		    friday::	decimal,
		    saturday::	decimal,
		    sunday::	decimal;	
		    
                    return next recToReturn;
   end if;                  
            
 return;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
ALTER FUNCTION application.getsysregproduction(character varying, character varying) OWNER TO postgres;


--DROP FUNCTION administrative.get_parcel_ownergender(gender character varying, query character varying);
CREATE OR REPLACE FUNCTION administrative.get_parcel_ownergender(gender character varying, query character varying)
RETURNS SETOF record AS
$BODY$
DECLARE 

  rec record;
  total decimal =0;
  totFem decimal =0;
  totMale decimal =0;
  totMixed decimal =0;
  totJoint decimal =0;
  totEntity decimal =0;
  totNull decimal =0;
  parcel varchar;
  recExt   record;
  sqlSt varchar;
  statusFound	boolean;
  recToReturn	record;
  
BEGIN
     total = 0;
     sqlSt:= '';

     sqlSt:= 'select sg.name   as area
			  from  
			  cadastre.spatial_unit_group sg 
			  where 
			  sg.hierarchy_level=3
			  order by area asc
    ';  
    --raise exception '%',sqlSt;
       statusFound = false;

    -- Loop through results
    
    FOR recExt in EXECUTE sqlSt loop
    statusFound = true; 
     
	for rec in 
		SELECT distinct buExt.id as id, 
		(select count (*) from party.party pp,
		     administrative.ba_unit bu,
		     administrative.party_for_rrr pfr,
		     administrative.rrr rrr
		     WHERE buExt.id=bu.id 
		     and bu.id=rrr.ba_unit_id
		     and rrr.id = pfr.rrr_id
		     and pp.id = pfr.party_id
		     AND (rrr.type_code::text = 'ownership'::text 
		     OR rrr.type_code::text = 'apartment'::text 
		     OR rrr.type_code::text = 'commonOwnership'::text) 
		     and pp.gender_code = 'female') as female,
		(select count (*) from party.party pp,
		     administrative.ba_unit bu,
		     administrative.party_for_rrr pfr,
		     administrative.rrr rrr
		     WHERE buExt.id=bu.id 
		     and bu.id=rrr.ba_unit_id
		     and rrr.id = pfr.rrr_id
		     and pp.id = pfr.party_id
		     AND (rrr.type_code::text = 'ownership'::text 
		     OR rrr.type_code::text = 'apartment'::text 
		     OR rrr.type_code::text = 'commonOwnership'::text) 
		     and pp.gender_code ='male') as male,
		(select count (*) from party.party pp,
		     administrative.ba_unit bu,
		     administrative.party_for_rrr pfr,
		     administrative.rrr rrr
		     WHERE buExt.id=bu.id 
		     and bu.id=rrr.ba_unit_id
		     and rrr.id = pfr.rrr_id
		     and pp.id = pfr.party_id
		     AND (rrr.type_code::text = 'ownership'::text 
		     OR rrr.type_code::text = 'apartment'::text 
		     OR rrr.type_code::text = 'commonOwnership'::text) 
		     and (pp.gender_code ='na' or pp.type_code ='nonNaturalPerson')) as entity,
		buExt.name_lastpart  as parcel
	from party.party pp,
			administrative.ba_unit buExt,
			administrative.party_for_rrr pfr,
			administrative.rrr rrr
	WHERE buExt.id=rrr.ba_unit_id 
	and rrr.id = pfr.rrr_id
	and pp.id = pfr.party_id
	AND (rrr.type_code::text = 'ownership'::text 
	OR rrr.type_code::text = 'apartment'::text 
	OR rrr.type_code::text = 'commonOwnership'::text) 
	AND buExt.name_lastpart = ''||recExt.area||''
		
       loop

		 if rec.female = 0 and rec.male != 0 then
		    totMale = totMale + 1;
		 end if;
		 if rec.female != 0 and rec.male = 0 then
		   totFem = totFem + 1;
		 end if;  
		 if rec.female = 1 and rec.male = 1 then
		   totJoint = totJoint+1;
		 end if;
		 if ((rec.female > 1 and rec.male >= 1)or (rec.female >= 1 and rec.male >1)) then
		   totMixed = totMixed+1;
		 end if; 
		 if ((rec.female = 0 and rec.male = 0) and rec.entity >0) then
		     totEntity =  totEntity + 1;
		 end if;
		 if (rec.female = 0 and rec.male = 0 and rec.entity =0) then
		     totNull =  totNull + 1;
		 end if;
		 total := totMale+totFem+totJoint+totMixed+totEntity+totNull;
        end loop; 
        

          parcel = recExt.area;
                   
	  select into recToReturn
	        parcel::    varchar,
                total::     decimal,
		totFem::    decimal,
		totMale::   decimal,
		totMixed::  decimal,
		totJoint::  decimal,
		totEntity:: decimal,
		totNull::   decimal;
		                         
           return next recToReturn;
          statusFound = true;
          total     =0;
	  totFem    =0;
	  totMale   =0;
	  totMixed  =0;
	  totJoint  =0;
	  totEntity =0;
	  totNull   =0;
    end loop;
   
    if (not statusFound) then
         parcel = 'none';
                
        select into recToReturn
	       	parcel::   varchar,
                total::    decimal,
		totFem::   decimal,
		totMale::  decimal,
		totMixed:: decimal,
		totJoint:: decimal,
		totEntity:: decimal,
		totNull::   decimal;
		                         
		                         
          return next recToReturn;

    end if;
    return;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION administrative.get_parcel_ownergender(character varying,character varying) OWNER TO postgres;


-- Function: administrative.get_objections(character varying)

--DROP FUNCTION administrative.get_objections(character varying);

CREATE OR REPLACE FUNCTION administrative.get_objections(namelastpart character varying)
  RETURNS character varying AS
$BODY$
declare
  rec record;
  name character varying;
  
BEGIN
  name = '';
   
	for rec in 
       Select distinct to_char(s.lodging_datetime, 'YYYY/MM/DD') as value
       FROM cadastre.cadastre_object co, 
       cadastre.spatial_value_area sa, 
       administrative.ba_unit_contains_spatial_unit su, 
       application.application_property ap, 
       application.application aa, application.service s, 
       party.party pp, administrative.party_for_rrr pr, 
       administrative.rrr rrr, administrative.ba_unit bu
          WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text 
          AND su.spatial_unit_id::text = sa.spatial_unit_id::text 
          AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) 
          AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'lodgeObjection'::text 
          AND s.status_code::text != 'cancelled'::text AND pp.id::text = pr.party_id::text AND pr.rrr_id::text = rrr.id::text 
          AND rrr.ba_unit_id::text = su.ba_unit_id::text 
          AND bu.id::text = su.ba_unit_id::text
          AND bu.name_lastpart = namelastpart
   	loop
           name = name || ', ' || rec.value;
	end loop;

        if name = '' then
	  name = ' ';
       end if;

	if substr(name, 1, 1) = ',' then
          name = substr(name,2);
        end if;
return name;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION administrative.get_objections(character varying) OWNER TO postgres;

---  FINE SR REPORTS ------------------------


---  CONSOLIDATION NEW

-- DROP EXISTING CONSOLIDATION FUNCTIONS -------------------------------------------------
-- Function: system.consolidation_consolidate(character varying)

DROP FUNCTION IF EXISTS system.consolidation_consolidate(character varying);

-- Function: system.consolidation_consolidate(character varying, character varying)

DROP FUNCTION IF EXISTS system.consolidation_consolidate(character varying, character varying);

-- Function: system.consolidation_extract(character varying)

DROP FUNCTION IF EXISTS system.consolidation_extract(character varying);

-- Function: system.consolidation_extract(character varying, boolean)

DROP FUNCTION IF EXISTS system.consolidation_extract(character varying, boolean);

-- Function: system.consolidation_extract(character varying, boolean, character varying)

DROP FUNCTION IF EXISTS system.consolidation_extract(character varying, boolean, character varying);

-- Function: system.get_already_consolidated_records()

DROP FUNCTION IF EXISTS system.get_already_consolidated_records();

-- Function: system.get_text_from_schema(character varying)

DROP FUNCTION IF EXISTS system.get_text_from_schema(character varying);

-- Function: system.process_log_update(character varying)

DROP FUNCTION IF EXISTS system.process_log_update(character varying);

-- Function: system.process_progress_get(character varying)

DROP FUNCTION IF EXISTS system.process_progress_get(character varying);

-- Function: system.process_progress_get_in_percentage(character varying)

DROP FUNCTION IF EXISTS system.process_progress_get_in_percentage(character varying);

-- Function: system.process_progress_set(character varying, integer)

DROP FUNCTION IF EXISTS system.process_progress_set(character varying, integer);

-- Function: system.process_progress_start(character varying, integer)

DROP FUNCTION IF EXISTS system.process_progress_start(character varying, integer);

-- Function: system.process_progress_stop(character varying)

DROP FUNCTION IF EXISTS system.process_progress_stop(character varying);

-- Function: system.script_to_schema(text)

DROP FUNCTION IF EXISTS  system.script_to_schema(text);

-- Function: system.setpassword(character varying, character varying)

DROP FUNCTION IF EXISTS system.setpassword(character varying, character varying);



--
-- Name: setpassword(character varying, character varying, character varying); Type: FUNCTION; Schema: system; Owner: postgres
--

CREATE OR REPLACE FUNCTION setpassword(usrname character varying, pass character varying, changeuser character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  result int;
BEGIN
  update system.appuser set passwd = pass,
   change_user = changeuser  where username=usrName;
  GET DIAGNOSTICS result = ROW_COUNT;
  return result;
END;
$$;


ALTER FUNCTION system.setpassword(usrname character varying, pass character varying, changeuser character varying) OWNER TO postgres;
--
-- Name: FUNCTION setpassword(usrname character varying, pass character varying, changeuser character varying); Type: COMMENT; Schema: system; Owner: postgres
--

COMMENT ON FUNCTION setpassword(usrname character varying, pass character varying, changeuser character varying) IS 'Changes the users password.';


drop function if exists system.consolidation_consolidate(character varying);
drop function if exists system.consolidation_extract(character varying, boolean);
drop function if exists system.get_text_from_schema(character varying);
drop function if exists system.script_to_schema(text);
DROP FUNCTION if exists system.consolidation_extract_make_consolidation_schema(character varying, boolean);
DROP FUNCTION if exists system.script_to_schema(extraction_script text);
DROP FUNCTION if exists system.process_log_get(process_id_v character varying);
DROP FUNCTION if exists system.process_log_start(process_id character varying);
DROP FUNCTION if exists system.process_log_update(process_id character varying, log_input character varying);
DROP FUNCTION if exists system.get_text_from_schema_only(schema_name character varying);
DROP FUNCTION if exists system.get_text_from_schema_table(schema_name character varying, table_name_v character varying, rows_at_once bigint, start_row_nr bigint);
DROP FUNCTION if exists system.run_script(script_body text);




-----------------------------------------------------------------------------------
--
-- Name: system.get_already_consolidated_records(); Type: FUNCTION; Schema: system; Owner: postgres
--

CREATE OR REPLACE  FUNCTION system.get_already_consolidated_records(OUT result character varying, OUT records_found boolean) RETURNS record
    LANGUAGE plpgsql
    AS $$
declare
  table_rec record;
  sql_st varchar;
  total_result varchar default '';
  table_result varchar;
  new_line varchar default '
';
BEGIN
  for table_rec 
    in select * from consolidation.config 
       where not remove_before_insert and target_table_name not like '%_historic' loop
    sql_st = 'select string_agg(rowidentifier, '','') from ' || table_rec.source_table_name 
      || ' where rowidentifier in (select rowidentifier from ' || table_rec.target_table_name || ')';
    execute sql_st into table_result;
    if table_result != '' then
      total_result = total_result || new_line || '  - table: ' || table_rec.target_table_name 
        || ' row ids:' || table_result;
    end if;
  end loop;
  if total_result != '' then
    total_result = 'Records already present in destination:' || total_result;
  end if;
  result = total_result;
  records_found = (total_result != '');
END;
$$;

--
-- Name: FUNCTION system.get_already_consolidated_records(OUT result character varying, OUT records_found boolean); Type: COMMENT; Schema: system; Owner: postgres
--

COMMENT ON FUNCTION system.get_already_consolidated_records(OUT result character varying, OUT records_found boolean) IS 'It retrieves the records that are already consolidated and being asked again for consolidation.';





CREATE OR REPLACE FUNCTION system.process_progress_start(process_id varchar, max_value integer)
  RETURNS void AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
BEGIN
  execute system.process_progress_stop(process_id);
  execute 'CREATE SEQUENCE ' || sequence_prefix || process_id
   || ' INCREMENT 1 START 1 MINVALUE 1 MAXVALUE ' || max_value::varchar;   
END;
$BODY$
  LANGUAGE plpgsql;

comment on FUNCTION system.process_progress_start(varchar, integer) is 'It starts a process progress counter.';

CREATE OR REPLACE FUNCTION system.process_progress_stop(process_id varchar)
  RETURNS void AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
BEGIN
  execute 'DROP SEQUENCE IF EXISTS ' || sequence_prefix || process_id;   
END;
$BODY$
  LANGUAGE plpgsql;

comment on FUNCTION system.process_progress_stop(varchar) is 'It stops a process progress counter.';

CREATE OR REPLACE FUNCTION system.process_progress_set(process_id varchar, progress_value integer)
  RETURNS void AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
  max_progress_value integer;
BEGIN
  execute 'select max_value from ' || sequence_prefix || process_id into max_progress_value;
  if progress_value> max_progress_value then
    progress_value = max_progress_value;
  end if;
  perform setval(sequence_prefix || process_id, progress_value);
END;
$BODY$
  LANGUAGE plpgsql;

comment on FUNCTION system.process_progress_set(varchar, integer) is 'It sets a new value for the process progress.';

CREATE OR REPLACE FUNCTION system.process_progress_get(process_id varchar)
  RETURNS integer AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
  vl double precision;
BEGIN
  execute 'select last_value from ' || sequence_prefix || process_id into vl;
  return vl;
END;
$BODY$
  LANGUAGE plpgsql;

comment on FUNCTION system.process_progress_get(varchar) is 'Gets the absolute value of the process progress.';

CREATE OR REPLACE FUNCTION system.process_progress_get_in_percentage(process_id varchar)
  RETURNS integer AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
  vl double precision;
BEGIN
  execute 'select cast(100 * last_value::double precision/max_value::double precision as integer) from ' || sequence_prefix || process_id into vl;
  return vl;
END;
$BODY$
  LANGUAGE plpgsql;

comment on FUNCTION system.process_progress_get_in_percentage(varchar) is 'Gets the value of the process progress in percentage.';


DROP TABLE if exists system.extracted_rows;

CREATE TABLE system.extracted_rows
(
  table_name character varying(200) NOT NULL, -- The table where the record has been found. It has to be absolute table name including the schema name.
  rowidentifier character varying(40) NOT NULL, -- The rowidentifier of the record. Carefull: It is the rowidentifier and not the id.
  CONSTRAINT extracted_rows_pkey PRIMARY KEY (table_name, rowidentifier)
);
COMMENT ON TABLE system.extracted_rows
  IS 'It logs every record that has been extracted from this database for consolidation purposes.';
COMMENT ON COLUMN system.extracted_rows.table_name IS 'The table where the record has been found. It has to be absolute table name including the schema name.';
COMMENT ON COLUMN system.extracted_rows.rowidentifier IS 'The rowidentifier of the record. Carefull: It is the rowidentifier and not the id.';

DROP TABLE system.consolidation_config;

CREATE TABLE system.consolidation_config
(
  id character varying(100) NOT NULL,
  schema_name character varying(100) NOT NULL,
  table_name character varying(100) NOT NULL,
  condition_description character varying(1000) NOT NULL,
  condition_sql character varying(1000),
  remove_before_insert boolean NOT NULL DEFAULT false,
  order_of_execution integer NOT NULL,
  log_in_extracted_rows boolean NOT NULL DEFAULT true, -- True - If the records has to be logged in the extracted rows table.
  CONSTRAINT consolidation_config_pkey PRIMARY KEY (id),
  CONSTRAINT consolidation_config_lkey UNIQUE (schema_name, table_name)
);
COMMENT ON TABLE system.consolidation_config
  IS 'This table contains the list of instructions to run the consolidation process.';
COMMENT ON COLUMN system.consolidation_config.schema_name IS 'Name of the source schema.';
COMMENT ON COLUMN system.consolidation_config.table_name IS 'Name of the source table.';
COMMENT ON COLUMN system.consolidation_config.condition_description IS 'Description of the condition has to be applied to rows of the source table for extraction.';
COMMENT ON COLUMN system.consolidation_config.condition_sql IS 'The SQL implementation of the condition.';
COMMENT ON COLUMN system.consolidation_config.remove_before_insert IS 'True - The records in the destination will be removed if they are found in the new extract. The check is done in rowidentifier.';
COMMENT ON COLUMN system.consolidation_config.order_of_execution IS 'Order of execution of the extract.';
COMMENT ON COLUMN system.consolidation_config.log_in_extracted_rows IS 'True - If the records has to be logged in the extracted rows table.';


CREATE OR REPLACE FUNCTION system.process_log_update(log_input character varying)
  RETURNS void AS
$BODY$
declare
  log_entry_moment varchar;  
BEGIN
  log_entry_moment = to_char(clock_timestamp(), 'yyyy-MM-dd HH24:MI:ss.ms | ');
  raise notice '%', log_entry_moment || log_input;
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.process_log_update(character varying) IS 'Updates the process log.';

CREATE OR REPLACE FUNCTION system.check_brs(br_target varchar, conditions varchar[][2])
  RETURNS varchar AS
$BODY$
declare
  log_entry_moment varchar;  
  rec record;
  br_rec record;
  condition varchar[];
  modified_body varchar;
  passed_criticals boolean default true;
  end_result varchar default '';
  new_line varchar default '
';
BEGIN
  
  for rec in select br_v.id as id, br_v.severity_code, br.display_name as name, br.feedback, br_d.body as body
      from system.br_validation br_v
        inner join system.br on br_v.br_id = br.id
        inner join system.br_definition br_d on br.id = br_d.br_id and now() between br_d.active_from and br_d.active_until
      where br_v.target_code = br_target
      order by br_v.order_of_execution
  loop
    modified_body = rec.body;
    -- Replace parameters in the body
    if conditions is not null then
      foreach condition slice 1 in array conditions loop
        modified_body = replace(modified_body, '#{' || condition[1] || '}', quote_nullable(condition[2]));
      end loop;
    end if;
    -- Call the br
    for br_rec in execute modified_body loop
      if not br_rec.vl and rec.severity_code='critical' then
        passed_criticals = false;
      end if;
      end_result = end_result 
       || '    BR:' || rec.feedback
       || '    Severity:' || rec.severity_code 
       || '    Passed:' || case when br_rec.vl then 'Yes' else 'No' end 
       || new_line;
    end loop;
  end loop;
  
  return passed_criticals || '####' || end_result;
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.check_brs(varchar, varchar[][2]) IS 'It checks the business rules. If one critical br is violated, it returns the result starting with false#### otherwise it starts with true####';

CREATE OR REPLACE FUNCTION system.consolidation_consolidate(admin_user character varying, process_name character varying)
  RETURNS void AS
$BODY$
DECLARE
  table_rec record;
  consolidation_schema varchar default 'consolidation';
  cols varchar;
  exception_text_msg varchar;
  br_validation_result varchar;
  steps_max integer;
BEGIN

  steps_max = (select count(*) + 4 + 1 from system.consolidation_config);

  -- Create progress
  execute system.process_progress_start(process_name, steps_max);

    -- Checking business rules
  execute system.process_log_update('Validating consolidation schema against the other tables...');
  br_validation_result = system.check_brs('consolidation', null);  
  if br_validation_result like 'false####%' then
    execute system.process_log_update(substring(br_validation_result, 10));
    raise exception 'Validation failed!';
  else
    execute system.process_log_update(substring(br_validation_result, 9));
    execute system.process_log_update('Validation finished with success.');
  end if;
  execute system.process_log_update('Making the system not accessible for the users...');
  -- Make sola not accessible from all other users except the user running the consolidation.
  update system.appuser set active = false where id != admin_user;
  execute system.process_log_update('done');
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);

  -- Disable triggers.
  execute system.process_log_update('disabling all triggers...');
  perform fn_triggerall(false);
  execute system.process_log_update('done');
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
  execute system.process_log_update('Move records from temporary consolidation schema to main tables.');
 
  -- For each table that is extracted and that has rows, insert the records into the main tables.
  for table_rec in select * from consolidation.config order by order_of_execution loop

    execute system.process_log_update('  - source table: "' || table_rec.source_table_name || '" destination table: "' || table_rec.target_table_name || '"... ');

    if table_rec.remove_before_insert then
      execute system.process_log_update('      deleting matching records in target table ...');
      execute 'delete from ' || table_rec.target_table_name ||
      ' where rowidentifier in (select rowidentifier from ' || table_rec.source_table_name || ')';
      execute system.process_log_update('      done');
    end if;
    cols = (select string_agg(column_name, ',')
      from information_schema.columns
      where table_schema || '.' || table_name = table_rec.target_table_name);
    execute system.process_log_update('      inserting records to target table ...');
    execute 'insert into ' || table_rec.target_table_name || '(' || cols || ') select ' || cols || ' from ' || table_rec.source_table_name;
    execute system.process_log_update('      done');
    execute system.process_log_update('  done');
    execute system.process_progress_set(process_name, system.process_progress_get(process_name)+2);
  
  end loop;
  
  -- Enable triggers.
  execute system.process_log_update('enabling all triggers...');
  perform fn_triggerall(true);
  execute system.process_log_update('done');
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);

  -- Make sola accessible for all users.
  execute system.process_log_update('Making the system accessible for the users...');
  update system.appuser set active = true where id != admin_user;
  execute system.process_log_update('done');
  execute system.process_log_update('Finished with success!');
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.consolidation_consolidate(character varying, character varying) IS 'Moves records from the temporary consolidation schema into the main SOLA tables. Used by the bulk consolidation process.';

CREATE OR REPLACE FUNCTION system.consolidation_extract(admin_user character varying, everything boolean, process_name character varying)
  RETURNS boolean AS
$BODY$
DECLARE
  table_rec record;
  consolidation_schema varchar default 'consolidation';
  sql_to_run varchar;
  order_of_exec int;
  steps_max integer;
BEGIN

  steps_max = (select (count(*) * 3) + 7 + 1 from system.consolidation_config);

  -- Create progress
  execute system.process_progress_start(process_name, steps_max);
  
  -- Prepare the process log
  execute system.process_log_update('Extraction process started.');
  if everything then
    execute system.process_log_update('Everything has to be extracted.');
  end if;
  execute system.process_log_update('');

  -- Make sola not accessible from all other users except the user running the consolidation.
  execute system.process_log_update('Making the system not accessible for the users...');
  update system.appuser set active = false where id != admin_user;
  execute system.process_log_update('done');
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);

  -- If everything is true it means all applications that do not have the status 'to-be-transferred' will get it.
  if everything then
    execute system.process_log_update('Marking the applications that are not yet marked for transfer...');
    update application.application set action_code = 'transfer', status_code='to-be-transferred' 
    where status_code not in ('to-be-transferred', 'transferred');
    execute system.process_log_update('done');    
  end if;
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);

  
  -- Drop schema consolidation if exists.
  execute system.process_log_update('Dropping schema consolidation...');
  execute 'DROP SCHEMA IF EXISTS ' || consolidation_schema || ' CASCADE;';    
  execute system.process_log_update('done');    
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
      
  -- Make the schema.
  execute system.process_log_update('Creating schema consolidation...');
  execute 'CREATE SCHEMA ' || consolidation_schema || ';';
  execute system.process_log_update('done');    
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
  
  --Make table to define configuration for the the consolidation to the target database.
  execute system.process_log_update('Creating consolidation.config table...');
  execute 'create table ' || consolidation_schema || '.config (
    source_table_name varchar(100),
    target_table_name varchar(100),
    remove_before_insert boolean,
    order_of_execution int,
    status varchar(500)
  )';
  execute system.process_log_update('done');    
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);

  execute system.process_log_update('Move records from main tables to consolidation schema.');
  order_of_exec = 1;
  for table_rec in select * from system.consolidation_config order by order_of_execution loop

    execute system.process_log_update('  - Table: ' || table_rec.schema_name || '.' || table_rec.table_name);
    -- Make the script to move the data to the consolidation schema.
    sql_to_run = 'create table ' || consolidation_schema || '.' || table_rec.table_name 
      || ' as select * from ' ||  table_rec.schema_name || '.' || table_rec.table_name
      || ' where rowidentifier not in (select rowidentifier from system.extracted_rows where table_name=$1)';

    -- Add the condition to the end of the select statement if it is present
    if coalesce(table_rec.condition_sql, '') != '' then      
      sql_to_run = sql_to_run || ' and ' || table_rec.condition_sql;
    end if;

    -- Run the script
    execute system.process_log_update('      - move records...');
    execute sql_to_run using table_rec.schema_name || '.' || table_rec.table_name;
    execute system.process_log_update('      done');
    execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
    
    -- Log extracted records
    if table_rec.log_in_extracted_rows then
      execute system.process_log_update('      - log extracted records...');
      execute 'insert into system.extracted_rows(table_name, rowidentifier)
        select $1, rowidentifier from ' || consolidation_schema || '.' || table_rec.table_name
        using table_rec.schema_name || '.' || table_rec.table_name;
      execute system.process_log_update('      done');
    end if;  
    execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
    

    -- Make a record in the config table
    sql_to_run = 'insert into ' || consolidation_schema 
      || '.config(source_table_name, target_table_name, remove_before_insert, order_of_execution) values($1,$2,$3, $4)'; 
    execute system.process_log_update('      - update config table...');
    execute sql_to_run 
      using  consolidation_schema || '.' || table_rec.table_name, 
             table_rec.schema_name || '.' || table_rec.table_name, 
             table_rec.remove_before_insert,
             order_of_exec;
    execute system.process_log_update('      done');
    execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
    order_of_exec = order_of_exec + 1;
  end loop;
  execute system.process_log_update('Done');


  -- Set the status of the applications that are in the consolidation schema to the previous status before they got the status
  -- to-be-transferred and unassign them.
  execute system.process_log_update('Set the status of the extracted applications to their previous status (before getting to be transferred status) and unassign them...');

  update consolidation.application set action_code = 'unAssign', assignee_id = null, assigned_datetime = null ,
    status_code = (select ah.status_code
      from application.application_historic ah
      where ah.id = application.id and ah.status_code not in ('to-be-transferred', 'transferred')
      order by ah.change_time desc limit 1);
  execute system.process_log_update('done');

  -- Set the status of the applications moved to consolidation schema to 'transferred' and unassign them.
  execute system.process_log_update('Unassign moved applications and set their status to ''transferred''...');
  update application.application set status_code='transferred', action_code = 'unAssign', assignee_id = null, assigned_datetime = null 
  where rowidentifier in (select rowidentifier from consolidation.application);
  execute system.process_log_update('done');

  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
  
  -- Make sola accessible from all users.
  execute system.process_log_update('Making the system accessible for the users...');
  update system.appuser set active = false where id != admin_user;
  execute system.process_log_update('done');
  execute system.process_progress_set(process_name, system.process_progress_get(process_name)+1);
  
  -- return system.get_text_from_schema(consolidation_schema);
  return true;
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.consolidation_extract(character varying, boolean, character varying) IS 'Extracts the records from the database that are marked to be extracted.';

CREATE OR REPLACE FUNCTION system.process_progress_get(process_id character varying)
  RETURNS integer AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
  vl double precision;
BEGIN
  execute 'select last_value from ' || sequence_prefix || process_id into vl;
  return vl;
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.process_progress_get(character varying) IS 'Gets the absolute value of the process progress.';

CREATE OR REPLACE FUNCTION system.process_progress_get_in_percentage(process_id character varying)
  RETURNS integer AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
  vl double precision;
BEGIN
  execute 'select cast(100 * last_value::double precision/max_value::double precision as integer) from ' || sequence_prefix || process_id into vl;
  return vl;
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.process_progress_get_in_percentage(character varying) IS 'Gets the value of the process progress in percentage.';

CREATE OR REPLACE FUNCTION system.process_progress_set(process_id character varying, progress_value integer)
  RETURNS void AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
  max_progress_value integer;
BEGIN
  execute 'select max_value from ' || sequence_prefix || process_id into max_progress_value;
  if progress_value> max_progress_value then
    progress_value = max_progress_value;
  end if;
  perform setval(sequence_prefix || process_id, progress_value);
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.process_progress_set(character varying, integer) IS 'It sets a new value for the process progress.';

CREATE OR REPLACE FUNCTION system.process_progress_start(process_id character varying, max_value integer)
  RETURNS void AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
BEGIN
  execute system.process_progress_stop(process_id);
  execute 'CREATE SEQUENCE ' || sequence_prefix || process_id
   || ' INCREMENT 1 START 1 MINVALUE 1 MAXVALUE ' || max_value::varchar;   
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.process_progress_start(character varying, integer) IS 'It starts a process progress counter.';
CREATE OR REPLACE FUNCTION system.process_progress_stop(process_id character varying)
  RETURNS void AS
$BODY$
DECLARE
  sequence_prefix varchar default 'system.process_';
BEGIN
  execute 'DROP SEQUENCE IF EXISTS ' || sequence_prefix || process_id;   
END;
$BODY$
  LANGUAGE plpgsql;
COMMENT ON FUNCTION system.process_progress_stop(character varying) IS 'It stops a process progress counter.';
--- FINE CONSOLIDATION ---------------------    

-- View: administrative.sys_reg_signing_list

-- DROP VIEW administrative.sys_reg_signing_list;

CREATE OR REPLACE VIEW administrative.sys_reg_signing_list AS 

 SELECT DISTINCT co.id, co.name_firstpart, co.name_lastpart, 
    (co.name_lastpart::text || '/'::text) || co.name_firstpart::text AS parcel, 
    sg.name::text AS name, 
    administrative.get_parcel_ownernames(bu.id) AS persons
   FROM cadastre.cadastre_object co, cadastre.spatial_value_area sa, 
    administrative.ba_unit_contains_spatial_unit su, 
    application.application_property ap, application.application aa, 
    application.service s, administrative.ba_unit bu, 
    cadastre.spatial_unit_group sg, administrative.rrr rrr, 
    administrative.rrr_type rrrt, party.party pp, 
    administrative.party_for_rrr pr
  WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text 
  AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text 
  OR (ap.name_lastpart::text || ap.name_firstpart::text) = (bu.name_lastpart::text || bu.name_firstpart::text))
   AND (co.name_lastpart::text || co.name_firstpart::text) = (bu.name_lastpart::text || bu.name_firstpart::text) 
   AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND s.status_code::text = 'completed'::text
    AND bu.id::text = su.ba_unit_id::text AND st_intersects(st_pointonsurface(co.geom_polygon), sg.geom) AND sg.hierarchy_level = 4 
    AND rrr.ba_unit_id::text = bu.id::text AND rrr.type_code::text = rrrt.code::text AND pp.id::text = pr.party_id::text AND pr.rrr_id::text = rrr.id::text AND sg.hierarchy_level = 4 
    AND st_intersects(st_pointonsurface(co.geom_polygon), sg.geom)
  ORDER BY (co.name_lastpart::text || '/'::text) || co.name_firstpart::text;
   

  
CREATE OR REPLACE VIEW application.systematic_registration_certificates AS 
 SELECT DISTINCT aa.nr, co.name_firstpart, co.name_lastpart, su.ba_unit_id, 
    sg.name::text AS name, aa.id::text AS appid, 
    aa.change_time AS commencingdate, 
    "substring"(lu.display_value::text, 0, "position"(lu.display_value::text, '-'::text)) AS landuse, 
    ( SELECT lga.label
           FROM cadastre.spatial_unit_group lga
          WHERE lga.hierarchy_level = 2 AND co.name_lastpart::text ~~ (lga.name::text || '/%'::text)) AS proplocation, 
    round(sa.size) AS size, 
    administrative.get_parcel_share(su.ba_unit_id) AS owners, 
    (co.name_lastpart::text || '/'::text) || upper(co.name_firstpart::text) AS title, 
    co.id, 
    ( SELECT lga.label
           FROM cadastre.spatial_unit_group lga
          WHERE lga.hierarchy_level = 3 AND co.name_lastpart::text = lga.name::text) AS ward, 
    ( SELECT lga.label
           FROM cadastre.spatial_unit_group lga
          WHERE lga.hierarchy_level = 1) AS state, 
    ( SELECT config_map_layer_metadata.value
           FROM system.config_map_layer_metadata
          WHERE config_map_layer_metadata.name_layer::text = 'orthophoto'::text AND config_map_layer_metadata.name::text = 'date'::text) AS imagerydate, 
    (( SELECT count(s.id) AS count
           FROM source.source s
          WHERE s.description::text ~~ ((('TOTAL_'::text || 'title'::text) || '%'::text) || replace(sg.name::text, '/'::text, '-'::text))))::integer AS cofo, 
    ( SELECT config_map_layer_metadata.value
           FROM system.config_map_layer_metadata
          WHERE config_map_layer_metadata.name_layer::text = 'orthophoto'::text AND config_map_layer_metadata.name::text = 'resolution'::text) AS imageryresolution, 
    ( SELECT config_map_layer_metadata.value
           FROM system.config_map_layer_metadata
          WHERE config_map_layer_metadata.name_layer::text = 'orthophoto'::text AND config_map_layer_metadata.name::text = 'data-source'::text) AS imagerysource, 
    ( SELECT config_map_layer_metadata.value
           FROM system.config_map_layer_metadata
          WHERE config_map_layer_metadata.name_layer::text = 'orthophoto'::text AND config_map_layer_metadata.name::text = 'sheet-number'::text) AS sheetnr, 
    ( SELECT setting.vl
           FROM system.setting
          WHERE setting.name::text = 'surveyor'::text) AS surveyor, 
    ( SELECT setting.vl
           FROM system.setting
          WHERE setting.name::text = 'surveyorRank'::text) AS rank
   FROM cadastre.spatial_unit_group sg, cadastre.cadastre_object co, 
    administrative.ba_unit bu, cadastre.land_use_type lu, 
    cadastre.spatial_value_area sa, 
    administrative.ba_unit_contains_spatial_unit su, 
    application.application_property ap, application.application aa, 
    application.service s
  WHERE sg.hierarchy_level = 5 AND st_intersects(st_pointonsurface(co.geom_polygon), sg.geom) AND (co.name_firstpart::text || co.name_lastpart::text) = (ap.name_firstpart::text || ap.name_lastpart::text) 
  AND (co.name_firstpart::text || co.name_lastpart::text) = (bu.name_firstpart::text || bu.name_lastpart::text) 
  AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text 
  AND (aa.status_code::text = 'approved'::text OR aa.status_code::text = 'archived'::text) AND bu.id::text = su.ba_unit_id::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text 
  AND sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND COALESCE(bu.land_use_code, 'res_home'::character varying)::text = lu.code::text
  ORDER BY co.name_firstpart, co.name_lastpart;

ALTER TABLE application.systematic_registration_certificates
  OWNER TO postgres;
