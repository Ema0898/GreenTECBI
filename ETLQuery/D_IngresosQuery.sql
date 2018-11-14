SELECT aj.PrecioAlojamiento, evento.PrecioEntrada AS PrecioEntradaEvento
FROM Alojamiento aj
  INNER JOIN Excursion e ON aj.idAlojamiento = e.idAlojamiento
  INNER JOIN HorarioXExcursion he ON he.idExcursion = e.idExcursion
  INNER JOIN EventoExcursion evento ON he.idHorarioXExcursion = evento.idHorarioXExcursion
  INNER JOIN Visitante v ON aj.idAlojamiento = v.idAlojamiento
WHERE v.FechaEntrada = he.Fecha

SELECT SUM(aj.PrecioAlojamiento) AS Alojamiento, SUM(evento.PrecioEntrada) AS PrecioEntradaEvento, he.Fecha
FROM Alojamiento aj
  INNER JOIN Excursion e ON aj.idAlojamiento = e.idAlojamiento
  INNER JOIN HorarioXExcursion he ON he.idExcursion = e.idExcursion
  INNER JOIN EventoExcursion evento ON he.idHorarioXExcursion = evento.idHorarioXExcursion
  INNER JOIN Visitante v ON aj.idAlojamiento = v.idAlojamiento
WHERE v.FechaEntrada = he.Fecha
GROUP BY he.Fecha

---- Final ----
SELECT SUM(aj.PrecioAlojamiento), SUM(evento.PrecioEntrada)
FROM Alojamiento aj
  INNER JOIN Excursion e ON aj.idAlojamiento = e.idAlojamiento
  INNER JOIN HorarioXExcursion he ON he.idExcursion = e.idExcursion
  INNER JOIN EventoExcursion evento ON evento.idHorarioXExcursion = he.idHorarioXExcursion
  INNER JOIN Visitante v ON aj.idAlojamiento = v.idAlojamiento
  INNER JOIN Visitante v2 ON evento.idVisitante = v2.idVisitante
WHERE he.Fecha = v2.FechaEntrada

GROUP BY he.Fecha
ORDER BY he.Fecha


---- Verdadero Final-----
SELECT PrecioAlojamiento, PrecioEntradaExcursion, alojamiento.FechaEntrada FROM
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
ORDER BY eventoexcursion.Fecha