USE greenTEC;

BULK INSERT Pais
FROM 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Pais.txt'
WITH
(
  FIRSTROW = 2,
  FORMATFILE = 'C:\Users\aguis\OneDrive\Documentos\Repositorios\GreenTECBI\datosDePoblacion\Untitled.fmt'
)

GO



