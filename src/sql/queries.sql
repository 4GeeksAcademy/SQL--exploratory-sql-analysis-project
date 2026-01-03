
SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1

-- 1. 
SELECT * FROM observations LIMIT 10;

-- 2. 
SELECT DISTINCT region_id FROM observations;

-- 3. 
SELECT COUNT(DISTINCT species_id) AS total_species FROM observations;

-- 4. 
SELECT COUNT(*) AS observations_region_2 FROM observations WHERE region_id = 2;

-- 5. 
SELECT COUNT(*) AS observation_count
FROM observations 
WHERE observation_date = '1998-08-08';

-- MISSION 2


--6. 
SELECT region_id, COUNT(*) AS total_observations FROM observations GROUP BY region_id ORDER BY total_observations DESC;

-- 7. 
SELECT species_id, COUNT(*) AS total_records FROM observations GROUP BY species_id ORDER BY total_records DESC LIMIT 5;

-- 8. 
SELECT species_id, COUNT(*) AS observation_count FROM observations GROUP BY species_id HAVING COUNT(*) < 5 ORDER BY observation_count ASC;

-- 9. 
SELECT observer, COUNT(*) AS total FROM observations GROUP BY observer ORDER BY total DESC;


-- MISSION 3


-- 10. 
SELECT  observation_id, regions.name AS region_name, observations.observation_date
FROM observations 
JOIN regions  ON observations.region_id = regions.id;

-- 11. 
SELECT observations.id, species.scientific_name
FROM observations 
JOIN species  ON observations.species_id = species.id;

-- 12. 
SELECT regions.name AS region, species.scientific_name, COUNT(*) AS total
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY region, species.scientific_name
ORDER BY region, total DESC;



