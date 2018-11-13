USE greenTEC;

BULK INSERT Pais
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Pais.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\Untitled.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Provincia
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Provincia.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\provinciaFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Canton
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Canton.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\cantonFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Distrito
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Distrito.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\distritoFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Ubicacion
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Ubicacion.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\ubicacionFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Parque
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Parque.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\parqueFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Organismo
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Organismo.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\organismoFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Comunidad
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Comunidad.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\comunidadFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT ParqueXComunidad
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\ParqueXComunidad.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\parquexcomunidadFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT AreaParque
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\AreaParque.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\areaparqueFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT CategoriaAlojamiento
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\CategoriaAlojamiento.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\categoriaAlojamientoFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT MedioTransporte
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\MedioTransporte.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\mediotransporteFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT TipoEspecie
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\TipoEspecie.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\tipoespecieFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Caracteristica
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Caracteristica.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\caracteristicaFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Temporada
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Temporada.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\temporadaFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Puesto
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Puesto.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\puestoFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Vehiculo
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Vehiculo.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\vehiculoFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Horario
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Horario.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\horarioFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Especie
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Especie.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\especieFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT EspecieXArea
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\EspecieXArea.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\especiexareaFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT CadenaAlimenticia
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\CadenaAlimenticia.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\cadenaalimenticiaFormat.fmt',
  MAXERRORS = 0
)

GO 

BULK INSERT ProyectoInvestigacion
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\ProyectoInvestigacion.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\proyectoinvestigacionFormat.fmt',
  KEEPNULLS,
  MAXERRORS = 0
)

GO 

BULK INSERT Persona
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Persona.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\personaFormat.fmt',
  MAXERRORS = 0
)

GO

BULK INSERT Empleado
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Empleado.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\empleadoFormat.fmt',
  MAXERRORS = 0 
)

GO

BULK INSERT EmpleadoXVehiculo
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\EmpleadoXVehiculo.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\empleadoxvehiculoFormat.fmt',
  KEEPNULLS,
  MAXERRORS = 0
)

GO

BULK INSERT PersonalInvestigador
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\PersonalInvestigador.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\personalinvestigadorFormat.fmt',
  MAXERRORS = 0
) 

GO 

BULK INSERT PersonalXArea
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\PersonalXArea.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\personalxareaFormat.fmt',
  MAXERRORS = 0
)  

GO

BULK INSERT Visitante
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Visitante.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\visitanteFormat.fmt',
  KEEPNULLS,
  MAXERRORS = 0
) 

GO

BULK INSERT Pago
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Pago.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\pagoFormat.fmt',
  MAXERRORS = 0
) 

GO 

BULK INSERT Alojamiento
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Alojamiento.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\alojamientoFormat.fmt',
  MAXERRORS = 0
) 

GO 

BULK INSERT Excursion
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Excursion.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\excursionFormat.fmt',
  MAXERRORS = 0
)  

GO 

BULK INSERT HorarioXExcursion
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\HorarioXExcursion.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\horarioxexcursionFormat.fmt',
  MAXERRORS = 0
)  

GO

BULK INSERT EventoExcursion
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\EventoExcursion.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\eventoexcursionFormat.fmt',
  MAXERRORS = 0
)  

GO