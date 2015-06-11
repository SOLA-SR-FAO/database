-- Existing Layer Updates ----
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
DELETE FROM cadastre.hierarchy_level WHERE code = '5';	



INSERT INTO cadastre.hierarchy_level(
            code, display_value, description, status)
    VALUES ('5','Daily Work Unit','','c');




-------- cadastre.spatial_unit_group spatial object

INSERT INTO cadastre.spatial_unit_group (id, hierarchy_level, label, name, reference_point, geom, found_in_spatial_unit_group_id, seq_nr, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('NZ', 0, 'NZ', 'NZ', NULL, NULL, NULL, 0, 'ed81e71e-88d1-11e3-8535-e7314c47eeb4', 5, 'u', 'test', '2014-05-10 13:41:45.755');

-- Configure the Level data 
-- add levels

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'LGA', 'all', 'polygon', 'mixed', 'test');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Ward', 'all', 'polygon', 'mixed', 'test');



INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Section', 'all', 'polygon', 'mixed', 'test');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Daily Work Unit', 'all', 'polygon', 'mixed', 'test');


	
	
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

insert into system.query(name, sql) 
values('SpatialResult.getParcelsForParcelPlan', 
'select co.id, 
co.name_firstpart as label,  
st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom 
from cadastre.cadastre_object co 
where type_code= ''parcel'' and status_code= ''current'' 
and ST_Intersects(st_transform(co.geom_polygon, #{srid}), 
ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(co.geom_polygon)> power(5 * #{pixel_res}, 2)');

insert into system.query(name, sql)
values('SpatialResult.getRoadCenterlinesForParcelPlan', 
'select id, label, st_asewkb(st_transform(geom, #{srid})) as the_geom 
from cadastre.spatial_unit
where level_id = ''road-centerline'' and ST_Intersects(st_transform(geom, #{srid}), ST_SetSRID(ST_3DMakeBox(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getDWU', 'select id, label, st_asewkb(geom) as the_geom from cadastre.dwu where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves Daily Work Unit');
	
INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_lga', 'Local Government Areas', 'pojo', true, true, 90, 'lga.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getLGA');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_ward', 'Ward', 'pojo', true, true, 80, 'ward.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getWard');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_section', 'Section', 'pojo', true, true, 80, 'section.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getSection');

	

insert into system.config_map_layer(name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name, use_in_public_display) 
values('parcels-for-parcel-plan', 'Parcels for Parcel Plan', 'pojo', false, false, 82, 'parcels_for_parcel_plan.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getParcelsForParcelPlan', false);

insert into system.config_map_layer(name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
values('road-centerlines-for-parcel-plan', 'Road centerlines for Parcel Plan', 'pojo', true, true, 35, 'road_centerline_for_parcel_plan.xml', 'theGeom:MultiLineString,label:""', 'SpatialResult.getRoadCenterlinesForParcelPlan');

update system.config_map_layer set  pojo_structure = 'theGeom:MultiLineString,label:""' where "name" = 'road-centerlines';

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_dwu', 'Daily Work Unit', 'pojo', true, true, 80, 'dwu.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getDWU');


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
  

-- DROP VIEW cadastre.dwu;

CREATE OR REPLACE VIEW cadastre.dwu AS 
 SELECT s.id, s.label, s.geom
   FROM cadastre.spatial_unit_group s
  WHERE s.hierarchy_level = 5;

ALTER TABLE cadastre.dwu
  OWNER TO postgres;

-- View: cadastre.hierarchy

CREATE OR REPLACE VIEW cadastre.hierarchy AS 
SELECT sug.id, sug.label, sug.geom, 
    sug.hierarchy_level::character varying AS filter_category
   FROM cadastre.spatial_unit_group sug;

ALTER TABLE cadastre.hierarchy
  OWNER TO postgres;
COMMENT ON VIEW cadastre.hierarchy
  IS 'First (highest) level of the hierarchical spatial unit group object of a hierarchical structure such as administrative rights.';
  

----  Overlapping Parcels ------
--- new layer for overlapping parcels
DELETE FROM cadastre.level WHERE "name" IN ('OverlappingParcels');
DELETE FROM system.config_map_layer WHERE "name" IN ('overlappingparcels');
DELETE FROM system.query WHERE name IN ('SpatialResult.getOverlappingParcels');

 
--UPDATE cadastre.level
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'OverlappingParcels', 'all', 'polygon', 'mixed', 'test');

--UPDATE system.query
INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getOverlappingParcels', 'SELECT c1.id, c1.name_firstpart as label, 
     st_asewkb(c1.geom_polygon) as the_geom  
from cadastre.cadastre_object c1, cadastre.cadastre_object c2
where (ST_OVERLAPS(c1.geom_polygon,c2.geom_polygon)
or st_within(c1.geom_polygon,c2.geom_polygon)) and c1.id!=c2.id
and (c1.id not in (select cot.cadastre_object_id from cadastre.cadastre_object_target cot)
and c2.id not in (select cot.cadastre_object_id from cadastre.cadastre_object_target cot))', 'The spatial query that retrieves Overlapping');

--UPDATE system.config_map_layer
INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('overlappingparcels', 'OverlappingParcels', 'pojo', true, false, 81, 'overlappingparcels.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getOverlappingParcels');
---------------------------------------------
---------------------------------------------
----- update map search option
update system.map_search_option set active = false where code = 'OWNER_OF_BAUNIT';
update system.config_map_layer set active = false, visible_in_start= false where name = 'parcels-historic-current-ba';
update system.map_search_option set title = 'Parcel' where code = 'NUMBER';
update system.map_search_option set active = true where code = 'BAUNIT';

delete from system.map_search_option where query_name = 'map_search.cadastre_object_by_title';
delete from system.query where name = 'map_search.cadastre_object_by_title';
delete from system.map_search_option  where code = 'OVERLAPPING';
delete from system.query  where name = 'map_search.cadastre_object_by_overlapping';
delete from system.map_search_option  where code = 'SECTION';
delete from system.query  where name = 'map_search.cadastre_object_by_section';
delete from system.map_search_option  where code = 'DAILYWORKUNIT';
delete from system.query  where name = 'map_search.cadastre_object_by_dailyworkunit';
delete from system.map_search_option  where code = 'OWNERS';
delete from system.query  where name = 'map_search.cadastre_object_by_owners';
delete from system.map_search_option  where code = 'PENDING';
delete from system.query  where name = 'map_search.cadastre_object_by_pending';



insert into system.query(name, sql) values('map_search.cadastre_object_by_dailyworkunit', 'select sg.id, sg.label, st_asewkb(sg.geom) as the_geom from  
cadastre.spatial_unit_group sg 
where compare_strings(#{search_string}, sg.name) 
and sg.hierarchy_level=5
limit 30');

insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) 
values('DAILYWORKUNIT', 'Daily Work Unit', 'map_search.cadastre_object_by_dailyworkunit', true, 3, 50);



insert into system.query(name, sql) values('map_search.cadastre_object_by_section', 'select sg.id, sg.label, st_asewkb(sg.geom) as the_geom from  
cadastre.spatial_unit_group sg 
where compare_strings(#{search_string}, sg.name) 
and sg.hierarchy_level=4
limit 30');

insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) 
values('SECTION', 'Section', 'map_search.cadastre_object_by_section', true, 3, 50);


insert into system.query(name, sql) values('map_search.cadastre_object_by_owners', 'SELECT distinct(c1.id), c1.name_firstpart as label,  st_asewkb(c1.geom_polygon) as the_geom  
 from cadastre.cadastre_object c1,
 application.application aa,
 application.application_property ap, 
 party.party pp, 
 administrative.party_for_rrr pr, 
 administrative.ba_unit bu, 
 administrative.rrr rrr  
 where
  pp.id=pr.party_id
  and pr.rrr_id=rrr.id 
  and rrr.ba_unit_id= bu.id 
  and c1.name_firstpart||c1.name_lastpart=ap.name_firstpart||ap.name_lastpart
  and bu.name_firstpart||bu.name_lastpart=c1.name_firstpart||c1.name_lastpart 
  and aa.id=ap.application_id 
 and compare_strings(#{search_string}, COALESCE(pp.name, '''') || '' '' || COALESCE(pp.last_name, '''')) limit 30');

insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) 
values('OWNERS', 'Owners', 'map_search.cadastre_object_by_owners', true, 3, 50);

insert into system.query(name, sql) values('map_search.cadastre_object_by_title', 'select distinct co.id,  ba_unit.name || '' > '' || co.name_firstpart || ''/ '' || co.name_lastpart as label,  st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object  co    inner join administrative.ba_unit_contains_spatial_unit bas on co.id = bas.spatial_unit_id     inner join administrative.ba_unit on ba_unit.id = bas.ba_unit_id  where (co.status_code= ''current'' or ba_unit.status_code= ''current'') and ba_unit.name is not null   and compare_strings(#{search_string}, ba_unit.name) limit 30');
insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) values('TITLE', 'Title', 'map_search.cadastre_object_by_title', true, 3, 50);
insert into system.query(name, sql) values('map_search.cadastre_object_by_overlapping', 'SELECT c1.id, c1.name_firstpart as label,  st_asewkb(c1.geom_polygon) as the_geom  
from cadastre.cadastre_object c1, cadastre.cadastre_object c2
where (ST_OVERLAPS(c1.geom_polygon,c2.geom_polygon)
or st_within(c1.geom_polygon,c2.geom_polygon)) and c1.id!=c2.id and compare_strings(#{search_string}, c1.name_firstpart || '' '' || c1.name_lastpart) limit 30');
insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) 
values('OVERLAPPING', 'Overlapping Parcels', 'map_search.cadastre_object_by_overlapping', true, 3, 50);

---- Search by pending parcels ------------
insert into system.query(name, sql) values('map_search.cadastre_object_by_pending', 'select id, name_firstpart || ''/ '' || name_lastpart as label, st_asewkb(st_transform(geom_polygon, #{srid}))
 as the_geom  from cadastre.cadastre_object  where status_code= ''pending'' and compare_strings(#{search_string}, name_firstpart || '' '' || name_lastpart) limit 30');

insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) 
values('PENDING', 'Pending Parcels', 'map_search.cadastre_object_by_pending', true, 3, 50);





---  changed public display map query

-- Update the query to retrieve the public display parcels
update system.query set sql = 
'select id, label, st_asewkb(the_geom) as the_geom 
from cadastre.get_pd_parcels(#{name_lastpart})
where ST_Intersects(ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}), the_geom)'
where name = 'public_display.parcels';

-- Update the query to retrieve the public display neighbouring parcels
update system.query set sql = 
'select id, label, st_asewkb(the_geom) as the_geom 
from cadastre.get_pd_parcels_next(#{name_lastpart})
where ST_Intersects(ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}), the_geom)'
where name = 'public_display.parcels_next';





------
-- PDA labels
------
UPDATE cadastre.hierarchy_level SET  display_value = 'Public Display Area'  WHERE code = '4';
UPDATE system.config_map_layer  SET  title = 'Public Display Area' WHERE name = 'sug_section';
UPDATE system.map_search_option SET  title = 'Public Display Area' WHERE code = 'SECTION';




----- config_map_layer_metadata ----------------------------------------------
delete from system.config_map_layer_metadata where name_layer = 'orthophoto';
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('parcels-for-parcel-plan', 'in-plan-production', 'true');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('parcels-for-parcel-plan', 'in-plan-sketch-production', 'true');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('road-centerlines-for-parcel-plan', 'in-plan-production', 'true');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('orthophoto', 'resolution', '<TO BE CUSTOMIZED>');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('orthophoto', 'data-source', '<TO BE CUSTOMIZED>');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('orthophoto', 'sheet-number', '<TO BE CUSTOMIZED>');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('orthophoto', 'date', '<TO BE CUSTOMIZED>');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('orthophoto', 'in-plan-production', 'false');
insert into system.config_map_layer_metadata (name_layer ,"name" , "value") values ('orthophoto', 'in-plan-sketch-production', 'true');





update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'true' where name_layer = 'road-centerlines';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'true' where name_layer = 'place-names';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'parcels';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'public-display-parcels';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'public-display-parcels-next';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'pending-parcels';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'survey-controls';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'applications';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'parcel-nodes';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'roads';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'sug_lga';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'sug_ward';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'parcels-historic-current-ba';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'sug_section';
update system.config_map_layer_metadata set "name" = 'in-plan-production', value = 'false' where name_layer = 'overlappingparcels';


update system.config_map_layer_metadata set  value = 'false' where "name" = 'in-plan-production' and  name_layer not in ('parcels-for-parcel-plan','road-centerlines-for-parcel-plan');

-- populate cadastre.spatial_unit_in_group table with existing parcels<==>pdas

 insert into cadastre.spatial_unit_in_group(spatial_unit_group_id,spatial_unit_id)
  select sg.id, co.id
  from cadastre.cadastre_object co,
  cadastre.spatial_unit_group sg
  where co.geom_polygon && sg.geom and ST_Contains(sg.geom, ST_PointOnSurface(co.geom_polygon))
  and sg.hierarchy_level = 4;

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
