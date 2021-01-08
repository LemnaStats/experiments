ggplot(since3pt, aes(Season, X3PA)) + 
  geom_smooth() + 
  geom_point(se=F) +
  labs(x = '3-Point Shots Attempted', y = 'Season') +
  transition_time(Season) +
  ease_aes('linear')
