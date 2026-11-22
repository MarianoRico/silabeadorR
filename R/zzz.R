# Declarar la variable globalmente para evitar advertencias en la validación 'R CMD check'
mi_modulo_python <- NULL

.onLoad <- function(libname, pkgname) {
  # Verificamos si Python AÚN NO está corriendo en esta sesión
  if (!reticulate::py_available(initialize = FALSE)) {
    # Si no está corriendo, sugerimos usar el entorno estándar
    if (reticulate::virtualenv_exists("r-reticulate")) {
      reticulate::use_virtualenv("r-reticulate", required = FALSE)
    }
  }

  # delay_load = TRUE es crítico: permite cargar el paquete R incluso si el
  # usuario aún no ha configurado Python o instalado la librería de GitHub.
  # La conexión real con Python ocurrirá en la primera llamada a una función.
  mi_modulo_python <<- reticulate::import("silabeador", delay_load = TRUE)
}
