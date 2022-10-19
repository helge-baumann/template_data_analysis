# empty frame
empty_frame <- function(x, n=10, fill=NA) {

  frame <-  map_dfc(x, ~{tibble({{.x}} := rep(fill, n))})
  return(frame)

}
