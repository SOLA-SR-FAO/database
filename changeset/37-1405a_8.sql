﻿-- Add the previous changesets into the version table along with the version number for this current changeset (1405a). 
INSERT INTO system.version SELECT '1405a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1405a'); 