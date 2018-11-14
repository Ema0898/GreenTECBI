SELECT ROW_NUMBER() OVER (ORDER BY he.fecha) Number, ROW_NUMBER() OVER (ORDER BY he.fecha) Number2, he.Fecha
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

---- Final ----
SELECT DISTINCT Fecha FROM HorarioXExcursion
