# 03_modeling.R
library(tidyverse); library(broom); library(readr)

dat <- read_csv("data/processed/dat_clean.csv")

m <- lm(y ~ x1 + x2 + x3, data = dat)
print(glance(m))
print(tidy(m, conf.int = TRUE))