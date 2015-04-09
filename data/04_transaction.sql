--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2015-03-23 16:08:26

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = transaction, pg_catalog;

--
-- TOC entry 3896 (class 0 OID 403230)
-- Dependencies: 214
-- Data for Name: reg_status_type; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE reg_status_type DISABLE TRIGGER ALL;



ALTER TABLE reg_status_type ENABLE TRIGGER ALL;

--
-- TOC entry 3899 (class 0 OID 403553)
-- Dependencies: 240
-- Data for Name: transaction_status_type; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

ALTER TABLE transaction_status_type DISABLE TRIGGER ALL;



ALTER TABLE transaction_status_type ENABLE TRIGGER ALL;

--
-- TOC entry 3897 (class 0 OID 403240)
-- Dependencies: 215
-- Data for Name: transaction; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

ALTER TABLE transaction DISABLE TRIGGER ALL;



ALTER TABLE transaction ENABLE TRIGGER ALL;

--
-- TOC entry 3898 (class 0 OID 403256)
-- Dependencies: 216
-- Data for Name: transaction_historic; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

ALTER TABLE transaction_historic DISABLE TRIGGER ALL;

INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 1, 'i', 'test', '2015-03-20 00:23:06.927', '2015-03-20 00:24:16.242');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 2, 'u', 'test', '2015-03-20 00:24:16.242', '2015-03-20 00:25:45.565');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 3, 'u', 'test', '2015-03-20 00:25:45.565', '2015-03-20 00:32:04.968');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 4, 'u', 'test', '2015-03-20 00:32:04.968', '2015-03-20 00:32:44.854');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 5, 'u', 'test', '2015-03-20 00:32:44.854', '2015-03-20 00:35:32.277');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 6, 'u', 'test', '2015-03-20 00:35:32.277', '2015-03-20 00:38:42.071');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 7, 'u', 'test', '2015-03-20 00:38:42.071', '2015-03-20 00:41:08.823');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 8, 'u', 'test', '2015-03-20 00:41:08.823', '2015-03-20 00:41:43.878');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 9, 'u', 'test', '2015-03-20 00:41:43.878', '2015-03-20 00:43:00.73');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 10, 'u', 'test', '2015-03-20 00:43:00.73', '2015-03-20 00:43:24.737');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 11, 'u', 'test', '2015-03-20 00:43:24.737', '2015-03-20 00:44:14.664');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 12, 'u', 'test', '2015-03-20 00:44:14.664', '2015-03-20 00:45:53.063');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 13, 'u', 'test', '2015-03-20 00:45:53.063', '2015-03-20 00:47:24.767');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 14, 'u', 'test', '2015-03-20 00:47:24.767', '2015-03-20 00:48:49.832');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'pending', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 15, 'u', 'test', '2015-03-20 00:48:49.832', '2015-03-20 00:49:07.633');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('68b4b3e3-d6ec-4d00-b0db-22d733a14f1e', 'ad93298a-b7fc-435c-a897-69daf04f37f7', 'completed', NULL, false, false, '6c6032b4-b30c-40b7-a5be-833396b41e16', 16, 'u', 'test', '2015-03-20 00:49:07.633', '2015-03-20 00:49:35.926');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'pending', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 1, 'i', 'test', '2015-03-20 00:53:48.766', '2015-03-20 01:02:04.817');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'pending', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 2, 'u', 'test', '2015-03-20 01:02:04.817', '2015-03-20 01:03:21.135');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'pending', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 3, 'u', 'test', '2015-03-20 01:03:21.135', '2015-03-20 01:10:52.458');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'pending', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 4, 'u', 'test', '2015-03-20 01:10:52.458', '2015-03-20 01:11:43.313');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'pending', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 5, 'u', 'test', '2015-03-20 01:11:43.313', '2015-03-20 01:14:54.158');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'pending', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 6, 'u', 'test', '2015-03-20 01:14:54.158', '2015-03-20 01:15:11.169');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2a7ffbc5-f43f-495e-b2e1-d78a60db393f', 'b023a1ca-fa6c-405c-b76c-8074f55727ca', 'completed', NULL, false, false, '00d305ae-410c-4ee3-8775-27b1b52bd485', 7, 'u', 'test', '2015-03-20 01:15:11.169', '2015-03-20 01:16:04.464');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('5a63fc77-21f4-4e51-b360-28ed0783786d', '930d415c-fad8-4e78-8ec6-b9d41b268ecd', 'pending', NULL, false, false, '528ab127-1910-4e1e-bdcf-b2b9a6354c5a', 1, 'i', 'test', '2015-03-20 01:27:49.782', '2015-03-20 01:29:20.121');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('5a63fc77-21f4-4e51-b360-28ed0783786d', '930d415c-fad8-4e78-8ec6-b9d41b268ecd', 'pending', NULL, false, false, '528ab127-1910-4e1e-bdcf-b2b9a6354c5a', 2, 'u', 'test', '2015-03-20 01:29:20.121', '2015-03-20 01:29:38.811');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('5a63fc77-21f4-4e51-b360-28ed0783786d', '930d415c-fad8-4e78-8ec6-b9d41b268ecd', 'completed', NULL, false, false, '528ab127-1910-4e1e-bdcf-b2b9a6354c5a', 3, 'u', 'test', '2015-03-20 01:29:38.811', '2015-03-20 01:29:53.047');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('9853faec-11b4-410a-b4a6-288ad7a476b3', '1b2e863b-7897-4b8f-969a-08aef29641f2', 'pending', NULL, false, false, '3dc12d7b-41a8-427f-8347-e652fd0061ad', 1, 'i', 'test', '2015-03-20 09:24:14.104', '2015-03-20 09:24:36.453');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('bc241354-b547-4f2d-935b-2d7a09f2d801', 'b24dcc43-9521-4b0b-8f61-46d5a4c609c2', 'pending', NULL, false, false, '4e06714e-ceb1-44bb-81ed-877f223fdd83', 1, 'i', 'test', '2015-03-20 09:53:40.55', '2015-03-20 09:53:52.49');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', 'e8c7ff15-7504-407f-b051-3513ab8ed67c', 'pending', NULL, false, false, 'fb6dc8cc-6753-4905-8958-e9feed5252af', 1, 'i', 'test', '2015-03-20 09:55:10.292', '2015-03-20 09:55:23.713');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('0be3b7ec-ffa5-4c1b-ac27-2ee62de60b9b', 'a50a20d6-83bc-4bf2-89a3-b18919cc3b38', 'pending', NULL, false, false, '099cd1d7-c44a-48f4-adef-5b64e3fddfd3', 1, 'i', 'test', '2015-03-20 09:56:53.75', '2015-03-20 09:57:09.567');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('5ee4698b-03e8-4b17-8650-f0a46cafb409', '7292e1c2-2b7a-4ecc-80ed-48974bb3632d', 'pending', NULL, false, false, 'f3f40a14-d3fb-4788-81e0-79441b74acee', 1, 'i', 'test', '2015-03-20 09:58:14.363', '2015-03-20 09:58:27.308');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('c06cef2b-db46-4c06-9cb7-1635d40c9ee0', '3f91b83e-289d-4432-b0ce-b7a225a73e91', 'pending', NULL, false, false, '8ae80ce2-1f64-40fd-a201-73a838d8f915', 1, 'i', 'test', '2015-03-20 09:59:37.88', '2015-03-20 09:59:49.495');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('139ef9d1-aac5-4cdd-b189-c9be15ac3632', '35d9d8f1-10ef-4a82-9fc3-81c7deb3bdc1', 'pending', NULL, false, false, 'd59a4c01-73d6-47fd-b30e-1202711d467f', 1, 'i', 'test', '2015-03-20 10:01:41.937', '2015-03-20 10:01:54.155');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('7de20f23-efe1-421a-9967-0518d523719e', '15778f28-b4d9-47af-be96-6d6a2441c909', 'pending', NULL, false, false, 'c47c1d4f-378e-4843-8ca6-609fafb2b041', 1, 'i', 'test', '2015-03-20 10:03:15.912', '2015-03-20 10:03:31.962');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('ce598378-329b-43ad-9f04-6ab8162f626c', 'ed3695fa-97dd-418f-a549-90ec5ac79e42', 'pending', NULL, false, false, '9a422288-3882-4fbc-ba8d-9f6756cc6e71', 1, 'i', 'test', '2015-03-20 10:05:28.263', '2015-03-20 10:05:49.086');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('103a09f0-8eba-47af-ab70-6d54501ed243', '7f7f12ef-65d0-4878-be1a-e238e0a3b9c3', 'pending', NULL, false, false, '3d3c61c5-a4a1-48dd-8e32-260f2551cf28', 1, 'i', 'test', '2015-03-20 10:08:17.174', '2015-03-20 10:08:30.147');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('10088388-8882-47c6-a0fb-0a46d3535a97', 'a77d6e67-de64-426c-a778-971b3334a39a', 'pending', NULL, false, false, '950b58cf-503d-4038-9546-9419bee4d6d8', 1, 'i', 'test', '2015-03-20 10:09:33.001', '2015-03-20 10:09:50.263');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('357b71d0-a298-4a34-a5c9-7d58cd378855', '425a24e7-fb3b-4d81-9c72-3021aaed1af1', 'pending', NULL, false, false, '74b1cf7c-c118-4840-8b24-370cf175a458', 1, 'i', 'test', '2015-03-20 10:10:58.384', '2015-03-20 10:11:16.304');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('44930f80-9741-4259-ac1d-ca4df61db2d4', '27742d55-2401-4886-8f51-93174b859ad6', 'pending', NULL, false, false, '17b69f2a-4cb0-4ef6-a50a-650e8275fbf4', 1, 'i', 'test', '2015-03-20 10:12:39.722', '2015-03-20 10:12:52.168');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('031d9fdf-5096-4477-a81e-4bcb431044a2', '350e9c87-9bea-459e-85a3-b9b2661a6a6e', 'pending', NULL, false, false, 'd9e296e6-b3fd-453f-a470-a3eaed807530', 1, 'i', 'test', '2015-03-20 10:14:29.451', '2015-03-20 10:14:41.354');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('286c52f6-0a9e-4bb2-a64e-0dc36b6f7b04', 'b0e1f472-ced9-4afb-a72c-b2e042961fc7', 'pending', NULL, false, false, 'd2569873-62be-4827-99c9-e391ab9e9aae', 1, 'i', 'test', '2015-03-20 10:15:44.199', '2015-03-20 10:15:57.492');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('7cd29919-b08b-40fe-ad53-8b4a9bb0a605', 'd67d1d28-8b24-4ea8-a11d-9c9f3b74cfac', 'pending', NULL, false, false, '68139063-2b41-4011-b459-e306029c34a1', 1, 'i', 'test', '2015-03-20 10:17:26.46', '2015-03-20 10:17:39.13');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('d8719adc-e638-449e-b82a-a86d928b23f8', '840b455c-302b-477f-b205-b7ffe1c1457a', 'pending', NULL, false, false, 'c438850e-493f-4b50-84f6-6a6fdf8af6af', 1, 'i', 'test', '2015-03-20 10:18:52.2', '2015-03-20 10:19:09.186');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('8670b6b4-ed63-4595-9603-1696607da8e7', 'bd4740df-e4bc-45fa-8cce-94bcb8cf11d8', 'pending', NULL, false, false, '5fc37fa5-c247-4dd1-8110-e3a2b5336622', 1, 'i', 'test', '2015-03-20 10:20:10.412', '2015-03-20 10:20:21.408');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('dc094b53-9376-41ad-8a68-227ab7ff62ed', '57572f48-470e-44e7-9e64-e93b2c1a2366', 'pending', NULL, false, false, 'd849c67d-c56b-48b5-a466-3cd6a89be339', 1, 'i', 'test', '2015-03-20 10:21:23.365', '2015-03-20 10:21:33.975');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('3a0d822d-75f0-4778-aecd-482bf96307e8', '9f0aebb0-f9fd-4bd2-beab-64c3c8e03962', 'pending', NULL, false, false, '718d085a-b2ae-48d4-9753-6f542ebed56e', 1, 'i', 'test', '2015-03-20 10:23:08.756', '2015-03-20 10:23:22.565');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('bc241354-b547-4f2d-935b-2d7a09f2d801', 'b24dcc43-9521-4b0b-8f61-46d5a4c609c2', 'completed', NULL, false, false, '4e06714e-ceb1-44bb-81ed-877f223fdd83', 2, 'u', 'test', '2015-03-20 09:53:52.49', '2015-03-20 11:11:25.335');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', 'e8c7ff15-7504-407f-b051-3513ab8ed67c', 'completed', NULL, false, false, 'fb6dc8cc-6753-4905-8958-e9feed5252af', 2, 'u', 'test', '2015-03-20 09:55:23.713', '2015-03-20 12:10:44.533');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('9c352a1d-85c4-4e82-9994-7c51d5ac385a', 'cd5b1187-3ae7-4064-91e7-7819c280c6d1', 'pending', NULL, false, false, '94a2df42-d3c6-4ecf-aecc-c700094a3aa3', 1, 'i', 'test', '2015-03-20 13:09:06.394', '2015-03-20 13:09:18.726');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2773d44e-d171-4553-bdd0-6fa5d52126c8', '538cbc46-bd3b-40f4-87bd-0e7f3afbbabd', 'pending', NULL, false, false, 'a9076c29-62f9-41c2-bd36-ebf626b8b452', 1, 'i', 'test', '2015-03-20 13:10:49.166', '2015-03-20 13:11:15.886');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('58d67c7b-c53a-4041-a738-7d56a0c40bd3', 'c33b9cd0-b109-41ed-a0e0-7c911b39aaa0', 'pending', NULL, false, false, '4691fd4b-89a2-4aca-b514-f903adcefd44', 1, 'i', 'test', '2015-03-20 13:12:24.695', '2015-03-20 13:12:40.781');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('6835b0cf-98ef-4f87-b41c-ef5a52a0536a', 'c7b9bdca-d97a-4f7f-8688-6ca7176c8a0e', 'pending', NULL, false, false, '51957b8e-7a53-41c2-86c3-6a594b9d11f2', 1, 'i', 'test', '2015-03-20 13:13:52.943', '2015-03-20 13:14:18.121');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('52c39b3c-e365-4c44-a11c-916ff3fe250e', 'a3c54b21-52dc-4ae9-a046-0726f90c12cb', 'pending', NULL, false, false, 'dfab4af8-a7ee-4f17-b5cb-3481c1c97585', 1, 'i', 'test', '2015-03-20 13:16:13.851', '2015-03-20 13:16:25.54');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('2caf07e7-4319-47d8-b717-1dd754bb636e', 'd2fb8a9f-f9af-4a16-8933-4683256f7e90', 'pending', NULL, false, false, '4d495dbc-940a-4e50-b979-4312ec95ad00', 1, 'i', 'test', '2015-03-20 13:43:18.11', '2015-03-20 13:43:32.493');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('395d6e73-2b23-4116-9a2c-832a33a45983', '736bca4a-fd8f-4c03-8eac-795e760afbe5', 'pending', NULL, false, false, 'b7d06e13-6a4f-4335-8d6b-aecf84e87ce0', 1, 'i', 'test', '2015-03-20 13:44:44.599', '2015-03-20 13:45:03.404');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('f2ca1ee7-b04f-4aa3-a52e-6909bee01a9e', 'ea0d816c-3318-4ea6-8d33-967abb3bce93', 'pending', NULL, false, false, '70c6d776-a764-4776-86dd-fc22d08234b5', 1, 'i', 'test', '2015-03-20 13:46:09.267', '2015-03-20 13:46:33.193');
INSERT INTO transaction_historic (id, from_service_id, status_code, approval_datetime, bulk_generate_first_part, is_bulk_operation, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('45635eb7-f3b5-413f-b2f3-3490fe97d263', 'a3d91724-cc23-4f05-b39e-9eb0a0d36fd6', 'pending', NULL, false, false, '6b7f2866-dc82-4c55-ad8d-852651f89747', 1, 'i', 'test', '2015-03-20 13:47:32.323', '2015-03-20 13:47:45.766');


ALTER TABLE transaction_historic ENABLE TRIGGER ALL;

--
-- TOC entry 3900 (class 0 OID 404372)
-- Dependencies: 314
-- Data for Name: transaction_source; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

ALTER TABLE transaction_source DISABLE TRIGGER ALL;



ALTER TABLE transaction_source ENABLE TRIGGER ALL;

--
-- TOC entry 3901 (class 0 OID 404383)
-- Dependencies: 315
-- Data for Name: transaction_source_historic; Type: TABLE DATA; Schema: transaction; Owner: postgres
--

ALTER TABLE transaction_source_historic DISABLE TRIGGER ALL;



ALTER TABLE transaction_source_historic ENABLE TRIGGER ALL;

-- Completed on 2015-03-23 16:08:26

--
-- PostgreSQL database dump complete
--

