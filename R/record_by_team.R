record_by_team <- function(college,X){

score_stats = read.csv("oregon_football.csv")


by_team<- score_stats %>%
  filter(opponent == college, season > X)
  by_team$win_lose <- ifelse(by_team$points_scored > by_team$points_allowed, 'Win',
                           ifelse(by_team$points_scored < by_team$points_allowed, 'Lose','Tie'))


  data.frame(Games = nrow(subset(by_team, opponent == college)),
             Win = nrow(subset(by_team, win_lose == "Win")),
             Lose = nrow(subset(by_team, win_lose == "Lose")))
}

