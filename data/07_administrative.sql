--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2015-03-23 16:03:50

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = administrative, pg_catalog;

--
-- TOC entry 4236 (class 0 OID 403729)
-- Dependencies: 258
-- Data for Name: ba_unit_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE ba_unit_type DISABLE TRIGGER ALL;

INSERT INTO ba_unit_type (code, display_value, description, status) VALUES ('basicPropertyUnit', 'Basic Property Unit', 'This is the basic property unit that is used by default', 'c');
INSERT INTO ba_unit_type (code, display_value, description, status) VALUES ('leasedUnit', 'Leased Unit', 'This is the basic property unit that is used by default', 'x');
INSERT INTO ba_unit_type (code, display_value, description, status) VALUES ('propertyRightUnit', 'Property Property Unit', 'This is the basic property unit that is used by default', 'x');
INSERT INTO ba_unit_type (code, display_value, description, status) VALUES ('administrativeUnit', 'Administrative Unit', 'This is the basic property unit that is used by default', 'c');


ALTER TABLE ba_unit_type ENABLE TRIGGER ALL;

--
-- TOC entry 4234 (class 0 OID 403704)
-- Dependencies: 256
-- Data for Name: ba_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit DISABLE TRIGGER ALL;



ALTER TABLE ba_unit ENABLE TRIGGER ALL;

--
-- TOC entry 4254 (class 0 OID 404068)
-- Dependencies: 289
-- Data for Name: ba_unit_area; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_area DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_area ENABLE TRIGGER ALL;

--
-- TOC entry 4255 (class 0 OID 404079)
-- Dependencies: 290
-- Data for Name: ba_unit_area_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_area_historic DISABLE TRIGGER ALL;

