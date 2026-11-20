# Intro
Wrapper R del paquete Python `silabeador` (<https://github.com/fsanzl/silabeador>).
En el github de `silabeador` se dice: "Alcanza una precisión del 99,81% cuando 
se prueba con el corpus EDFU sin excepciones y del 98,51 % cuando se aplican excepciones
como el hiato implícito en verbos en -uar ( a-cen-tu-ar ) o  -uir ( re-hu-ir ), o algunos sustantivos ( a-rri-e-ro )".

En mis pruebas, usando `reticulate`, obtengo 106.166 aciertos de las 106.361 palabras (99.817%) del corpus EDFU usando `exceptions = FALSE` en `syllabify()`. 
Si uso `exceptions = TRUE` la librería `silabeador` falla. Confío en que se resuelva pronto esta incidencia (ya reportada).

Si uso el paquete R `sylly` (para español `sylly.es`) obtengo peores resultados: (79.858 aciertos para las 106.361 palabras del dataset EDFU), esto es, un 75.082%. 

# Instalación
````
remotes::install_github("MarianoRico/silabeadorR")
````

# Uso
````
library(silabeadorR)
syllabify("murciélago") #Debe devolver `"mur-cié-la-go"`
````
