library(ggplot2)
library(ggthemes)
library(readr)
options(scipen = 999)  # turns of scientific notations like 1e+40

# Read data
population <- read.csv("Five_Age_Population_2022-11-22.csv")
print(population)

# X Axis Breaks and Labels 
brks <- seq(-1500000, 1500000, 500000)
lbls = paste0(as.character(c(seq(15, 0, -5), seq(5, 15, 5))), "m")

# Plot
ggplot(population, aes(x = Age, y = Population, fill = Gender)) +   # Fill column
  geom_bar(stat = "identity", width = .6) +   # draw the bars
  # geom_text(aes(label = Population))
  scale_y_continuous(breaks = brks,   # Breaks
                   labels = lbls) + # Labels
  coord_flip() +  # Flip axes
  labs(title="2030 Population Pyramid in Taiwan") +
  theme_tufte() +  # Tufte theme from ggfortify
  theme(plot.title = element_text(hjust = .5), 
        axis.ticks = element_blank()) +   # Centre plot title
  # scale_fill_brewer(palette = "Dark2")  # Color palette
  scale_fill_manual(values = c("#E69F00", "#56B4E9", "#999999"))

