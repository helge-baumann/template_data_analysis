as_factor_date <- function(x) {
  
  if(class(x)[1] == "Date") {
    x <- as_factor(as.character(x))
  } else {
    x <- as_factor(x)
  }
  
}
