library(tidyverse)
library(zip)

main_path <- here::here()
data_path <- paste0(main_path, "/Data")
video_path <- paste0(main_path, "/Video")
document <- paste0(main_path, "Documents")

zip_name <- "2025_all_county_high_level.zip"

file_info <- zip_list(paste0(data_path, zip_name))

str_extract(file_info$filename, "[^.]+$") #|> 

names(file_info)

file_names <- file_info |> 
  select(filename)
nrow(file_names)

