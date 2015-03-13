delete from system.br_validation where br_id = 'application-check-signing-list';
delete from system.br_definition where br_id= 'application-check-signing-list';
delete from system.br where id = 'application-check-signing-list';



INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES (
'application-check-signing-list',
'application-check-signing-list',
'sql',
'Signing list must be attached to the SR application',
'',
'Checks that signing list has been attached to the application'
            );

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES (
    
'application-check-signing-list','2013-12-11','infinity','select count (aa.id) > 0 as vl
from application.application aa,
application.service sv,
application.application_uses_source a_s,
source.source ss
where aa.id = sv.application_id
and sv.request_type_code = ''systematicRegn''
and sv.status_code != ''cancelled''
and a_s.application_id = aa.id
and a_s.source_id = ss.id
and ss.type_code=''signingList''
and aa.id = #{id}'

    );
INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES ('application-check-signing-list','application-check-signing-list','application','validate',null,null,null,null,'critical',601);



-- View: administrative.sys_reg_signing_list

-- DROP VIEW administrative.sys_reg_signing_list;

CREATE OR REPLACE VIEW administrative.sys_reg_signing_list AS 
SELECT  distinct (co.id) as id,
co.name_firstpart as name_firstpart,
co.name_lastpart as name_lastpart,
(co.name_lastpart ||'/'||co.name_firstpart) as parcel,
sg.name::text AS name, 
administrative.get_parcel_ownernames(bu.id) as persons
   FROM cadastre.cadastre_object co, 
    cadastre.spatial_value_area sa, 
    administrative.ba_unit_contains_spatial_unit su, 
    application.application_property ap, application.application aa, 
    application.service s, administrative.ba_unit bu, 
    cadastre.spatial_unit_group sg, administrative.rrr rrr, 
    administrative.rrr_type rrrt, party.party pp,
    administrative.party_for_rrr pr,
    cadastre.sr_work_unit srw
  WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text 
  AND su.spatial_unit_id::text = sa.spatial_unit_id::text 
  AND (ap.ba_unit_id::text = su.ba_unit_id::text OR (ap.name_lastpart::text || ap.name_firstpart::text) = (bu.name_lastpart::text || bu.name_firstpart::text)) 
  AND (co.name_lastpart::text || co.name_firstpart::text) = (bu.name_lastpart::text || bu.name_firstpart::text) 
  AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text 
  AND s.request_type_code::text = 'systematicRegn'::text AND s.status_code::text = 'completed'::text 
  AND srw.name = sg.name
  AND (srw.public_display_start_date + CAST(coalesce(system.get_setting('public-notification-duration'), '0') AS integer)< now())
  AND bu.id::text = su.ba_unit_id::text AND st_intersects(st_pointonsurface(co.geom_polygon), sg.geom) 
  AND sg.hierarchy_level = 4 AND rrr.ba_unit_id::text = bu.id::text AND rrr.type_code::text = rrrt.code::text 
  AND pp.id::text = pr.party_id::text 
  AND pr.rrr_id::text = rrr.id::text
  AND sg.hierarchy_level = 4 
  AND st_intersects(st_pointonsurface(co.geom_polygon), sg.geom)
  ORDER BY parcel;
   