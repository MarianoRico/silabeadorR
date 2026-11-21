#' Todo tiene que ser ASCII para ser aceptado en CRAN.
#' Instala la libreria Python desde GitHub
#'
#' @export
install_py_silabeador <- function() {
  # URL directa al repositorio de GitHub
  github_url <- "git+https://github.com/fsanzl/silabeador"

  # Se instalan los paquetes (python) silabeador y numpy
  # py_install sin envname detecta automáticamente el entorno correcto
  reticulate::py_install(c(github_url, "numpy"), pip = TRUE)

  message("Python modules (libraries) are installed correctly. Restart your R session before using this package.")
}
