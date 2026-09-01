# 02_eda.R
library(tidyverse); library(GGally); library(readr)

dat <- read_csv("data/processed/dat_clean.csv")

print(summary(dat))

GGally::ggpairs(dplyr::select(dat, where(is.numeric)))