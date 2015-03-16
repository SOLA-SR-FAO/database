-- SR Registered document nr must be unique
insert into system.br(id,display_name,technical_type_code,feedback,technical_description) VALUES('check-registered-SR-nr-is-unique','source-nr-for-registerSR-must-be-unique','sql','Source number for the Registered SR C of O','Generates a source number for Registered SR C of Os');

insert into system.br_definition(br_id,active_from,active_until,body) VALUES('check-registered-SR-nr-is-unique','2014-01-27','infinity','SELECT count(*) > 0 as vl from administrative.rrr where rrr.nr=#{nr};');

--Activate the deeds administrative_source_type
UPDATE source.administrative_source_type SET status= 'c' WHERE code='deed';

--Insert into the br_validation table and enforce it for validation
insert into system.br_validation(id,br_id,target_code,target_service_moment,target_request_type_code,severity_code,order_of_execution) VALUES(uuid_generate_v1(),'check-registered-SR-nr-is-unique','service','complete','registerSRCofO','critical',1);

--validation for approve
insert into system.br_validation(id,br_id,target_code,target_service_moment,target_request_type_code,severity_code,order_of_execution) VALUES(uuid_generate_v1(),'check-registered-SR-nr-is-unique','service','lodge','registerSRCofO','critical',2);
