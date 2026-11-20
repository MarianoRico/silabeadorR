test_that("syllabify separa las sílabas correctamente", {
  # Omite la prueba si el módulo Python no está disponible en la sesión actual
  skip_if_not(reticulate::py_module_available("silabeador"), message = "Módulo silabeador no disponible")

  # Casos de prueba (expect_equal compara el resultado de tu función con el resultado esperado)
  expect_equal(syllabify("computadora"), "com-pu-ta-do-ra")
  expect_equal(syllabify("hola"), "ho-la")
  expect_equal(syllabify("murciélago"), "mur-cié-la-go")
})
