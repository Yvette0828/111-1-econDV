# Canvas

data0 = data.frame(
  x = c(1,2,3,4),
  y = c(2,3,6,7),
  alpha_stroke = c(1,2,1,2)
)


ggplot(data = data0)+
  
  #layers
  geom_point(
    aes(
    x = x,
    y = y,
    stroke = alpha_stroke,
    alpha = alpha_stroke),
    fill = "blue",
    size = 1,
    color = "black"
    )

# connect to google sheets
googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1lkts4hLkrAFAobONFXiEjgDnuUmXKci6YF--vg1pC1s/edit?pli=1#gid=0",
  sheet = "data 1"
) -> data1
