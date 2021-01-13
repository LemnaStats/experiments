alltime <- alltime %>% mutate(fgPercent = 100*FG/FGA)
alltime$Season <- alltime$Season %>% as.numeric()
alltime %>% ggplot(aes(Season, fgPercent)) +
  geom_line(size=1.5, color = "maroon") +
  labs(y="Field Goal Percentage", 
         title = "NBA Field Goal Percentage Over Time", 
         caption = "Graph by Lemna Statistics. Data from Basketball Reference")
