-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

¡

-- MISSION 1
-- ¿Cuáles son las primeras 10 observaciones registradas?
SELECT * FROM observations LIMIT 10;
--¿Qué identificadores de región ( region_id) aparecen en los datos?
SELECT DISTINCT region_id FROM observations;
-- ¿Cuántas especies distintas ( species_id) se han observado?
SELECT COUNT(DISTINCT species_id) AS total_species FROM observations;
-- ¿Cuántas observaciones hay para la región con region_id = 2?
SELECT * WHERE region_id = 2 FROM observations;
--¿Cuántas observaciones se registraron el día 1998-08-08?
SELECT * FROM observations WHERE observation_date = '1998-08-08';


-- MISSION 2
-- Your query here;
--¿Cuál es el region_id con más observaciones?
SELECT region_id, 
COUNT(*) 
AS registros
FROM observations
GROUP BY region_id 
ORDER BY registros DESC
LIMIT 10;

--¿Cuáles son los 5 species_idmás frecuentes?
SELECT species_id,
COUNT (*)
AS registros
FROM observations
GROUP BY species_id
ORDER BY registros DESC
LIMIT 5;

--¿Qué especies ( species_id) tienen menos de 5 registros?
SELECT species_id,
COUNT (*)
AS registros
FROM observations
GROUP BY species_id
HAVING COUNT (*) < 5;

--¿Qué observadores ( observer) registraron más observaciones?
SELECT observer,
COUNT (*)
AS registros
FROM observations
GROUP BY observer
ORDER BY registros DESC

-- MISSION 3
-- Your query here;
--Muestra el nombre de la región ( regions.name) para cada observación.
SELECT  
observations.observer, 
regions.name, 
regions.country
FROM observations
JOIN regions
    ON observations.region_id = regions.id;

--Muestra el nombre científico de cada especie registrada ( species.scientific_name).
SELECT 
 observations.species_id,
 species.scientific_name,
 species.common_name
FROM observations
JOIN species
    ON observations.species_id = species.id;

--¿Cuál es la especie más observada por cada región?
SELECT 
regions.name As city, 
regions.country,
species.scientific_name AS nombre,
COUNT(*) AS total
FROM observations
JOIN regions
    ON observations.region_id = regions.id
JOIN species
    ON observations.species_id = species.id
GROUP BY name,scientific_name
ORDER BY total DESC;


