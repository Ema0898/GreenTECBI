SELECT e.PrecioOrganizacion, pg.Monto AS SalarioEmpleado
FROM Excursion e
  INNER JOIN Alojamiento aj ON aj.idAlojamiento = e.idAlojamiento
  INNER JOIN AreaParque a ON aj.idAreaParque = a.idAreaParque
  INNER JOIN Parque p ON a.idParque = p.idParque
  INNER JOIN Empleado em ON p.idParque = em.idParque
  INNER JOIN Pago pg ON pg.idEmpleado = em.idEmpleado
  INNER JOIN HorarioXExcursion he ON he.idExcursion = e.idExcursion


  ---- Final ---

 SELECT org.PrecioOrganizacion, sal.SalarioEmpleados, org.Fecha1 AS Fecha 
 FROM 
(
SELECT SUM(e.PrecioOrganizacion) AS PrecioOrganizacion, he.Fecha AS Fecha1
FROM Excursion e
  INNER JOIN HorarioXExcursion he ON he.idExcursion = e.idExcursion
GROUP BY he.Fecha
) org 

INNER JOIN

(
SELECT SUM(pg.Monto) AS SalarioEmpleados , pg.Fecha AS Fecha2
FROM Empleado e 
  INNER JOIN Pago pg ON pg.idEmpleado = e.idEmpleado
GROUP BY pg.Fecha
) sal
ON org.Fecha1 = sal.Fecha2
ORDER BY org.Fecha1