#' Instala la librería Python desde GitHub
#'
#' @param envname Nombre del entorno virtual. Por defecto "r-reticulate".
#' @export
install_mis_dependencias <- function(envname = "r-reticulate") {
  # URL directa al repositorio de GitHub
  github_url <- "git+https://github.com/fsanzl/silabeador"

  # Se instalan simultáneamente el paquete de GitHub y numpy
  reticulate::py_install(c(github_url, "numpy"), envname = envname, pip = TRUE)

  message("Librerías de Python instaladas correctamente. Reinicia tu sesión de R antes de usar el paquete.")
}
