CREATE TABLE final_csv(id bigint PRIMARY KEY, Date date, Time time, Text text, lat decimal, long decimal,country text, city text, lang text);

COPY final_csv(id, Date, Time, Text, lat, long, country, city, lang)
FROM 'path.csv'
DELIMITER ',' 
CSV HEADER;

ALTER TABLE final_csv ADD COLUMN geom geometry(Point, 4326);

UPDATE final_csv SET geom = ST_SetSRID(ST_MakePoint(long, lat), 4326);

SELECT final_csv.*
FROM final_csv, india_state_boundary
WHERE india_state_boundary.name = 'Maharashtra' and ST_Contains(india_state_boundary.geom, final_csv.geom);