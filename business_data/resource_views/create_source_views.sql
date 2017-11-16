CREATE VIEW mv_monument_listed_buildings AS(    
	SELECT row_number() over() as gid, mv.*, name_tile.tiledata->>'4924d298-9241-11e7-b43c-021893e306d8' as name
	FROM mv_geojson_geoms mv
		LEFT JOIN tiles name_tile
		ON mv.resourceinstanceid = name_tile.resourceinstanceid
		-- name type node id: 4924d298-9241-11e7-b43c-021893e306d8
    	-- primary name label id: b9510b71-f05d-4c71-bba5-c18c311a7c78
    	AND name_tile.tiledata ->> '4924d298-9241-11e7-b43c-021893e306d8' = 'b9510b71-f05d-4c71-bba5-c18c311a7c78'
	LEFT OUTER JOIN tiles type_tile
	ON mv.resourceinstanceid = type_tile.resourceinstanceid
	-- designation type node id: b1d12812-9481-11e7-b43c-021893e306d8
    -- listed building label id: fd19a2aa-7de0-4237-a7d0-99200590e3da
	WHERE (type_tile.tiledata->>'b1d12812-9481-11e7-b43c-021893e306d8')::jsonb ? 'fd19a2aa-7de0-4237-a7d0-99200590e3da'
);

CREATE VIEW mv_area_rpg AS(    
	SELECT row_number() over() as gid, mv.*, name_tile.tiledata->>'4924d298-9241-11e7-b43c-021893e306d8' as name
	FROM mv_geojson_geoms mv
		LEFT JOIN tiles name_tile
		ON mv.resourceinstanceid = name_tile.resourceinstanceid
    	-- name type node id: 50cdf45a-625a-11e7-b43c-021893e306d8
    	-- primary name label id: b9510b71-f05d-4c71-bba5-c18c311a7c78
    	AND name_tile.tiledata ->> '50cdf45a-625a-11e7-b43c-021893e306d8' = 'b9510b71-f05d-4c71-bba5-c18c311a7c78'
	LEFT OUTER JOIN tiles type_tile
	ON mv.resourceinstanceid = type_tile.resourceinstanceid
	-- designation type node id: 36d4c550-9dec-11e7-9f72-021893e306d8
    -- register park or garden label id: 3a65efd0-acff-4f8b-ab5e-a509d7facc72
    WHERE (type_tile.tiledata->>'36d4c550-9dec-11e7-9f72-021893e306d8')::jsonb ? '3a65efd0-acff-4f8b-ab5e-a509d7facc72'
);

CREATE VIEW mv_area_conservation_area AS(    
	SELECT row_number() over() as gid, mv.*, name_tile.tiledata->>'4924d298-9241-11e7-b43c-021893e306d8' as name
	FROM mv_geojson_geoms mv
		LEFT JOIN tiles name_tile
		ON mv.resourceinstanceid = name_tile.resourceinstanceid
    	-- name type node id: 50cdf45a-625a-11e7-b43c-021893e306d8
    	-- primary name label id: b9510b71-f05d-4c71-bba5-c18c311a7c78
    	AND name_tile.tiledata ->> '50cdf45a-625a-11e7-b43c-021893e306d8' = 'b9510b71-f05d-4c71-bba5-c18c311a7c78'
	LEFT OUTER JOIN tiles type_tile
	ON mv.resourceinstanceid = type_tile.resourceinstanceid
	-- designation type node id: 36d4c550-9dec-11e7-9f72-021893e306d8
    -- conservation area label id: 0bdb6c0f-c797-4ba1-b864-8e5ef855c186
    WHERE (type_tile.tiledata->>'36d4c550-9dec-11e7-9f72-021893e306d8')::jsonb ? '0bdb6c0f-c797-4ba1-b864-8e5ef855c186'
);

-- CREATE VIEW mv_area_lara AS(    
-- 	SELECT row_number() over() as gid, mv.*, name_tile.tiledata->>'4924d298-9241-11e7-b43c-021893e306d8' as name
-- 	FROM mv_geojson_geoms mv
-- 		LEFT JOIN tiles name_tile
-- 		ON mv.resourceinstanceid = name_tile.resourceinstanceid
--     	-- name type node id: 50cdf45a-625a-11e7-b43c-021893e306d8
--     	-- primary name label id: b9510b71-f05d-4c71-bba5-c18c311a7c78
--     	AND name_tile.tiledata ->> '50cdf45a-625a-11e7-b43c-021893e306d8' = 'b9510b71-f05d-4c71-bba5-c18c311a7c78'
-- 	LEFT OUTER JOIN tiles type_tile
-- 	ON mv.resourceinstanceid = type_tile.resourceinstanceid
-- 	-- area type node id: 8938fc25-8748-11e7-b43c-021893e306d8
--     -- LARA area type label id: 
--     WHERE (type_tile.tiledata->>'8938fc25-8748-11e7-b43c-021893e306d8')::jsonb ? ''
-- );

-- CREATE VIEW mv_area_lta AS(    
-- 	SELECT row_number() over() as gid, mv.*, name_tile.tiledata->>'4924d298-9241-11e7-b43c-021893e306d8' as name
-- 	FROM mv_geojson_geoms mv
-- 		LEFT JOIN tiles name_tile
-- 		ON mv.resourceinstanceid = name_tile.resourceinstanceid
--     	-- name type node id: 50cdf45a-625a-11e7-b43c-021893e306d8
--     	-- primary name label id: b9510b71-f05d-4c71-bba5-c18c311a7c78
--     	AND name_tile.tiledata ->> '50cdf45a-625a-11e7-b43c-021893e306d8' = 'b9510b71-f05d-4c71-bba5-c18c311a7c78'
-- 	LEFT OUTER JOIN tiles type_tile
-- 	ON mv.resourceinstanceid = type_tile.resourceinstanceid
-- 	-- area type node id: 8938fc25-8748-11e7-b43c-021893e306d8
--     -- LTA area type label id: 
--     WHERE (type_tile.tiledata->>'8938fc25-8748-11e7-b43c-021893e306d8')::jsonb ? ''
-- );