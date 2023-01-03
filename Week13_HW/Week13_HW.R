library(ggplot2) 
library(treemapify)  #for geom_treemap()

#Read formatted data
proglangs <- readxl::read_excel("C:/Users/user/Desktop/111-1-econDV/Week13_HW/ProgrammingLanguage.xlsx")

ggplot(proglangs, aes(area=value, fill=Language)) + 
  geom_treemap()

ggplot(proglangs, aes(area=value, fill=Language)) + 
  geom_treemap(color="gray")+
  #main group bordering

  #all other group text in black
  geom_treemap_text(aes(label = paste(Language, value, sep = "\n")), color="white", size=20, place = "centre",)+
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  scale_fill_brewer(palette = "Dark2") + 
  labs(title = "The most popular programming languages in 2022",
       subtitle = "Unit: %",
       caption="Source: TIOBE index")
