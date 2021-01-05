CleanStats <- as_tibble(NBAPlayerStats19_20)
CleanStats <- CleanStats %>% separate(Player, c("Player","PlayerCode"), sep = "\\\\")
CleanStatsBig5 <- CleanStats %>% filter(nchar(Pos) < 3)
