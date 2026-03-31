SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;

-- MISSION 1
-- Your query here;
SELECT * FROM observations LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT region_id FROM observations;

-- MISSION 3
-- Your query here;
SELECT COUNT (DISTINCT species_id) FROM observations;

-- MISSION 4
-- Your query here;
SELECT COUNT (region_id) FROM observations WHERE region_id = 2;

-- MISSION 5
-- Your query here;
SELECT COUNT (id) FROM observations WHERE observation_date = "1998-08-08";

-- MISSION 6
-- Your query here;
SELECT region_id, COUNT (region_id) FROM observations GROUP BY region_id ORDER BY COUNT (region_id) desc;

-- MISSION 7
-- Your query here;
SELECT species_id, COUNT (species_id) FROM observations GROUP BY species_id ORDER BY COUNT (species_id) desc LIMIT 5;

-- MISSION 8
-- Your query here;
SELECT species_id, COUNT (species_id) FROM observations GROUP BY species_id HAVING COUNT (species_id)<5;

-- MISSION 9
-- Your query here;
SELECT observer, COUNT (observer) FROM observations GROUP BY observer ORDER BY COUNT (observer) desc;

-- MISSION 10
-- Your query here;
SELECT observations.id, name FROM observations INNER JOIN regions ON regions.id = observations.region_id;

-- MISSION 11
-- Your query here;
SELECT scientific_name, observations.id FROM species INNER JOIN observations ON species.id = observations.species_id;

-- MISSION 12
-- Your query here;
SELECT name, scientific_name, COUNT(observations.id) FROM observations INNER JOIN species ON observations.species_id = species.id INNER JOIN regions ON observations.region_id = regions.id GROUP BY regions.name, species.scientific_name ORDER BY COUNT(observations.id) desc;

-- MISSION 13
-- Your query here;
INSERT INTO observations (species_id, region_id, observer, observation_date, latitude, longitude, count) VALUES (1261, 9, 'obsr797550', '1999-02-23', -34.56116797452796, -58.46329944549183, 4);

-- MISSION 14
-- Your query here;
SELECT scientific_name FROM species WHERE scientific_name LIKE '%aa%';

-- MISSION 15
-- Your query here;