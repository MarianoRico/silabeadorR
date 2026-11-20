#' Obtiene las sílabas de una palabra usando la librería de Python silabeador
#'
#' @param w Una cadena (character string) que representa la palabra a silabear.
#' @export
#' @examples
#' \dontrun{
#' # CRAN ignorará este bloque al compilar el paquete
#' install_mis_dependencias()
#' syllabify("computadora")
#' }
syllabify <- function(w) {
  # Comprobación de seguridad obligatoria para CRAN (Fallo elegante)
  if (!reticulate::py_module_available("silabeador")) {
    stop("El módulo 'silabeador' no está disponible. Ejecuta install_mis_dependencias() primero.", call. = FALSE)
  }

  # Se accede usando la variable global definida en zzz.R
  resultado_silabas <- mi_modulo_python$syllabify(w)
  paste(resultado_silabas, collapse = "-")
}
