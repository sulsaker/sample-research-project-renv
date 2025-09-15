
dir.create("data/processed", showWarnings = FALSE, recursive = TRUE)
dir.create("figures", showWarnings = FALSE, recursive = TRUE)

df <- data.frame(x = 1:10, y = (1:10)^0.5)
readr::write_csv(df, "data/processed/r_data.csv")


library(ggplot2)
 p <- ggplot(df, aes(x, y)) + geom_line() + geom_point() + theme_minimal()

ggsave("figures/r_plot.png", p, width = 6, height = 4, dpi = 150)
