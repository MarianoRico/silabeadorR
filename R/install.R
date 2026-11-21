#' Todo tiene que ser ASCII para ser aceptado en CRAN.
#' Instala la librería Python desde GitHub
#'
#' @param envname Nombre del entorno virtual. Por defecto "r-reticulate".
#' @export
install_mis_dependencias <- function(envname = "r-reticulate") {
  # URL directa al repositorio de GitHub
  github_url <- "git+https://github.com/fsanzl/silabeador"

  # Se instalan los paquetes GitHub y numpy
  reticulate::py_install(c(github_url, "numpy"), envname = envname, pip = TRUE)

  message("Python modules (libraries) are installed correctly. Restart your R session before using this package.")
}
