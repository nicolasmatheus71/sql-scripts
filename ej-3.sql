SELECT
    e.first_name || ' ' || e.last_name AS empleado,
    m.first_name || ' ' || m.last_name AS jefe,
    LPAD(SUBSTR(e.email, 1, 3), 9, '*') AS email_empleado,
    LPAD(SUBSTR(m.email, 1, 3), 9, '*') AS email_jefe
FROM
    hr.employees e
    JOIN hr.employees m 
        ON e.manager_id = m.employee_id
ORDER BY
    m.employee_id, e.employee_id;
