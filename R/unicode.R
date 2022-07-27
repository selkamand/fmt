# Once you update this list, run the list in console and then run usethis::use_data(unicode_preview)

#' Unicode Character Codes
#'
#' Unicode character codes
#'
#' @format a list. Names = descriptors of the unicode symbol. Values = unicode code
#'
unicode_symbols <- list(
  "White Heavy Check Mark Emoji" = "\u2705",
  "Heavy Check Mark Emoji" = "\u2714",
  "Check Mark"  = "\u2713",
  "Heavy Multiplication X Emoji" = "\u2716",
  "Heavy Ballot X" = "\u2718",
  "Cross Mark" = "\u274C",
  "Negative Squared Cross Mark" = "\u274E",
  "Warning Sign" =  "\u26A0",
  "Heavy Exclamation Mark Symbol" = "\u2757",
  "Information Source" = "\u2139"
)

#' List supported unicode paramateres
#'
#' @return run for its side effects
#' @export
#'
#' @examples
#' unicode_preview()
unicode_preview <- function(){
  message("To use the following symbols, please see  `unicode_symbols` list\n", rep("-", 40))
  message(paste("[", unlist(unicode_symbols), "]", names(unicode_symbols), "\n"))
}
