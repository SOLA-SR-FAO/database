--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-12-04 09:28:52

SET search_path = cadastre, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;


INSERT INTO spatial_unit_group (id, hierarchy_level, label, name, reference_point, geom, found_in_spatial_unit_group_id, seq_nr, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('NZ', 0, 'NZ', 'NZ', NULL, NULL, NULL, 0, 'ed81e71e-88d1-11e3-8535-e7314c47eeb4', 5, 'u', 'test', '2014-05-10 13:41:45.755');
INSERT INTO spatial_unit_group (id, hierarchy_level, label, name, reference_point, geom, found_in_spatial_unit_group_id, seq_nr, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('SR/TEST', 2, 'TEST', 'TEST', NULL, '0103000020910800000100000005000000C34072F7CB483B41DB939AC1359B5641407D3185F24F3B41B45E577B3F9C564158D0592F28543B41F01DE563639A56412556F1878B4C3B4173EC5FE17A995641C34072F7CB483B41DB939AC1359B5641', NULL, 0, 'ed84487e-88d1-11e3-8a3e-176e4426d1c0', 5, 'u', 'test', '2014-05-10 13:41:45.755');
INSERT INTO spatial_unit_group (id, hierarchy_level, label, name, reference_point, geom, found_in_spatial_unit_group_id, seq_nr, rowidentifier, rowversion, change_action, change_user, change_time) VALUES ('SR', 1, 'SR', 'SR', NULL, NULL, NULL, 0, 'ed84487e-88d1-11e3-88d9-6b925ae6c1ee', 5, 'u', 'test', '2014-05-10 13:41:45.755');


--
-- TOC entry 3656 (class 2606 OID 168907)
-- Name: spatial_unit_group_pkey; Type: CONSTRAINT; Schema: cadastre; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY spatial_unit_group
    ADD CONSTRAINT spatial_unit_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3649 (class 1259 OID 169201)
-- Name: spatial_unit_group_found_in_spatial_unit_group_id_fk87_ind; Type: INDEX; Schema: cadastre; Owner: postgres; Tablespace: 
--

CREATE INDEX spatial_unit_group_found_in_spatial_unit_group_id_fk87_ind ON spatial_unit_group USING btree (found_in_spatial_unit_group_id);


--
-- TOC entry 3650 (class 1259 OID 169202)
-- Name: spatial_unit_group_hierarchy_level_ind; Type: INDEX; Schema: cadastre; Owner: postgres; Tablespace: 
--

CREATE INDEX spatial_unit_group_hierarchy_level_ind ON spatial_unit_group USING btree (hierarchy_level);


--
-- TOC entry 3651 (class 1259 OID 169203)
-- Name: spatial_unit_group_index_on_geom; Type: INDEX; Schema: cadastre; Owner: postgres; Tablespace: 
--

CREATE INDEX spatial_unit_group_index_on_geom ON spatial_unit_group USING gist (geom);


--
-- TOC entry 3652 (class 1259 OID 169204)
-- Name: spatial_unit_group_index_on_reference_point; Type: INDEX; Schema: cadastre; Owner: postgres; Tablespace: 
--

CREATE INDEX spatial_unit_group_index_on_reference_point ON spatial_unit_group USING gist (reference_point);


--
-- TOC entry 3653 (class 1259 OID 169205)
-- Name: spatial_unit_group_index_on_rowidentifier; Type: INDEX; Schema: cadastre; Owner: postgres; Tablespace: 
--

CREATE INDEX spatial_unit_group_index_on_rowidentifier ON spatial_unit_group USING btree (rowidentifier);


--
-- TOC entry 3654 (class 1259 OID 169206)
-- Name: spatial_unit_group_name_ind; Type: INDEX; Schema: cadastre; Owner: postgres; Tablespace: 
--

CREATE INDEX spatial_unit_group_name_ind ON spatial_unit_group USING btree (name);


--
-- TOC entry 3658 (class 2620 OID 169339)
-- Name: __track_changes; Type: TRIGGER; Schema: cadastre; Owner: postgres
--

CREATE TRIGGER __track_changes BEFORE INSERT OR UPDATE ON spatial_unit_group FOR EACH ROW EXECUTE PROCEDURE public.f_for_trg_track_changes();

ALTER TABLE spatial_unit_group DISABLE TRIGGER __track_changes;


--
-- TOC entry 3659 (class 2620 OID 169350)
-- Name: __track_history; Type: TRIGGER; Schema: cadastre; Owner: postgres
--

CREATE TRIGGER __track_history AFTER DELETE OR UPDATE ON spatial_unit_group FOR EACH ROW EXECUTE PROCEDURE public.f_for_trg_track_history();

ALTER TABLE spatial_unit_group DISABLE TRIGGER __track_history;


--
-- TOC entry 3660 (class 2620 OID 169356)
-- Name: add_srwu; Type: TRIGGER; Schema: cadastre; Owner: postgres
--

CREATE TRIGGER add_srwu AFTER INSERT ON spatial_unit_group FOR EACH ROW EXECUTE PROCEDURE f_for_tbl_spatial_unit_group_trg_new();

ALTER TABLE spatial_unit_group DISABLE TRIGGER add_srwu;


--
-- TOC entry 3661 (class 2620 OID 169358)
-- Name: trg_geommodify; Type: TRIGGER; Schema: cadastre; Owner: postgres
--

CREATE TRIGGER trg_geommodify AFTER INSERT OR UPDATE OF geom ON spatial_unit_group FOR EACH ROW EXECUTE PROCEDURE f_for_tbl_spatial_unit_group_trg_geommodify();

ALTER TABLE spatial_unit_group DISABLE TRIGGER trg_geommodify;


--
-- TOC entry 3657 (class 2606 OID 169806)
-- Name: spatial_unit_group_found_in_spatial_unit_group_id_fk87; Type: FK CONSTRAINT; Schema: cadastre; Owner: postgres
--

ALTER TABLE ONLY spatial_unit_group
    ADD CONSTRAINT spatial_unit_group_found_in_spatial_unit_group_id_fk87 FOREIGN KEY (found_in_spatial_unit_group_id) REFERENCES spatial_unit_group(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2014-12-04 09:28:52

--
-- PostgreSQL database dump complete
--

