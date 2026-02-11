SELECT
    e.first_name || ' ' || e.last_name AS nombre_completo,
    c.country_name AS pais,
    e.salary
FROM
    hr.employees e
    JOIN hr.departments d ON e.department_id = d.department_id
    JOIN hr.locations l ON d.location_id = l.location_id
    JOIN hr.countries c ON l.country_id = c.country_id
    JOIN hr.regions r ON c.region_id = r.region_id
WHERE
    r.region_name = 'Europe'
    AND e.salary BETWEEN 4000 AND 6000;
