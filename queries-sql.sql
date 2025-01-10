-- Listar todas las mascotas y sus vacunas
SELECT dueños.NomMascota, vacunas.NomVacuna 
FROM dueños,vacunas,vacunacion 
WHERE vacunacion.dueño = dueños.idDueño 
AND vacunacion.vacuna = vacunas.idVacuna 
ORDER BY dueños.NomMascota;

-- Encontrar mascotas sin vacuna contra la rabia
SELECT consulta2.nommas 
FROM (
    SELECT consulta.nm AS nommas, SUM(consulta.aux) AS suma 
    FROM (
        SELECT dueños.NomMascota AS nm, vacunas.NomVacuna AS nv, 
        IF(vacunacion.vacuna NOT IN (2), 0, 1) AS aux 
        FROM dueños,vacunas,vacunacion 
        WHERE vacunacion.dueño = dueños.idDueño 
        AND vacunacion.vacuna = vacunas.idVacuna
    ) as consulta 
    GROUP BY consulta.nm
) as consulta2 
WHERE suma <=0;

-- Encontrar la mascota con más vacunas
SELECT consulta.nm, NoVacunas 
FROM (
    SELECT dueños.NomMascota AS nm, vacunas.NomVacuna, COUNT(*) AS NoVacunas 
    FROM vacunacion 
    INNER JOIN dueños ON vacunacion.dueño = dueños.idDueño 
    INNER JOIN vacunas ON vacunacion.vacuna = vacunas.idVacuna 
    GROUP BY dueños.NomMascota
) AS consulta 
ORDER BY NoVacunas DESC 
LIMIT 1;

-- Contar el total de vacunas aplicadas
SELECT COUNT(*) AS 'Total de Vacunas Aplicadas:' 
FROM vacunacion 
INNER JOIN dueños ON vacunacion.dueño = dueños.idDueño 
INNER JOIN vacunas ON vacunacion.vacuna = vacunas.idVacuna;

-- Encontrar la mascota con menos vacunas
SELECT consulta.nm, NoVacunas 
FROM (
    SELECT dueños.NomMascota AS nm, vacunas.NomVacuna, COUNT(*) AS NoVacunas 
    FROM vacunacion 
    INNER JOIN dueños ON vacunacion.dueño = dueños.idDueño 
    INNER JOIN vacunas ON vacunacion.vacuna = vacunas.idVacuna 
    GROUP BY dueños.NomMascota
) AS consulta 
ORDER BY NoVacunas ASC 
LIMIT 1;