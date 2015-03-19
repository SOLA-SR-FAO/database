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



delete from system.br_validation where br_id = 'application-check-signing-list';
delete from system.br_definition where br_id= 'application-check-signing-list';
delete from system.br where id = 'application-check-signing-list';



--INSERT INTO system.br(
  --          id, display_name, technical_type_code, feedback, description, 
    --        technical_description)
 --   VALUES (
--'application-check-signing-list',
--'application-check-signing-list',
--'sql',
--'Signing list must be attached to the SR application',
--'',
--'Checks that signing list has been attached to the application'
  --          );

--INSERT INTO system.br_definition(
  --          br_id, active_from, active_until, body)
    --VALUES (
    
--'application-check-signing-list','2013-12-11','infinity','select count (aa.id) > 0 as vl
--from application.application aa,
--application.service sv,
--application.application_uses_source a_s,
--source.source ss
--where aa.id = sv.application_id
--and sv.request_type_code = ''systematicRegn''
--and sv.status_code != ''cancelled''
--and a_s.application_id = aa.id
--and a_s.source_id = ss.id
--and ss.type_code=''signingList''
--and aa.id = #{id}'

  --  );
--INSERT INTO system.br_validation(
  --          id, br_id, target_code, target_application_moment, target_service_moment, 
    --        target_reg_moment, target_request_type_code, target_rrr_type_code, 
      --      severity_code, order_of_execution)
--VALUES ('application-check-signing-list','application-check-signing-list','application','validate',null,null,null,null,'critical',601);






INSERT INTO system.version SELECT '1503a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1503a');
