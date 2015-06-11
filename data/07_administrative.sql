--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2015-04-09 16:36:41

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = administrative, pg_catalog;

--
-- TOC entry 4236 (class 0 OID 379791)
-- Dependencies: 258
-- Data for Name: ba_unit_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE ba_unit_type DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_type ENABLE TRIGGER ALL;

--
-- TOC entry 4234 (class 0 OID 379766)
-- Dependencies: 256
-- Data for Name: ba_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit DISABLE TRIGGER ALL;

INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('d7aca424-3e8c-4d32-941e-6397d436935d', 'basicPropertyUnit', NULL, '1', NULL, NULL, 'pending', '9853faec-11b4-410a-b4a6-288ad7a476b3', 'ae5bc3bd-edde-45ee-b438-f6a8ab55b4aa', 1, 'i', 'test', '2015-03-20 09:24:14.104', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home_agric', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('6355cd66-cb44-4f77-a9b1-51de83138c6a', 'basicPropertyUnit', NULL, '20', NULL, NULL, 'pending', '0be3b7ec-ffa5-4c1b-ac27-2ee62de60b9b', '3728f516-55a6-4504-aee1-f060e436f056', 1, 'i', 'test', '2015-03-20 09:56:53.75', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('a7604bbe-e74f-4d7a-a537-97ed25be0e0f', 'basicPropertyUnit', NULL, '19', NULL, NULL, 'pending', '5ee4698b-03e8-4b17-8650-f0a46cafb409', 'fb115ec3-29c7-4967-acfc-88cf4690ac33', 1, 'i', 'test', '2015-03-20 09:58:14.363', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('b3eb0b83-a72e-4b6b-82d2-a337df52abbc', 'basicPropertyUnit', NULL, '18', NULL, NULL, 'pending', 'c06cef2b-db46-4c06-9cb7-1635d40c9ee0', 'ca81f1ae-e131-46f1-9902-2e159dda80d6', 1, 'i', 'test', '2015-03-20 09:59:37.88', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('1e36e4c6-3e38-483c-8a8d-93889e5cf99f', 'basicPropertyUnit', NULL, '17', NULL, NULL, 'pending', '139ef9d1-aac5-4cdd-b189-c9be15ac3632', 'f3f51ff1-3956-4a33-abb9-f9b343b05979', 1, 'i', 'test', '2015-03-20 10:01:41.937', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('92040027-b300-4390-ba4b-576bfe2e2be1', 'basicPropertyUnit', NULL, '16', NULL, NULL, 'pending', '7de20f23-efe1-421a-9967-0518d523719e', 'da6868d4-2aef-444c-9cbc-3217439b8f23', 1, 'i', 'test', '2015-03-20 10:03:15.912', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', NULL, 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('af5958cf-9e86-4053-8412-ddb3f523818f', 'basicPropertyUnit', NULL, '15', NULL, NULL, 'pending', 'ce598378-329b-43ad-9f04-6ab8162f626c', '66536301-81f7-4e9d-8283-9607c31da80d', 1, 'i', 'test', '2015-03-20 10:05:28.263', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('6c0111b4-8479-495d-aef8-978f8d0fc5ff', 'basicPropertyUnit', NULL, '14', NULL, NULL, 'pending', '103a09f0-8eba-47af-ab70-6d54501ed243', '5dfbdc91-8dc6-4b74-9b5c-58e67c265da3', 1, 'i', 'test', '2015-03-20 10:08:17.174', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road ', NULL, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('791492f2-bc32-4cd4-8561-2764e356b1e2', 'basicPropertyUnit', NULL, '13', NULL, NULL, 'pending', '10088388-8882-47c6-a0fb-0a46d3535a97', 'd51d96cf-808f-44f0-8369-c3bbcbaac942', 1, 'i', 'test', '2015-03-20 10:09:33.001', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('af005a16-aa6c-4f9c-89f0-b335defbd260', 'basicPropertyUnit', NULL, '10', NULL, NULL, 'pending', '357b71d0-a298-4a34-a5c9-7d58cd378855', 'c48db1e8-ecf8-4033-b2f2-bd84d0ab0c72', 1, 'i', 'test', '2015-03-20 10:10:58.384', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('598d644e-79e9-42b7-99a6-61b149e3de71', 'basicPropertyUnit', NULL, '9', NULL, NULL, 'pending', '44930f80-9741-4259-ac1d-ca4df61db2d4', '7bf1d554-1962-4fbc-9296-e7e660afb8d1', 1, 'i', 'test', '2015-03-20 10:12:39.722', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('5e7ae8c3-113f-4e4d-9d9c-fc75bc27e573', 'basicPropertyUnit', NULL, '8', NULL, NULL, 'pending', '031d9fdf-5096-4477-a81e-4bcb431044a2', '363eb92a-64ef-4e7e-b107-06cae028772c', 1, 'i', 'test', '2015-03-20 10:14:29.451', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('0df05768-dbbb-413a-80ef-1663bf938fa5', 'basicPropertyUnit', NULL, '7', NULL, NULL, 'pending', '286c52f6-0a9e-4bb2-a64e-0dc36b6f7b04', '628ffc12-32e3-435b-b9ca-92b4785a985c', 1, 'i', 'test', '2015-03-20 10:15:44.199', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home_agric', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('43bfc53a-edae-4b32-a327-089f09c45228', 'basicPropertyUnit', NULL, '5', NULL, NULL, 'pending', '7cd29919-b08b-40fe-ad53-8b4a9bb0a605', '30dc6c78-9477-4473-9bb2-3b167b13daf1', 1, 'i', 'test', '2015-03-20 10:17:26.46', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('39c27970-c4b7-475d-8d0f-a43baaaaf70f', 'basicPropertyUnit', NULL, '6', NULL, NULL, 'pending', 'd8719adc-e638-449e-b82a-a86d928b23f8', '5319f202-4f2a-4ad5-80c3-4ff385bcb9e1', 1, 'i', 'test', '2015-03-20 10:18:52.2', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('10ddc586-91cd-4aed-896b-4642a6549520', 'basicPropertyUnit', NULL, '4', NULL, NULL, 'pending', '8670b6b4-ed63-4595-9603-1696607da8e7', 'b7df9d09-6029-41ae-a0b6-f1d9b1c057e1', 1, 'i', 'test', '2015-03-20 10:20:10.412', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home_agric', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('9888dbe4-8b62-46f3-8077-2975a4807fc5', 'basicPropertyUnit', NULL, '3', NULL, NULL, 'pending', 'dc094b53-9376-41ad-8a68-227ab7ff62ed', 'ce5af0c1-0ee9-4a4f-b138-6227d582fa40', 1, 'i', 'test', '2015-03-20 10:21:23.365', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('104fb950-2d9f-4407-86e3-9191489f0071', 'basicPropertyUnit', NULL, '2', NULL, NULL, 'pending', '3a0d822d-75f0-4778-aecd-482bf96307e8', '03deff24-3df5-41bb-b61e-158eea172c84', 1, 'i', 'test', '2015-03-20 10:23:08.756', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home_agric', 'strawberry fields', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('61c90c9b-2561-421d-b5d6-541453eccf31', 'basicPropertyUnit', NULL, '4', NULL, NULL, 'pending', '2caf07e7-4319-47d8-b717-1dd754bb636e', '99b1e3a5-9cae-4c02-bb48-4b996409450e', 1, 'i', 'test', '2015-03-20 13:43:18.11', 'Ponui/NE1/WR5', true, NULL, NULL, 99, 'res_home', 'rock view land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('52ad43aa-5d9e-4353-be7f-200e1f3c31cb', 'basicPropertyUnit', NULL, '3', NULL, NULL, 'pending', '395d6e73-2b23-4116-9a2c-832a33a45983', '5f9b4415-1eac-4bb4-92ca-64056679876b', 1, 'i', 'test', '2015-03-20 13:44:44.599', 'Ponui/NE1/WR5', true, NULL, NULL, 99, 'res_home', 'rock view land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('8c3efbe3-0665-485f-b578-110d988bc859', 'basicPropertyUnit', NULL, '21', NULL, NULL, 'current', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '0f55d0a8-6cd1-4db8-bc9f-3eabb10844d7', 4, 'u', 'test', '2015-03-20 12:12:38.495', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, 60300);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 12, 'u', 'test', '2015-03-20 12:12:38.495', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('e6263205-b4bd-4826-ab98-6206abac0857', 'basicPropertyUnit', NULL, '30', NULL, NULL, 'pending', '9c352a1d-85c4-4e82-9994-7c51d5ac385a', '87b7a859-0881-4936-a9fa-fb722edacd36', 1, 'i', 'test', '2015-03-20 13:09:06.394', 'Ponui/NW1/WR1', false, 5, 10000.00, 99, 'res_home_agric', 'upper corner land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('43959af6-30fd-4404-9137-d6ccc60a851c', 'basicPropertyUnit', NULL, '29', NULL, NULL, 'pending', '2773d44e-d171-4553-bdd0-6fa5d52126c8', '5e916970-3762-4731-a01a-7e2acd7b5618', 1, 'i', 'test', '2015-03-20 13:10:49.166', 'Ponui/NW1/WR1', false, 7, 12000.00, 99, 'res_home_agric', 'upper corner land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('193732ab-dee3-4d72-aad6-a12434f079ec', 'basicPropertyUnit', NULL, '28', NULL, NULL, 'pending', '58d67c7b-c53a-4041-a738-7d56a0c40bd3', 'af1f2f62-63fc-4d01-b83b-0bdc0a7bb1b7', 1, 'i', 'test', '2015-03-20 13:12:24.695', 'Ponui/NW1/WR1', false, 7, 12000.00, 99, 'res_home_agric', 'upper corner land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('cb2a492b-5dde-4619-aeb1-39151a211b2c', 'basicPropertyUnit', NULL, '2', NULL, NULL, 'pending', 'f2ca1ee7-b04f-4aa3-a52e-6909bee01a9e', 'a54081bd-8027-4504-abad-426dc0c1e145', 1, 'i', 'test', '2015-03-20 13:46:09.267', 'Ponui/NE1/WR5', true, NULL, NULL, 99, 'res_home', 'rock view land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('61b393dc-065a-4929-b9ca-282d0a841b63', 'basicPropertyUnit', NULL, '24', NULL, NULL, 'pending', '6835b0cf-98ef-4f87-b41c-ef5a52a0536a', 'e3bafc18-8cf1-43e6-8176-b57ecdf1ef2a', 1, 'i', 'test', '2015-03-20 13:13:52.943', 'Ponui/NW1/WR1', false, 5, 10000.00, 99, 'res_home_agric', 'upper corner land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('9b1f0aeb-9a01-4b9b-ac78-152d32b60ef0', 'basicPropertyUnit', NULL, '23', NULL, NULL, 'pending', '52c39b3c-e365-4c44-a11c-916ff3fe250e', 'e28e9145-c534-4db3-b66a-93a2148fd227', 1, 'i', 'test', '2015-03-20 13:16:13.851', 'Ponui/NW1/WR1', false, 4, 8000.00, 99, 'res_home_agric', 'upper corner land', 1, NULL);
INSERT INTO ba_unit (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('58f0e7b7-4170-4cb5-a4b2-e0986322719f', 'basicPropertyUnit', NULL, '1', NULL, NULL, 'pending', '45635eb7-f3b5-413f-b2f3-3490fe97d263', 'c8c62648-12b1-4723-8034-3e88f82a8704', 1, 'i', 'test', '2015-03-20 13:47:32.323', 'Ponui/NE1/WR5', true, NULL, NULL, 99, 'res_home', 'rock view land', 1, NULL);


ALTER TABLE ba_unit ENABLE TRIGGER ALL;

--
-- TOC entry 4254 (class 0 OID 380130)
-- Dependencies: 289
-- Data for Name: ba_unit_area; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_area DISABLE TRIGGER ALL;

INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4b8d3ac4-0c18-49a1-931e-f3e1f7c34b42', 'd7aca424-3e8c-4d32-941e-6397d436935d', 'officialArea', 1790.00, '6dbba2a4-9046-4ec0-8c51-93faa2dde2e2', 1, 'i', 'test', '2015-03-20 09:24:15.423');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('f70b0452-a019-44c1-a829-6d58c9f9f2c4', '3541fc82-5183-4215-a03a-cc685519bdde', 'officialArea', 4276.00, '5b6740bc-012b-4de6-bdcd-0eaac59979cb', 1, 'i', 'test', '2015-03-20 09:53:40.862');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('fe0ee706-0248-47ce-b321-0e0b8badf3c3', '8c3efbe3-0665-485f-b578-110d988bc859', 'officialArea', 6700.00, 'a58cd381-8c04-4c3f-9154-343a43515eeb', 1, 'i', 'test', '2015-03-20 09:55:10.502');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ca29c047-3594-4da1-a77e-6216b5853735', '6355cd66-cb44-4f77-a9b1-51de83138c6a', 'officialArea', 10388.00, '02a719b8-303a-42da-864b-9b146783f068', 1, 'i', 'test', '2015-03-20 09:56:53.953');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7049e10f-b0ca-4587-8b82-3098d44be3f9', 'a7604bbe-e74f-4d7a-a537-97ed25be0e0f', 'officialArea', 5428.00, '475d5833-11d6-4dba-b3c5-dffcf834ace5', 1, 'i', 'test', '2015-03-20 09:58:14.55');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('8925d22f-36dd-4c35-86fa-a709be56dd51', 'b3eb0b83-a72e-4b6b-82d2-a337df52abbc', 'officialArea', 6816.00, '1062ccdd-4ae1-4a75-8595-63ae695bbe1d', 1, 'i', 'test', '2015-03-20 09:59:38.064');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('36fe84ea-0e4f-4069-8139-4a171465e941', '1e36e4c6-3e38-483c-8a8d-93889e5cf99f', 'officialArea', 11205.00, '6b34a2e8-4f6b-4b3a-9e43-0d52eb2a3d96', 1, 'i', 'test', '2015-03-20 10:01:42.102');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6d5219b2-7ec0-4a1a-87e6-bafd65250ac6', '92040027-b300-4390-ba4b-576bfe2e2be1', 'officialArea', 10070.00, '1b2b5a53-8bc2-4c05-8ef5-1613a1fc629d', 1, 'i', 'test', '2015-03-20 10:03:16.237');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c8d26028-1974-4f66-9527-90846928aee6', 'af5958cf-9e86-4053-8412-ddb3f523818f', 'officialArea', 8318.00, 'ed66273c-8b72-4b15-9112-38b6214112e9', 1, 'i', 'test', '2015-03-20 10:05:28.477');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b31c7a02-01cb-4f11-9d3a-a68a55514f3a', '6c0111b4-8479-495d-aef8-978f8d0fc5ff', 'officialArea', 8204.00, '7fe3c548-2656-411c-8a5f-bfc3b2425105', 1, 'i', 'test', '2015-03-20 10:08:17.342');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ba0c6dd2-48f4-4dd4-8ba8-251a1edf56bb', '791492f2-bc32-4cd4-8561-2764e356b1e2', 'officialArea', 5712.00, '2c5d68d2-2b87-494a-925f-80790eb1bdc0', 1, 'i', 'test', '2015-03-20 10:09:33.161');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6844367e-17c0-44b8-ad0a-a2937a5d551c', 'af005a16-aa6c-4f9c-89f0-b335defbd260', 'officialArea', 4931.00, '55a0fa13-ab0f-4c51-a948-989ec8fabd24', 1, 'i', 'test', '2015-03-20 10:10:58.679');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('86edb7d8-8ed5-4f05-90be-a78148eccc73', '598d644e-79e9-42b7-99a6-61b149e3de71', 'officialArea', 1027.00, '30ec633e-6d5f-4e11-b2a5-b7b0cbeb9e0a', 1, 'i', 'test', '2015-03-20 10:12:39.884');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('96f3bdc9-46b2-475b-8f86-5f429d2bb7c5', '5e7ae8c3-113f-4e4d-9d9c-fc75bc27e573', 'officialArea', 2858.00, 'c39fa1bd-0d80-4de4-ac76-acecd6abae2a', 1, 'i', 'test', '2015-03-20 10:14:29.63');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c19deb3e-d79e-4849-ae0c-4b73cee0a1ac', '0df05768-dbbb-413a-80ef-1663bf938fa5', 'officialArea', 5228.00, '57f4ad7d-3d16-47c1-8f33-f4e370aa4639', 1, 'i', 'test', '2015-03-20 10:15:44.37');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('3ba1e8f3-2f36-4a2e-bcc2-fefa6621710a', '43bfc53a-edae-4b32-a327-089f09c45228', 'officialArea', 4079.00, 'e89f2f09-1f5b-4e21-8dfb-d23204c58cb0', 1, 'i', 'test', '2015-03-20 10:17:26.638');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1ab8b94e-fb9b-42c2-b73b-ffab5b574eef', '39c27970-c4b7-475d-8d0f-a43baaaaf70f', 'officialArea', 4845.00, 'a055c5ef-fb01-49f0-b3ec-94277d2209c4', 1, 'i', 'test', '2015-03-20 10:18:52.365');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('d0c2c178-aa7a-4193-802d-0ec250e9fb1d', '10ddc586-91cd-4aed-896b-4642a6549520', 'officialArea', 3452.00, 'c8747c0f-511d-4c99-8a9a-ecbedeee2c83', 1, 'i', 'test', '2015-03-20 10:20:11.226');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7a91e981-b214-4b4f-98f5-7c0b84a59d06', '9888dbe4-8b62-46f3-8077-2975a4807fc5', 'officialArea', 2432.00, '74106ebe-e9ed-4951-a6a9-b2b49079ef2f', 1, 'i', 'test', '2015-03-20 10:21:23.53');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a1ed8657-6db5-4a14-be70-7194eae3603e', '104fb950-2d9f-4407-86e3-9191489f0071', 'officialArea', 2561.00, 'd6663ace-c15c-4ea6-81af-06bf51c1607c', 1, 'i', 'test', '2015-03-20 10:23:08.975');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ea02e2a2-6b78-424b-a4d2-e5c88f03d9ca', 'e6263205-b4bd-4826-ab98-6206abac0857', 'officialArea', 3873.00, 'd0ee80c3-fc3c-4d54-a338-09218c805bc2', 1, 'i', 'test', '2015-03-20 13:09:07.161');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('f6c5e31a-8cbe-4e0d-953c-5bb91c6139ea', '43959af6-30fd-4404-9137-d6ccc60a851c', 'officialArea', 25626.00, '0228d062-6938-4141-9ab9-d4d96609ed84', 2, 'u', 'test', '2015-03-20 13:11:03.616');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('de003230-726a-4aa4-a8c5-0de6706f90a5', '193732ab-dee3-4d72-aad6-a12434f079ec', 'officialArea', 24364.00, 'cdc4eeb0-d1f8-4fd2-9fb3-8e27b3cb3dcf', 1, 'i', 'test', '2015-03-20 13:12:24.892');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e7cf9539-d84e-4d92-be67-2ac445373ed2', '61b393dc-065a-4929-b9ca-282d0a841b63', 'officialArea', 20966.00, '5f18b35a-a63c-486a-8b40-97198d67c5b1', 1, 'i', 'test', '2015-03-20 13:13:53.11');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('fbe54591-5368-4228-9a07-bd6367f3bc67', '9b1f0aeb-9a01-4b9b-ac78-152d32b60ef0', 'officialArea', 13087.00, '7f4575ff-3581-4734-a4fc-12357838e33e', 1, 'i', 'test', '2015-03-20 13:16:14.08');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('f58525f6-cdcf-4ae8-8abf-0d986488c3ed', '61c90c9b-2561-421d-b5d6-541453eccf31', 'officialArea', 21467.00, '5f7d7cb3-8f5b-4ae4-9dc4-4dcf634d235d', 1, 'i', 'test', '2015-03-20 13:43:18.488');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('faca4f0f-1bec-4e88-84fa-32cc2c02b368', '52ad43aa-5d9e-4353-be7f-200e1f3c31cb', 'officialArea', 27350.00, '0b111e1e-cfff-4df7-b898-004b069b0d20', 1, 'i', 'test', '2015-03-20 13:44:44.914');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4ca80e60-e3c9-43f5-8429-5c4bdafa9b8a', 'cb2a492b-5dde-4619-aeb1-39151a211b2c', 'officialArea', 80204.00, '748766c1-e986-4bbe-af4c-13285ba4a1b1', 1, 'i', 'test', '2015-03-20 13:46:09.443');
INSERT INTO ba_unit_area (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5c4de038-fc94-4af2-a8c5-c4de3dc5b291', '58f0e7b7-4170-4cb5-a4b2-e0986322719f', 'officialArea', 24811.00, 'ab825ee4-74a9-4ac1-bb72-5423bfebf99c', 1, 'i', 'test', '2015-03-20 13:47:32.658');


ALTER TABLE ba_unit_area ENABLE TRIGGER ALL;

--
-- TOC entry 4255 (class 0 OID 380141)
-- Dependencies: 290
-- Data for Name: ba_unit_area_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_area_historic DISABLE TRIGGER ALL;

INSERT INTO ba_unit_area_historic (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('f6c5e31a-8cbe-4e0d-953c-5bb91c6139ea', '43959af6-30fd-4404-9137-d6ccc60a851c', 'officialArea', 25626.00, '0228d062-6938-4141-9ab9-d4d96609ed84', 1, 'i', 'test', '2015-03-20 13:10:49.42', '2015-03-20 13:11:03.616');


ALTER TABLE ba_unit_area_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4251 (class 0 OID 380101)
-- Dependencies: 286
-- Data for Name: ba_unit_as_party; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_as_party DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_as_party ENABLE TRIGGER ALL;

--
-- TOC entry 4249 (class 0 OID 380084)
-- Dependencies: 284
-- Data for Name: ba_unit_contains_spatial_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_contains_spatial_unit DISABLE TRIGGER ALL;

INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('d7aca424-3e8c-4d32-941e-6397d436935d', 'a7ea6158-58b8-46b7-ad9e-aa45528f9031', '74d12022-66e4-4ec2-8bf0-106241f7e522', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', '76f6ce2e-e488-461c-a3cb-a6905bc3b02b', 'ad93e232-d5bd-45c7-874a-2663cee5dd59', 1, 'i', 'test', '2015-03-20 09:53:40.55');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('8c3efbe3-0665-485f-b578-110d988bc859', 'ca3bb6db-e567-4ca9-a253-b2332eb6a77e', '9e44e567-c1d7-4e47-bad1-445fb4ed4181', 1, 'i', 'test', '2015-03-20 09:55:10.292');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6355cd66-cb44-4f77-a9b1-51de83138c6a', '1e9452cd-9d6a-48cc-96a3-82ae539aaf57', '0ea348f7-771a-4a17-a41b-942d9720bc5b', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a7604bbe-e74f-4d7a-a537-97ed25be0e0f', 'eefd5aef-14e7-4ab3-9614-da2fa225c35b', '16c58b58-70b4-406e-a02e-e0bb9519e1c3', 1, 'i', 'test', '2015-03-20 09:58:14.363');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b3eb0b83-a72e-4b6b-82d2-a337df52abbc', 'd9e0d9eb-c559-4743-bc7e-f721e7545d33', '4b118bc8-00e9-4d4d-b4a4-8501597b72b8', 1, 'i', 'test', '2015-03-20 09:59:37.88');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1e36e4c6-3e38-483c-8a8d-93889e5cf99f', '58e7dbc2-dd81-43b2-99f8-6e88ec6b5094', '4c8d0e34-5a16-43b8-8329-23546c55fb6d', 1, 'i', 'test', '2015-03-20 10:01:41.937');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('92040027-b300-4390-ba4b-576bfe2e2be1', 'b9288f48-191c-4c70-aa9d-c6cef2d0f15a', '2d751023-83e8-4568-a7ae-ab8095893e0a', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('af5958cf-9e86-4053-8412-ddb3f523818f', '8090bafa-af02-43f8-a2f2-e035451df3a5', '27585ec9-a73d-4ad1-8331-4115a3e552f6', 1, 'i', 'test', '2015-03-20 10:05:28.263');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6c0111b4-8479-495d-aef8-978f8d0fc5ff', 'ea7f18e0-7067-423f-a423-71ee2a2e3c00', 'd2652ee1-e23c-4844-9321-ea6e4e0525ea', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('791492f2-bc32-4cd4-8561-2764e356b1e2', 'b82b977f-1280-44d7-b10c-7df11e041175', 'eae22e45-23b3-4faf-a8ef-84334a45364f', 1, 'i', 'test', '2015-03-20 10:09:33.001');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('af005a16-aa6c-4f9c-89f0-b335defbd260', '646d9c37-4e73-4fe4-ba02-e4b186e563da', 'a85197a7-5aae-4558-9875-863cb76c4c5d', 1, 'i', 'test', '2015-03-20 10:10:58.384');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('598d644e-79e9-42b7-99a6-61b149e3de71', '09bd9b17-4c7b-4f4b-a7d0-d78bbe217757', '10448a1d-5ee9-4167-bb6a-3e6e6e239230', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5e7ae8c3-113f-4e4d-9d9c-fc75bc27e573', '4e52522c-d702-4920-a8dc-7e3b33a34598', '284fc74f-e2ba-4759-af10-ee0bbdbf308a', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('0df05768-dbbb-413a-80ef-1663bf938fa5', 'f104fbd0-64df-46b3-aef7-8b6dfebaec63', '616adfea-b713-46c4-a000-f50700680456', 1, 'i', 'test', '2015-03-20 10:15:44.199');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('43bfc53a-edae-4b32-a327-089f09c45228', '2081a34c-b38b-4856-82bc-b7b48981f33d', 'd65dd91b-a152-4c38-aa47-4bf68cf4ab56', 1, 'i', 'test', '2015-03-20 10:17:26.46');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('39c27970-c4b7-475d-8d0f-a43baaaaf70f', '71792c90-6ca7-4598-bd85-b2dbb9dba4f6', 'f5ab64ca-63a7-4e01-bd52-48f475881952', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('10ddc586-91cd-4aed-896b-4642a6549520', '5dd42c58-e5da-4927-9e75-d1220bdfbfba', '46d5b7b2-568a-492f-ba12-35c897632173', 1, 'i', 'test', '2015-03-20 10:20:10.412');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('9888dbe4-8b62-46f3-8077-2975a4807fc5', '9742f746-9537-4726-a9bb-eb6756f2cf09', '94b20d24-d4cb-4dd3-ac2d-52d2791a1a02', 1, 'i', 'test', '2015-03-20 10:21:23.365');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('104fb950-2d9f-4407-86e3-9191489f0071', 'acdc303a-1f03-4e98-aafc-5b84144fa4cd', '9c8671ec-d6be-4e39-9228-99234d083af0', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e6263205-b4bd-4826-ab98-6206abac0857', '7ede0350-487a-4d55-b36f-1deeda985c7c', 'c54a72a5-9b64-424b-ae98-022d07cfe468', 1, 'i', 'test', '2015-03-20 13:09:06.394');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('43959af6-30fd-4404-9137-d6ccc60a851c', '5be27d4a-71f5-4c5a-84ab-605b182095e2', '98169692-6457-4428-8916-50369a2a2f7d', 1, 'i', 'test', '2015-03-20 13:10:49.166');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('193732ab-dee3-4d72-aad6-a12434f079ec', 'a8daa101-317a-494d-a385-1d807e05c3ea', '57d5037e-7777-43e2-bd35-386b176e5b30', 1, 'i', 'test', '2015-03-20 13:12:24.695');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('61b393dc-065a-4929-b9ca-282d0a841b63', '231141dc-9108-41fa-9058-020ad8b4f8c3', '5e57a304-d0ab-485d-af11-56c62a1a0d15', 1, 'i', 'test', '2015-03-20 13:13:52.943');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('9b1f0aeb-9a01-4b9b-ac78-152d32b60ef0', '141e6bdc-f632-4f38-a581-8ca92ce921a2', '2b1bcf5f-3489-421c-b00a-38824035d5cc', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('61c90c9b-2561-421d-b5d6-541453eccf31', '1f3b66ad-1af7-40a6-a996-858224aeab45', 'eb6ebde5-ad42-4740-8ea5-9b0192f66f59', 1, 'i', 'test', '2015-03-20 13:43:18.11');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('52ad43aa-5d9e-4353-be7f-200e1f3c31cb', 'b71eacca-eac6-45d4-a6b2-6ffb6dd4082c', '2810dccd-98e6-47f8-a667-47c8ce4f811f', 1, 'i', 'test', '2015-03-20 13:44:44.599');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('cb2a492b-5dde-4619-aeb1-39151a211b2c', '23f2da89-1c8b-496e-b462-ccf65d988ec6', 'fdf9acb5-17f5-4a0a-b387-5a97320571d5', 1, 'i', 'test', '2015-03-20 13:46:09.267');
INSERT INTO ba_unit_contains_spatial_unit (ba_unit_id, spatial_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('58f0e7b7-4170-4cb5-a4b2-e0986322719f', 'df1d8234-2400-47e2-8683-d47379b7c548', 'fd779f9a-0e5e-4416-a411-5cfd3bcbca57', 1, 'i', 'test', '2015-03-20 13:47:32.323');


ALTER TABLE ba_unit_contains_spatial_unit ENABLE TRIGGER ALL;

--
-- TOC entry 4250 (class 0 OID 380095)
-- Dependencies: 285
-- Data for Name: ba_unit_contains_spatial_unit_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_contains_spatial_unit_historic DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_contains_spatial_unit_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4284 (class 0 OID 0)
-- Dependencies: 202
-- Name: ba_unit_first_name_part_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('ba_unit_first_name_part_seq', 1, false);


--
-- TOC entry 4235 (class 0 OID 379782)
-- Dependencies: 257
-- Data for Name: ba_unit_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_historic DISABLE TRIGGER ALL;

INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'pending', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 1, 'i', 'test', '2015-03-20 09:53:40.55', '2015-03-20 11:11:25.335', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, NULL);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 2, 'u', 'test', '2015-03-20 11:11:25.335', '2015-03-20 11:12:05.487', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, NULL);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 3, 'u', 'test', '2015-03-20 11:12:05.487', '2015-03-20 11:13:11.633', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 4, 'u', 'test', '2015-03-20 11:13:11.633', '2015-03-20 11:52:42.724', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 5, 'u', 'test', '2015-03-20 11:52:42.724', '2015-03-20 11:54:50.456', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 6, 'u', 'test', '2015-03-20 11:54:50.456', '2015-03-20 11:59:28.149', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 7, 'u', 'test', '2015-03-20 11:59:28.149', '2015-03-20 12:01:31.22', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 8, 'u', 'test', '2015-03-20 12:01:31.22', '2015-03-20 12:02:09.682', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 9, 'u', 'test', '2015-03-20 12:02:09.682', '2015-03-20 12:04:39.137', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('8c3efbe3-0665-485f-b578-110d988bc859', 'basicPropertyUnit', NULL, '21', NULL, NULL, 'pending', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '0f55d0a8-6cd1-4db8-bc9f-3eabb10844d7', 1, 'i', 'test', '2015-03-20 09:55:10.292', '2015-03-20 12:10:44.533', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('8c3efbe3-0665-485f-b578-110d988bc859', 'basicPropertyUnit', NULL, '21', NULL, NULL, 'current', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '0f55d0a8-6cd1-4db8-bc9f-3eabb10844d7', 2, 'u', 'test', '2015-03-20 12:10:44.533', '2015-03-20 12:11:05.11', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, NULL);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 10, 'u', 'test', '2015-03-20 12:04:39.137', '2015-03-20 12:11:05.11', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('8c3efbe3-0665-485f-b578-110d988bc859', 'basicPropertyUnit', NULL, '21', NULL, NULL, 'current', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '0f55d0a8-6cd1-4db8-bc9f-3eabb10844d7', 3, 'u', 'test', '2015-03-20 12:11:05.11', '2015-03-20 12:12:38.495', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road', 1, 60300);
INSERT INTO ba_unit_historic (id, type_code, name, name_firstpart, creation_date, expiration_date, status_code, transaction_id, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, name_lastpart, is_not_developed, years_for_dev, value_to_imp, term, land_use_code, location, floors_number, ground_rent) VALUES ('3541fc82-5183-4215-a03a-cc685519bdde', 'basicPropertyUnit', NULL, '22', NULL, NULL, 'current', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'e013e4a5-08f6-4431-b780-98a413ca3fab', 11, 'u', 'test', '2015-03-20 12:11:05.11', '2015-03-20 12:12:38.495', 'Ponui/NW1/WR1', true, NULL, NULL, 99, 'res_home', 'benthall road 22', 1, 38484);


ALTER TABLE ba_unit_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4285 (class 0 OID 0)
-- Dependencies: 203
-- Name: ba_unit_last_name_part_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('ba_unit_last_name_part_seq', 1, false);


--
-- TOC entry 4248 (class 0 OID 379899)
-- Dependencies: 270
-- Data for Name: ba_unit_rel_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_rel_type DISABLE TRIGGER ALL;


ALTER TABLE ba_unit_rel_type ENABLE TRIGGER ALL;

--
-- TOC entry 4260 (class 0 OID 380192)
-- Dependencies: 296
-- Data for Name: ba_unit_target; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_target DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_target ENABLE TRIGGER ALL;

--
-- TOC entry 4261 (class 0 OID 380203)
-- Dependencies: 297
-- Data for Name: ba_unit_target_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_target_historic DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_target_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4269 (class 0 OID 381817)
-- Dependencies: 366
-- Data for Name: dispute_category; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_category DISABLE TRIGGER ALL;



ALTER TABLE dispute_category ENABLE TRIGGER ALL;

--
-- TOC entry 4275 (class 0 OID 381879)
-- Dependencies: 372
-- Data for Name: dispute_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_type DISABLE TRIGGER ALL;


ALTER TABLE dispute_type ENABLE TRIGGER ALL;

--
-- TOC entry 4267 (class 0 OID 381789)
-- Dependencies: 364
-- Data for Name: dispute; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute DISABLE TRIGGER ALL;



ALTER TABLE dispute ENABLE TRIGGER ALL;

--
-- TOC entry 4276 (class 0 OID 381889)
-- Dependencies: 373
-- Data for Name: other_authorities; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE other_authorities DISABLE TRIGGER ALL;



ALTER TABLE other_authorities ENABLE TRIGGER ALL;

--
-- TOC entry 4270 (class 0 OID 381827)
-- Dependencies: 367
-- Data for Name: dispute_comments; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_comments DISABLE TRIGGER ALL;



ALTER TABLE dispute_comments ENABLE TRIGGER ALL;

--
-- TOC entry 4271 (class 0 OID 381844)
-- Dependencies: 368
-- Data for Name: dispute_comments_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_comments_historic DISABLE TRIGGER ALL;



ALTER TABLE dispute_comments_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4268 (class 0 OID 381808)
-- Dependencies: 365
-- Data for Name: dispute_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_historic DISABLE TRIGGER ALL;



ALTER TABLE dispute_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4286 (class 0 OID 0)
-- Dependencies: 363
-- Name: dispute_nr_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('dispute_nr_seq', 1, false);


--
-- TOC entry 4272 (class 0 OID 381853)
-- Dependencies: 369
-- Data for Name: dispute_party; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_party DISABLE TRIGGER ALL;



ALTER TABLE dispute_party ENABLE TRIGGER ALL;

--
-- TOC entry 4273 (class 0 OID 381862)
-- Dependencies: 370
-- Data for Name: dispute_party_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_party_historic DISABLE TRIGGER ALL;



ALTER TABLE dispute_party_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4279 (class 0 OID 381914)
-- Dependencies: 376
-- Data for Name: dispute_role_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_role_type DISABLE TRIGGER ALL;



ALTER TABLE dispute_role_type ENABLE TRIGGER ALL;

--
-- TOC entry 4274 (class 0 OID 381868)
-- Dependencies: 371
-- Data for Name: dispute_status; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_status DISABLE TRIGGER ALL;



ALTER TABLE dispute_status ENABLE TRIGGER ALL;

--
-- TOC entry 4262 (class 0 OID 380740)
-- Dependencies: 343
-- Data for Name: lease_condition; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE condition_type DISABLE TRIGGER ALL;



ALTER TABLE condition_type ENABLE TRIGGER ALL;

--
-- TOC entry 4239 (class 0 OID 379821)
-- Dependencies: 261
-- Data for Name: mortgage_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE mortgage_type DISABLE TRIGGER ALL;



ALTER TABLE mortgage_type ENABLE TRIGGER ALL;

--
-- TOC entry 4233 (class 0 OID 379572)
-- Dependencies: 236
-- Data for Name: rrr_group_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_group_type DISABLE TRIGGER ALL;



ALTER TABLE rrr_group_type ENABLE TRIGGER ALL;

--
-- TOC entry 4232 (class 0 OID 379560)
-- Dependencies: 235
-- Data for Name: rrr_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_type DISABLE TRIGGER ALL;


ALTER TABLE rrr_type ENABLE TRIGGER ALL;


--
-- TOC entry 4237 (class 0 OID 379802)
-- Dependencies: 259
-- Data for Name: rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr DISABLE TRIGGER ALL;

INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bfd1f9fd-6f49-4bdb-9603-59b272b45e13', 'd7aca424-3e8c-4d32-941e-6397d436935d', '150320-0001', 'ownership', 'pending', true, '9853faec-11b4-410a-b4a6-288ad7a476b3', '2015-03-20 09:23:25.293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c730046a-b538-4e53-8c77-d1f42fce7cba', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b194d226-8d3f-48a8-9e8b-26bce88f4d69', '6355cd66-cb44-4f77-a9b1-51de83138c6a', '150320-0007', 'ownership', 'pending', true, '0be3b7ec-ffa5-4c1b-ac27-2ee62de60b9b', '2015-03-20 09:56:23.068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '323a8ae9-083b-450f-a618-71bdbcb4ad22', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a3690d96-4476-4fa8-8258-55a5900836e1', 'a7604bbe-e74f-4d7a-a537-97ed25be0e0f', '150320-0009', 'ownership', 'pending', true, '5ee4698b-03e8-4b17-8650-f0a46cafb409', '2015-03-20 09:58:08.369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24e7ece2-8c5f-4f5c-a2d7-c41c0ae579fc', 1, 'i', 'test', '2015-03-20 09:58:14.363');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2597f592-5e12-4ebe-8327-9cd436b9aeaf', 'b3eb0b83-a72e-4b6b-82d2-a337df52abbc', '150320-0011', 'ownership', 'pending', true, 'c06cef2b-db46-4c06-9cb7-1635d40c9ee0', '2015-03-20 09:59:31.875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c3d132a0-7d54-42fb-8501-0b02ddfd3c45', 1, 'i', 'test', '2015-03-20 09:59:37.88');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bd4dc8d6-b28f-4e91-a0b3-9dc6237692eb', '1e36e4c6-3e38-483c-8a8d-93889e5cf99f', '150320-0013', 'ownership', 'pending', true, '139ef9d1-aac5-4cdd-b189-c9be15ac3632', '2015-03-20 10:01:25.054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9fc655dc-1d57-43b3-9b1d-546e2429896f', 1, 'i', 'test', '2015-03-20 10:01:41.937');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('aec344ab-bb18-4d7a-88e3-b2daf0022dac', '92040027-b300-4390-ba4b-576bfe2e2be1', '150320-0015', 'ownership', 'pending', true, '7de20f23-efe1-421a-9967-0518d523719e', '2015-03-20 10:02:41.782', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4653209e-6e86-4aae-bb3f-d6479b039df2', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c5055fe3-325d-4fec-afa1-8b5293f9b20c', 'af5958cf-9e86-4053-8412-ddb3f523818f', '150320-0017', 'ownership', 'pending', true, 'ce598378-329b-43ad-9f04-6ab8162f626c', '2015-03-20 10:05:22.054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '872e0d23-7143-48b0-9ff5-f1813584a85f', 1, 'i', 'test', '2015-03-20 10:05:28.263');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('94dff9d6-3ee8-4fe4-aa0f-2f419bc748bc', '6c0111b4-8479-495d-aef8-978f8d0fc5ff', '150320-0019', 'ownership', 'pending', true, '103a09f0-8eba-47af-ab70-6d54501ed243', '2015-03-20 10:07:22.49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5556383c-c98b-43a0-8f53-23f9d4e640d4', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a84e07ee-9771-461f-84a0-7c366b85abe7', '791492f2-bc32-4cd4-8561-2764e356b1e2', '150320-0021', 'ownership', 'pending', true, '10088388-8882-47c6-a0fb-0a46d3535a97', '2015-03-20 10:09:25.328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5796ca14-739f-425d-9aa3-ab388594125e', 1, 'i', 'test', '2015-03-20 10:09:33.001');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5b0be49b-3521-43f4-b818-587d42287a14', 'af005a16-aa6c-4f9c-89f0-b335defbd260', '150320-0023', 'ownership', 'pending', true, '357b71d0-a298-4a34-a5c9-7d58cd378855', '2015-03-20 10:10:50.516', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'efb58509-ac8b-41f2-9595-af35e97bf7e0', 1, 'i', 'test', '2015-03-20 10:10:58.384');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('40d8c4a1-30e7-4cd7-b9d9-f5d6af249e79', '598d644e-79e9-42b7-99a6-61b149e3de71', '150320-0025', 'ownership', 'pending', true, '44930f80-9741-4259-ac1d-ca4df61db2d4', '2015-03-20 10:12:32.232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07a48619-98d1-447d-9e16-3c309db0ebcb', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a4d9e951-aa2e-4380-8205-27fd78972666', '5e7ae8c3-113f-4e4d-9d9c-fc75bc27e573', '150320-0027', 'ownership', 'pending', true, '031d9fdf-5096-4477-a81e-4bcb431044a2', '2015-03-20 10:13:56.678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '512f6025-ec5a-40c9-b990-df2972bedc6b', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('527cf656-8cbd-4b2e-afc4-02f17e0937a7', '0df05768-dbbb-413a-80ef-1663bf938fa5', '150320-0029', 'ownership', 'pending', true, '286c52f6-0a9e-4bb2-a64e-0dc36b6f7b04', '2015-03-20 10:15:37.514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55f52fd0-f687-4b0e-9a56-eec1127c9b96', 1, 'i', 'test', '2015-03-20 10:15:44.199');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('15f67766-d8ba-469b-93ec-781242b4ad35', '43bfc53a-edae-4b32-a327-089f09c45228', '150320-0031', 'ownership', 'pending', true, '7cd29919-b08b-40fe-ad53-8b4a9bb0a605', '2015-03-20 10:17:18.048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ea949ee6-fb23-4a35-86f6-8dcaa12205a8', 1, 'i', 'test', '2015-03-20 10:17:26.46');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4bc39561-f80f-46d6-9a43-9162bedcbe4f', '39c27970-c4b7-475d-8d0f-a43baaaaf70f', '150320-0033', 'ownership', 'pending', true, 'd8719adc-e638-449e-b82a-a86d928b23f8', '2015-03-20 10:18:27.298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50f94f5e-1866-4e15-a507-3c6632784333', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e31f3f3c-1bcd-4b14-ae6c-e2ceb6adbf5e', '10ddc586-91cd-4aed-896b-4642a6549520', '150320-0035', 'ownership', 'pending', true, '8670b6b4-ed63-4595-9603-1696607da8e7', '2015-03-20 10:20:04.391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9f5356d4-fb24-487e-b83a-550a8e23ab2b', 1, 'i', 'test', '2015-03-20 10:20:10.412');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('083491c0-01a7-4d13-b5fd-a4848964a7ff', '9888dbe4-8b62-46f3-8077-2975a4807fc5', '150320-0037', 'ownership', 'pending', true, 'dc094b53-9376-41ad-8a68-227ab7ff62ed', '2015-03-20 10:21:16.421', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91ea5d13-35d8-4a4f-b1bb-f12ad2ff64f2', 1, 'i', 'test', '2015-03-20 10:21:23.365');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7d0ad3d0-e9ea-418a-9076-a06c54a36d13', '104fb950-2d9f-4407-86e3-9191489f0071', '150320-0039', 'ownership', 'pending', true, '3a0d822d-75f0-4778-aecd-482bf96307e8', '2015-03-20 10:22:33.07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65a14264-361c-44fe-a0e4-0f72a151dec0', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('57def446-61da-4f14-adb0-cf570e1e15ab', '3541fc82-5183-4215-a03a-cc685519bdde', '150320-0003', 'ownership', 'current', true, 'bc241354-b547-4f2d-935b-2d7a09f2d801', '2015-03-20 09:53:34.021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45fd17c8-88ab-4cd1-93b8-26f51651c5ae', 2, 'u', 'test', '2015-03-20 11:11:25.335');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1687651d-625c-4c71-a0e2-1e3c29c44d1f', '8c3efbe3-0665-485f-b578-110d988bc859', '150320-0005', 'ownership', 'current', true, 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '2015-03-20 09:55:02.281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3e47c0bd-20dc-4453-ad06-a0e8d7f1263a', 2, 'u', 'test', '2015-03-20 12:10:44.533');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('06b49421-3c7a-4745-94b3-fcae7c050819', 'e6263205-b4bd-4826-ab98-6206abac0857', '150320-0041', 'ownership', 'pending', true, '9c352a1d-85c4-4e82-9994-7c51d5ac385a', '2015-03-20 13:08:58.481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0905225d-1098-4823-8314-8f9334078532', 1, 'i', 'test', '2015-03-20 13:09:06.394');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', '43959af6-30fd-4404-9137-d6ccc60a851c', '150320-0043', 'ownership', 'pending', true, '2773d44e-d171-4553-bdd0-6fa5d52126c8', '2015-03-20 13:10:22.885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60e3a2e2-263b-47cb-b6a7-06d9c9e9cfe7', 2, 'u', 'test', '2015-03-20 13:11:02.952');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6ff5ee9a-733f-44bf-bd4a-92ec325b36dc', '193732ab-dee3-4d72-aad6-a12434f079ec', '150320-0045', 'ownership', 'pending', true, '58d67c7b-c53a-4041-a738-7d56a0c40bd3', '2015-03-20 13:12:18.247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2e09f605-36fa-4a0b-b5ca-805c01f9d83f', 1, 'i', 'test', '2015-03-20 13:12:24.695');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('65b30186-0599-46d0-a0d6-53922aed1a78', '61b393dc-065a-4929-b9ca-282d0a841b63', '150320-0047', 'ownership', 'pending', true, '6835b0cf-98ef-4f87-b41c-ef5a52a0536a', '2015-03-20 13:13:46.816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'df4f2ab0-0a9d-4c96-b2a1-a7e4d00d2725', 1, 'i', 'test', '2015-03-20 13:13:52.943');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('491d2936-c04b-4cbc-a509-68869974483b', '9b1f0aeb-9a01-4b9b-ac78-152d32b60ef0', '150320-0049', 'ownership', 'pending', true, '52c39b3c-e365-4c44-a11c-916ff3fe250e', '2015-03-20 13:15:44.252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50bf31c6-2e9c-489f-8d04-640e3620fe7a', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b836f3d3-d584-49a2-b107-a1dce308994d', '61c90c9b-2561-421d-b5d6-541453eccf31', '150320-0051', 'ownership', 'pending', true, '2caf07e7-4319-47d8-b717-1dd754bb636e', '2015-03-20 13:43:10.019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6a2d9844-678c-46c1-bd1d-b86fbececa99', 1, 'i', 'test', '2015-03-20 13:43:18.11');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ec86390f-84d0-4f12-858f-d0f6612d9d76', '52ad43aa-5d9e-4353-be7f-200e1f3c31cb', '150320-0053', 'ownership', 'pending', true, '395d6e73-2b23-4116-9a2c-832a33a45983', '2015-03-20 13:44:35.245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70bbae07-0b1a-4400-a5ea-79e947522730', 1, 'i', 'test', '2015-03-20 13:44:44.599');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('df4edec3-f2ad-435d-9d04-ee7fa0ce76eb', 'cb2a492b-5dde-4619-aeb1-39151a211b2c', '150320-0055', 'ownership', 'pending', true, 'f2ca1ee7-b04f-4aa3-a52e-6909bee01a9e', '2015-03-20 13:46:04.159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cdd9bfa8-9241-47df-ad96-812716b41792', 1, 'i', 'test', '2015-03-20 13:46:09.267');
INSERT INTO rrr (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('76cec27c-e5b8-4f6f-9a82-99084a4e1710', '58f0e7b7-4170-4cb5-a4b2-e0986322719f', '150320-0057', 'ownership', 'pending', true, '45635eb7-f3b5-413f-b2f3-3490fe97d263', '2015-03-20 13:47:26.512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd40a0ecd-e548-41c7-9fd4-e6de49bcabcf', 1, 'i', 'test', '2015-03-20 13:47:32.323');


ALTER TABLE rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4263 (class 0 OID 380750)
-- Dependencies: 344
-- Data for Name: lease_condition_for_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE condition_for_rrr DISABLE TRIGGER ALL;



ALTER TABLE condition_for_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4264 (class 0 OID 380764)
-- Dependencies: 345
-- Data for Name: lease_condition_for_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE condition_for_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE condition_for_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4240 (class 0 OID 379831)
-- Dependencies: 262
-- Data for Name: mortgage_isbased_in_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE mortgage_isbased_in_rrr DISABLE TRIGGER ALL;



ALTER TABLE mortgage_isbased_in_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4241 (class 0 OID 379842)
-- Dependencies: 263
-- Data for Name: mortgage_isbased_in_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE mortgage_isbased_in_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE mortgage_isbased_in_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4252 (class 0 OID 380106)
-- Dependencies: 287
-- Data for Name: notation; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE notation DISABLE TRIGGER ALL;

INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6c15552c-6212-4c33-a56d-1b6ab1f58ad1', NULL, 'bfd1f9fd-6f49-4bdb-9603-59b272b45e13', '9853faec-11b4-410a-b4a6-288ad7a476b3', '150320-0002', 'Joint Claimants', NULL, 'pending', '4f11d244-4c33-411c-938f-035397d680e9', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b9082865-60f2-4588-a585-f24d81ddb4cb', NULL, 'b194d226-8d3f-48a8-9e8b-26bce88f4d69', '0be3b7ec-ffa5-4c1b-ac27-2ee62de60b9b', '150320-0008', 'Joint Claimants', NULL, 'pending', 'b2d1cadb-88d8-44e6-8410-3e798b5ccb58', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('19173858-1ad7-464e-9cb4-61231550b5c4', NULL, 'a3690d96-4476-4fa8-8258-55a5900836e1', '5ee4698b-03e8-4b17-8650-f0a46cafb409', '150320-0010', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'd80e4b4a-1cd0-412e-93d5-e4347806de0e', 1, 'i', 'test', '2015-03-20 09:58:14.363');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('87344b7b-1ddb-4dce-8d9a-67930f160df4', NULL, '2597f592-5e12-4ebe-8327-9cd436b9aeaf', 'c06cef2b-db46-4c06-9cb7-1635d40c9ee0', '150320-0012', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'be306a2c-d09d-41b1-a28d-a31ccbcb345c', 1, 'i', 'test', '2015-03-20 09:59:37.88');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('0ad4e652-cbb6-495d-b923-229ecd826a42', NULL, 'bd4dc8d6-b28f-4e91-a0b3-9dc6237692eb', '139ef9d1-aac5-4cdd-b189-c9be15ac3632', '150320-0014', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '27794708-cdce-497d-a854-a744e79fd420', 1, 'i', 'test', '2015-03-20 10:01:41.937');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('533909f5-c858-4e1b-8f1f-d5653628af0a', NULL, 'aec344ab-bb18-4d7a-88e3-b2daf0022dac', '7de20f23-efe1-421a-9967-0518d523719e', '150320-0016', 'Joint Claimants', NULL, 'pending', 'd4da34a9-0e9d-4b72-9e10-091c4ce50553', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e04e89fa-9aac-40e0-b16e-38b6fcf11a79', NULL, 'c5055fe3-325d-4fec-afa1-8b5293f9b20c', 'ce598378-329b-43ad-9f04-6ab8162f626c', '150320-0018', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '6c1870df-1beb-45df-8c6d-3f552019ed16', 1, 'i', 'test', '2015-03-20 10:05:28.263');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('99391544-b729-4f43-b77b-e60a0200e84d', NULL, '94dff9d6-3ee8-4fe4-aa0f-2f419bc748bc', '103a09f0-8eba-47af-ab70-6d54501ed243', '150320-0020', 'Joint Claimants', NULL, 'pending', 'f2029a43-5fd4-44be-974e-d7b13cee2dec', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1921f422-8de2-4879-a2f0-ea3cb7e675ff', NULL, 'a84e07ee-9771-461f-84a0-7c366b85abe7', '10088388-8882-47c6-a0fb-0a46d3535a97', '150320-0022', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '7c70cc46-1f4f-42bf-9f23-6c43d85a869d', 1, 'i', 'test', '2015-03-20 10:09:33.001');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('8aad79a6-ac03-4a06-a1d2-4b55c3d13fde', NULL, '5b0be49b-3521-43f4-b818-587d42287a14', '357b71d0-a298-4a34-a5c9-7d58cd378855', '150320-0024', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '7b5cc899-09f8-47c6-8db5-42afa223bb1d', 1, 'i', 'test', '2015-03-20 10:10:58.384');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a466ff92-ea50-4089-a091-a2cc636e1dfa', NULL, '40d8c4a1-30e7-4cd7-b9d9-f5d6af249e79', '44930f80-9741-4259-ac1d-ca4df61db2d4', '150320-0026', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '3bb5a302-3e50-4a87-abf8-6801ef298e37', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1d468859-de01-4c55-a60f-0b64de127e79', NULL, 'a4d9e951-aa2e-4380-8205-27fd78972666', '031d9fdf-5096-4477-a81e-4bcb431044a2', '150320-0028', 'Joint Claimants', NULL, 'pending', 'a97bcb31-ffe0-44c5-8a08-a68403d8c613', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e2cb5f4c-574f-48d9-9ec2-e2416c8d933d', NULL, '527cf656-8cbd-4b2e-afc4-02f17e0937a7', '286c52f6-0a9e-4bb2-a64e-0dc36b6f7b04', '150320-0030', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '195d0ed0-e9de-408d-a9c8-1ade93ce2b36', 1, 'i', 'test', '2015-03-20 10:15:44.199');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('76809c35-cf9d-4112-b1f3-1816191e0409', NULL, '15f67766-d8ba-469b-93ec-781242b4ad35', '7cd29919-b08b-40fe-ad53-8b4a9bb0a605', '150320-0032', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '4a61f47e-422f-4aad-88ba-a76e6772d5d1', 1, 'i', 'test', '2015-03-20 10:17:26.46');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('9b69ad79-6d7c-487e-8ff7-d8e4c86d4f50', NULL, '4bc39561-f80f-46d6-9a43-9162bedcbe4f', 'd8719adc-e638-449e-b82a-a86d928b23f8', '150320-0034', 'Joint Claimants', NULL, 'pending', 'ca8a13b4-7611-4ec4-97e2-666d9421ac57', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('8b66ccb0-c6ed-45d0-982b-4ba6caaf9fb2', NULL, 'e31f3f3c-1bcd-4b14-ae6c-e2ceb6adbf5e', '8670b6b4-ed63-4595-9603-1696607da8e7', '150320-0036', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'ea2143ff-d73a-4ccc-af9e-185df83795a7', 1, 'i', 'test', '2015-03-20 10:20:10.412');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a0d0dcb1-35b1-48b6-b5f9-16d3c12174c4', NULL, '083491c0-01a7-4d13-b5fd-a4848964a7ff', 'dc094b53-9376-41ad-8a68-227ab7ff62ed', '150320-0038', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'bafd818f-12e0-4300-a31a-81cef6cb826e', 1, 'i', 'test', '2015-03-20 10:21:23.365');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('773ccd71-a032-4b33-b4f5-f3852ab9b7f3', NULL, '7d0ad3d0-e9ea-418a-9076-a06c54a36d13', '3a0d822d-75f0-4778-aecd-482bf96307e8', '150320-0040', 'Joint Claimants', NULL, 'pending', '68a6d3d6-91b4-4ef6-9821-491c524ea3af', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('23613cf5-e643-4ed1-adb8-fbd4d55c2393', NULL, '57def446-61da-4f14-adb0-cf570e1e15ab', 'bc241354-b547-4f2d-935b-2d7a09f2d801', '150320-0004', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'current', '20754502-d1fe-4792-83e8-c783bd74d53d', 2, 'u', 'test', '2015-03-20 11:11:25.335');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('0152ed1a-6939-45c7-ac34-077a8c99a2ab', NULL, '1687651d-625c-4c71-a0e2-1e3c29c44d1f', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '150320-0006', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'current', '1e29e2de-6393-4bf6-abbb-e63dc3150840', 2, 'u', 'test', '2015-03-20 12:10:44.533');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('d8ed3ad8-2694-473a-b53c-4ed0ecf9080f', NULL, '06b49421-3c7a-4745-94b3-fcae7c050819', '9c352a1d-85c4-4e82-9994-7c51d5ac385a', '150320-0042', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'dbb0592e-6721-43d3-8169-56fbf329f2f1', 1, 'i', 'test', '2015-03-20 13:09:06.394');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('8283e3ff-7cf8-4565-bb5c-5f071b382bbb', NULL, 'e29aaaab-caab-4322-8fe4-f82547657ec2', '2773d44e-d171-4553-bdd0-6fa5d52126c8', '150320-0044', 'Joint Claimants', NULL, 'pending', '87c426f9-87a1-4e07-a888-aa9795a4d864', 1, 'i', 'test', '2015-03-20 13:10:49.166');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('58111e08-50b7-4490-b253-9cc71e7c3cb2', NULL, '6ff5ee9a-733f-44bf-bd4a-92ec325b36dc', '58d67c7b-c53a-4041-a738-7d56a0c40bd3', '150320-0046', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '3f46c9e9-f57e-472f-a44d-6f2d43a95a13', 1, 'i', 'test', '2015-03-20 13:12:24.695');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('997cab81-c4ed-4a9e-a3f1-21505be5b5b5', NULL, '65b30186-0599-46d0-a0d6-53922aed1a78', '6835b0cf-98ef-4f87-b41c-ef5a52a0536a', '150320-0048', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'b93dfbc1-a384-4296-abd5-f5d515f77a16', 1, 'i', 'test', '2015-03-20 13:13:52.943');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('46adf88f-8462-4c15-a7ae-407623e14332', NULL, '491d2936-c04b-4cbc-a509-68869974483b', '52c39b3c-e365-4c44-a11c-916ff3fe250e', '150320-0050', 'Joint Claimants', NULL, 'pending', '655f31cf-09e5-4dd2-b5c8-ef1dca58835c', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a543ae62-9896-476d-8613-be24bcb8b2ab', NULL, 'b836f3d3-d584-49a2-b107-a1dce308994d', '2caf07e7-4319-47d8-b717-1dd754bb636e', '150320-0052', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'f6ac808c-a3da-40b5-8514-d4b0e9c81115', 1, 'i', 'test', '2015-03-20 13:43:18.11');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('162737cc-eaa0-4472-96f2-61b9f9976347', NULL, 'ec86390f-84d0-4f12-858f-d0f6612d9d76', '395d6e73-2b23-4116-9a2c-832a33a45983', '150320-0054', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'b974bd58-a1ea-428d-91fc-4a87211e2611', 1, 'i', 'test', '2015-03-20 13:44:44.599');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c69881fc-f41b-4074-bc51-fa3ad35c50e9', NULL, 'df4edec3-f2ad-435d-9d04-ee7fa0ce76eb', 'f2ca1ee7-b04f-4aa3-a52e-6909bee01a9e', '150320-0056', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', 'f948373d-2036-4143-934b-22b89e89d4c6', 1, 'i', 'test', '2015-03-20 13:46:09.267');
INSERT INTO notation (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e271ddcd-8bbb-4c7b-80c0-672b309e5382', NULL, '76cec27c-e5b8-4f6f-9a82-99084a4e1710', '45635eb7-f3b5-413f-b2f3-3490fe97d263', '150320-0058', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '2108656f-be52-4d1b-86d4-f3077b2acda6', 1, 'i', 'test', '2015-03-20 13:47:32.323');


ALTER TABLE notation ENABLE TRIGGER ALL;

--
-- TOC entry 4253 (class 0 OID 380121)
-- Dependencies: 288
-- Data for Name: notation_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE notation_historic DISABLE TRIGGER ALL;

INSERT INTO notation_historic (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('23613cf5-e643-4ed1-adb8-fbd4d55c2393', NULL, '57def446-61da-4f14-adb0-cf570e1e15ab', 'bc241354-b547-4f2d-935b-2d7a09f2d801', '150320-0004', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '20754502-d1fe-4792-83e8-c783bd74d53d', 1, 'i', 'test', '2015-03-20 09:53:40.55', '2015-03-20 11:11:25.335');
INSERT INTO notation_historic (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('0152ed1a-6939-45c7-ac34-077a8c99a2ab', NULL, '1687651d-625c-4c71-a0e2-1e3c29c44d1f', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '150320-0006', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '1e29e2de-6393-4bf6-abbb-e63dc3150840', 1, 'i', 'test', '2015-03-20 09:55:10.292', '2015-03-20 12:10:44.533');


ALTER TABLE notation_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 201
-- Name: notation_reference_nr_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('notation_reference_nr_seq', 1, false);


--
-- TOC entry 4256 (class 0 OID 380158)
-- Dependencies: 292
-- Data for Name: rrr_share; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_share DISABLE TRIGGER ALL;

INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bfd1f9fd-6f49-4bdb-9603-59b272b45e13', '1caeb995-b802-47d0-b4ba-520d1982b2b4', 1, 1, '2416b059-2d08-4ecc-b8f4-22e6ba30c860', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('57def446-61da-4f14-adb0-cf570e1e15ab', 'ed1006b1-b8f6-4197-bcd3-48df768bbed3', 1, 1, 'a1b21438-cd9d-427f-a086-cce8c66fd03b', 1, 'i', 'test', '2015-03-20 09:53:40.55');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1687651d-625c-4c71-a0e2-1e3c29c44d1f', '3620d171-775f-4bb8-a02f-7118aaa2bd84', 1, 1, 'b87f22dd-a1cc-44b3-8969-8c2e56beb2ba', 1, 'i', 'test', '2015-03-20 09:55:10.292');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b194d226-8d3f-48a8-9e8b-26bce88f4d69', 'ce0de972-0041-47c2-87f4-fc1bb72d871a', 1, 1, '3fb0f8c1-3a48-4737-a6a0-08bca9acb333', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a3690d96-4476-4fa8-8258-55a5900836e1', 'c72592d8-bbd1-48c3-b47b-eefa0985dd50', 1, 1, '47ea2ddd-3782-4d36-888e-591cd11b4a6b', 1, 'i', 'test', '2015-03-20 09:58:14.363');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2597f592-5e12-4ebe-8327-9cd436b9aeaf', '1bd1b4cc-7ca6-4486-a63a-288f9fb89bee', 1, 1, '2640e53c-ba4b-4c45-8af4-2edada993559', 1, 'i', 'test', '2015-03-20 09:59:37.88');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bd4dc8d6-b28f-4e91-a0b3-9dc6237692eb', '1d251199-a120-4ceb-b539-19c15214ee9f', 1, 1, '8832c2af-272f-4393-b692-a590e10c2699', 1, 'i', 'test', '2015-03-20 10:01:41.937');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('aec344ab-bb18-4d7a-88e3-b2daf0022dac', '430b5f8e-af82-4823-a6fa-ceaf985b1e55', 1, 1, 'fa99e942-be18-40d2-9b0b-77ded1d07b71', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c5055fe3-325d-4fec-afa1-8b5293f9b20c', '7f3cd1db-291c-4c7b-ba45-ddfe06b74ba9', 1, 1, 'dacc9257-afa5-4655-8a88-c6be4f2acada', 1, 'i', 'test', '2015-03-20 10:05:28.263');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('94dff9d6-3ee8-4fe4-aa0f-2f419bc748bc', 'cd61dc37-ca22-487a-8542-bbcadac63d28', 1, 1, '7c84e4e6-ba03-43c3-a773-062a1e4ca8d1', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a84e07ee-9771-461f-84a0-7c366b85abe7', '88305cbd-f2f1-4455-9da8-2425396ff980', 1, 1, '4db87c96-422c-4f22-99ee-8b468e0f2d02', 1, 'i', 'test', '2015-03-20 10:09:33.001');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5b0be49b-3521-43f4-b818-587d42287a14', '3c3710f5-01df-4e01-955f-f7c330eda0c4', 1, 1, 'd2820abb-7a9f-4f2e-80ac-3625417e4224', 1, 'i', 'test', '2015-03-20 10:10:58.384');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('40d8c4a1-30e7-4cd7-b9d9-f5d6af249e79', '0ba4867e-8978-4b84-905f-153dfae7aa38', 1, 1, '35f72f41-6050-45b1-af60-a73c8c495849', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a4d9e951-aa2e-4380-8205-27fd78972666', '93bd35b4-4660-4eb0-b4bf-6b1766928cc2', 1, 1, 'f1623ae1-3843-4db3-b941-90c9a5c3fca3', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('527cf656-8cbd-4b2e-afc4-02f17e0937a7', 'f1f8b030-7534-4b92-a813-3129fa56350a', 1, 1, '13f165c9-6fde-4c16-9c3d-ff1e3b744b0b', 1, 'i', 'test', '2015-03-20 10:15:44.199');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('15f67766-d8ba-469b-93ec-781242b4ad35', '648678df-908e-4dad-bbaa-d3801571b3e3', 1, 1, '143b9d5c-66ad-43bc-9a46-0368dc2e12d7', 1, 'i', 'test', '2015-03-20 10:17:26.46');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4bc39561-f80f-46d6-9a43-9162bedcbe4f', 'c018cc8e-516a-4794-af02-2533c8d70fa2', 1, 1, 'bda3c6d9-e236-4649-b4cd-cf9a3ebd9fca', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e31f3f3c-1bcd-4b14-ae6c-e2ceb6adbf5e', 'f1ab0255-7af0-49dd-80f1-642f87e365d1', 1, 1, 'bbd87e20-c435-4cab-bc26-de0b91638b03', 1, 'i', 'test', '2015-03-20 10:20:10.412');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('083491c0-01a7-4d13-b5fd-a4848964a7ff', '243fffef-298a-4143-a828-a6bacba0ba5b', 1, 1, 'f8640f8a-f59f-4189-ad89-206dc5feb2f8', 1, 'i', 'test', '2015-03-20 10:21:23.365');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7d0ad3d0-e9ea-418a-9076-a06c54a36d13', '2a7441f7-ba90-4bce-a59f-4e659cb3a9a8', 1, 1, '81b9982f-7de1-4fa8-9296-0d57c3a7e581', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('06b49421-3c7a-4745-94b3-fcae7c050819', '08a2a42b-dd9c-43e3-a0b0-ee84db1336cc', 1, 1, '5f729d02-eed1-4410-bde3-2f01d337c9d2', 1, 'i', 'test', '2015-03-20 13:09:06.394');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', '51f86d42-f405-4b45-90c0-d6f8b6d4a327', 1, 1, '543d1c61-9c04-4694-b13c-0b2b26de0b2e', 1, 'i', 'test', '2015-03-20 13:10:49.166');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6ff5ee9a-733f-44bf-bd4a-92ec325b36dc', '616db728-0b77-43cc-9d1d-c6af306c2cf7', 1, 1, '4e208e0d-0754-42a8-906a-2e9635236aaf', 1, 'i', 'test', '2015-03-20 13:12:24.695');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('65b30186-0599-46d0-a0d6-53922aed1a78', '36edd2e4-4bd3-4cc6-b57b-267e7e6a10ff', 1, 1, 'e35da25d-12a5-4ecb-8b7b-322fa4042059', 1, 'i', 'test', '2015-03-20 13:13:52.943');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('491d2936-c04b-4cbc-a509-68869974483b', '1bbdb950-3507-4baf-8c05-6f8a0d0facb9', 1, 1, 'cda2b79b-fa42-47b3-83f1-f8611625edfa', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b836f3d3-d584-49a2-b107-a1dce308994d', 'ce827a96-852b-44b1-9d11-d845f8b557db', 1, 1, '1a570d0a-9e1d-42a0-8687-79cb8f610b50', 1, 'i', 'test', '2015-03-20 13:43:18.11');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ec86390f-84d0-4f12-858f-d0f6612d9d76', 'c80511fc-a34a-4e8f-98b9-f88afc5b0ecf', 1, 1, '44d9c9f5-fc75-447b-926b-9252cc50cd80', 1, 'i', 'test', '2015-03-20 13:44:44.599');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('df4edec3-f2ad-435d-9d04-ee7fa0ce76eb', '64c840c6-40b8-444d-8a1f-9114f5503d9b', 1, 1, 'cd0bec9b-5b6a-4ceb-9733-564fa2ef4abc', 1, 'i', 'test', '2015-03-20 13:46:09.267');
INSERT INTO rrr_share (rrr_id, id, nominator, denominator, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('76cec27c-e5b8-4f6f-9a82-99084a4e1710', '02225299-82b2-4e4f-b7dc-43c7026e94a3', 1, 1, '29230fc4-e14b-4dfc-8f80-ae0aec9f6f7c', 1, 'i', 'test', '2015-03-20 13:47:32.323');


ALTER TABLE rrr_share ENABLE TRIGGER ALL;

--
-- TOC entry 4258 (class 0 OID 380175)
-- Dependencies: 294
-- Data for Name: party_for_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE party_for_rrr DISABLE TRIGGER ALL;

INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bfd1f9fd-6f49-4bdb-9603-59b272b45e13', '8178e396-6970-476b-906b-ee356b67c285', '1caeb995-b802-47d0-b4ba-520d1982b2b4', 'f386eea8-a850-459a-a6e3-40a7067dfcb0', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bfd1f9fd-6f49-4bdb-9603-59b272b45e13', '253d13b4-8d90-11e3-8a97-3f93bfd352c1', '1caeb995-b802-47d0-b4ba-520d1982b2b4', 'eb33262c-46fe-45c5-bfda-b25723e79d9d', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('57def446-61da-4f14-adb0-cf570e1e15ab', '5079476c-7c06-4c4a-82de-e3606142a10f', 'ed1006b1-b8f6-4197-bcd3-48df768bbed3', '9e887051-91d7-4614-a651-4e8e71dec8ad', 1, 'i', 'test', '2015-03-20 09:53:40.55');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1687651d-625c-4c71-a0e2-1e3c29c44d1f', 'e4fb0080-1ad2-4e79-af97-4ffcc54d51cf', '3620d171-775f-4bb8-a02f-7118aaa2bd84', '2fddf7b9-6611-4070-ad12-2332fc7d4f3a', 1, 'i', 'test', '2015-03-20 09:55:10.292');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b194d226-8d3f-48a8-9e8b-26bce88f4d69', 'e74cd717-a93d-497c-82eb-44d12fb3ac7c', 'ce0de972-0041-47c2-87f4-fc1bb72d871a', 'b7f86ea7-1a84-4e76-84cb-a911b05a910b', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b194d226-8d3f-48a8-9e8b-26bce88f4d69', '2b20a5b6-8d90-11e3-9975-8b9d82d16fcb', 'ce0de972-0041-47c2-87f4-fc1bb72d871a', '1052d1ef-e4c6-4a50-a4a1-8e182ed58585', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a3690d96-4476-4fa8-8258-55a5900836e1', '40d3253a-5602-4d08-a3da-373b1c4c7a28', 'c72592d8-bbd1-48c3-b47b-eefa0985dd50', 'abb5f09c-30dc-4ddc-8c14-bdb456dd8917', 1, 'i', 'test', '2015-03-20 09:58:14.363');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2597f592-5e12-4ebe-8327-9cd436b9aeaf', 'f05fec5a-3149-4df1-b4f7-9cd45a38be86', '1bd1b4cc-7ca6-4486-a63a-288f9fb89bee', '82212543-cb96-435d-8c32-b17dff1c3964', 1, 'i', 'test', '2015-03-20 09:59:37.88');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bd4dc8d6-b28f-4e91-a0b3-9dc6237692eb', '6dc1491f-edcc-4e4c-84b1-df5add3d1c92', '1d251199-a120-4ceb-b539-19c15214ee9f', '4afbc162-eab7-4840-81c7-121aa3adaecd', 1, 'i', 'test', '2015-03-20 10:01:41.937');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('aec344ab-bb18-4d7a-88e3-b2daf0022dac', '08106fc1-87ff-4fb7-b92c-d3a6276aa7ed', '430b5f8e-af82-4823-a6fa-ceaf985b1e55', 'ecee114a-07fd-4792-be92-4c9f8578a276', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('aec344ab-bb18-4d7a-88e3-b2daf0022dac', '25d730de-8d90-11e3-80fb-7bf49324d986', '430b5f8e-af82-4823-a6fa-ceaf985b1e55', 'cb4cf235-f458-4763-aded-2772aaec08d3', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c5055fe3-325d-4fec-afa1-8b5293f9b20c', '418f43b2-d8ce-4e07-ae82-f867e1e1829c', '7f3cd1db-291c-4c7b-ba45-ddfe06b74ba9', '780ef0cb-30bb-414e-8300-2c7abda7a21c', 1, 'i', 'test', '2015-03-20 10:05:28.263');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('94dff9d6-3ee8-4fe4-aa0f-2f419bc748bc', 'bae2dc85-e1c0-4a5c-9774-05985be9f72e', 'cd61dc37-ca22-487a-8542-bbcadac63d28', 'f34c2dd1-166f-4975-b633-79c40f8aefd9', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('94dff9d6-3ee8-4fe4-aa0f-2f419bc748bc', '2d45f6e8-8d90-11e3-ba12-67bc4656ed7a', 'cd61dc37-ca22-487a-8542-bbcadac63d28', 'efcd0396-14dd-45f1-8b49-0bd54eee4ada', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a84e07ee-9771-461f-84a0-7c366b85abe7', '0d3a1d1e-6a21-4331-9afd-0546dcfd9946', '88305cbd-f2f1-4455-9da8-2425396ff980', 'c49a3f3e-def2-4678-b310-75373a7e2c0b', 1, 'i', 'test', '2015-03-20 10:09:33.001');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5b0be49b-3521-43f4-b818-587d42287a14', 'be7d2c26-8a17-481e-96d5-269a87250e02', '3c3710f5-01df-4e01-955f-f7c330eda0c4', 'cdd21383-7f8d-4712-aec5-b8c70401dab9', 1, 'i', 'test', '2015-03-20 10:10:58.384');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('40d8c4a1-30e7-4cd7-b9d9-f5d6af249e79', '51f13f8c-bce0-416a-9ed0-fc81b642391a', '0ba4867e-8978-4b84-905f-153dfae7aa38', '59be8f8e-5106-4a88-9ef0-c7183e539445', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a4d9e951-aa2e-4380-8205-27fd78972666', 'd2d98337-5e79-4da9-9346-2c58b7a19b09', '93bd35b4-4660-4eb0-b4bf-6b1766928cc2', '89d5c5b9-5e97-4b7f-9502-cae5423cb05f', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a4d9e951-aa2e-4380-8205-27fd78972666', '309f8278-8d90-11e3-a239-07a835ac5857', '93bd35b4-4660-4eb0-b4bf-6b1766928cc2', '54591511-bb94-4ff4-a399-ea055d365a9a', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('527cf656-8cbd-4b2e-afc4-02f17e0937a7', 'b5ec8dcd-eb11-4bf3-8606-93d890db0155', 'f1f8b030-7534-4b92-a813-3129fa56350a', 'a4afd247-b56b-4316-983e-77b983cc34d4', 1, 'i', 'test', '2015-03-20 10:15:44.199');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('15f67766-d8ba-469b-93ec-781242b4ad35', '20b110d8-bd05-4fe7-ba0e-3615719db6c6', '648678df-908e-4dad-bbaa-d3801571b3e3', 'e3815971-a896-4471-a8d6-6357f73f3493', 1, 'i', 'test', '2015-03-20 10:17:26.46');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4bc39561-f80f-46d6-9a43-9162bedcbe4f', 'a8f9383f-b742-4a5f-bfab-c71ee1f8d27e', 'c018cc8e-516a-4794-af02-2533c8d70fa2', '62b9c005-a4d4-4204-bbf6-fdc5f3bce807', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4bc39561-f80f-46d6-9a43-9162bedcbe4f', '3426d4d2-8d90-11e3-ae01-d707d790a962', 'c018cc8e-516a-4794-af02-2533c8d70fa2', '6d56a2ab-9150-4222-998d-2eefcb3ee1d3', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e31f3f3c-1bcd-4b14-ae6c-e2ceb6adbf5e', 'f4cf199b-cdf1-47cf-8dfc-bbefa72ac51b', 'f1ab0255-7af0-49dd-80f1-642f87e365d1', 'a71f1b65-7c5e-4708-aec1-7d39aa03361f', 1, 'i', 'test', '2015-03-20 10:20:10.412');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('083491c0-01a7-4d13-b5fd-a4848964a7ff', 'ae82ad71-219e-4077-96c8-e7d652db7d9d', '243fffef-298a-4143-a828-a6bacba0ba5b', '1dee884f-ca21-490c-a109-b071f7f518ae', 1, 'i', 'test', '2015-03-20 10:21:23.365');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7d0ad3d0-e9ea-418a-9076-a06c54a36d13', '5a71d44b-50f3-4c32-8f74-3a8d086fa9b5', '2a7441f7-ba90-4bce-a59f-4e659cb3a9a8', 'f4743db3-7733-461c-90fa-7811ab5aa925', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7d0ad3d0-e9ea-418a-9076-a06c54a36d13', '3d162084-8d90-11e3-8b78-1fc4d4b1feda', '2a7441f7-ba90-4bce-a59f-4e659cb3a9a8', '603a184d-61a0-405a-b94d-e61297ab36c1', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('06b49421-3c7a-4745-94b3-fcae7c050819', 'd533e641-6e33-4618-980f-36268044646a', '08a2a42b-dd9c-43e3-a0b0-ee84db1336cc', '8ebd0ec9-6735-4567-87de-f13c117914aa', 1, 'i', 'test', '2015-03-20 13:09:06.394');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', 'ac3b8352-3548-47d5-ab96-2521a09f637c', '51f86d42-f405-4b45-90c0-d6f8b6d4a327', '5c96cc69-2b64-40c3-bd7a-e45594eb3547', 1, 'i', 'test', '2015-03-20 13:10:49.166');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', '34d95bfc-8d90-11e3-acca-0b5ab1668a7f', '51f86d42-f405-4b45-90c0-d6f8b6d4a327', 'c8ec460a-f8cf-446c-87d1-1a783478cc6a', 1, 'i', 'test', '2015-03-20 13:10:49.166');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6ff5ee9a-733f-44bf-bd4a-92ec325b36dc', 'f4d8a35f-f9ec-4659-abb2-d54444c7df34', '616db728-0b77-43cc-9d1d-c6af306c2cf7', 'b03edd48-f21e-4d1a-816e-1048f3dfced5', 1, 'i', 'test', '2015-03-20 13:12:24.695');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('65b30186-0599-46d0-a0d6-53922aed1a78', '0c01443c-db9d-4dd2-b99d-2b4262e07fd4', '36edd2e4-4bd3-4cc6-b57b-267e7e6a10ff', 'fa126c11-5ddd-4c14-bc8b-e4c0ba9cdb45', 1, 'i', 'test', '2015-03-20 13:13:52.943');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('491d2936-c04b-4cbc-a509-68869974483b', 'd52cb511-c52c-4f56-9281-122ced000265', '1bbdb950-3507-4baf-8c05-6f8a0d0facb9', '0849b0c5-7574-4b51-9d7d-48b4d6a3fa93', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('491d2936-c04b-4cbc-a509-68869974483b', '2ae9b736-8d90-11e3-bbfc-b3dfb95cadb4', '1bbdb950-3507-4baf-8c05-6f8a0d0facb9', 'dde266ee-ebfb-4932-a8e1-73d8e67d5b45', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b836f3d3-d584-49a2-b107-a1dce308994d', 'd066b6f8-1599-42ee-bbab-7cdcf666d196', 'ce827a96-852b-44b1-9d11-d845f8b557db', 'ddb3efec-1430-4e4a-a273-cc832f320abc', 1, 'i', 'test', '2015-03-20 13:43:18.11');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ec86390f-84d0-4f12-858f-d0f6612d9d76', '1dcbfc0f-6a75-4e7b-8131-28d7aa6da691', 'c80511fc-a34a-4e8f-98b9-f88afc5b0ecf', '80666b49-4a96-444f-8a79-e305621ca221', 1, 'i', 'test', '2015-03-20 13:44:44.599');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('df4edec3-f2ad-435d-9d04-ee7fa0ce76eb', '46470820-ae72-4d62-a92c-c236ba28362f', '64c840c6-40b8-444d-8a1f-9114f5503d9b', '10827b6a-5067-4fef-8008-20ba84c35be0', 1, 'i', 'test', '2015-03-20 13:46:09.267');
INSERT INTO party_for_rrr (rrr_id, party_id, share_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('76cec27c-e5b8-4f6f-9a82-99084a4e1710', 'b0fc5e6e-6c00-49c6-ade1-51b8745d9dda', '02225299-82b2-4e4f-b7dc-43c7026e94a3', 'b62ea018-0689-4735-96a8-964c8522db49', 1, 'i', 'test', '2015-03-20 13:47:32.323');


ALTER TABLE party_for_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4259 (class 0 OID 380186)
-- Dependencies: 295
-- Data for Name: party_for_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE party_for_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE party_for_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4246 (class 0 OID 379882)
-- Dependencies: 268
-- Data for Name: required_relationship_baunit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE required_relationship_baunit DISABLE TRIGGER ALL;



ALTER TABLE required_relationship_baunit ENABLE TRIGGER ALL;

--
-- TOC entry 4247 (class 0 OID 379893)
-- Dependencies: 269
-- Data for Name: required_relationship_baunit_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE required_relationship_baunit_historic DISABLE TRIGGER ALL;



ALTER TABLE required_relationship_baunit_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4238 (class 0 OID 379815)
-- Dependencies: 260
-- Data for Name: rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_historic DISABLE TRIGGER ALL;

INSERT INTO rrr_historic (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('57def446-61da-4f14-adb0-cf570e1e15ab', '3541fc82-5183-4215-a03a-cc685519bdde', '150320-0003', 'ownership', 'pending', true, 'bc241354-b547-4f2d-935b-2d7a09f2d801', '2015-03-20 09:53:34.021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45fd17c8-88ab-4cd1-93b8-26f51651c5ae', 1, 'i', 'test', '2015-03-20 09:53:40.55', '2015-03-20 11:11:25.335');
INSERT INTO rrr_historic (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('1687651d-625c-4c71-a0e2-1e3c29c44d1f', '8c3efbe3-0665-485f-b578-110d988bc859', '150320-0005', 'ownership', 'pending', true, 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '2015-03-20 09:55:02.281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3e47c0bd-20dc-4453-ad06-a0e8d7f1263a', 1, 'i', 'test', '2015-03-20 09:55:10.292', '2015-03-20 12:10:44.533');
INSERT INTO rrr_historic (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', '43959af6-30fd-4404-9137-d6ccc60a851c', '150320-0043', 'ownership', 'pending', true, '2773d44e-d171-4553-bdd0-6fa5d52126c8', '2015-03-20 13:10:22.885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60e3a2e2-263b-47cb-b6a7-06d9c9e9cfe7', 1, 'i', 'test', '2015-03-20 13:10:49.166', '2015-03-20 13:11:02.952');


ALTER TABLE rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 200
-- Name: rrr_nr_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('rrr_nr_seq', 58, true);


--
-- TOC entry 4257 (class 0 OID 380169)
-- Dependencies: 293
-- Data for Name: rrr_share_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_share_historic DISABLE TRIGGER ALL;



ALTER TABLE rrr_share_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4244 (class 0 OID 379865)
-- Dependencies: 266
-- Data for Name: source_describes_ba_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_ba_unit DISABLE TRIGGER ALL;

INSERT INTO source_describes_ba_unit (source_id, ba_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('539fa1f5-845c-417d-9591-e9d0892b0746', 'd7aca424-3e8c-4d32-941e-6397d436935d', 'ab26244b-5592-4a5f-91a9-4dd8821cae4f', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO source_describes_ba_unit (source_id, ba_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('539fa1f5-845c-417d-9591-e9d0892b0746', '6355cd66-cb44-4f77-a9b1-51de83138c6a', 'a86fecea-5e94-4b92-bd0a-6435d05bff20', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO source_describes_ba_unit (source_id, ba_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('539fa1f5-845c-417d-9591-e9d0892b0746', '598d644e-79e9-42b7-99a6-61b149e3de71', 'f6d8c317-0f3d-4d3b-a0df-9822b1c17b75', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO source_describes_ba_unit (source_id, ba_unit_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('539fa1f5-845c-417d-9591-e9d0892b0746', 'e6263205-b4bd-4826-ab98-6206abac0857', '377db5c8-4b79-4461-8980-07535e605aef', 1, 'i', 'test', '2015-03-20 13:09:06.394');


ALTER TABLE source_describes_ba_unit ENABLE TRIGGER ALL;

--
-- TOC entry 4245 (class 0 OID 379876)
-- Dependencies: 267
-- Data for Name: source_describes_ba_unit_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_ba_unit_historic DISABLE TRIGGER ALL;



ALTER TABLE source_describes_ba_unit_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4277 (class 0 OID 381897)
-- Dependencies: 374
-- Data for Name: source_describes_dispute; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_dispute DISABLE TRIGGER ALL;



ALTER TABLE source_describes_dispute ENABLE TRIGGER ALL;

--
-- TOC entry 4278 (class 0 OID 381908)
-- Dependencies: 375
-- Data for Name: source_describes_dispute_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_dispute_historic DISABLE TRIGGER ALL;



ALTER TABLE source_describes_dispute_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4242 (class 0 OID 379848)
-- Dependencies: 264
-- Data for Name: source_describes_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_rrr DISABLE TRIGGER ALL;

INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bfd1f9fd-6f49-4bdb-9603-59b272b45e13', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '1c5a3653-dc44-4919-8b34-7ddcb3ea2d3a', 1, 'i', 'test', '2015-03-20 09:24:14.104');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('57def446-61da-4f14-adb0-cf570e1e15ab', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'dfe22d5d-cca8-444f-93b5-df52ba7f7dd4', 1, 'i', 'test', '2015-03-20 09:53:40.55');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1687651d-625c-4c71-a0e2-1e3c29c44d1f', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'c56b277b-4971-4f7b-a154-5663e30e5b00', 1, 'i', 'test', '2015-03-20 09:55:10.292');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b194d226-8d3f-48a8-9e8b-26bce88f4d69', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '53f256c4-8eb9-4524-ab7f-b6b5d66ec088', 1, 'i', 'test', '2015-03-20 09:56:53.75');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a3690d96-4476-4fa8-8258-55a5900836e1', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '805e84ba-90bd-44c6-ae9d-6fbc07b4da26', 1, 'i', 'test', '2015-03-20 09:58:14.363');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2597f592-5e12-4ebe-8327-9cd436b9aeaf', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '047a90f6-799a-451a-bc14-12dcf8de72a1', 1, 'i', 'test', '2015-03-20 09:59:37.88');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('bd4dc8d6-b28f-4e91-a0b3-9dc6237692eb', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '29ce5f77-8151-4495-9f83-ae284b9092fc', 1, 'i', 'test', '2015-03-20 10:01:41.937');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('aec344ab-bb18-4d7a-88e3-b2daf0022dac', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'c8fb5659-3574-44f7-b8cf-40bccd6a7698', 1, 'i', 'test', '2015-03-20 10:03:15.912');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c5055fe3-325d-4fec-afa1-8b5293f9b20c', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'c604d0da-2fb7-46fd-ba1e-005efa241d1f', 1, 'i', 'test', '2015-03-20 10:05:28.263');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('94dff9d6-3ee8-4fe4-aa0f-2f419bc748bc', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '58455f01-bc15-46ad-83d2-e7a6929958f2', 1, 'i', 'test', '2015-03-20 10:08:17.174');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a84e07ee-9771-461f-84a0-7c366b85abe7', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '688950eb-3ec5-4a4d-a9cd-3e128abf7720', 1, 'i', 'test', '2015-03-20 10:09:33.001');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5b0be49b-3521-43f4-b818-587d42287a14', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '5c66546a-4c57-4829-a934-6c84d50331b6', 1, 'i', 'test', '2015-03-20 10:10:58.384');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('40d8c4a1-30e7-4cd7-b9d9-f5d6af249e79', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '0205b20f-21cd-4d74-ac2d-5dc12ed0f2e2', 1, 'i', 'test', '2015-03-20 10:12:39.722');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a4d9e951-aa2e-4380-8205-27fd78972666', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'a3e25c37-8f78-49bf-9c69-2da6ea45bfd6', 1, 'i', 'test', '2015-03-20 10:14:29.451');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('527cf656-8cbd-4b2e-afc4-02f17e0937a7', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '6f3b522f-ddc1-46cd-889d-b8a20eca53b4', 1, 'i', 'test', '2015-03-20 10:15:44.199');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('15f67766-d8ba-469b-93ec-781242b4ad35', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'b74e96be-399c-4ee3-a8cb-b32c1bf4b30f', 1, 'i', 'test', '2015-03-20 10:17:26.46');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('4bc39561-f80f-46d6-9a43-9162bedcbe4f', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'eb138a91-183c-4ced-bdf9-10d3ce9358b5', 1, 'i', 'test', '2015-03-20 10:18:52.2');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e31f3f3c-1bcd-4b14-ae6c-e2ceb6adbf5e', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'd9f1dcb6-ee8e-4c0c-8bda-0164c4a81d5b', 1, 'i', 'test', '2015-03-20 10:20:10.412');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('083491c0-01a7-4d13-b5fd-a4848964a7ff', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '3c1955e0-adcf-459a-970a-f8ea91618cb0', 1, 'i', 'test', '2015-03-20 10:21:23.365');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7d0ad3d0-e9ea-418a-9076-a06c54a36d13', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '53c7a9f5-96e5-4346-b76f-e01a3589c945', 1, 'i', 'test', '2015-03-20 10:23:08.756');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('06b49421-3c7a-4745-94b3-fcae7c050819', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '2ae65428-0b75-42dc-9508-e5ccb6f452c3', 1, 'i', 'test', '2015-03-20 13:09:06.394');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '989fdd5c-3085-414b-9cef-9b1553f5e7a9', 1, 'i', 'test', '2015-03-20 13:10:49.166');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('6ff5ee9a-733f-44bf-bd4a-92ec325b36dc', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '5c4b4290-8567-4a94-ad7e-8d832ea2f9b8', 1, 'i', 'test', '2015-03-20 13:12:24.695');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('65b30186-0599-46d0-a0d6-53922aed1a78', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '1c181ff1-9b84-4373-9514-2db9d71b9cc8', 1, 'i', 'test', '2015-03-20 13:13:52.943');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('491d2936-c04b-4cbc-a509-68869974483b', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '4a6501ac-09a0-45d8-9993-3cad786c8efc', 1, 'i', 'test', '2015-03-20 13:16:13.851');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b836f3d3-d584-49a2-b107-a1dce308994d', '06c994ff-bfa5-40e6-bfeb-a793052fce70', 'e71a02a5-f742-460f-8a9a-d9851185afd6', 1, 'i', 'test', '2015-03-20 13:43:18.11');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ec86390f-84d0-4f12-858f-d0f6612d9d76', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '73f754cd-b298-45e2-9b9e-42788dbb1bf3', 1, 'i', 'test', '2015-03-20 13:44:44.599');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('df4edec3-f2ad-435d-9d04-ee7fa0ce76eb', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '1ecedd37-a50c-4f52-aae2-e2f88c518e21', 1, 'i', 'test', '2015-03-20 13:46:09.267');
INSERT INTO source_describes_rrr (rrr_id, source_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('76cec27c-e5b8-4f6f-9a82-99084a4e1710', '06c994ff-bfa5-40e6-bfeb-a793052fce70', '67bb58b2-6ad6-4a4a-bca0-ad734b7baf6e', 1, 'i', 'test', '2015-03-20 13:47:32.323');


ALTER TABLE source_describes_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4243 (class 0 OID 379859)
-- Dependencies: 265
-- Data for Name: source_describes_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE source_describes_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 359
-- Name: title_nr_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('title_nr_seq', 100000, false);


-- Completed on 2015-04-09 16:36:45

--
-- PostgreSQL database dump complete
--

