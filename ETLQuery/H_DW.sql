SELECT he.Fecha, SUM(aj.PrecioAlojamiento) + SUM(evento.PrecioEntrada) AS Ingreso, SUM(pg.Monto) + SUM(ex.PrecioOrganizacion) AS Gasto, 
       (SUM(aj.PrecioAlojamiento) + SUM(evento.PrecioEntrada)) - (SUM(pg.Monto) + SUM(ex.PrecioOrganizacion)) AS Utilidades,
	   ROW_NUMBER() OVER (ORDER BY he.Fecha) idElementoParque, ROW_NUMBER() OVER (ORDER BY he.Fecha) idGasto, 
	   ROW_NUMBER() OVER (ORDER BY he.Fecha) idIngreso, ROW_NUMBER() OVER (ORDER BY he.Fecha) idTiempo
FROM Excursion ex
  INNER JOIN Alojamiento aj ON aj.idAlojamiento = ex.idAlojamiento
  INNER JOIN AreaParque area ON aj.idAreaParque = area.idAreaParque
  INNER JOIN Parque p ON area.idParque = p.idParque
  INNER JOIN Empleado em ON p.idParque = em.idParque
  INNER JOIN Pago pg ON pg.idEmpleado = em.idEmpleado
  INNER JOIN HorarioXExcursion he ON he.idExcursion = ex.idExcursion
  INNER JOIN EventoExcursion evento ON he.idHorarioXExcursion = evento.idHorarioXExcursion
  INNER JOIN Visitante v ON aj.idAlojamiento = v.idAlojamiento
  INNER JOIN Horario h ON he.idHorarioExcursion = h.idHorarioExcursion
WHERE he.Fecha = v.FechaEntrada
GROUP BY he.Fecha


------ Final ------
SELECT GastoTotal, IngresoTotal, 
       ROW_NUMBER() OVER (ORDER BY Fecha) idElementoParque, 
       ROW_NUMBER() OVER (ORDER BY Fecha) idGasto, 
	     ROW_NUMBER() OVER (ORDER BY Fecha) idIngreso,
	     ROW_NUMBER() OVER (ORDER BY Fecha) idTiempo
FROM
(
   SELECT org.PrecioOrganizacion + sal.SalarioEmpleados AS GastoTotal, org.Fecha1 AS Fecha 
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
  --ORDER BY org.Fecha1
) gastos
INNER JOIN
(

   SELECT PrecioAlojamiento + PrecioEntradaExcursion AS IngresoTotal, alojamiento.FechaEntrada FROM
   (
     SELECT SUM(aj.PrecioAlojamiento) AS PrecioAlojamiento, v.FechaEntrada
     FROM Alojamiento aj 
     INNER JOIN Visitante v ON aj.idAlojamiento = v.idAlojamiento
     GROUP BY v.FechaEntrada
   ) alojamiento
   INNER JOIN
   (
     SELECT SUM(evento.PrecioEntrada) AS PrecioEntradaExcursion, he.Fecha 
     FROM EventoExcursion evento
     INNER JOIN HorarioXExcursion he ON he.idHorarioXExcursion = evento.idHorarioXExcursion
     GROUP BY he.Fecha
   )
   eventoexcursion ON alojamiento.FechaEntrada = eventoexcursion.Fecha
   --ORDER BY eventoexcursion.Fecha
) ingresos 
ON gastos.Fecha = ingresos.FechaEntrada
ORDER BY gastos.Fecha





