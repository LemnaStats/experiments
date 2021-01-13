ggplot(since3pt, aes(Season, X3PA)) + 
  geom_line() + 
  labs(y = "3-Point Shots Attempted", x = "Season") +
  transition_reveal(along = Season) +
  ease_aes('linear')


#new, animated plot with two axes
ggplot(twocol, aes(Season, threevals)) + 
  geom_path(size=2,aes(color=ShotsAndPercent)) +
  scale_y_continuous(
      name = "Avg. 3-Point Shot Attempts Per Game",
      sec.axis = sec_axis(~., name="3-Point Shot Percentage")) +
  scale_color_discrete(
    name = element_blank(),
    labels = c("3-Point Shot Percentage","Avg. 3-Point Shots Taken Per Game")) +
  labs(x = "Season",
       title = "Avg. Per-Game NBA 3-Point Attempts & 3-Point Percentage Over Time", 
       caption = "Graph by Lemna Statistics. Data: Basketball Reference") +
  transition_reveal(along = Season) +
  ease_aes('linear')
