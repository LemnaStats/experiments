#making data work with R, calculating FG percentage
alltime <- alltime %>% mutate(fgPercent = 100*FG/FGA)
alltime$Season <- alltime$Season %>% as.numeric()

#charting FG percentage over time
alltime %>% ggplot(aes(Season, fgPercent)) +
  geom_line(size=1.5, color = "maroon") +
  labs(y="Field Goal Percentage", 
         title = "NBA Field Goal Percentage Over Time", 
         caption = "Graph by Lemna Statistics. Data from Basketball Reference")

#Charting FG makes and FG shots on the same graph
ggplot(alllong, aes(Season, FGValue)) + 
  geom_path(size=2,aes(color=ShotsAndMakes)) +
  scale_color_discrete(
    name = element_blank(),
    labels = c("Field Goal Shots","Field Goals Scored")) +
  labs(y="Field Goal Shots or Makes", 
       title = "NBA Avg. Field Goals Made per Game over Time", 
       caption = "Graph by Lemna Statistics. Data from Basketball Reference")
