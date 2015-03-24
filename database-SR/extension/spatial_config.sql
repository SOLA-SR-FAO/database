 ----- Existing Layer Updates ----
-- Remove layers from core SOLA that are not used 
--DELETE FROM system.config_map_layer WHERE "name" IN ('place-names', 'survey-controls', 'roads'); 

---- Update existing layers to use correct sytles and item_order ----- 
UPDATE system.config_map_layer
SET url = 'http://demo.flossola.org/geoserver/sola/wms',
wms_layers = 'sola:nz_orthophoto'
WHERE "name" = 'orthophoto';

-- Enable these map layers for the specific place. 
--UPDATE system.config_map_layer
--SET item_order = 10, 
	--visible_in_start = TRUE,
	--url = 'http://localhost:8085/geoserver/<CUSTOMIZED>/wms',
	--wms_layers = '<customized>:orthophoto',
	--active = TRUE
--WHERE "name" = 'orthophoto';



UPDATE system.config_map_layer
SET item_order = 9, 
    visible_in_start = FALSE,
	active = FALSE
WHERE "name" = 'place_name';

UPDATE system.config_map_layer
SET item_order = 8, 
    visible_in_start = FALSE,
	active = FALSE
WHERE "name" = 'survey_control';

UPDATE system.config_map_layer
SET item_order = 8, 
    visible_in_start = FALSE,
	active = FALSE
WHERE "name" = 'roads';

-- Configure the new Navigation Layer
 

-- Setup Spatial Config for ondo, Nigeria
-- CLEAR CADASTRE DATABASE TABLES
DELETE FROM cadastre.spatial_value_area;
DELETE FROM cadastre.spatial_unit;
DELETE FROM cadastre.spatial_unit_historic;
DELETE FROM cadastre.level WHERE "name" IN ('LGA', 'Ward', 'Section');
DELETE FROM system.config_map_layer WHERE name IN ('lga', 'ward', 'sections');
DELETE FROM system.config_map_layer WHERE "name" IN ('sug_lga', 'sug_ward', 'sug_sections');
DELETE FROM cadastre.cadastre_object;
DELETE FROM cadastre.cadastre_object_historic;

-- Configure the Level data 
-- add levels

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'LGA', 'all', 'polygon', 'mixed', 'test');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Ward', 'all', 'polygon', 'mixed', 'test');



INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Section', 'all', 'polygon', 'mixed', 'test');

--UPDATE system.config_map_layer


DELETE FROM system.config_map_layer WHERE "name" IN ('lga', 'wards', 'section');
DELETE FROM system.config_map_layer WHERE "name" IN ('sug_lga', 'sug_wards', 'sug_section');
DELETE FROM system.query WHERE name IN ('SpatialResult.getLGA', 'SpatialResult.getWard', 'SpatialResult.getSection');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getLGA', 'select id, label, st_asewkb(geom) as the_geom from cadastre.lga where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves LGA');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getWard', 'select id, label, st_asewkb(geom) as the_geom from cadastre.ward where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves Ward');


INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getSection', 'select id, label, st_asewkb(geom) as the_geom from cadastre.section where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves Section');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_lga', 'Local Government Areas', 'pojo', true, true, 90, 'lga.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getLGA');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_ward', 'Ward', 'pojo', true, true, 80, 'ward.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getWard');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_section', 'Section', 'pojo', true, true, 80, 'section.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getSection');

--DROP VIEW cadastre.lga;

CREATE OR REPLACE VIEW cadastre.lga AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=2;


ALTER TABLE cadastre.lga
  OWNER TO postgres;    

--DROP VIEW cadastre.ward;

CREATE OR REPLACE VIEW cadastre.ward AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=3;


ALTER TABLE cadastre.ward
  OWNER TO postgres; 

CREATE OR REPLACE VIEW cadastre.section AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=4;

ALTER TABLE cadastre.section
  OWNER TO postgres; 




delete from system.map_search_option  where code = 'SECTION';
delete from system.query  where name = 'map_search.cadastre_object_by_section';

insert into system.query(name, sql) values('map_search.cadastre_object_by_section', 'select sg.id, sg.label, st_asewkb(sg.geom) as the_geom from  
cadastre.spatial_unit_group sg 
where compare_strings(#{search_string}, sg.name) 
and sg.hierarchy_level=4
limit 30');

insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) 
values('SECTION', 'Section', 'map_search.cadastre_object_by_section', true, 3, 50);


---  changed public display map query
update system.query
set sql =
'select co.id, co.name_lastpart||''/''||co.name_firstpart as label,  st_asewkb(st_transform(co.geom_polygon, #{srid})) 
as the_geom 
from cadastre.cadastre_object co, 
cadastre.spatial_unit_group sg
 where co.type_code= ''parcel'' and co.status_code= ''current'' 
and sg.name = #{name_lastpart}
and sg.hierarchy_level=4 
and sg.name in( select ss.reference_nr from   source.source ss where ss.type_code=''publicNotification'')
and ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom) 
and ST_Intersects(st_transform(co.geom_polygon, #{srid}), 
ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))'
where name = 'public_display.parcels';

