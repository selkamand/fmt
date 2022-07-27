#' Formatters
#'
#' @param number number to turn into a percentage string, e.g. 10 to 10.0% (numeric)
#' @param decimal_places number of decimal places to give percentage to (numeric)
#' @param proportion multiply number by 100 before formatting as percentage (e.g. 0.1 to 10%) (boolean)
#' @return percentage formatted string (character)
#' @export
#'
#' @examples
#' fmtpercent(5, decimal_places = 2) # returns 5%
fmtpercent <- function(number, decimal_places = 1, proportion = FALSE){
  assertthat::assert_that(is.numeric(number), msg = fmt::fmterror("format_percent: expected number argument to be numeric, not [", class(number),"]"))

  if(proportion) number <- number*100

  paste0(format(round(number, decimal_places), nsmall = decimal_places), "%")
  #formatter = ("%0"f%%")
  #sprintf(fmt = formatter, proportion)
  #paste0(round(proportion, digits = decimal_places), "%")
}

#' Formatters
#'
#' @param number number to convert into scientific notation
#'
#' @return scientific notation form(character)
#' @export
#'
#' @examples
#' fmtscientific(0.1)
fmtscientific <- function(number){
  assertthat::assert_that(is.numeric(number), msg = fmt::fmterror("format_scientific: expected number argument to be numeric, not [", class(number),"]"))
  format(number, scientific = TRUE)
}
