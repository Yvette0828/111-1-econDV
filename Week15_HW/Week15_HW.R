library(ggplot2)
library(lubridate)
theme_set(theme_bw())
#options(stringsAsFactors = FALSE)

pm25 <- read.csv("C:/Users/user/Desktop/111-1-econDV/Week15_HW/pm25_202112.csv")

# plot
ggplot(pm25, aes(x=date, y=Average, group=station, color=Average)) + 
  geom_line() +
  geom_point() + 
  scale_colour_gradient(low="pink", high="red") + theme_bw() +
  labs(title="PM2.5 Concentration Trend", 
       subtitle="December, 2021", 
       caption="Source: 行政院環境保護署", 
       y="PM2.5 (μg/m³)") +  # title and caption
  theme(axis.text.x = element_text(angle = 90, vjust=0.5),  # rotate x axis text
        panel.grid.minor = element_blank())  # turn off minor grid
