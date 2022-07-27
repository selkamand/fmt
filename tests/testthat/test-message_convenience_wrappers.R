test_that("formatted message convenience wrappers work", {
  # message_error
  expect_error(capture.output(message_error("Hello"), type = "message"), NA)
  expect_true(grepl(capture.output(message_error("Hello"), type = "message"), pattern = "Hello$"))
  expect_true(grepl(capture.output(message_error("Hello", symbol = FALSE), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_error("Hello", symbol = FALSE, level = 1), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_error("Hello", symbol = FALSE, level = 3), type = "message"), pattern = "^\t\tHello$"))
  expect_length(capture.output(message_error("Hello", verbose = FALSE), type = "message"), n=0)

  # message_info
  expect_error(capture.output(message_info("Hello"), type = "message"), NA)
  expect_true(grepl(capture.output(message_info("Hello"), type = "message"), pattern = "Hello$"))
  expect_true(grepl(capture.output(message_info("Hello", symbol = FALSE), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_info("Hello", symbol = FALSE, level = 1), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_info("Hello", symbol = FALSE, level = 3), type = "message"), pattern = "^\t\tHello$"))
  expect_length(capture.output(message_info("Hello", verbose = FALSE), type = "message"), n=0)

  # message_warning
  expect_error(capture.output(message_warning("Hello"), type = "message"), NA)
  expect_true(grepl(capture.output(message_warning("Hello"), type = "message"), pattern = "Hello$"))
  expect_true(grepl(capture.output(message_warning("Hello", symbol = FALSE), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_warning("Hello", symbol = FALSE, level = 1), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_warning("Hello", symbol = FALSE, level = 3), type = "message"), pattern = "^\t\tHello$"))
  expect_length(capture.output(message_warning("Hello", verbose = FALSE), type = "message"), n=0)

  # message_success
  expect_error(capture.output(message_success("Hello"), type = "message"), NA)
  expect_true(grepl(capture.output(message_success("Hello"), type = "message"), pattern = "Hello$"))
  expect_true(grepl(capture.output(message_success("Hello", symbol = FALSE), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_success("Hello", symbol = FALSE, level = 1), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_success("Hello", symbol = FALSE, level = 3), type = "message"), pattern = "^\t\tHello$"))
  expect_length(capture.output(message_success("Hello", verbose = FALSE), type = "message"), n=0)

  # message_bold
  expect_error(capture.output(message_bold("Hello"), type = "message"), NA)
  expect_true(grepl(capture.output(message_bold("Hello"), type = "message"), pattern = "Hello$"))
  expect_true(grepl(capture.output(message_bold("Hello"), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_bold("Hello", level = 1), type = "message"), pattern = "^Hello$"))
  expect_true(grepl(capture.output(message_bold("Hello", level = 3), type = "message"), pattern = "^\t\tHello$"))
  expect_length(capture.output(message_bold("Hello", verbose = FALSE), type = "message"), n=0)


})
