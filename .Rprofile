# Auto-activate/restore renv for this project
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv", repos = "https://cloud.r-project.org")
}
if (file.exists("renv.lock")) {
  try(renv::activate(), silent = TRUE)
  try(renv::restore(prompt = FALSE), silent = TRUE)
}
