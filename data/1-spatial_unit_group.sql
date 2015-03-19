--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2015-03-19 13:08:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = cadastre, pg_catalog;

--
-- TOC entry 3873 (class 0 OID 361842)
-- Dependencies: 302
-- Data for Name: spatial_unit_group; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

INSERT INTO spatial_unit_group VALUES ('NZ', 0, 'NZ', 'NZ', NULL, NULL, NULL, 0, 'ed81e71e-88d1-11e3-8535-e7314c47eeb4', 1, 'i', 'test', '2015-03-19 10:13:04.801');
INSERT INTO spatial_unit_group VALUES ('4d977feb-355d-4dc9-a018-c0f593d9cf9c', 1, 'WHK', '/WHK', NULL, '010300002091080000010000000B000000CCCCC6FB7C163B41C84CDEE88EA0564136BFB1D7C44E3B41C84CDEE88EA0564136BFB1D7C44E3B417EB507CF93A15641D36849F743613B417EB507CF93A156415454C28A53613B4107D7211F87A05641E7A1920E56733B41E71100048BA05641DF1CBD99F8723B41947AC9B91C975641740339A4015D3B41778C99C53F975641712C477DE25C3B41A3E60B33E4945641CEA3B8229C163B41A3E60B33E4945641CCCCC6FB7C163B41C84CDEE88EA05641', NULL, 0, '01322058-cfc5-4b36-ad54-cb311f8ba988', 1, 'i', 'test', '2015-03-19 12:24:58.755');
INSERT INTO spatial_unit_group VALUES ('f4f8f48e-6a91-4a2e-804e-1154dd1b6783', 2, 'WEST', '/WHK/WEST', NULL, '010300002091080000010000000500000091B7DD5C97193B4104D4D9F4CB975641AC1D50E2CE1A3B41F85434A4719E56411017DE1C30363B4157A499F5659E5641F9EC3C78DF3A3B41435E1D2BC497564191B7DD5C97193B4104D4D9F4CB975641', NULL, 0, '93bcbd13-b15a-4e94-b877-5b04bf3e3a12', 1, 'i', 'test', '2015-03-19 12:26:40.581');
INSERT INTO spatial_unit_group VALUES ('4ba62718-1c94-49f5-bec6-f5d08610cbd2', 2, 'CNTR', '/WHK/CNTR', NULL, '010300002091080000010000000700000033596D57A2333B417BE4C0DCC5975641F9EC3C78DF3A3B41435E1D2BC49756411017DE1C30363B4157A499F5659E5641C926E8C1E6493B4157A499F5659E56412727195B61483B41A894EF802295564136D9173EE4373B41690AAC4A2A95564133596D57A2333B417BE4C0DCC5975641', NULL, 0, '05fc7e7e-db26-466b-8438-b2d6c7e1f963', 1, 'i', 'test', '2015-03-19 12:28:21.756');
INSERT INTO spatial_unit_group VALUES ('d44857b0-e950-469e-bb35-25ff7dbe0296', 2, 'EAST', '/WHK/EAST', NULL, '010300002091080000010000000A0000002727195B61483B41A894EF8022955641C926E8C1E6493B4157A499F5659E5641CBE37382E6603B417CDE15A874A156415454C28A53613B4101293ED148A05641443DE4ED086C3B41C29EFA9A50A056411048F109B9693B4180271A3CEB9B5641840DE48DBC5D3B41679899DDD29A5641572BB4B172613B41B168F9ADF996564170C767C31A573B41C2AB2D4EE09456412727195B61483B41A894EF8022955641', NULL, 0, 'bb8ad1d7-4dfc-4685-9c0d-8a9eda0edd49', 1, 'i', 'test', '2015-03-19 12:29:48.797');
INSERT INTO spatial_unit_group VALUES ('f3861280-c8a7-405f-b242-84894cbf280d', 3, 'WE1', '/WHK/WEST/WE1', NULL, '01030000209108000001000000050000003C4F38C8101A3B41E3C8136DDB985641681CE54E121B3B4190CF74F75D9E5641CBDBAD153F293B418C481F8E469E564194790053F7273B419C1CBE74B29856413C4F38C8101A3B41E3C8136DDB985641', NULL, 0, 'b0025421-67f7-45e7-95f9-d843802dd766', 1, 'i', 'test', '2015-03-19 12:32:06.708');
INSERT INTO spatial_unit_group VALUES ('0e3f300d-e2d3-435d-a08f-e026ef1e0a4d', 3, 'WE2', '/WHK/WEST/WE2', NULL, '010300002091080000010000000500000094790053F7273B419C1CBE74B2985641CBDBAD153F293B418C481F8E469E564112A2683CD6303B410B8574D93A9E5641FB7767C449303B41803D15038B99564194790053F7273B419C1CBE74B2985641', NULL, 0, '744a1504-bae6-4b9c-aeb1-a4870676f33f', 1, 'i', 'test', '2015-03-19 12:33:00.15');
INSERT INTO spatial_unit_group VALUES ('9799bde6-9af9-4471-af2c-bf366b7de78c', 3, 'WE3', '/WHK/WEST/WE3', NULL, '0103000020910800000100000005000000FB7767C449303B41803D15038B99564112A2683CD6303B410B8574D93A9E5641EBA3C8DDDD353B414A231FFF349E564165FD239FB3383B4161D716284C9A5641FB7767C449303B41803D15038B995641', NULL, 0, 'ce285ecb-6100-4b67-9fc4-51adc8a0fa30', 1, 'i', 'test', '2015-03-19 12:33:57.048');
INSERT INTO spatial_unit_group VALUES ('6b39f969-d903-4c2d-acc9-6c3b1722e596', 3, 'WE4', '/WHK/WEST/WE4', NULL, '010300002091080000010000000600000094790053F7273B419C1CBE74B2985641FB7767C449303B41803D15038B99564165FD239FB3383B4161D716284C9A5641AC7B2707593A3B41806B67930E9856410ED35B14CD2A3B41FA206775EB97564194790053F7273B419C1CBE74B2985641', NULL, 0, '331bd118-cf2a-4e91-8aa9-91e2dd485631', 1, 'i', 'test', '2015-03-19 12:34:59.051');
INSERT INTO spatial_unit_group VALUES ('606ebcce-3780-4f47-97ed-727ccd7f7b7d', 4, 'PD3', '/WHK/WEST/WE1/PD3', NULL, '01030000209108000001000000050000003B27FC4F451A3B4105598E060899564190895F9BB41A3B4112D9EC90729B56417C1837C97B283B41F83637B0839B5641759CF41FD9273B41F6E8E2EBE79856413B27FC4F451A3B4105598E0608995641', NULL, 0, '60c99b73-74bb-4464-b5a4-44840993619a', 1, 'i', 'test', '2015-03-19 12:42:31.543');
INSERT INTO spatial_unit_group VALUES ('ac49bb07-792a-4db4-bb83-dd88fc0094fc', 5, '1', '/WHK/WEST/WE1/PD2/1', NULL, '0103000020910800000100000005000000A07C169951243B4190363A65ED9C5641C02BB43950263B41038BC027EE9C5641CB5DB19E6E263B41A221ECECB59C56413C2049AD57243B414CEA14179C9C5641A07C169951243B4190363A65ED9C5641', NULL, 0, 'b8d41c67-9951-4163-878f-f7999d230505', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('5dde259a-eb4f-48ad-a6f0-0627b34276b4', 5, '2', '/WHK/WEST/WE1/PD2/2', NULL, '01030000209108000001000000060000003C2049AD57243B414CEA14179C9C5641CB5DB19E6E263B41A221ECECB59C5641A49454DE1B273B41FF1178E5799C564182FE5CAFC0263B41EA8040DC639C56417467AED563243B41E12106386C9C56413C2049AD57243B414CEA14179C9C5641', NULL, 0, '8c81b478-ffb6-4817-9e47-52f00a7fcc4d', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('38631423-da35-4f9d-8062-e7c876164c04', 5, '3', '/WHK/WEST/WE1/PD2/3', NULL, '0103000020910800000100000004000000803392996A233B41A26E5F1C2A9C56417467AED563243B41E12106386C9C5641F373818E35253B41F52CEEAFCF9B5641803392996A233B41A26E5F1C2A9C5641', NULL, 0, '8e8c5f8d-8b99-48a9-b412-9fa7a0bae8d2', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('22749480-e471-4174-8252-8b2d7b974e0b', 5, '4', '/WHK/WEST/WE1/PD2/4', NULL, '01030000209108000001000000040000007467AED563243B41E12106386C9C564182FE5CAFC0263B41EA8040DC639C5641F373818E35253B41F52CEEAFCF9B56417467AED563243B41E12106386C9C5641', NULL, 0, 'b0633776-8746-4af7-b610-28e607b96d65', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('22c6939c-a177-4b36-bcf8-106a5969c6b1', 5, '5', '/WHK/WEST/WE1/PD2/5', NULL, '0103000020910800000100000006000000F373818E35253B41F52CEEAFCF9B564182FE5CAFC0263B41EA8040DC639C5641A49454DE1B273B41FF1178E5799C5641F1F240A1F0273B41BD9815584F9C564134068A8D03273B415D4F770DB29B5641F373818E35253B41F52CEEAFCF9B5641', NULL, 0, '969a477b-bcdb-4c92-95bb-46729d764bcc', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('c2fd6a52-1f6d-4c25-8153-a27fc15dd162', 5, '6', '/WHK/WEST/WE1/PD2/6', NULL, '010300002091080000010000000600000034068A8D03273B415D4F770DB29B5641F1F240A1F0273B41BD9815584F9C5641BEF7E67B7F283B411796A89F519C56416B669527B3283B41B7FF9625409C564187B0815373283B41BC12C6C69C9B564134068A8D03273B415D4F770DB29B5641', NULL, 0, 'c8d33af3-208c-4973-8d34-405b99e99b0b', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('fa18f5f6-2048-4120-9967-6800e6fa04c1', 5, '7', '/WHK/WEST/WE1/PD2/7', NULL, '0103000020910800000100000007000000FB8D40AE89223B415C7CB44C8B9B5641803392996A233B41A26E5F1C2A9C5641F373818E35253B41F52CEEAFCF9B564134068A8D03273B415D4F770DB29B56415783DB4ABB253B417F32E26B819B5641D411571DAB223B4124354F247F9B5641FB8D40AE89223B415C7CB44C8B9B5641', NULL, 0, '1c037bc8-947c-435d-9b66-abe905c51695', 1, 'i', 'test', '2015-03-19 12:47:18.702');
INSERT INTO spatial_unit_group VALUES ('f7a86698-9536-4054-aaa1-55b2d342b996', 4, 'PD1', '/WHK/WEST/WE1/PD1', NULL, '010300002091080000010000000600000046604A78D7223B41235B23D3ED9C5641008E78C7121B3B41DFBBABB1E29C56418A3447D45F1B3B4176BBAE664C9E5641C4A93FA4F3283B419D2EBFB7329E56416F47DC5884283B418265DFF4F59C564146604A78D7223B41235B23D3ED9C5641', NULL, 0, '337b3e8f-7455-4efc-a5e8-3598fe69cf82', 2, 'u', 'test', '2015-03-19 12:48:22.62');
INSERT INTO spatial_unit_group VALUES ('25303589-83c5-4890-85c6-5443de6e2cf1', 4, 'PD2', '/WHK/WEST/WE1/PD2', NULL, '0103000020910800000100000006000000FE2F6FD447223B41F04FD5FA7B9B564146604A78D7223B41235B23D3ED9C56416F47DC5884283B418265DFF4F59C5641EC1C50F5D9283B41CFACAFEC999C56417C1837C97B283B41F83637B0839B5641FE2F6FD447223B41F04FD5FA7B9B5641', NULL, 0, '8e79ce02-7a05-467f-8f3a-a85bd8e504aa', 2, 'u', 'test', '2015-03-19 12:48:22.62');
INSERT INTO spatial_unit_group VALUES ('96ce7e62-f3fc-4d76-aa0f-230662b2d208', 5, '8', '/WHK/WEST/WE1/PD2/8', NULL, '01030000209108000001000000090000005DFA334956223B41D8791C40819B56412739913DE5223B41B5DD1C80EA9C5641A07C169951243B4190363A65ED9C56413C2049AD57243B414CEA14179C9C56417467AED563243B41E12106386C9C5641803392996A233B41A26E5F1C2A9C5641FB8D40AE89223B415C7CB44C8B9B5641D411571DAB223B4124354F247F9B56415DFA334956223B41D8791C40819B5641', NULL, 0, 'bee24743-f71a-40c2-ac20-9bc93022aa50', 1, 'i', 'test', '2015-03-19 12:49:59.543');
INSERT INTO spatial_unit_group VALUES ('0a533c16-01e8-44ae-9e40-4d2559a201e0', 5, '1', '/1', NULL, '0103000020910800000100000005000000C4D23649A12C3B414733347D239D5641FDB137C9C82F3B414E6DEE054D9D56414D8AC3F789303B41E1DB79B48F9C56415950F131BF2D3B416C3F4BDA529C5641C4D23649A12C3B414733347D239D5641', NULL, 0, '6c525738-2bef-4c2c-bc9e-1b12d1647979', 1, 'i', 'test', '2015-03-19 12:51:15.151');
INSERT INTO spatial_unit_group VALUES ('4257aa2f-cde6-400c-9a06-575f5815d9ad', 5, '2', '/2', NULL, '01030000209108000001000000050000005950F131BF2D3B416C3F4BDA529C56414D8AC3F789303B41E1DB79B48F9C5641DE274FA676303B41E92EA8EEC29B564139F5080F172F3B41B87F1C80969B56415950F131BF2D3B416C3F4BDA529C5641', NULL, 0, 'dbe8784e-adac-4fff-a1fe-50d540db66a7', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('8728b776-17a0-4dd8-bafe-73a25533ae54', 5, '3', '/3', NULL, '010300002091080000010000000500000047CA6583272E3B41DA4A1C40D79A564139F5080F172F3B41B87F1C80969B5641DE274FA676303B41E92EA8EEC29B5641C7F094BD57303B4168A79051D59A564147CA6583272E3B41DA4A1C40D79A5641', NULL, 0, 'ca13cf8d-d5d0-4bcf-b0c5-f6dfad8d98b9', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('c722f33c-6e78-4351-aef4-4378f23ad7ec', 5, '4', '/4', NULL, '010300002091080000010000000500000051BF93BD062C3B41BA501C80EC9A5641A1971FECC72C3B41A4897934669B564139F5080F172F3B41B87F1C80969B564147CA6583272E3B41DA4A1C40D79A564151BF93BD062C3B41BA501C80EC9A5641', NULL, 0, '6c5132a2-a040-4dbf-b6df-e4cecc610374', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('2b3edb8a-d018-42ed-b007-940b7fefc402', 5, '5', '/5', NULL, '0103000020910800000100000005000000B41DAB9A5F2C3B412ADB33BDE49B56415950F131BF2D3B416C3F4BDA529C564139F5080F172F3B41B87F1C80969B5641A1971FECC72C3B41A4897934669B5641B41DAB9A5F2C3B412ADB33BDE49B5641', NULL, 0, '2164f6a1-b399-4d29-8ce7-ef49d2d3dc3c', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('7199f310-5a80-419d-995e-da721cb5b2e5', 5, '6', '/6', NULL, '0103000020910800000100000008000000DD9CC1F790293B412ED4D6A81F9C5641DD9CC1F790293B4193730523679C56418FD36403AB2A3B419B654BFADC9C5641C4D23649A12C3B414733347D239D56415950F131BF2D3B416C3F4BDA529C5641B41DAB9A5F2C3B412ADB33BDE49B5641B13D7C602E2B3B41E6ED9051D49B5641DD9CC1F790293B412ED4D6A81F9C5641', NULL, 0, 'da2517d2-ab09-46b4-b427-a905801f6b92', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('45cda4c1-a2fb-41f3-aa7f-3484128fc363', 5, '7', '/7', NULL, '0103000020910800000100000005000000B1FF4C26A9283B412923A86E989B564136997B60DB283B411B96BFAB3B9C5641DD9CC1F790293B412ED4D6A81F9C564141CCD8D43F293B41BBC0331D859B5641B1FF4C26A9283B412923A86E989B5641', NULL, 0, 'ada05894-3d5a-450d-9c78-e2073ffeeddd', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('6715ae57-0c3e-422c-b8c4-ac01ac1ec368', 5, '8', '/8', NULL, '0103000020910800000100000009000000700B4DA6D3283B410CB233FD4F9B564141CCD8D43F293B41BBC0331D859B5641DD9CC1F790293B412ED4D6A81F9C5641B13D7C602E2B3B41E6ED9051D49B5641A60A1FECC92A3B418096D688409B56419726933DDE293B41C4CBEDA5049B56411E91C17766293B41A6120583089B5641075A078F47293B41F57A7914319B5641700B4DA6D3283B410CB233FD4F9B5641', NULL, 0, '9b4a558a-573a-424e-9672-8e5cc1ce303e', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('8cdfaa60-0e61-4503-beed-1c529ff851b1', 5, '9', '/9', NULL, '0103000020910800000100000006000000A60A1FECC92A3B418096D688409B5641B13D7C602E2B3B41E6ED9051D49B5641B41DAB9A5F2C3B412ADB33BDE49B5641A1971FECC72C3B41A4897934669B564151BF93BD062C3B41BA501C80EC9A5641A60A1FECC92A3B418096D688409B5641', NULL, 0, '590e9478-f8c9-41ff-b4b6-88e7de8c31c7', 1, 'i', 'test', '2015-03-19 12:53:42.809');
INSERT INTO spatial_unit_group VALUES ('9e2e77e2-b8e3-4d8d-9acd-bfc2e2c59e4f', 4, 'PD3', '/WHK/WEST/WE2/PD3', NULL, '010300002091080000010000000A000000DD9CC1F790293B412ED4D6A81F9C5641DD9CC1F790293B4193730523679C56418FD36403AB2A3B419B654BFADC9C5641C4D23649A12C3B414733347D239D5641FDB137C9C82F3B414E6DEE054D9D56414D8AC3F789303B41E1DB79B48F9C56415950F131BF2D3B416C3F4BDA529C5641B41DAB9A5F2C3B412ADB33BDE49B5641B13D7C602E2B3B41E6ED9051D49B5641DD9CC1F790293B412ED4D6A81F9C5641', NULL, 0, 'ff431a70-1c63-4cb9-be90-1fb6bfbe9790', 2, 'u', 'test', '2015-03-19 13:02:31.712');
INSERT INTO spatial_unit_group VALUES ('2baf0792-215a-4647-a816-3ef8b1d91dad', 4, 'PD4', '/WHK/WEST/WE2/PD4', NULL, '0103000020910800000100000007000000B41DAB9A5F2C3B412ADB33BDE49B56415950F131BF2D3B416C3F4BDA529C56414D8AC3F789303B41E1DB79B48F9C5641DE274FA676303B41E92EA8EEC29B564139F5080F172F3B41B87F1C80969B5641A1971FECC72C3B41A4897934669B5641B41DAB9A5F2C3B412ADB33BDE49B5641', NULL, 0, '6017d447-321e-46fd-a8ef-30c5a1a22d5c', 2, 'u', 'test', '2015-03-19 13:02:31.712');
INSERT INTO spatial_unit_group VALUES ('f72e4051-348c-4fad-a052-876577b9a001', 4, 'PD5', '/WHK/WEST/WE2/PD5', NULL, '010300002091080000010000000700000051BF93BD062C3B41BA501C80EC9A5641A1971FECC72C3B41A4897934669B564139F5080F172F3B41B87F1C80969B5641DE274FA676303B41E92EA8EEC29B5641C7F094BD57303B4168A79051D59A564147CA6583272E3B41DA4A1C40D79A564151BF93BD062C3B41BA501C80EC9A5641', NULL, 0, '44dd69ba-9471-486f-932f-25de7eab6e2f', 2, 'u', 'test', '2015-03-19 13:02:31.712');


-- Completed on 2015-03-19 13:08:41

--
-- PostgreSQL database dump complete
--

