
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
SELECT COUNT(*) AS observation_date  
FROM observations 
WHERE date = '1998-08-08';

-- MISSION 2


--6. 
SELECT region_id, COUNT(*) AS total_obs FROM observations GROUP BY region_id ORDER BY total_obs DESC LIMIT 1;

-- 7. 
SELECT species_id, COUNT(*) AS total_obs FROM observations GROUP BY species_id ORDER BY total_obs DESC LIMIT 5;

-- 8. 
SELECT species_id, COUNT(*) AS total_obs FROM observations GROUP BY species_id HAVING COUNT(*) < 5;

-- 9. 
SELECT observer, COUNT(*) AS total_obs FROM observations GROUP BY observer ORDER BY total_obs DESC;


-- MISSION 3


-- 10. 
SELECT o.id AS observation_id, r.name AS region_name
FROM observations o
JOIN regions r ON o.region_id

-- 11. 
SELECT o.id AS observation_id, s.scientific_name
FROM observations o
JOIN species s ON o.species_id = s.id;

-- 12. 
SELECT region_id, species_id, COUNT(*) AS total_obs
FROM observations
GROUP BY region_id, species_id
ORDER BY region_id, total_obs DESC;



