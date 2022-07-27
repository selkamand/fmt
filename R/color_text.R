#' @title Colour text
#'
#' @description A collection of functions that take text and return that same text flanked by  characters
#' that will lead to its coloration/formatting when printed to terminals using message/cat. Different presets are available:
#' fmterror, fmtwarning, fmtsuccess, fmtbold.
#'
#' If greater control is required, use the crayon package
#'
#' @param ... (string/s) Text to colorise. Comma separated strings will be concatenated (no spaces) before colorisation.
#' @param symbol add a symbol indicating the type of message as prefix (boolean)
#' @param level how many tabs should be used as a prefix to the text (calculated as level-1) (numeric)
#' @return (string) Input text flanked by relevant Ansi escape codes
#' @export
#'
#' @examples
#' message(fmterror("This is an error"))
#' message(fmtwarning("This is a warning"))
#' message(fmtinfo("This text is informative"))
#' message(fmtbold("This text is bold"))
fmterror <- function(..., symbol = TRUE, level = 1) {
  symbol_text = ifelse(symbol,yes=paste0("[", unicode_symbols[["Heavy Ballot X"]], "] "), no = "")
  prefix_tabs = paste0(rep("\t", times=max(0, level-1)), collapse = "")
  text = crayon::bold(crayon::red(paste0(prefix_tabs,symbol_text, ...)))
  return(text)
  }


#' @inherit fmterror
#' @export
fmtwarning <- function(..., symbol=TRUE, level = 1) {
  symbol_text = ifelse(symbol,yes=paste0("[!] "), no = "")
  prefix_tabs = paste0(rep("\t", times=max(0, level-1)), collapse = "")
  text = crayon::bold(crayon::yellow(paste0(prefix_tabs, symbol_text, ...)))
  return(text)
}

#' @inherit fmterror
#' @export
fmtsuccess <- function(..., symbol = TRUE, level = 1) {
  symbol_text = ifelse(symbol,yes=paste0("[", unicode_symbols[["Heavy Check Mark Emoji"]], "] "), no = "")
  prefix_tabs = paste0(rep("\t", times=max(0, level-1)), collapse = "")
  text = crayon::bold(crayon::green(paste0(prefix_tabs, symbol_text, ...)))
  return(text)
}

#' @inherit fmterror
#' @export
fmtinfo <- function(..., symbol = TRUE, level = 1) {
  symbol_text = ifelse(symbol,yes=paste0("[", unicode_symbols[["Information Source"]], "] "), no = "")
  prefix_tabs = paste0(rep("\t", times=max(0, level-1)), collapse = "")
  text = crayon::bold(crayon::blue(paste0(prefix_tabs, symbol_text, ...)))
  return(text)
}


#' @inherit fmterror
#' @export
fmtbold <- function(..., level = 1) {
  prefix_tabs = paste0(rep("\t", times=max(0, level-1)), collapse = "")
  return(crayon::bold(paste0(prefix_tabs, ...)))
  }

