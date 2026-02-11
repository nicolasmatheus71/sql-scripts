SELECT  e.first_name || ' ' || e.last_name AS nombre_completo,
        COUNT(*) AS cantidad_trabajos
FROM HR.JOB_HISTORY jh
JOIN HR.EMPLOYEES e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
GROUP BY e.EMPLOYEE_ID, e.FIRST_NAME, e.LAST_NAME
HAVING COUNT(*) >= 2
