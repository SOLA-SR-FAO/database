--
-- PostgreSQL database dump
--


-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2015-03-23 16:02:51

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = address, pg_catalog;

--
-- TOC entry 3860 (class 0 OID 403372)
-- Dependencies: 224
-- Data for Name: address; Type: TABLE DATA; Schema: address; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE address DISABLE TRIGGER ALL;

INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('f63fdc95-802b-4a49-a03c-55451dde0d54', 'street flowers 1', NULL, '4b3a6648-b63c-40c5-b110-8a5701fa0ecc', 1, 'i', 'test', '2015-03-23 14:54:41.715');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('20e3638c-0726-4905-bea1-f2018c1a20a4', 'Kensinghton Road 1', NULL, 'bf9fcc34-f5b2-4331-8e62-296f0a5c94d5', 1, 'i', 'test', '2015-03-23 14:54:41.725');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7e04fe6f-ce6b-43a3-b969-0a337c488361', 'high street 2', NULL, 'eb692d45-4202-46d7-86cc-80a93ff66513', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('1779ee61-538c-4b73-922b-d8b7fdecbd02', 'old brompton road 144', NULL, '3baf754a-5d29-4950-b0bb-f7fbf8ffea14', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('7ac59959-7ddd-43f9-8b75-420d344219a3', 'freeway street  44', NULL, 'e7a37633-163b-40a1-90ca-cb4508152731', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('be4e4aa3-0f26-475b-a445-ed07b588e46b', 'road new 1', NULL, '59b88e83-35f5-42c2-997b-90d3fab6b7b7', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('cd86354d-60d4-41b5-8341-c5a7b372bd6a', 'hampton road', NULL, '1c036967-9375-46ec-83d3-b523cf911d4a', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('27d24304-77b9-4a34-8973-d275f7c812bc', 'top hill 567', NULL, 'e73d7d10-7a52-4358-b8b6-a37cd160ab15', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('747125ba-7fde-44d2-b743-f71258db9f85', 'green road 77', NULL, 'c6da6091-b06e-40d0-96b9-7c1b8acf05de', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('c73ef8b3-1eb7-4b07-82fa-6818c403d1c8', 'road grand 22', NULL, 'ffba8dad-d081-418c-afe7-7a54ff0d7832', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e08d43f3-fbfe-489e-aae1-ae97d61a406e', 'king road 44', NULL, 'ae6e1569-bdba-4cb9-8df1-37be603b4928', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a19ef3a6-385a-420a-b7cb-68e9827f46c8', 'road map 56', NULL, '1322dff3-36f3-4968-8f20-735d6cf4f535', 1, 'i', 'test', '2015-03-23 14:54:41.735');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('9dc4e74a-f349-4da9-8aa4-8da1ae586f0c', 'Sinclaire road 80', NULL, '504f3ba9-7931-47ba-a5ee-5005681e1ccf', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5e8faf31-fa39-4eaa-9fd5-838e2914edd2', 'promenade street 73', NULL, 'd5154cc2-e783-4ba0-b37a-cf010c3fea8a', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('a2328e0d-5c11-412e-9844-4f2c36129036', 'strauss street 34', NULL, '18864e65-7afb-4884-b179-be42748c71cd', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('13b6f35a-b207-4d33-96ff-a437efe37c1e', 'king road 22', NULL, 'b0f6af8f-4b4e-4447-bb5b-d7d65394e739', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ae67a0da-1c6e-4164-8342-208992ed69a5', 'Regent road', NULL, '0e10fb8b-96df-418b-8f02-ccf5d3f317a5', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('001fdca6-7323-490e-8eb4-38cb6fd62fc4', 'garden streen 48', NULL, '7ef06cc1-95c8-44ee-96e9-4641c92218e2', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('21af7009-3230-4d1d-9a15-bedf7e2ff157', 'Poland street', NULL, 'b6c11368-4cf2-4fa1-8af0-741ff7835014', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2aa9a500-9181-4b48-8eed-e3106367f0af', 'rossini street 67', NULL, '39497550-b2a4-4341-ab52-0bf92cb09f90', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('0d610f9a-72ed-448e-8860-a1b087c6e804', 'bellini street 32', NULL, 'fdd65fe0-1238-4777-b7a6-8a0195964120', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('b9f4739b-42c7-4e8d-ba58-7d6f58edceb0', 'john road 1', NULL, '33f06f62-62bd-465d-83eb-fe38d2510191', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('157daf4b-8ec4-4572-9060-a84c80c2c08c', 'flute avenue 1', NULL, '7562b38c-951f-4e3a-a8fb-44bf9e4c9a42', 1, 'i', 'test', '2015-03-23 14:54:41.745');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('f91370f6-c668-4d54-ba2d-9510a699a58d', 'free road 1', NULL, '945ea25f-587e-4f1e-a465-6b4762402442', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('cb1a819a-d012-4f38-92e1-bb4bb07bc2b5', 'kings road', NULL, '73806dee-c76b-48b2-82fd-bc43639baa56', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('991929cd-6878-4ee4-ab6e-29335ad8b7b2', 'landscape street 3', NULL, 'eeb4e2ac-671d-4c21-90a8-7ef70f546c9f', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('2aed960e-50e3-4075-a7c8-320933566bc5', 'kreutzer street 457', NULL, '35338922-5172-492d-b0ed-b2e8be3f1321', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('f65c9c91-0136-44e5-bff2-6459f87e4a8f', 'galles road 2', NULL, '64b96b08-dba7-45b0-bac1-bed7e4ed544d', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('42a63e1a-9209-44e2-a1b9-ef7142c415ec', 'tamerine street 44', NULL, '2a41e989-97ab-400e-bd7c-24e289eab2e4', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ac0048b9-1902-406c-9b89-6711055d836c', 'butterfly road 31', NULL, 'a071483f-2e88-454c-818c-b1942aedb634', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('5612aeee-736c-4bd5-8305-e7929cb71fe5', 'jansen street 2', NULL, 'b3524edf-47e3-464b-9faa-73d209250ac8', 1, 'i', 'test', '2015-03-23 14:54:41.755');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('ae170d80-0c22-4749-8f22-00476da671ea', 'manon street 2', NULL, 'f644a355-9338-4de2-9447-5540d6cd96b7', 1, 'i', 'test', '2015-03-23 14:54:41.765');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('e873bcdd-3cec-44f8-ab87-0a4beb8fe04b', 'freemont road 3', NULL, 'fb1453f5-f6d8-4eea-9cff-bca0fa2bf206', 1, 'i', 'test', '2015-03-23 14:54:41.765');
INSERT INTO address (id, description, ext_address_id, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('dd5d257a-2835-41d3-9165-e2967c2a3ffa', 'jansen street 99', NULL, '4bbe131b-db35-4d9e-9ce2-1126bfbef7c1', 1, 'i', 'test', '2015-03-23 14:54:41.765');


ALTER TABLE address ENABLE TRIGGER ALL;

--
-- TOC entry 3861 (class 0 OID 403383)
-- Dependencies: 225
-- Data for Name: address_historic; Type: TABLE DATA; Schema: address; Owner: postgres
--

ALTER TABLE address_historic DISABLE TRIGGER ALL;



ALTER TABLE address_historic ENABLE TRIGGER ALL;

-- Completed on 2015-03-23 16:02:51

--
-- PostgreSQL database dump complete
--

