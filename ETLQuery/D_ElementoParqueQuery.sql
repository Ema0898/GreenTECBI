SELECT e.Nombre AS Excursion, p.Nombre AS Parque, a.Nombre AS AreaParque, he.Fecha
FROM Excursion e 
  INNER JOIN Alojamiento aj ON e.idAlojamiento = aj.idAlojamiento
  INNER JOIN AreaParque a ON aj.idAreaParque = a.idAreaParque 
  INNER JOIN Parque p ON p.idParque = a.idParque
  INNER JOIN HorarioXExcursion he ON he.idExcursion = e.idExcursion
ORDER BY he.Fecha