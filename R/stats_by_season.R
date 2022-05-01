stats_by_season <- function(X){

  score_stats = read.csv("oregon_football.csv")

  by_years<- score_stats %>%
    filter(season == X)

  data.frame(highest_score = max(by_years$points_scored),
             highest_allowed = max(by_years$points_allowed),
             home_average = round(mean(by_years$points_scored),digits = 1),
             opp_average = round(mean(by_years$points_allowed),digits = 1)
             )
}
