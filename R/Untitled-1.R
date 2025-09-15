install.packages("renv")      # installs to your user lib
renv::init()                  # creates renv/ + renv.lock + activates project lib
renv::install("fixest")   
renv::install("readr")  # or any packages you need
renv::snapshot()              # writes exact versions to renv.lock
