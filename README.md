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
Como una sesión de R solo puede usar un entorno virtual python, hay que saber si 
alguno de los paquetes que vamos a usar en nuestro código usa algún entorno virtual
python. Por tanto:

A) Vamos a usar un entorno virtual python ya existente. Por ejemplo, el 
paquete `spacyr` usa el entorno virtual `r-spacyr`, por lo que, 
si queremos usar el paquete R `silabeadorR` junto con el paquete R `spacyr`, deberemos
decirle a `silabeadorR` que use el entorno virtual `r-spacyr`:

````
reticulate::use_virtualenv("r-spacyr", required = TRUE)
silabeadorR::install_py_silabeador(envname = "r-spacyr")
````

B) Si no le indicamos ningún entorno virtual, el paquete R `silabeadorR` creará el 
entorno virtual `r-reticulate` y meterá ahí el paquete python `silabeador`:

````
silabeadorR::install_py_silabeador()
````

## Finaliza la instalación
Observa que al final de la instalación se muestra un mensaje que pide reiniciar la sesión de R. 
En RStudio es Session --> Restart R (Ctrl+Mayús+F10).

# Uso
````
library(silabeadorR)
syllabify("murciélago") #Debe devolver "mur-cié-la-go"
````
