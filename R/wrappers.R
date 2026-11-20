#' Obtiene las sílabas de una palabra usando la librería de Python silabeador
#'
#' @param w Una cadena (character string) que representa la palabra a silabear.
#' @export
syllabify <- function(w) {
  # Se accede usando la variable global definida en zzz.R
  resultado_silabas <- mi_modulo_python$syllabify(w)
  paste(resultado_silabas, collapse = "-")
}
