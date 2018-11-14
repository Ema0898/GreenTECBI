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