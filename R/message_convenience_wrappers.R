
#' Coloured Message
#'
#' @inheritParams fmterror
#' @param verbose should the message be printed? This argument allows verbosity arguments of parent functions to easily inform what messages end-users will see (boolean)
#' @param ... (string/s) Message to format. Comma separated strings will be concatenated (no spaces) before colorisation.
#' @return run for its side effects
#' @export
#' @examples
#' message_error("This is an error")
#' message_warning("This is a warning")
#' message_info("This text is informative")
#' message_bold("This text is bold")
message_error <- function(..., symbol=TRUE, level=1, verbose = TRUE) { if(verbose) message(fmterror(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_warning <- function(..., symbol=TRUE, level=1, verbose = TRUE) { if(verbose) message(fmtwarning(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_success <- function(..., symbol=TRUE, level=1, verbose = TRUE) { if(verbose) message(fmtsuccess(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_info <- function(..., symbol=TRUE, level=1, verbose = TRUE) { if(verbose) message(fmtinfo(..., symbol = symbol, level = level))  }

#' @inherit message_error
#' @export
message_bold <- function(..., level=1, verbose = TRUE) { if(verbose) message(fmtbold(..., level = level))  }