INSERT INTO ba_unit_area_historic (id, ba_unit_id, type_code, size, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('f6c5e31a-8cbe-4e0d-953c-5bb91c6139ea', '43959af6-30fd-4404-9137-d6ccc60a851c', 'officialArea', 25626.00, '0228d062-6938-4141-9ab9-d4d96609ed84', 1, 'i', 'test', '2015-03-20 13:10:49.42', '2015-03-20 13:11:03.616');


ALTER TABLE ba_unit_area_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4251 (class 0 OID 404039)
-- Dependencies: 286
-- Data for Name: ba_unit_as_party; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_as_party DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_as_party ENABLE TRIGGER ALL;

--
-- TOC entry 4249 (class 0 OID 404022)
-- Dependencies: 284
-- Data for Name: ba_unit_contains_spatial_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_contains_spatial_unit DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_contains_spatial_unit ENABLE TRIGGER ALL;

--
-- TOC entry 4250 (class 0 OID 404033)
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
-- TOC entry 4235 (class 0 OID 403720)
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
-- TOC entry 4248 (class 0 OID 403837)
-- Dependencies: 270
-- Data for Name: ba_unit_rel_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_rel_type DISABLE TRIGGER ALL;

INSERT INTO ba_unit_rel_type (code, display_value, description, status) VALUES ('priorTitle', 'Prior Title', '', 'c');
INSERT INTO ba_unit_rel_type (code, display_value, description, status) VALUES ('rootTitle', 'Root of Title', '', 'x');


ALTER TABLE ba_unit_rel_type ENABLE TRIGGER ALL;

--
-- TOC entry 4260 (class 0 OID 404130)
-- Dependencies: 296
-- Data for Name: ba_unit_target; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_target DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_target ENABLE TRIGGER ALL;

--
-- TOC entry 4261 (class 0 OID 404141)
-- Dependencies: 297
-- Data for Name: ba_unit_target_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE ba_unit_target_historic DISABLE TRIGGER ALL;



ALTER TABLE ba_unit_target_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4269 (class 0 OID 405756)
-- Dependencies: 366
-- Data for Name: dispute_category; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_category DISABLE TRIGGER ALL;

INSERT INTO dispute_category (code, display_value, description, status) VALUES ('regularization', 'SR', '', 'c');


ALTER TABLE dispute_category ENABLE TRIGGER ALL;

--
-- TOC entry 4275 (class 0 OID 405818)
-- Dependencies: 372
-- Data for Name: dispute_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_type DISABLE TRIGGER ALL;

INSERT INTO dispute_type (code, display_value, description, status) VALUES ('title', 'Existing CofO', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('ownership', 'Ownership', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('boundary', 'Boundary', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('encroachment', 'Encroachment', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('inheritance', 'Inheritance', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('conflictingClaims', 'Conflicting Claims', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('rightOfWay', 'Right of Way', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('landUse', 'Land Use', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('values', 'Values (cultural)', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('relationship', 'Relationship Problem', NULL, 'c');
INSERT INTO dispute_type (code, display_value, description, status) VALUES ('other', 'Other', NULL, 'c');


ALTER TABLE dispute_type ENABLE TRIGGER ALL;

--
-- TOC entry 4267 (class 0 OID 405728)
-- Dependencies: 364
-- Data for Name: dispute; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute DISABLE TRIGGER ALL;



ALTER TABLE dispute ENABLE TRIGGER ALL;

--
-- TOC entry 4276 (class 0 OID 405828)
-- Dependencies: 373
-- Data for Name: other_authorities; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE other_authorities DISABLE TRIGGER ALL;

INSERT INTO other_authorities (code, display_value, description, status) VALUES ('courtoflaw', 'Court of Law', '', 'c');
INSERT INTO other_authorities (code, display_value, description, status) VALUES ('police', 'Police', '', 'c');
INSERT INTO other_authorities (code, display_value, description, status) VALUES ('lga', 'LGA', '', 'c');


ALTER TABLE other_authorities ENABLE TRIGGER ALL;

--
-- TOC entry 4270 (class 0 OID 405766)
-- Dependencies: 367
-- Data for Name: dispute_comments; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_comments DISABLE TRIGGER ALL;



ALTER TABLE dispute_comments ENABLE TRIGGER ALL;

--
-- TOC entry 4271 (class 0 OID 405783)
-- Dependencies: 368
-- Data for Name: dispute_comments_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_comments_historic DISABLE TRIGGER ALL;



ALTER TABLE dispute_comments_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4268 (class 0 OID 405747)
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
-- TOC entry 4272 (class 0 OID 405792)
-- Dependencies: 369
-- Data for Name: dispute_party; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_party DISABLE TRIGGER ALL;



ALTER TABLE dispute_party ENABLE TRIGGER ALL;

--
-- TOC entry 4273 (class 0 OID 405801)
-- Dependencies: 370
-- Data for Name: dispute_party_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_party_historic DISABLE TRIGGER ALL;



ALTER TABLE dispute_party_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4279 (class 0 OID 405853)
-- Dependencies: 376
-- Data for Name: dispute_role_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_role_type DISABLE TRIGGER ALL;

INSERT INTO dispute_role_type (code, display_value, description, status) VALUES ('complainant', 'Complainant', NULL, 'c');


ALTER TABLE dispute_role_type ENABLE TRIGGER ALL;

--
-- TOC entry 4274 (class 0 OID 405807)
-- Dependencies: 371
-- Data for Name: dispute_status; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE dispute_status DISABLE TRIGGER ALL;

INSERT INTO dispute_status (code, display_value, description, status) VALUES ('pending', 'Pending', '', 'c');
INSERT INTO dispute_status (code, display_value, description, status) VALUES ('resolved', 'Resolved', ' ', 'c');
INSERT INTO dispute_status (code, display_value, description, status) VALUES ('rejected', 'Rejected', ' ', 'c');
INSERT INTO dispute_status (code, display_value, description, status) VALUES ('unsolved', 'Unsolved', ' ', 'c');
INSERT INTO dispute_status (code, display_value, description, status) VALUES ('resProClaimant', 'ResolvedProClaimant', ' ', 'c');
INSERT INTO dispute_status (code, display_value, description, status) VALUES ('resAgainstClaimant', 'ResolvedAgainstClaimant', ' ', 'c');


ALTER TABLE dispute_status ENABLE TRIGGER ALL;

--
-- TOC entry 4262 (class 0 OID 404678)
-- Dependencies: 343
-- Data for Name: lease_condition; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE lease_condition DISABLE TRIGGER ALL;

INSERT INTO lease_condition (code, display_value, description, status) VALUES ('c1', 'Condition 1', 'Unless the Minister directs otherwise the Lessee shall fence the boundaries of the land within 6 (six) months of the date of the grant and the Lessee shall maintain the fence to the satisfaction of the Commissioner.', 'c');
INSERT INTO lease_condition (code, display_value, description, status) VALUES ('c2', 'Condition 2', 'Unless special written authority is given by the Commissioner, the Lessee shall commence development of the land within 5 years of the date of the granting of a lease. This shall also apply to further development of the land held under a lease during the term of the lease.', 'c');
INSERT INTO lease_condition (code, display_value, description, status) VALUES ('c3', 'Condition 3', 'Within a period of the time to be fixed by the planning authority, the Lessee shall provide at his own expense main drainage or main sewerage connections from the building erected on the land as the planning authority may require.', 'c');
INSERT INTO lease_condition (code, display_value, description, status) VALUES ('c4', 'Condtion 4', 'The Lessee shall use the land comprised in the lease only for the purpose specified in the lease or in any variation made to the original lease.', 'c');
INSERT INTO lease_condition (code, display_value, description, status) VALUES ('c5', 'Condition 5', 'Save with the written authority of the planning authority, no electrical power or telephone pole or line or water, drainage or sewer pipe being upon or passing through, over or under the land and no replacement thereof, shall be moved or in any way be interfered with and reasonable access thereto shall be preserved to allow for inspection, maintenance, repair, renewal and replacement.', 'c');
INSERT INTO lease_condition (code, display_value, description, status) VALUES ('c6', 'Condition 6', 'The interior and exterior of any building erected on the land and all building additions thereto and all other buildings at any time erected or standing on the land and walls, drains and other appurtenances, shall be kept by the Lessee in good repair and tenantable condition to the satisfaction of the planning authority.', 'c');


ALTER TABLE lease_condition ENABLE TRIGGER ALL;

--
-- TOC entry 4239 (class 0 OID 403759)
-- Dependencies: 261
-- Data for Name: mortgage_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE mortgage_type DISABLE TRIGGER ALL;

INSERT INTO mortgage_type (code, display_value, description, status) VALUES ('levelPayment', 'Level Payment', '', 'x');
INSERT INTO mortgage_type (code, display_value, description, status) VALUES ('linear', 'Linear', '', 'c');
INSERT INTO mortgage_type (code, display_value, description, status) VALUES ('microCredit', 'Micro Credit', '', 'x');


ALTER TABLE mortgage_type ENABLE TRIGGER ALL;

--
-- TOC entry 4233 (class 0 OID 403510)
-- Dependencies: 236
-- Data for Name: rrr_group_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_group_type DISABLE TRIGGER ALL;

INSERT INTO rrr_group_type (code, display_value, description, status) VALUES ('rights', 'Rights::::Diritti', NULL, 'c');
INSERT INTO rrr_group_type (code, display_value, description, status) VALUES ('restrictions', 'Restrictions::::Restrizioni', NULL, 'c');
INSERT INTO rrr_group_type (code, display_value, description, status) VALUES ('responsibilities', 'Responsibilities::::Responsabilita', NULL, 'x');


ALTER TABLE rrr_group_type ENABLE TRIGGER ALL;

--
-- TOC entry 4232 (class 0 OID 403498)
-- Dependencies: 235
-- Data for Name: rrr_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_type DISABLE TRIGGER ALL;

INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('customaryType', 'rights', 'Customary Right::::Diritto Abituale', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('ownership', 'rights', 'Ownership', true, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('mortgage', 'restrictions', 'Mortgage', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('occupation', 'rights', 'Occupation', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('usufruct', 'rights', 'Usufruct', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('agriActivity', 'rights', 'Agriculture Activity', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('firewood', 'rights', 'Firewood Collection', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('fishing', 'rights', 'Fishing Right', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('grazing', 'rights', 'Grazing Right', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('informalOccupation', 'rights', 'Informal Occupation', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('ownershipAssumed', 'rights', 'Ownership Assumed', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('tenancy', 'rights', 'Tenancy', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('waterrights', 'rights', 'Water Rights', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('adminPublicServitude', 'restrictions', 'Administrative Public Servitude', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('monument', 'restrictions', 'Monument', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('noBuilding', 'restrictions', 'Building Restriction', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('monumentMaintenance', 'responsibilities', 'Monument Maintenance', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('waterwayMaintenance', 'responsibilities', 'Waterway Maintenance', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('apartment', 'rights', 'Apartment', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('historicPreservation', 'restrictions', 'Historic Preservation', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('limitedAccess', 'restrictions', 'Limited Access (to Road)', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('stateOwnership', 'rights', 'Public Land', false, false, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('recordLien', 'restrictions', 'Lien', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('servitude', 'restrictions', 'Access Easement', false, false, false, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('caveat', 'restrictions', 'Caveat', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('commonOwnership', 'rights', 'Common Ownership', false, true, true, NULL, 'x');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('lifeEstate', 'rights', 'Life Estate', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('lease', 'rights', 'Lease', false, true, true, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('regnDeeds', 'responsibilities', 'Other Deed', false, false, false, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('regnPowerOfAttorney', 'responsibilities', 'Power of Attorney', false, false, false, NULL, 'c');
INSERT INTO rrr_type (code, rrr_group_type_code, display_value, is_primary, share_check, party_required, description, status) VALUES ('superficies', 'rights', 'Lease In perpetuity ', false, true, true, NULL, 'x');


ALTER TABLE rrr_type ENABLE TRIGGER ALL;

--
-- TOC entry 4237 (class 0 OID 403740)
-- Dependencies: 259
-- Data for Name: rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr DISABLE TRIGGER ALL;



ALTER TABLE rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4263 (class 0 OID 404688)
-- Dependencies: 344
-- Data for Name: lease_condition_for_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE lease_condition_for_rrr DISABLE TRIGGER ALL;



ALTER TABLE lease_condition_for_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4264 (class 0 OID 404702)
-- Dependencies: 345
-- Data for Name: lease_condition_for_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE lease_condition_for_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE lease_condition_for_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4240 (class 0 OID 403769)
-- Dependencies: 262
-- Data for Name: mortgage_isbased_in_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE mortgage_isbased_in_rrr DISABLE TRIGGER ALL;



ALTER TABLE mortgage_isbased_in_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4241 (class 0 OID 403780)
-- Dependencies: 263
-- Data for Name: mortgage_isbased_in_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE mortgage_isbased_in_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE mortgage_isbased_in_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4252 (class 0 OID 404044)
-- Dependencies: 287
-- Data for Name: notation; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE notation DISABLE TRIGGER ALL;



ALTER TABLE notation ENABLE TRIGGER ALL;

--
-- TOC entry 4253 (class 0 OID 404059)
-- Dependencies: 288
-- Data for Name: notation_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE notation_historic DISABLE TRIGGER ALL;

INSERT INTO notation_historic (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('23613cf5-e643-4ed1-adb8-fbd4d55c2393', NULL, '57def446-61da-4f14-adb0-cf570e1e15ab', 'bc241354-b547-4f2d-935b-2d7a09f2d801', 'SR-150320-0004', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '20754502-d1fe-4792-83e8-c783bd74d53d', 1, 'i', 'test', '2015-03-20 09:53:40.55', '2015-03-20 11:11:25.335');
INSERT INTO notation_historic (id, ba_unit_id, rrr_id, transaction_id, reference_nr, notation_text, notation_date, status_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('0152ed1a-6939-45c7-ac34-077a8c99a2ab', NULL, '1687651d-625c-4c71-a0e2-1e3c29c44d1f', 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', 'SR-150320-0006', 'Certificate of Occupancy issued at the completion of systematic land registration titling', NULL, 'pending', '1e29e2de-6393-4bf6-abbb-e63dc3150840', 1, 'i', 'test', '2015-03-20 09:55:10.292', '2015-03-20 12:10:44.533');


ALTER TABLE notation_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 201
-- Name: notation_reference_nr_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('notation_reference_nr_seq', 1, false);


--
-- TOC entry 4256 (class 0 OID 404096)
-- Dependencies: 292
-- Data for Name: rrr_share; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_share DISABLE TRIGGER ALL;



ALTER TABLE rrr_share ENABLE TRIGGER ALL;

--
-- TOC entry 4258 (class 0 OID 404113)
-- Dependencies: 294
-- Data for Name: party_for_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE party_for_rrr DISABLE TRIGGER ALL;



ALTER TABLE party_for_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4259 (class 0 OID 404124)
-- Dependencies: 295
-- Data for Name: party_for_rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE party_for_rrr_historic DISABLE TRIGGER ALL;



ALTER TABLE party_for_rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4246 (class 0 OID 403820)
-- Dependencies: 268
-- Data for Name: required_relationship_baunit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE required_relationship_baunit DISABLE TRIGGER ALL;



ALTER TABLE required_relationship_baunit ENABLE TRIGGER ALL;

--
-- TOC entry 4247 (class 0 OID 403831)
-- Dependencies: 269
-- Data for Name: required_relationship_baunit_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE required_relationship_baunit_historic DISABLE TRIGGER ALL;



ALTER TABLE required_relationship_baunit_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4238 (class 0 OID 403753)
-- Dependencies: 260
-- Data for Name: rrr_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_historic DISABLE TRIGGER ALL;

INSERT INTO rrr_historic (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('57def446-61da-4f14-adb0-cf570e1e15ab', '3541fc82-5183-4215-a03a-cc685519bdde', 'SR-150320-0003', 'ownership', 'pending', true, 'bc241354-b547-4f2d-935b-2d7a09f2d801', '2015-03-20 09:53:34.021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45fd17c8-88ab-4cd1-93b8-26f51651c5ae', 1, 'i', 'test', '2015-03-20 09:53:40.55', '2015-03-20 11:11:25.335');
INSERT INTO rrr_historic (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('1687651d-625c-4c71-a0e2-1e3c29c44d1f', '8c3efbe3-0665-485f-b578-110d988bc859', 'SR-150320-0005', 'ownership', 'pending', true, 'a0a8f8dc-2b71-4222-b28b-da6e08fbf3aa', '2015-03-20 09:55:02.281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3e47c0bd-20dc-4453-ad06-a0e8d7f1263a', 1, 'i', 'test', '2015-03-20 09:55:10.292', '2015-03-20 12:10:44.533');
INSERT INTO rrr_historic (id, ba_unit_id, nr, type_code, status_code, is_primary, transaction_id, registration_date, expiration_date, share, amount, due_date, mortgage_interest_rate, mortgage_ranking, mortgage_type_code, rowidentifier, rowversion, change_action, change_user, change_time, change_time_valid_until) VALUES ('e29aaaab-caab-4322-8fe4-f82547657ec2', '43959af6-30fd-4404-9137-d6ccc60a851c', 'SR-150320-0043', 'ownership', 'pending', true, '2773d44e-d171-4553-bdd0-6fa5d52126c8', '2015-03-20 13:10:22.885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60e3a2e2-263b-47cb-b6a7-06d9c9e9cfe7', 1, 'i', 'test', '2015-03-20 13:10:49.166', '2015-03-20 13:11:02.952');


ALTER TABLE rrr_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 200
-- Name: rrr_nr_seq; Type: SEQUENCE SET; Schema: administrative; Owner: postgres
--

SELECT pg_catalog.setval('rrr_nr_seq', 58, true);


--
-- TOC entry 4257 (class 0 OID 404107)
-- Dependencies: 293
-- Data for Name: rrr_share_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE rrr_share_historic DISABLE TRIGGER ALL;



ALTER TABLE rrr_share_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4244 (class 0 OID 403803)
-- Dependencies: 266
-- Data for Name: source_describes_ba_unit; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_ba_unit DISABLE TRIGGER ALL;



ALTER TABLE source_describes_ba_unit ENABLE TRIGGER ALL;

--
-- TOC entry 4245 (class 0 OID 403814)
-- Dependencies: 267
-- Data for Name: source_describes_ba_unit_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_ba_unit_historic DISABLE TRIGGER ALL;



ALTER TABLE source_describes_ba_unit_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4277 (class 0 OID 405836)
-- Dependencies: 374
-- Data for Name: source_describes_dispute; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_dispute DISABLE TRIGGER ALL;



ALTER TABLE source_describes_dispute ENABLE TRIGGER ALL;

--
-- TOC entry 4278 (class 0 OID 405847)
-- Dependencies: 375
-- Data for Name: source_describes_dispute_historic; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_dispute_historic DISABLE TRIGGER ALL;



ALTER TABLE source_describes_dispute_historic ENABLE TRIGGER ALL;

--
-- TOC entry 4242 (class 0 OID 403786)
-- Dependencies: 264
-- Data for Name: source_describes_rrr; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

ALTER TABLE source_describes_rrr DISABLE TRIGGER ALL;



ALTER TABLE source_describes_rrr ENABLE TRIGGER ALL;

--
-- TOC entry 4243 (class 0 OID 403797)
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


-- Completed on 2015-03-23 16:03:50

--
-- PostgreSQL database dump complete
--

