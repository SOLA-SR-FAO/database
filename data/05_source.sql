--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2015-03-23 16:07:46

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = source, pg_catalog;

--
-- TOC entry 3966 (class 0 OID 403219)
-- Dependencies: 213
-- Data for Name: administrative_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE administrative_source_type DISABLE TRIGGER ALL;


ALTER TABLE administrative_source_type ENABLE TRIGGER ALL;

--
-- TOC entry 3962 (class 0 OID 403180)
-- Dependencies: 209
-- Data for Name: archive; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE archive DISABLE TRIGGER ALL;



ALTER TABLE archive ENABLE TRIGGER ALL;

--
-- TOC entry 3963 (class 0 OID 403191)
-- Dependencies: 210
-- Data for Name: archive_historic; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE archive_historic DISABLE TRIGGER ALL;



ALTER TABLE archive_historic ENABLE TRIGGER ALL;

--
-- TOC entry 3965 (class 0 OID 403208)
-- Dependencies: 212
-- Data for Name: availability_status_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE availability_status_type DISABLE TRIGGER ALL;



ALTER TABLE availability_status_type ENABLE TRIGGER ALL;

--
-- TOC entry 3964 (class 0 OID 403197)
-- Dependencies: 211
-- Data for Name: presentation_form_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE presentation_form_type DISABLE TRIGGER ALL;


ALTER TABLE presentation_form_type ENABLE TRIGGER ALL;

--
-- TOC entry 3960 (class 0 OID 403155)
-- Dependencies: 207
-- Data for Name: source; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE source DISABLE TRIGGER ALL;

INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('c7d54ec6-9ad0-4169-ae5e-6587ed16e56f', NULL, 'SR-150320-000000001', NULL, NULL, '2015-03-15', '2015-03-20', NULL, 'c8184e4f-f7b1-48e8-aff0-0d033654a8d7', 'available', 'fieldMap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '75bdada4-d677-4a0b-b193-09aaa2251400', 1, 'i', 'test', '2015-03-23 14:55:03.437', '1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('23cb15a6-9bce-43cd-b62d-e95979314aba', NULL, 'SR-150320-000000005', NULL, NULL, '2015-02-01', '2015-03-20', '2015-03-03', '053b4f6a-015c-453c-9f9f-bc9ed52829b2', 'available', 'publicNotification', NULL, NULL, NULL, NULL, NULL, 'ParcelNumber_Ponui_NW1_WR1_PD1_200315.pdf', NULL, 'dab41c74-061c-4334-9cfa-8009de109fbb', 1, 'i', 'test', '2015-03-23 14:55:03.497', 'Ponui/NW1/WR1/PD1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('c3b56e42-7798-4771-aaea-93d7f9b1d8cd', NULL, 'SR-150320-000000006', NULL, NULL, '2015-03-20', '2015-03-20', NULL, 'bfca3086-119a-4179-b7bf-c8526f5a4fce', 'available', 'signingList', NULL, NULL, NULL, NULL, NULL, 'signingList_Ponui_NW1_WR1_PD1_200315.pdf', NULL, 'e16a1f56-3d7e-4403-b06e-3fd052ed2676', 1, 'i', 'test', '2015-03-23 14:55:03.507', 'Ponui/NW1/WR1/PD1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('2dbe504d-e376-498c-a363-1866d667b5c2', NULL, 'SR-150320-000000008', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '596f5238-faec-4362-b864-47cf2347aab8', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/22', NULL, '253caf70-2b69-4119-bfbf-b596e1140e49', 1, 'i', 'test', '2015-03-23 14:55:03.507', 'Ponui/NW1/WR1/PD1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('eadbc0a1-f923-4ef0-83aa-3d00a80d57f7', NULL, 'SR-150320-000000009', NULL, NULL, '2015-03-20', '2015-03-20', NULL, 'd9adadfa-accc-4c76-a41e-78b4a126859c', 'available', 'parcelPlan', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/22', NULL, '12ca9824-cb79-44d7-bb90-b3109c52ac73', 1, 'i', 'test', '2015-03-23 14:55:03.507', 'Ponui/NW1/WR1/PD1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('e0d9cde0-a197-4448-a743-dcbee9c5b705', NULL, 'SR-150320-000000014', NULL, NULL, '2015-03-20', '2015-03-20', NULL, 'c436590b-31da-45c0-9421-18d5e9dae649', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/1/21', NULL, '7e0b925d-75d1-4569-8308-7cc1a735e7a0', 1, 'i', 'test', '2015-03-23 14:55:03.507', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('ef481087-eb08-4785-b666-68eb57ad1b66', NULL, 'SR-150320-000000015', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '57f5cdb8-89b6-47be-bbc7-d3438de574f9', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/1/22', NULL, '941c146d-e85e-4143-9afb-387ca94aedca', 1, 'i', 'test', '2015-03-23 14:55:03.507', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('9b8c328f-48c5-4f39-84d2-71405f9d8218', NULL, 'SR-150320-000000016', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '282f39f0-3907-491c-a2f6-c7272178390e', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'TOTAL-title-Ponui-NW1-WR1-PD1-1', NULL, '9ebd41bb-e4dc-43a2-8635-f9e5a52cda43', 1, 'i', 'test', '2015-03-23 14:55:03.517', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('7e3d2a4c-f006-4cf6-8f50-075715b9f19f', NULL, 'SR-150320-000000017', NULL, NULL, '2015-03-20', '2015-03-20', NULL, 'f0128566-09f9-4318-85cc-17acec28cb8e', 'available', 'parcelPlan', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/1/21', NULL, '994880d5-47d1-4653-9772-aed9d17e62f5', 1, 'i', 'test', '2015-03-23 14:55:03.517', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('0dbe4deb-a248-48e8-aa75-1ad31da49c59', NULL, 'SR-150320-000000018', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '926b13c5-2ee8-4a4b-839b-1cfa06c0f818', 'available', 'parcelPlan', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/1/22', NULL, '02b479be-9d3d-44dc-a3e5-417c6bd9c28c', 1, 'i', 'test', '2015-03-23 14:55:03.517', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('52423d6c-e793-48d0-86a1-b43f36514aa6', NULL, 'SR-150320-000000019', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '80e33891-0483-4e9f-9169-8d72dee26914', 'available', 'parcelPlan', NULL, NULL, NULL, NULL, NULL, 'TOTAL-parcelPlan-Ponui-NW1-WR1-PD1-1', NULL, 'b0384ae5-af99-4a85-a601-b48e89ca7c78', 1, 'i', 'test', '2015-03-23 14:55:03.517', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('442c8e90-7243-4c6e-84ec-2c663a660e36', NULL, 'SR-150320-000000020', NULL, NULL, '2015-03-01', '2015-03-20', '2015-03-31', 'd3bcbed7-e861-4a3e-8a30-9bf3deab8653', 'available', 'publicNotification', NULL, NULL, NULL, NULL, NULL, 'ParcelNumber_Ponui_NW1_WR1_PD2_200315.pdf', NULL, 'fd68e798-eefe-4f7d-a3b8-723b4105efad', 1, 'i', 'test', '2015-03-23 14:55:03.517', 'Ponui/NW1/WR1/PD2');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('048bc3d1-0d68-4450-acc2-ff4bf3778b8f', NULL, 'SR-150320-000000021', NULL, NULL, '2015-03-20', '2015-03-20', NULL, 'c59dbd56-f972-439c-8503-8db8f2c37205', 'available', 'signingList', NULL, NULL, NULL, NULL, NULL, 'signingList_Ponui_NW1_WR1_PD2_200315.pdf', NULL, '626ce895-ea58-4f5d-a659-477e58882c89', 1, 'i', 'test', '2015-03-23 14:55:03.517', 'Ponui/NW1/WR1/PD2');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('927d0097-e1f3-47cb-9ad4-cb721ae2f6dc', NULL, 'SR-150320-000000004', NULL, NULL, '2015-03-13', '2015-03-20', NULL, 'a22ba8bf-7437-49b8-a125-a46b58074477', 'available', 'sketchMap', NULL, NULL, NULL, 'Abigail Linda-Maree Stenberg', NULL, NULL, NULL, '9dd49e08-faa8-4504-a57e-aa17c239c289', 2, 'u', 'test', '2015-03-23 15:57:39.648', '31');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('06c994ff-bfa5-40e6-bfeb-a793052fce70', NULL, 'SR-150320-000000002', NULL, NULL, '2015-03-13', '2015-03-20', NULL, 'd93c25ec-8ef1-47e7-8f56-baf24984277c', 'available', 'systematicRegn', NULL, NULL, NULL, 'Baldwin Jenkins', NULL, NULL, NULL, '051b315b-c217-4869-b6be-dbe549d0973b', 2, 'u', 'test', '2015-03-23 15:58:39.318', '11');
INSERT INTO source (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, reference_nr) VALUES ('539fa1f5-845c-417d-9591-e9d0892b0746', NULL, 'SR-150320-000000003', NULL, NULL, '2015-03-13', '2015-03-20', NULL, '922ca24d-4424-4a27-9ade-87a466b7726b', 'available', 'evidenceOfOwnership', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41200583-93e1-44a7-a284-32065fde86d7', 2, 'u', 'test', '2015-03-23 15:59:09.798', '21');


ALTER TABLE source ENABLE TRIGGER ALL;

--
-- TOC entry 3972 (class 0 OID 403608)
-- Dependencies: 246
-- Data for Name: power_of_attorney; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE power_of_attorney DISABLE TRIGGER ALL;



ALTER TABLE power_of_attorney ENABLE TRIGGER ALL;

--
-- TOC entry 3973 (class 0 OID 403622)
-- Dependencies: 247
-- Data for Name: power_of_attorney_historic; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE power_of_attorney_historic DISABLE TRIGGER ALL;



ALTER TABLE power_of_attorney_historic ENABLE TRIGGER ALL;

--
-- TOC entry 3961 (class 0 OID 403171)
-- Dependencies: 208
-- Data for Name: source_historic; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE source_historic DISABLE TRIGGER ALL;

INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('f5eda846-7b91-4be3-b51d-2c360da9de60', NULL, 'SR-150320-000000011', NULL, NULL, '2015-03-20', '2015-03-20', NULL, 'a4383b81-eb12-43c2-99ec-2538b5691e22', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'TOTAL-title-Ponui-NW1-WR1-PD1-2', NULL, '1d3e7ae1-970b-46ff-95cc-aa25aadd362f', 1, 'd', 'test', '2015-03-20 11:57:24.854', '2015-03-20 12:07:09.309', 'Ponui/NW1/WR1/PD1/2');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('6d5efa5d-bfd1-4bf9-b9e3-fc0da95e8e6a', NULL, 'SR-150320-000000010', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '970e7a99-fca2-44e9-bc01-bb3ecce8a43d', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'TOTAL-title-Ponui-NW1-WR1-PD1-2', NULL, 'ea8a970d-c533-4ea4-9162-6d6fbf26c6d8', 1, 'd', 'test', '2015-03-20 11:56:08.088', '2015-03-20 12:07:09.568', 'Ponui/NW1/WR1/PD1/2');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('4be7d18d-729b-4644-aef4-01edd4e16e9c', NULL, 'SR-150320-000000007', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '822beec2-3b36-405e-a179-8f17146f13b6', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'TOTAL-title-Ponui-NW1-WR1-PD1-2', NULL, 'bddc1f80-c793-47cc-ba8d-366ac26fb12f', 1, 'd', 'test', '2015-03-20 11:08:17.998', '2015-03-20 12:07:09.574', 'Ponui/NW1/WR1/PD1/2');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('499a3f7d-ed5f-4ce7-adec-575d0b73fb1c', NULL, 'SR-150320-000000013', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '74b99e62-51ad-438b-83fe-ac8f9fa6a3b1', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'TOTAL-title-Ponui-NW1-WR1-PD1-1', NULL, 'b451a360-756d-4969-800f-6cd6486f182c', 1, 'd', 'test', '2015-03-20 12:04:42.29', '2015-03-20 12:07:09.579', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('cfb53ac9-e122-46af-a9c9-72d545a068a6', NULL, 'SR-150320-000000012', NULL, NULL, '2015-03-20', '2015-03-20', NULL, '76289ee1-714f-4c2a-8a43-8373b449a414', 'available', 'title', NULL, NULL, NULL, NULL, NULL, 'Ponui/NW1/WR1/PD1/1/22', NULL, '1e2367d5-1046-450c-8c05-86680dd4b1b7', 1, 'd', 'test', '2015-03-20 12:04:41.918', '2015-03-20 12:08:39.64', 'Ponui/NW1/WR1/PD1/1');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('927d0097-e1f3-47cb-9ad4-cb721ae2f6dc', NULL, 'SR-150320-000000004', NULL, NULL, '2015-03-13', '2015-03-20', NULL, '82682437-54e7-40b9-9e7b-f98adaa39351', 'available', 'sketchMap', NULL, NULL, NULL, 'Abigail Linda-Maree Stenberg', NULL, NULL, NULL, '9dd49e08-faa8-4504-a57e-aa17c239c289', 1, 'i', 'test', '2015-03-23 14:55:03.497', '2015-03-23 15:57:39.648', '31');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('06c994ff-bfa5-40e6-bfeb-a793052fce70', NULL, 'SR-150320-000000002', NULL, NULL, '2015-03-13', '2015-03-20', NULL, 'ab4b895c-cc45-45c3-b53e-7f29273e7a15', 'available', 'systematicRegn', NULL, NULL, NULL, 'Baldwin Jenkins', NULL, NULL, NULL, '051b315b-c217-4869-b6be-dbe549d0973b', 1, 'i', 'test', '2015-03-23 14:55:03.497', '2015-03-23 15:58:39.318', '11');
INSERT INTO source_historic (id, maintype, la_nr, archive_id, acceptance, recordation, submission, expiration_date, ext_archive_id, availability_status_code, type_code, content, status_code, transaction_id, owner_name, version, description, signing_date, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until, reference_nr) VALUES ('539fa1f5-845c-417d-9591-e9d0892b0746', NULL, 'SR-150320-000000003', NULL, NULL, '2015-03-13', '2015-03-20', NULL, 'f2450ab9-ad06-409d-9761-d2750e77d84c', 'available', 'evidenceOfOwnership', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41200583-93e1-44a7-a284-32065fde86d7', 1, 'i', 'test', '2015-03-23 14:55:03.497', '2015-03-23 15:59:09.798', '21');


ALTER TABLE source_historic ENABLE TRIGGER ALL;

--
-- TOC entry 3978 (class 0 OID 0)
-- Dependencies: 199
-- Name: source_la_nr_seq; Type: SEQUENCE SET; Schema: source; Owner: postgres
--

SELECT pg_catalog.setval('source_la_nr_seq', 21, true);


--
-- TOC entry 3969 (class 0 OID 403580)
-- Dependencies: 243
-- Data for Name: spatial_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source_type DISABLE TRIGGER ALL;



ALTER TABLE spatial_source_type ENABLE TRIGGER ALL;

--
-- TOC entry 3967 (class 0 OID 403563)
-- Dependencies: 241
-- Data for Name: spatial_source; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source DISABLE TRIGGER ALL;



ALTER TABLE spatial_source ENABLE TRIGGER ALL;

--
-- TOC entry 3968 (class 0 OID 403574)
-- Dependencies: 242
-- Data for Name: spatial_source_historic; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source_historic DISABLE TRIGGER ALL;



ALTER TABLE spatial_source_historic ENABLE TRIGGER ALL;

--
-- TOC entry 3970 (class 0 OID 403591)
-- Dependencies: 244
-- Data for Name: spatial_source_measurement; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source_measurement DISABLE TRIGGER ALL;



ALTER TABLE spatial_source_measurement ENABLE TRIGGER ALL;

--
-- TOC entry 3971 (class 0 OID 403602)
-- Dependencies: 245
-- Data for Name: spatial_source_measurement_historic; Type: TABLE DATA; Schema: source; Owner: postgres
--

ALTER TABLE spatial_source_measurement_historic DISABLE TRIGGER ALL;



ALTER TABLE spatial_source_measurement_historic ENABLE TRIGGER ALL;

-- Completed on 2015-03-23 16:07:47

--
-- PostgreSQL database dump complete
--

