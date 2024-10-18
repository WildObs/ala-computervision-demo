# Objective: Download images of Tachyglossus aculeatus from 2024
#Author: Dr Sebastian Lopez Marcano (QCIF/WildObs)
#Date: 2024-10-18

#Setup renv
library(renv)

# # Activate renv
renv::activate()

# # Install galah package
install.packages("galah")

# # Snapshot renv
renv::snapshot()

# Load libraries
library(galah)

# Config galah with region and email + define directory
galah_config(atlas = "Australia", email = "s.lopezmarcano@qcif.edu.au", directory="media")

# Download images of Tachyglossus aculeatus from 2024
galah_call() |> 
galah_identify("Tachyglossus aculeatus") |> 
galah_filter(year == 2024, cl22 == "Queensland") |> 
atlas_media() |> 
collect_media(thumbnail = FALSE) # thumbnail = FALSE to download full resolution images
