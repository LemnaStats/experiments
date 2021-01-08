ggplot(since3pt, aes(Season, X3PA)) + 
  geom_line() + 
  labs(y = "3-Point Shots Attempted", x = "Season") +
  transition_reveal(along = Season) +
  ease_aes('linear')
