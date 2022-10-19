#  Charactervektoren ohne Anführungszeichen
cement <- function(...) {
  args <- ensyms(...)
  c(purrr::map_chr(args, as_string))
}