update system.query
set sql =
 'SELECT co_next.id, co.name_lastpart||''/''||co.name_firstpart as label, 
  st_asewkb(st_transform(co_next.geom_polygon, #{srid})) 
 as the_geom  
 from cadastre.cadastre_object co_next, 
 cadastre.cadastre_object co, 
 cadastre.spatial_unit_group sg
 where co.type_code= ''parcel'' 
 and co.status_code= ''current'' 
 and co_next.type_code= ''parcel'' 
 and co_next.status_code= ''current'' 
 and sg.name = #{name_lastpart}
 and sg.name in( select ss.reference_nr from   source.source ss where ss.type_code=''publicNotification'')
 and sg.hierarchy_level=4 
 and ST_Intersects(ST_PointOnSurface(co.geom_polygon), sg.geom) 
 and not (ST_Intersects(ST_PointOnSurface(co_next.geom_polygon), sg.geom)) 
 and st_dwithin(st_transform(co.geom_polygon, #{srid}), st_transform(co_next.geom_polygon, #{srid}), 5)
  and ST_Intersects(st_transform(co_next.geom_polygon, #{srid}), ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),
  ST_Point(#{maxx}, #{maxy})), #{srid}))' 
where name = 'public_display.parcels_next';
---------------------------------------------
---------------------------------------------
----- update map search option
update system.map_search_option set active = false where code = 'OWNER_OF_BAUNIT';
update system.config_map_layer set active = false, visible_in_start= false where name = 'parcels-historic-current-ba';
update system.map_search_option set title = 'Parcel' where code = 'NUMBER';
update system.map_search_option set active = true where code = 'BAUNIT';
delete from system.map_search_option where query_name = 'map_search.cadastre_object_by_title';
delete from system.query where name = 'map_search.cadastre_object_by_title';
insert into system.query(name, sql) values('map_search.cadastre_object_by_title', 'select distinct co.id,  ba_unit.name || '' > '' || co.name_firstpart || ''/ '' || co.name_lastpart as label,  st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object  co    inner join administrative.ba_unit_contains_spatial_unit bas on co.id = bas.spatial_unit_id     inner join administrative.ba_unit on ba_unit.id = bas.ba_unit_id  where (co.status_code= ''current'' or ba_unit.status_code= ''current'') and ba_unit.name is not null   and compare_strings(#{search_string}, ba_unit.name) limit 30');
insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) values('TITLE', 'Title', 'map_search.cadastre_object_by_title', true, 3, 50);

----------------------------------------------
---- update for map label
CREATE OR REPLACE FUNCTION cadastre.get_map_center_label(center_point geometry)
RETURNS character varying AS $BODY$ begin
return coalesce((select 'Section:' || label from cadastre.spatial_unit_group
where hierarchy_level = 4 and st_within(center_point, geom) limit 1), ''); end;
$BODY$ LANGUAGE plpgsql;

--------------------------------------------  
 
 --SET NEW SRID and OTHER PARAMETERS

--UPDATE public.geometry_columns SET srid = <CUSTOMIZE>; 
--UPDATE application.application set location = null;
--UPDATE system.setting SET vl = '<CUSTOMIZE>' WHERE "name" = 'map-srid'; 
--UPDATE system.setting SET vl = '<CUSTOMIZE>' WHERE "name" = 'map-west'; 
--UPDATE system.setting SET vl = '<CUSTOMIZE>' WHERE "name" = 'map-south'; 
--UPDATE system.setting SET vl = '<CUSTOMIZE>' WHERE "name" = 'map-east'; 
--UPDATE system.setting SET vl = '<CUSTOMIZE>' WHERE "name" = 'map-north'; 
--UPDATE system.crs SET srid = '<CUSTOMIZE>';

-- Reset the SRID check constraints
-- ALTER TABLE cadastre.spatial_unit DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.spatial_unit ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.spatial_unit_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.spatial_unit_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);

-- ALTER TABLE cadastre.spatial_unit DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
-- ALTER TABLE cadastre.spatial_unit ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.spatial_unit_historic DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
-- ALTER TABLE cadastre.spatial_unit_historic ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = <CUSTOMIZE>);


-- ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);

-- ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
-- ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
-- ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = <CUSTOMIZE>);



-- ALTER TABLE cadastre.cadastre_object DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
-- ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.cadastre_object_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
-- ALTER TABLE cadastre.cadastre_object_historic ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = <CUSTOMIZE>);

-- ALTER TABLE cadastre.cadastre_object_target DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
-- ALTER TABLE cadastre.cadastre_object_target ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.cadastre_object_target_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
-- ALTER TABLE cadastre.cadastre_object_target_historic ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = <CUSTOMIZE>);

-- ALTER TABLE cadastre.cadastre_object_node_target DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.cadastre_object_node_target ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.cadastre_object_node_target_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.cadastre_object_node_target_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);

-- ALTER TABLE application.application DROP CONSTRAINT IF EXISTS enforce_srid_location;
-- ALTER TABLE application.application ADD CONSTRAINT enforce_srid_location CHECK (st_srid(location) = <CUSTOMIZE>);
-- ALTER TABLE application.application_historic DROP CONSTRAINT IF EXISTS enforce_srid_location;
-- ALTER TABLE application.application_historic ADD CONSTRAINT enforce_srid_location CHECK (st_srid(location) = <CUSTOMIZE>);

-- ALTER TABLE cadastre.survey_point DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.survey_point ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);
-- ALTER TABLE cadastre.survey_point_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
-- ALTER TABLE cadastre.survey_point_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);

--  ALTER TABLE cadastre.survey_point DROP CONSTRAINT IF EXISTS enforce_srid_original_geom;
--  ALTER TABLE cadastre.survey_point ADD CONSTRAINT enforce_srid_original_geom CHECK (st_srid(original_geom) = <CUSTOMIZE>);
--  ALTER TABLE cadastre.survey_point_historic DROP CONSTRAINT IF EXISTS enforce_srid_original_geom;
--  ALTER TABLE cadastre.survey_point_historic ADD CONSTRAINT enforce_srid_original_geom CHECK (st_srid(original_geom) = <CUSTOMIZE>);

--  ALTER TABLE bulk_operation.spatial_unit_temporary DROP CONSTRAINT IF EXISTS enforce_srid_geom;
--  ALTER TABLE bulk_operation.spatial_unit_temporary ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = <CUSTOMIZE>);
