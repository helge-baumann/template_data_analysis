# Vereinfachte multivariate Häufigkeitsauszählung (bivariat)
dplyr_p <- function(.data, x, w=1, round=0) {
  
  erg <- .data %>%
    filter_at(vars({{x}}), all_vars(!is.na(.))) %>%
    mutate(gewicht={{w}}) %>%
    group_by(across({{x}}, as_factor_date)) %>%
    summarise(anteil = sum(gewicht), n=n()) %>%
    mutate(anteil=round(anteil/sum(anteil)*100, digits=round), n=sum(n))
  
  return(erg)
  
}
