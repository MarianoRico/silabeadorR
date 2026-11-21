test_that("syllabify separa las sílabas correctamente", {
  # Casos de prueba (expect_equal compara el resultado de tu función con el resultado esperado)
  expect_equal(syllabify("computadora"), "com-pu-ta-do-ra")
  expect_equal(syllabify("hola"), "ho-la")
  expect_equal(syllabify("murciélago"), "mur-cié-la-go")
})
