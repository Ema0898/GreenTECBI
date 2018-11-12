USE greenTEC;

BULK INSERT Pais
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Pais.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\Untitled.fmt'
)

GO

BULK INSERT Provincia
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Provincia.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\provinciaFormat.fmt'
)

GO

BULK INSERT Canton
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Canton.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\cantonFormat.fmt'
)

GO

BULK INSERT Distrito
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Distrito.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\distritoFormat.fmt'
)

GO

BULK INSERT Ubicacion
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Ubicacion.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\ubicacionFormat.fmt'
)

GO

BULK INSERT Parque
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Parque.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\parqueFormat.fmt'
)

GO

BULK INSERT Organismo
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Organismo.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\organismoFormat.fmt'
)

GO

BULK INSERT Comunidad
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\Comunidad.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\comunidadFormat.fmt'
)

GO

BULK INSERT ParqueXComunidad
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\ParqueXComunidad.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\parquexcomunidadFormat.fmt'
)

GO

BULK INSERT AreaParque
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\AreaParque.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\areaparqueFormat.fmt'
)

GO

BULK INSERT CategoriaAlojamiento
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Datos\CategoriaAlojamiento.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\FormatFiles\categoriaAlojamientoFormat.fmt'
)

GO



