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




-- MISSION 1

-- ¿Cuáles son las primeras 10 observaciones registradas?

SELECT * FROM observations LIMIT 10;

--¿Qué identificadores de región ( region_id) aparecen en los datos?

SELECT DISTINCT region_id FROM observations;

-- ¿Cuántas especies distintas ( species_id) se han observado?

SELECT COUNT(DISTINCT species_id) AS total_species FROM observations;

-- MISSION 2
-- Your query here;


-- MISSION 3
-- Your query here;


-- MISSION 4
-- Your query here;


-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
