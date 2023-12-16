library(ggplot2)
library(showtext)
showtext_auto()

# set to cute font - Quicksand
font_add_google("Quicksand", "quicksand")

# make data for HOLC 
grades_data <- data.frame(
  grade = c("A", "B", "C", "D"),
  description = c("Desirable, Stable", "Good", "In Transition", "Risky, Undesirable"),
  color = c("#97BB77", "#6AA08E", "#F4E07C", "#C25B60")
)

# plot tiles
ggplot(grades_data, aes(x = grade, y = 1, label = grade, fill = grade)) +
  geom_tile(aes(width = 1, height = 2), color = "white", size = 1) +
  geom_text(aes(y = 1, label = description), vjust = 4, size = 18, family = "quicksand") +
  geom_text(size = 50, fontface = "bold", color = "white", family = "quicksand") +
  scale_fill_manual(values = c(A = "#97BB77", B = "#6AA08E", C = "#F4E07C", D = "#C25B60")) +
  theme_void() +
  theme(legend.position = "none", plot.title = element_text(size = 10, hjust = 0.5))

# save figure
ggsave("holc_grade_descriptions.png", width = 12, height = 2, units = "in")


