#' Todo tiene que ser ASCII para ser aceptado en CRAN.
#' Obtiene las silabas de una palabra usando la libreria de Python silabeador
#'
#' @param w Una cadena (character string) que representa la palabra a silabear.
#' @export
#' @examples
#' \dontrun{
#' # CRAN ignorará este bloque al compilar el paquete
#' install_py_silabeador()
#' syllabify("computadora")
#' }
syllabify <- function(w) {
  # Comprobacion de seguridad obligatoria para CRAN (Fallo elegante)
  if (!reticulate::py_module_available("silabeador")) {
    stop("The python package 'silabeador' is not available in the virtual environment. Run first install_py_silabeador().", call. = FALSE)
  }

  # Se accede usando la variable global definida en zzz.R
  resultado_silabas <- mi_modulo_python$syllabify(w)
  paste(resultado_silabas, collapse = "-")
}
