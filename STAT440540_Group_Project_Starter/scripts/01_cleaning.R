# 01_cleaning.R
# Example skeleton for cleaning your raw data into data/processed/

library(readr); library(dplyr); library(janitor)

raw <- read_csv("data/raw/example_stub.csv") |> clean_names()

dat <- raw |>
  mutate(x3 = factor(x3)) |>
  tidyr::drop_na(y)

readr::write_csv(dat, "data/processed/dat_clean.csv")