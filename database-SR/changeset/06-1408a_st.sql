DROP TABLE IF EXISTS party.nation_type;

CREATE TABLE party.nation_type
(
  code character varying(20) NOT NULL,
  display_value character varying(250) NOT NULL,
  status character(1) NOT NULL DEFAULT 't'::bpchar,
  description character varying(555),
  CONSTRAINT nation_type_pkey PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE party.nation_type OWNER TO postgres;
COMMENT ON TABLE party.nation_type IS 'Reference Table / Code list of nations
LADM Reference Object 
LA_
LADM Definition
nation';

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.0.3
-- Dumped by pg_dump version 9.0.3
-- Started on 2014-07-17 16:13:46

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = party, pg_catalog;

--
-- TOC entry 3713 (class 0 OID 1453213)
-- Dependencies: 3389
-- Data for Name: nation_type; Type: TABLE DATA; Schema: party; Owner: postgres
--
INSERT INTO nation_type (code, display_value, status, description) VALUES ('01', 'New Zealand', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('02', 'Afghanistan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('03', 'Aland Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('04', 'Albania', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('05', 'Algeria', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('06', 'American Samoa', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('07', 'Andorra', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('08', 'Angola', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('09', 'Anguilla', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('10', 'Antarctica', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('11', 'Antigua And Barbuda', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('12', 'Argentina', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('13', 'Armenia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('14', 'Aruba', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('15', 'Australia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('16', 'Austria', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('17', 'Azerbaijan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('18', 'Bahamas', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('19', 'Bahrain', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('20', 'Bangladesh', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('21', 'Barbados', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('22', 'Belarus', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('23', 'Belgium', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('24', 'Belize', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('25', 'Benin', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('26', 'Bermuda', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('27', 'Bhutan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('28', 'Bolivia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('29', 'Bosnia And Herzegovin', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('30', 'Botswana', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('31', 'Bouvet Island', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('32', 'Brazil', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('33', 'British Indian Ocean Territory', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('34', 'Brunei Darussalam', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('35', 'Bulgaria', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('36', 'Burkina Faso', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('37', 'Burundi', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('38', 'Cambodia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('39', 'Cameroon', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('40', 'Canada', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('41', 'Cape Verde', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('42', 'Cayman Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('43', 'Central African Republic', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('44', 'Chad', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('45', 'Chile', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('46', 'China', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('47', 'Christmas Island', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('48', 'Cocos (Keeling) Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('49', 'Colombia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('50', 'Comoros', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('51', 'Congo', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('52', 'Cook Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('53', 'Costa Rica', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('54', 'Cote Ivoire', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('55', 'Croatia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('56', 'Cuba', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('57', 'Cyprus', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('58', 'Czech Republic', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('59', 'Denmark', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('60', 'Djibouti', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('61', 'Dominica', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('62', 'Dominican Republic', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('63', 'Ecuador', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('64', 'Egypt', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('65', 'El Salvador', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('66', 'Equatorial Guinea', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('67', 'Eritrea', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('68', 'Estonia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('69', 'Ethiopia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('70', 'Falkland Islands (Malvinas)', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('71', 'Faroe Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('72', 'Fiji', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('73', 'Finland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('74', 'France', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('75', 'French Guiana', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('76', 'French Polynesia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('77', 'French Southern Territories', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('78', 'Gabon', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('79', 'Gambia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('80', 'Georgia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('81', 'Germany', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('82', 'Ghana', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('83', 'Gibraltar', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('84', 'Greece', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('85', 'Greenland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('86', 'Grenada', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('87', 'Guadeloupe', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('88', 'Guam', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('89', 'Guatemala', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('90', 'Guernsey', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('91', 'Guinea', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('92', 'Guinea-bissau', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('93', 'Guyana', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('94', 'Haiti', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('95', 'Heard Island And Mcdonald Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('96', 'Holy See (Vatican City State)', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('97', 'Honduras', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('98', 'Hong Kong', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('99', 'Hungary', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('100', 'Iceland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('101', 'India', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('102', 'Indonesia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('103', 'Iran', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('104', 'Iraq', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('105', 'Ireland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('106', 'Isle Of Man', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('107', 'Israel', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('108', 'Italy', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('109', 'Jamaica', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('110', 'Japan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('111', 'Jersey', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('112', 'Jordan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('113', 'Kazakhstan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('114', 'Kenya', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('115', 'Kiribati', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('116', 'Korea', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('117', 'Democratic People Republic Of Korea', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('118', 'Kuwait', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('119', 'Kyrgyzstan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('120', 'Lao', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('121', 'Latvia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('122', 'Lebanon', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('123', 'Lesotho', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('124', 'Liberia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('125', 'Libyan Arab Jamahiriy', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('126', 'Liechtenstein', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('127', 'Lithuania', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('128', 'Luxembourg', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('129', 'Macao', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('130', 'Macedonia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('131', 'Madagascar', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('132', 'Malawi', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('133', 'Malaysia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('134', 'Maldives', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('135', 'Mali', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('136', 'Malta', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('137', 'Marshall Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('138', 'Martinique', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('139', 'Mauritania', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('140', 'Mauritius', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('141', 'Mayotte', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('142', 'Mexico', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('143', 'Micronesia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('144', 'Moldova', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('145', 'Monaco', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('146', 'Mongolia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('147', 'Montenegro', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('148', 'Montserrat', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('149', 'Morocco', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('150', 'Mozambique', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('151', 'Myanmar', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('152', 'Namibia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('153', 'Nauru', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('154', 'Nepal', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('155', 'Netherlands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('156', 'Netherlands Antilles', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('157', 'New Caledonia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('158', 'Nicaragua', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('159', 'Niger', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('160', 'Nigeria', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('161', 'Niue', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('162', 'Norfolk Island', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('163', 'Northern Mariana Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('164', 'Norway', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('165', 'Oman', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('166', 'Pakistan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('167', 'Palau', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('168', 'Palestina', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('169', 'Panama', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('170', 'Papua New Guinea', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('171', 'Paraguay', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('172', 'Peru', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('173', 'Philippines', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('174', 'Pitcairn', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('175', 'Poland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('176', 'Portugal', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('177', 'Puerto Rico', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('178', 'Qatar', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('179', 'Reunion', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('180', 'Romania', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('181', 'Russian Federation', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('182', 'Rwanda', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('183', 'Saint Helena', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('184', 'Saint Kitts And Nevis', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('185', 'Saint Lucia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('186', 'Saint Pierre And Miquelon', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('187', 'Saint Vincent And The Grenadines', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('188', 'Samoa', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('189', 'San Marino', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('190', 'Sao Tome And Principe', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('191', 'Saudi Arabia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('192', 'Senegal', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('193', 'Serbia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('194', 'Seychelles', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('195', 'Sierra Leone', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('196', 'Singapore', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('197', 'Slovakia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('198', 'Slovenia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('199', 'Solomon Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('200', 'Somalia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('201', 'South Africa', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('202', 'South Georgia And The South Sandwich Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('203', 'Spain', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('204', 'Sri Lanka', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('205', 'Sudan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('206', 'Suriname', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('207', 'Svalbard And Jan Mayen', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('208', 'Swaziland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('209', 'Sweden', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('210', 'Switzerland', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('211', 'Syria', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('212', 'Taiwan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('213', 'Tajikistan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('214', 'Tanzania', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('215', 'Thailand', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('216', 'Timor-leste', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('217', 'Togo', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('218', 'Tokelau', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('219', 'Tonga', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('220', 'Trinidad And Tobago', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('221', 'Tunisia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('222', 'Turkey', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('223', 'Turkmenistan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('224', 'Turks And Caicos Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('225', 'Tuvalu', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('226', 'Uganda', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('227', 'Ukraine', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('228', 'United Arab Emirates', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('229', 'United Kingdom', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('230', 'United States', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('231', 'Uruguay', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('232', 'Uzbekistan', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('233', 'Vanuatu', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('234', 'Venezuela', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('235', 'VietNam', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('236', 'Virgin Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('237', 'British Virgin Islands', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('238', 'Wallis And Futuna', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('239', 'Yemen', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('240', 'Zambia', 'c', NULL);
INSERT INTO nation_type (code, display_value, status, description) VALUES ('241', 'Zimbabwe', 'c', NULL);

-- Completed on 2014-07-17 16:13:46

--
-- PostgreSQL database dump complete
--

