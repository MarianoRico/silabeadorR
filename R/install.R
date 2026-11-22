#' Todo tiene que ser ASCII para ser aceptado en CRAN.
#' Instala la libreria Python desde GitHub
#'
#' @param envname Nombre del entorno virtual. Por defecto "r-reticulate".
#' @export
install_py_silabeador <- function(envname = "r-reticulate") {
  github_url <- "git+https://github.com/fsanzl/silabeador"

  # Usa el entorno indicado (r-reticulate por defecto, o el que el usuario pida, por ejemplo r-spacyr)
  reticulate::py_install(c(github_url, "numpy"), envname = envname, pip = TRUE)

  message("Python modules installed. Restart your R session before using this package.")
}
