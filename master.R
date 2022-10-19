# functional programming / purrr Training
# Helge Emmler
# 19.10.2022
# R 4.2.1, RStudio 2022.11.0 (daily build)

# Präambel
if(!"pacman" %in% installed.packages()[,1]) install.packages("pacman")
library(pacman)
p_load(haven, dplyr, stringr, tidyr, purrr, rlang)

# Funktionen
dir.create("functions", showWarnings=F)
map(dir("functions", full.names=T), source, encoding = "UTF-8")

# Skripte durchlaufen lassen
dirs <- cement(data, input, steps, info, sessioninfo) # cement: siehe "functions"
map(dirs, dir.create, showWarnings = F); rm(dirs)

map(dir("steps", full.names=T), source, encoding = "UTF-8")

# sessionInfo()
writeLines(
  capture.output(sessionInfo()), 
  con=paste0(
    "./sessioninfo/sessioninfo_", 
    format(Sys.time(), "%y%m%d-%H%M%S"), 
    ".txt")
)
