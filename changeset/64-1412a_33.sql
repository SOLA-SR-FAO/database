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
   